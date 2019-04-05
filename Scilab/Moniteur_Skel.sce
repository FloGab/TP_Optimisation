///////////////////////////////////////////////////////////////////////////////
//                                                                           //
//  MONITEUR D'ENCHAINEMENT POUR LE CALCUL DE L'EQUILIBRE D'UN RESEAU D'EAU  //
//                                                                           //
///////////////////////////////////////////////////////////////////////////////

// --------------------------------------
// Dimensionnement de l'espace de travail
// --------------------------------------

   stacksize(10000000);

// ------------------------------------------
// Fonctions fournies dans le cadre du projet
// ------------------------------------------

   // Donnees du problemes

   exec('Probleme_R.sce');
   exec('Structures_R.sce');
   
   // Affichage des resultats

   exec('Visualg.sci');
   
   // Verification  des resultats

   exec('HydrauliqueP.sci');
   exec('HydrauliqueD.sci');
   exec('Verification.sci');

// ------------------------------------------
// Fonctions a ecrire dans le cadre du projet
// ------------------------------------------

   // ---> Charger ici l' oracle du probleme (primal ou dual),
   //      la fonction d'optimisation et de recherche lineaire.
   // -----> A completer...
   // -----> A completer...
   // -----> A completer...
   // Exemple de fonction d'optimisation : "optim" de Scilab

   exec('Optim_Scilab.sci');
   titrgr = "Optimisation de Scilab sur le probleme primal";

// ------------------------------
// Initialisation de l'algorithme
// ------------------------------

   // La dimension (n-md) est celle du probleme primal
   xini = 0.1 * rand(n-md,1);

// ----------------------------
// Minimisation proprement dite
// ----------------------------

   [fopt,xopt,gopt] = Optim_Scilab(OraclePG,xini);

// --------------------------
// Verification des resultats
// --------------------------

   [q,z,f,p] = HydrauliqueP(xopt);

   Verification(q,z,f,p);

//
