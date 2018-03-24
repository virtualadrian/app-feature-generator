package {{package}}.services.{{feature}};

import {{package}}.base.BaseController;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/{{feature}}")
public class {{featureName}}Controller extends BaseController {

    private {{featureName}}Service {{feature}}Service;

    public {{featureName}}Controller({{featureName}}Service service)
    {
        this.{{feature}}Service = service;
    }

    @RequestMapping(method = RequestMethod.GET)
    public ResponseEntity<Iterable<{{featureName}}Model>> getAll() {
        return Ok({{feature}}Service.findall(0, 1));
    }

    @RequestMapping(value = "/{page}/{pageSize}", method = RequestMethod.GET)
    public ResponseEntity<Iterable<{{featureName}}Model>> getAll(@PathVariable("page") int page, @PathVariable("pageSize") int pageSize) {
        return Ok({{feature}}Service.findall(page, pageSize));
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public ResponseEntity<{{featureName}}Model> get(@PathVariable("id") long id) {
        return Ok({{feature}}Service.find(id));
    }

    @RequestMapping(method = RequestMethod.POST)
    public ResponseEntity<{{featureName}}Model> create(@RequestBody final {{featureName}}Model creating) {
        return Ok({{feature}}Service.create(creating));
    }

    @RequestMapping(method = RequestMethod.PUT)
    public ResponseEntity<{{featureName}}Model> update(@RequestBody final {{featureName}}Model updating) {
        return Ok({{feature}}Service.update(updating));
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public ResponseEntity delete(@PathVariable("id") long id) {
        {{feature}}Service.delete(id);
        return Ok();
    }
}
