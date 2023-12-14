# Nibs

 ## Loading external nib programmatically

 ```
 class ContentView: UIView {

 	var externalView: ExternalView!

 	override func awakeFromNib() {
 		super.awakeFromNib()

 		externalView = Bundle(for: Externalview.self).loadNibNamed("\(ExternalView.self)"), owner: self)![0] as? ExternalView

 		addSubView(externalView)
 	}
 }
 ```