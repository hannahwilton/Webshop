export default class Products {
    constructor() {

        this.data = {
            password: "KickPHP"
        }
        this.rootElem = document.querySelector('.products')
        this.filter = this.rootElem.querySelector('.filter');
        this.items = this.rootElem.querySelector('.items');

        this.nameSearch = this.filter.querySelector('.nameSearch');
        this.priceSearch = this.filter.querySelector('.priceSearch');
        this.authorSearch = this.filter.querySelector('.authorSearch');



    }

    async init() {
        this.nameSearch.addEventListener('input', () => {
            this.render();
        });

        this.priceSearch.addEventListener('input', () => {
            this.render();
        });

        this.authorSearch.addEventListener('input', () => {
            this.render();
        })

      await this.render();
    }

    async render(){
        const data = await this.getData();
        console.log(data)

        const row = document.createElement('div');
        row.classList.add('row', 'g-4');

        for(const item of data){
            const col = document.createElement('div');
            col.classList.add('col-md-6', 'col-lg-4', 'col-xl-3');

            col.innerHTML = `
               <div class="card border border-2 border-boxColor ">
               <img src="uploads/${item.prodBillede}" class="card-img-top">
               <div class="card-body fixed-height">
                   <h5 class="card-title">${item.prodTitel}</h5>
                   <p class="card-text">${item.prodAuthor}</p>
                   <p class="card-text">${item.prodPrice}</p>  
                   <a href="product.php?prodId=${item.prodId}" class="btn btn-button text-white w-50 btn-bottom">Se mere</a>
     
                </div>
              </div>
           `;

            row.appendChild(col);
        }

        this.items.innerHTML = '';
        this.items.appendChild(row)

    }

    async getData(){
        this.data.nameSearch = this.nameSearch.value;
        this.data.priceSearch = this.priceSearch.value;
        this.data.authorSearch = this.authorSearch.value;


        const response = await fetch('api.php', {
            method: "POST",
            body: JSON.stringify(this.data)
        });
        return await response.json();

    }
}