(define (domain MailCollectorDomain)
    (:requirements :strips)
    
    (:predicates
        (mailman ?x) (mail ?x) (point ?x) (mailbox ?x) (line ?x)
        (at ?mailman1 ?point2) (has_mail ?point1 ?mail2) (has_box ?point1 ?box2)
        (carries ?mailman1 ?mail2) (p_connected ?point1 ?point2) 
        (m_connected ?point1 ?point2 ?line3) (station ?point1)
    )
    
    (:action Move
        :parameters (?P ?X ?Y)
        :precondition (and (mailman ?P) (point ?X) (point ?Y) (at ?P ?X) (p_connected ?X ?Y))
        :effect (and (at ?P ?Y) (not (at ?P ?X)))
    )
    
    (:action Transfer
        :parameters (?P ?X ?Y ?L)
        :precondition (and (mailman ?P) (point ?X) (point ?Y) (line ?L) (at ?P ?X)
            (m_connected ?X ?Y ?L) (station ?X) (station ?Y)) 
        :effect (and (at ?P ?Y) (not (at ?P ?X)))
    )
    
    (:action Load
        :parameters (?P ?M ?X)
        :precondition (and (mailman ?P) (mail ?M) (point ?X) (at ?P ?X) (has_mail ?X ?M))
        :effect (and (carries ?P ?M) (not (has_mail ?X ?M)))
    )
    
    (:action Depose
        :parameters (?P ?M ?X ?B)
        :precondition (and (mailman ?P) (mail ?M) (point ?X) (mailbox ?B) (at ?P ?X) 
            (has_box ?X ?B) (carries ?P ?M))
        :effect (and (not (carries ?P ?M)))
    )
)
