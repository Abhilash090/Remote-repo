public class ContactsListController {

private String sortOrder = 'Title';
    
public List<Contact> getContacts() {
    
    List<Contact> results = Database.query(
        'SELECT Id, FirstName, LastName, Title, Email ' +
        'FROM Contact ' +
        'ORDER BY ' + sortOrder + ' ASC ' +
        'LIMIT 10'
    );
    return results;

}
}