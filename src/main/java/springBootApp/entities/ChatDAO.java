package springBootApp.entities;

import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;


/**
 * Created by Ari on 8/12/16.
 */
@Transactional
public interface ChatDAO extends CrudRepository<Chat, Long> {
}
