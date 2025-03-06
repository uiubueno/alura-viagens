import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var viagensTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viagensTableView.dataSource = self
        viagensTableView.delegate = self
        
        view.backgroundColor = UIColor(_colorLiteralRed: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1.0)
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Registrar o identificador de reutilização (opcional, mas recomendado)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        // Obter uma célula reutilizável
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // Configurar a célula
        cell.textLabel?.text = "viagem \(indexPath.row)"
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
        
        return headerView
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
}
