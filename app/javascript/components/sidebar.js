function openSidebar() {
  const sidebarIcon = document.querySelector('#sidebar-icon');
  if (sidebarIcon) {
    sidebarIcon.addEventListener("click", function(){
      const sidebar = document.querySelector('#sidebar');
      if (sidebar) {
        sidebar.style.width = "200px";
        sidebar.style.right = "0";
      }
    })
  }
}

function closeSidebar() {
  window.addEventListener('click', function(e){
    const sidebar = document.querySelector('#sidebar');
    if (sidebar) {
      if (sidebar.contains(e.target) || e.target.id == 'sidebar-icon'){
        // Clicked in navbar
      } else {
        // Clicked outside navbar
        sidebar.style.width = "0";
        sidebar.style.right = "-50px";
      }
    }
  });
}

function controlSidebar() {
  closeSidebar();
  openSidebar();
}

export { controlSidebar };
