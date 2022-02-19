module main
import vweb


struct App{
	vweb.Context
}

fn main(){
	app :=App{}
	vweb.run(app,8080)
}

['/index']
pub fn (mut app App) index() vweb.Result{
	message := "From View Text"
	return $vweb.html()
}

['/about']
pub fn (mut app App) about() vweb.Result{
	return $vweb.html()
}