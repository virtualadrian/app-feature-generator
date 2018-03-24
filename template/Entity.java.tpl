package {{package}}.services.{{feature}};

import {{package}}.base.BaseEntity;
import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Entity
@Table(name="{{tableName}}")
public class {{featureName}}Entity extends BaseEntity {

    @Id
    @Column(name="id")
    private long id;

}
