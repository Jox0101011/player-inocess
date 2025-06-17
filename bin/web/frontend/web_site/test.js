function toggle(container) {
    const config = document.getElementById("configcontainer");
    const user = document.getElementById("usercontainer");
    const plugin = document.getElementById("plugincontainer");

    const sections = { config, user, plugin };
    const target = sections[container];

    if (target.style.display === "none" || target.style.display === "") {
        for (let key in sections) {
            sections[key].style.display = key === container ? "flex" : "none";
        }
    } else {
        target.style.display = "none";
    }
}

// Atalhos
function cfg() { toggle('config'); }
function usr() { toggle('user'); }
function plg() { toggle('plugin'); }
