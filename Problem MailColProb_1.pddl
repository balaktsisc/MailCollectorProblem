(define (problem MailColProb_1)
    (:domain MailCollectorDomain)
    
    (:objects
        p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14
        person1 
        m1 m2
        b1
        l1 l2
    )
        
    (:init
        ; Entities
        (point p1) (point p2) (point p3) (point p4) 
        (point p5) (point p6) (point p7) (point p8) 
        (point p9) (point p10) (point p11) (point p12) 
        (point p13) (point p14) 
        (mailman person1)
        (mail m1) (mail m2)
        (mailbox b1)
        (line l1) (line l2)
        
        ; Initial relation state of the problem
        ; Mailmen positioning
        (at person1 p14)
        
        ; Mail positioning
        (has_mail p10 m1) (has_mail p13 m2)
        
        ; Mailbox potitioning
        (has_box p7 b1)
        
        ; Path-Connected points (2-way)
        (p_connected p1 p2) (p_connected p2 p1)  
        (p_connected p2 p3) (p_connected p3 p2) 
        (p_connected p3 p4) (p_connected p4 p3) 
        (p_connected p4 p5) (p_connected p5 p4) 
        (p_connected p5 p12) (p_connected p12 p5) 
        (p_connected p2 p11) (p_connected p11 p2) 
        (p_connected p11 p6) (p_connected p6 p11) 
        (p_connected p11 p9) (p_connected p9 p11) 
        (p_connected p9 p10) (p_connected p10 p9) 
        (p_connected p6 p10) (p_connected p10 p6) 
        (p_connected p10 p8) (p_connected p8 p10) 
        (p_connected p8 p13) (p_connected p13 p8) 
        (p_connected p13 p14) (p_connected p14 p13) 
        
        ;Metro-Line-Connected points (1-way)
        (m_connected p2 p3 l1) (m_connected p3 p5 l1)
        (m_connected p5 p7 l1) (m_connected p7 p8 l1)
        (m_connected p8 p6 l1) (m_connected p6 p2 l1)
        (m_connected p3 p7 l1) 
        (m_connected p5 p7 l2) (m_connected p7 p8 l2)
        (m_connected p8 p6 l2) (m_connected p6 p7 l2) 
        
        ;Metro Stations
        (station p2) (station p3) (station p6) 
        (station p7) (station p8) 
    )
    
    ; Goal: There are no points (places) where there are mails
    ;       and none of the mailmen carry any mail.
    (:goal 
        (and 
            (not (carries person1 m1))
            (not (carries person1 m2))
            (not (has_mail p1 m1))
            (not (has_mail p1 m2))
            (not (has_mail p2 m1))
            (not (has_mail p2 m2))
            (not (has_mail p3 m1))
            (not (has_mail p3 m2))
            (not (has_mail p4 m1))
            (not (has_mail p4 m2))
            (not (has_mail p5 m1))
            (not (has_mail p5 m2))
            (not (has_mail p6 m1))
            (not (has_mail p6 m2))
            (not (has_mail p7 m1))
            (not (has_mail p7 m2))
            (not (has_mail p8 m1))
            (not (has_mail p8 m2))
            (not (has_mail p9 m1))
            (not (has_mail p9 m2))
            (not (has_mail p10 m1))
            (not (has_mail p10 m2))
            (not (has_mail p11 m1))
            (not (has_mail p11 m2))
            (not (has_mail p12 m1))
            (not (has_mail p12 m2))
            (not (has_mail p13 m1))
            (not (has_mail p13 m2))
            (not (has_mail p14 m1))
            (not (has_mail p14 m2))
        )
    )
)