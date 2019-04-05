function [alphan,ok]=Wolfe()


//////////////////////////////////////////////////////////////
//                                                          //
//   RECHERCHE LINEAIRE SUIVANT LES CONDITIONS DE WOLFE     //
//                                                          //
//                                                          //
//  Arguments en entree                                     //
//  -------------------                                     //
//    -----> A completer...                                 //
//    -----> A completer...                                 //
//    -----> A completer...                                 //
//                                                          //
//  Arguments en sortie                                     //
//  -------------------                                     //
//    alphan : valeur du pas apres recherche lineaire       //
//    ok     : indicateur de reussite de la recherche       //
//             = 1 : conditions de Wolfe verifiees          //
//             = 2 : indistinguabilite des iteres           //
//                                                          //
//////////////////////////////////////////////////////////////


// -------------------------------------
// Coefficients de la recherche lineaire
// -------------------------------------

   omega1 = 0.1;
   omega2 = 0.9;

   alphamin = 0.0;
   alphamax = %inf;

   ok = 0;
   dltx = 0.00000001;

// ---------------------------------
// Algorithme de Fletcher-Lemarechal
// ---------------------------------

   // Initialisation de l'algorithme

   // -----> A completer...
   // -----> A completer...
   // -----> A completer...

   // Boucle de calcul du pas
   //
   // xn represente le point pour la valeur courante du pas,
   // xp represente le point pour la valeur precedente du pas.

   while ok == 0

      // Test d'indistinguabilite

      // -----> A completer...
      // -----> A completer...
      // -----> A completer...

     if norm(xn-xp) < dltx then
       ok = 2;
     end

      // Calcul des conditions de Wolfe
      //
      // Si les deux conditions de Wolfe sont verifiees, faire : ok = 1
      // Sinon, boucler sur la recherche du pas.

      // -----> A completer...
      // -----> A completer...
      // -----> A completer...


   end

endfunction
