export default class Users {
    constructor() {
        this.rootElem = document.querySelector('.users')
    }

    init() {
        this.render();
    }

   async render(){
       const data = await this.getData();

       const row = document.createElement('div');
       row.classList.add('row');

       for(const item of data){
           const col = document.createElement('div');
           col.classList.add('col-6');

           col.innerHTML = `
                <div class="bg-boxColor">
                        <p>${item.name}</p>
                    
                    
                    
                    ${item.favoritColors.map(color => {
                        return `<p>${color}</p>`;
                    }).join('')}
                    
                    ${Object.entries(item.Hobbies).map(([h,l])=> {
                        return `<p>${h} : ${l}</p>`;
                    }).join('')}
                
                </div>
           `;

           row.appendChild(col);
       }

       this.rootElem.appendChild(row);
    }

   async getData(){
        const response = await fetch('users.json');
        return await response.json();

    }
}