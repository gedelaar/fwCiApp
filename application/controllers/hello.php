<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of hello
 *
 * @author Gerard
 */
class Hello extends CI_Controller {
    //put your code here

    function you() {
        $this->load->view('you_view');
    }
    
}

?>
