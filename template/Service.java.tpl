package {{package}}.services.{{feature}};

import {{package}}.base.BaseCrudService;
import org.springframework.stereotype.Service;

@Service
public class {{featureName}}Service extends BaseCrudService<{{featureName}}Model, {{featureName}}Entity, Long>  {

    public {{featureName}}Service() {
        super({{featureName}}Model.class, {{featureName}}Entity.class);
    }
}
