..
   Research questions:
      - Understanding how humans balance, ambulate, etc.
      - Powered prostheses
      - Developing next gen sim tools

Research Introduction
=====================

My research efforts center around understanding and improving human mobility by
developing biomemetic controllers for powered assistive devices and humanoid
robots and control augmentation for small manually controlled vehicles. The
ability humans have to ambulate is still very much the envy of engineers who
desire to artificially mimic the motion. Mammalian sensing and actuation
capabilities are robust in ways that our robots and machines can still only
emulate in limited fashions. Understanding and grossly mimicking the
intricacies of the mammalian neuromuscular system have the potential to allow
us to improve human life through assistive machine and device design. The
fundamental question I hope to help tackle in the future is:

   Can dynamically human-similar machines and their controllers be designed to
   move as a human would provided neurally-limited driving control inputs?

We can design physical machines with materials that increasingly resemble the
properties of organic structures and electromechanical sensors can measure what
much of humans sense.

I am interested in identifying practical controllers for devices, robots, and
vehicles which encode feed-forward and feedback control such that the combined
human/machine system has identical motion to an able bodied human alone. To do
this my research currently has three primary focuses:

1. Identifying how humans balance, locomote, and move through data intensive
   computational estimation, learning, and identification.
2. Applying biomemetic control algorithms and design enhancements derived from
   identified control to assistive devices such as exoskeletons, powered
   prostheses, small vehicles, and humanoid robots.
3. Developing next generation open and collaborative computational tools to
   back efforts in the first two items.

Current State of Human Lower Body Control
=========================================

..
   Current state of 1, 2, and 3 and what questions I specifically want to answer.

Efforts to create robust controllers for bipedal locomotion are typically
developed from simulation and then some are successfully applied in hardware.

Deep reinforcement learning has had growing success in creating joint torque
closed loop control simulating humanoid models in complex virtual environments,
e.g. [Heess2017]_. Parallel efforts to develop closed loop control through
shooting and trajectory optimization methods that minimize energy expenditure
of high-fideilty neuromuscluar models are able to produce more limited, but
realistic gait simulations [Ackermann2010]_ [vandenBogert2011]_ [Wang2012]_
[Geijtenbeek2013]_ [Mordatch2013]_. Very recently these parallel efforts have
merged with some success.  For example, in the 2017 NIPS AI challenge
contestants used deep learning to discover realistic gait control for a muscle
activated high-fidelity lower body neuromuscular models [Kudinski2017]_. The
primary limitation of these latest attempts are the computational speed the
dynamically stiff simulations.

Application of balance and locomotion control in hardware is very much dominated
by the non-academic success of Boston Dynamics. They rely on controllers design
around the highest quality sensing and actuation which require high energy
consumption. Bipedal robots developed by the academic community trail Boston
Dynamics machines in performance.

Powered assistive devices such as powered below and above and knee prostheses
have had interesting developments. Lower limb exoskeleton for parapeligcs are
just now being approved by the FDA for the market [Rewalk, Indego, Esko]. These
devices rely primary on non-neural control, offer no balance during gait, and
very robotic gait.

My Past work
============

..
   My current successes in 1, 2, and 3.
   1. Human bicycle control id, balancing id, walking id
   2. Some 185 projects I guess.
         - quadr trike
         - hand assist
         - horse, seat, row
         - shoe paper plane, recycling robots, wasterobot
         - power chair
   3. SymPy, opty, pydy

Much of my prior research has focused on the problem of control identification
in human balance where I have attempted to answer this question:

   Given the simultaneous measurements of the human/environment interface
   forces and/or internal system forces and kinematics of motion, what is the
   casual relationship from sensing to actuation in human motion?

My graduate work focused on understanding the control mechanisms humans use
while balancing on a bicycle, a surprisingly dynamically complex machine. The
bicycle acts as an intermediary between the environment that must be
manipulated by the human primarily through the authority of steering input and
supplemented by less-authoritative "body language". I began by applying
principal component analysis to hours of motion capture data during steady
state bicycling, which identified dominant motion patterns and exposed subtle
leg motions used for extreme balance [Moore2009a_, Moore2011c_]. We further
confirmed this behavior with video analysis in more natural bicycling around a
city and on a treadmill [Kooijman2009]_. Following those initial experiments, I
developed an instrumented bicycle, capable of accurately measuring the full
dynamic state of the rider-vehicle system [Moore2012_, Moore2013_] and collected
hours of data during responses to lateral perturbations in path tracking tasks.
Using a manual control based theoretic controller [Hess2012]_ and data driven
parameter estimation, I identified a set of controllers that explained the
rider perturbation dominant linear response behavior [Moore2012]_, which
effectively characterized a general controller that was able to mimic human
behavior for an broader set of tasks. This was expanded further with other
theoretic controller structures [Schwab2012a_, Schwab2012_, Schwab2013_] and also
applied to aircraft control identification [Hess2013]_.

The work on bicycle balance control identification lead into my postdoctoral
work focused on the development of controllers that could be used in lower
extremity exoskeletons designed for paraplegics, in particular the Parker
Hannifin Indego Exoskeleton. I worked to provide natural gait and unassisted
balance for these devices, something they are still lacking to this day.
Utilizing an actuated dual-force plate treadmill coupled with full body
kinematic tracking I collected hours of walking data from both normal walking
and longitudinally perturbed walking, publishing the data as one of the first
data papers in the field [Moore2015b]_ and demonstrating the effectiveness of
the belt perturbation method. I used this data with a direct gait cycle
scheduled feedback identification technique to identify a possible closed loop
controller [Moore2013c]_ [Moore2014a]_ [Moore2014f]_. The inability to test the
robustness of these controllers led to the development of a indirect
identification feedback control technique based on parameter estimation with
direct collocation.  Starting with a simpler problem, I developed methods with
data derived from human perturbed standing data. The techniques led to orders
of magnitude of improvement in computation speed and control identification
strictly from kinematic data [Moore2014e]_ [Moore2015]_.

Since moving into teaching faculty position at UC Davis my research work has
declined, but I have mentored and led a number of sensing, instrumentation, and
robotics projects that build on the prior research with various local
companies. We developed an assistive mouth based control for a quadrepeligc and
ALS friendly electric tricycle with Outrider USA and Disability Reports. My
students recently developed a powered cable driven hand prostheses with
Eksobionics. We have developed a wireless boot for measuring ground reaction
forces in horse trotting. A recent robot was developed to automatically tie a
shoe one of the more complex tasks our human hands perform. Lastly, I have
currently developed a desktop balancing robot that will be used to validate the
indirect identification methods.

All of my research relies heavily on open source computational data analysis
and simulation tools, much of which I have developed and published. Most
notably, I am a core developer of SymPy [SymPyDevelopmentTeam2006]_, a computer
algebra system, and the maintainer of the classical mechanics package
[Gede2013]_. Our 2017 paper [Meuer2017]_ on the 11 year old software already
has over 100 citations, along with thousands of users and hundreds of
contributors. Additionally, I have developed a suite of bicycle dynamics
related software packages [Moore2010b]_ [Moore2011d]_ [Moore2011a]_ [Moore2011e]_ and
dynamics/biomechanics packages
[Dembia2011]_ [Moore2011]_ [Moore2011b]_ [Moore2013b]_ [Moore2017b]_ [Moore2018a]_.
Recently I have published a package for general purpose trajectory optimization
and parameter estimation [Moore2018]_.

My Future Research Plans
========================

..
   My future plans: lab, funding, teaching, collaboration, etc. How I will fit
   into the department.
   next steps
      - direct collocation for feedback control id in walking
      - fast simulations
      - development and use of balancing and bipedal robots with known
        controllers
   lab
   funding
      NSF, NIH
   conferences
     dynamic walking, american society of biomechanics, isb, isb simulation
     tech group, scipy, jupytercon, pydata
   collaboration
     internal at ucd: xinfan, kong, stravos, hess, hubbard, hull, robinson, joshi
     companies: TRI, Ekso Bionics, kindred.ai
     academics: cleveland state, stanford

At UC Davis I plan to develop a team and laboratory which is capable of
collecting data from human motion in a variety of mobility related activities,
utilizing the cutting edge learning, estimation, and identification methods
to characterize human control in these activities, and building and testing
robots and devices and contribute to and develop the next generation of open
source software. The group will house and develop computatinol and experimental
biomechanicists and roboticists.

Our beginning initiatives will be:

- applying parameter identification using direct collocation to my perturbed
  walking data set to discover a gain scheduled
- development of a desktop balancing robot that simulates perturbed human
  balancing
- accelerating lower body neuromuscular forward dynamics simulations through
  optimized code generation and common sub-expression evaluation across CPU
  cores
- development of a low-fidelity lower limb exoskeleton for controller testing

These all build on my prior work described above.

The lab will be involved in several communities that are leading, such as the
Dynamic Walking conference, both the American and International Societies of
Biomechanics, in particular the ISB techinical simulation group, SciPy, PyData,
PyCon. I will continue to develop relationships with regional compaines, such
at Toyota Research Institute, Ekso Bionics, Open Source Robotics and partnet
academics Stanford Neruomusclar Biomehcanics lab, Cleveland State Human Motion
and control, TU Delft Biomechanics. Profs. Lin, Kong, Robinson, Joshi, emeritus
Profs. Hess, Hubbard, Hull in the MAE department.

I intend to lead an effort to bring UC Davis's once noted biomechanics efforts
back alive and to lead a new path in biomemetic robotics.

References
==========

.. [SymPyDevelopmentTeam2006] SymPy Development Team, SymPy: Python library for
   symbolic mathematics. 2006.
.. [Moore2007] J. K. Moore, D. L. Peterson, and M. Hubbard, "Influence of rider
   dynamics on the Whipple bicycle model," in Proceedings of the 11th
   International Symposium on Computer Simulation in Biomechanics, Tainan,
   Taiwan, 2007.
.. [Moore2008] J. Moore and M. Hubbard, "Parametric Study of Bicycle
   Stability," in The Engineering of Sport 7, 2008, vol. 2.
.. [Moore2009a] J. K. Moore, J. D. G. Kooijman, and A. L. Schwab, "Rider motion
   identification during normal bicycling by means of principal component
   analysis," in Proceedings of Multibody Dynamics 2009, ECCOMAS Thematic
   Conference, Warsaw, Poland, 2009.
.. [Kooijman2009] J. D. G. Kooijman, A. L. Schwab, and J. K. Moore, "Some
   Observations on Human Control of a Bicycle," in Proceedings of the ASME 2009
   International Design and Engineering Technical Conferences & Computers and
   Information in Engineering Conference, 2009.
.. [Moore2009] J. K. Moore, J. D. G. Kooijman, M. Hubbard, and A. L. Schwab, "A
   Method for Estimating Physical Properties of a Combined Bicycle and Rider,"
   in Proceedings of the ASME 2009 International Design Engineering Technical
   Conferences & Computers and Information in Engineering Conference, IDETC/CIE
   2009, San Diego, CA, USA, 2009.
.. [Moore2010] J. K. Moore, M. Hubbard, A. L. Schwab, J. D. G. Kooijman, and D.
   L. Peterson, "Statistics of bicycle rider motion," in The Engineering of
   Sport 8  - Engineering Emotion, 2010, vol. 2, pp. 2937–2942.
.. [Peterson2010] D. L. Peterson, J. K. Moore, D. Fintelman, and M. Hubbard,
   "Low-power, modular, wireless dynamic measurement of bicycle motion," in
   Procedia Engineering, 2010, vol. 2, pp. 2949–2954.
.. [Moore2010a] J. K. Moore, M. Hubbard, D. L. Peterson, A. L. Schwab, and J.
   D. G. Kooijman, "An Accurate Method of Measuring and Comparing a Bicycle’s
   Physical Parameters," in Proceedings of Bicycle and Motorcycle Dynamics:
   Symposium on the Dynamics and Control of Single Track Vehicles, Delft,
   Netherlands, 2010.
.. [Moore2010b] J. K. Moore, P. D. L. de Lange, and Y. Henneberry, BicycleDAQ:
   Data aquisition application for an instrumented bicycle. University of
   California, Davis, 2010.
.. [Hubbard2011] M. Hubbard, R. A. Hess, J. K. Moore, and D. L. Peterson,
   "Human control of bicycle dynamics with experimental validation and
   implications for bike handling and design," in Proceedings of 2011 NSF
   Engineering Research and Innovation Conference, 2011.
.. [Moore2011c] J. K. Moore, J. D. G. Kooijman, A. L. Schwab, and M. Hubbard,
   "Rider motion identification during normal bicycling by means of principal
   component analysis," Multibody Syst Dyn, vol. 25, no. 2, pp. 225–244, Feb.
   2011.
.. [Moore2011d] J. K. Moore, P. D. L. de Lange, and S. Yin,
   BicycleDataProcessor: Data storage and processing library for an
   instrumented bicycle. University of California, Davis, 2011.
.. [Moore2011a] J. K. Moore, C. Dembia, and O. Lee, BicycleParameters: A Python
   library for bicycle parameter estimation and analysis. 2011.
.. [Moore2011e] J. K. Moore, HumanControl: Human control of a bicycle.
   University of California, Davis, 2011.
.. [Dembia2011] C. Dembia, J. K. Moore, S. Yin, and O. Lee, Yeadon: A Python
   Library For Human Inertia Estimation. 2011.
.. [Moore2011] J. K. Moore, C. Dembia, and O. Lee, DynamicistToolKit: A Python
   library for dynamcis and controls. 2011.
.. [Moore2011b] J. K. Moore et al., PyDy: A multi-body dynamics analysis
   package written in Python. PyDy, 2011.
.. [Hess2012] R. Hess, J. K. Moore, and M. Hubbard, "Modeling the Manually
   Controlled Bicycle," IEEE Transactions on Systems, Man, and Cybernetics -
   Part A: Systems and Humans, vol. 42, no. 3, pp. 545–557, Feb. 2012.
.. [Schwab2012a] A. L. Schwab, P. D. L. de Lange, R. Happee, and J. K. Moore,
   "Rider control identification in bicycling, parameter estimation of a linear
   model using lateral force perturbation tests," in Proceedings of the
   IMSD2012 - The 2nd Joint International Conference on Multibody System
   Dynamics, Stuttgart, Germany., 2012.
.. [Moore2012] J. K. Moore, "Human Control of a Bicycle," Doctor of Philosophy,
   University of California, Davis, CA, 2012.
.. [Schwab2012] A. Schwab, P. de Lange, and J. K. Moore, "Rider Optimal Control
   Identification in Bicycling," in Proceedings of the 5th Annual Dynamic
   Systems and Control Conference and 11th Annual Motion and Vibration
   Conference, Fort Lauderdale, Florida, USA, 2012.
.. [Gede2013] G. Gede, D. L. Peterson, A. S. Nanjangud, J. K. Moore, and M.
   Hubbard, "Constrained Multibody Dynamics With Python: From Symbolic Equation
   Generation to Publication," in Volume 7B: 9th International Conference on
   Multibody Systems, Nonlinear Dynamics, and Control, Portland, Oregeon, USA,
   2013.
.. [Moore2013c] J. K. Moore and A. J. van den Bogert, "Direct Identification of
   Human Gait Control," 18-Aug-2013.
.. [Hess2013] R. A. Hess and J. K. Moore, "Estimating Parameters of the
   Structural Pilot Model Using Simulation Tracking Data," in AIAA Guidance,
   Navigation, and Control Conference, 2013.
.. [Schwab2013] A. L. Schwab, P. D. L. de Lange, R. Happee, and J. K. Moore,
   "Rider control identification in bicycling using lateral force perturbation
   tests," Proceedings of the Institution of Mechanical Engineers, Part K:
   Journal of Multi-body Dynamics, vol. 227, no. 4, pp. 390–406, Aug. 2013.
.. [Moore2013a] J. K. Moore and M. Hubbard, "Identification of open loop
   dynamics of a manually controlled bicycle-rider system," in Proceedings of
   Bicycle and Motorcycle Dynamics: Symposium on the Dynamics and Control of
   Single Track Vehicles, Narashino, Chiba, Japan, 2013.
.. [Moore2013] J. K. Moore and M. Hubbard, "Methods for elimination of
   crosstalk and inertial effects in bicycle and motorcycle steer torque
   estimation," in Proceedings of Bicycle and Motorcycle Dynamics: Symposium on
   the Dynamics and Control of Single Track Vehicles, Narashino, Chiba, Japan,
   2013.
.. [Moore2013b] J. K. Moore, S. K. Hnat, O. Nwanna, M. Overmeyer, and A. J. van
   den Bogert, GaitAnalysisToolKit: A Python Library for Gait Analysis.
   Cleveland State University, 2013.
.. [Moore2014a] J. K. Moore, S. K. Hnat, and A. J. van den Bogert,
   "Identification of human control during perturbed walking," in Midwest
   American Society of Biomechanics Regional Meeting, Akron, Ohio, USA, 2014.
.. [Moore2014c] J. K. Moore and M. Hubbard, "Methods for elimination of
   crosstalk and inertial effects in bicycle steer torque estimation,"
   20-Apr-2014.
.. [Moore2014] J. K. Moore and A. J. van den Bogert, opty: A library for using
   direct collocation in the optimization and identification of dynamic
   systems.  Cleveland State University, 2014.
.. [Moore2014f] J. K. Moore, S. K. Hnat, and A. J. van den Bogert,
   "Identification of human control during perturbed walking," presented at the
   Dynamic Walking, Zurich, Switzerland, 2014.
.. [Moore2014e] J. K. Moore and A. J. van den Bogert, "Perturbed Standing
   Controller Parameter Identification: A comparison of Methods," 24-Aug-2014.
.. [Moore2014d] J. K. Moore and M. Hubbard, "Kinetic and Kinematic Measurements
   from an Instrumented Bicycle during different maneuevers on and off the
   treadmill," 24-Aug-2014.
.. [Dembia2015] C. Dembia, J. K. Moore, and M. Hubbard, "An object oriented
   implementation of the Yeadon human inertia model," F1000Research, vol. 3,
   no.  233, Apr. 2015.
.. [Moore2015b] J. K. Moore, S. K. Hnat, and A. J. van den Bogert, "An
   elaborate data set on human gait and the effect of mechanical
   perturbations," PeerJ, vol. 3, no. e918, Apr. 2015.
.. [Moore2015a] J. K. Moore, S. K. Hnat, and A. J. van den Bogert, "An
   elaborate data set on human gait and the effect of mechanical
   perturbations," PeerJ PrePrints, vol. 3, no. e700v4, Apr. 2015.
.. [Moore2015] J. K. Moore and A. J. van den Bogert, "Quiet Standing Control
   Parameter Identification with Direct Collocation," in XV International
   Symposium on Computer Simulation in Biomechanics, Edinburgh, UK, 2015.
.. [Moore2016] J. Moore, M. Hubbard, and R. A. Hess, "An Optimal Handling
   Bicycle," in Proceedings of the 2016 Bicycle and Motorcycle Dynamics
   Conference, 2016.
.. [Meuer2017] A. Meurer et al., "SymPy: symbolic computing in Python," PeerJ
   Comput. Sci., vol. 3, no. e103, Jan. 2017.
.. [Moore2017c] J. K. Moore, "Learning Mechanical Design Through Lightweight
   Prototyping," UC Davis Engineering Education Learning Community, 10-Feb-2017. .
.. [Moore2017b] J. K. Moore and K. Lyons, resonance: A Python package for
   mechanical vibration analysis. University of California, Davis, 2017.
.. [Kresie2017] S. W. Kresie, J. K. Moore, M. Hubbard, and R. A. Hess,
   "Experimental Validation of Bicycle Handling Prediction," in Proceedings of
   the 6th Annual International Cycling Safety Conference, Davis, CA, USA,
   2017.
.. [Moore2017] J. K. Moore, M. Hubbard, and R. A. Hess, "Optimal bicycle design
   to maximize handling and safety," in Proceedings of the 6th Annual
   International Cycling Safety Conference, Davis, CA, USA, 2017.
.. [Moore2017a] J. K. Moore and K. Lyons, Resonance: Learning Mechanical
   Vibration Enginering Through Computation. 2017.
.. [Moore2018] J. K. Moore and A. van den Bogert, "opty: Software for
   trajectory optimization and parameter identification using direct
   collocation," Journal of Open Source Software, vol. 3, no. 21, p. 300, Jan.
   2018.
.. [Moore2018b] J. K. Moore and K. Lyons, "Using Computational Thinking to
   Teach Mechanical Vibrations," UC Davis Engineering Education Learning
   Community, 23-Apr-2018. .
.. [Cloud2018] B. Cloud et al., "Adaptive sensor fusion for estimating
   competitive rowing kinematic metrics using smartphone-based sensing," Jun-2018.
.. [Moore2018a] J. K. Moore and M. Hubbard, "skijumpdesign: A Ski Jump Design
   Tool for Specified Equivalent Fall Height," The Journal of Open Source
   Software, vol. 3, no. 28, p. 818, Aug. 2018.
.. [Ackermann2010] M. Ackermann and A. J. van den Bogert, "Optimality
   principles for model-based prediction of human gait," Journal of
   Biomechanics, vol. 43, no. 6, pp. 1055–1060, Apr. 2010.
.. [vandenBogert2011] A. J. van den Bogert, D. Blana, and D. Heinrich,
   "Implicit methods for efficient musculoskeletal simulation and optimal
   control," Procedia IUTAM, vol. 2, pp. 297–316, 2011.
.. [Wang2012] J. M. Wang, S. R. Hamner, S. L. Delp, and V. Koltun, "Optimizing
   locomotion controllers using biologically-based actuators and objectives,"
   ACM Transactions on Graphics (TOG), vol. 31, no. 4, p. 25, 2012.
.. [Geijtenbeek2013] T. Geijtenbeek, "Animating Virtual Characters using
   Physics-Based Simulation," 2013.
.. [Mordatch2013] I. Mordatch, J. M. Wang, E. Todorov, and V. Koltun, "Animating
   human lower limbs using contact-invariant optimization," ACM Transactions on
   Graphics, vol. 32, no. 6, pp. 1–8, Nov. 2013.
.. [Heess2017] N. Heess et al., "Emergence of Locomotion Behaviours in Rich
   Environments," arXiv:1707.02286 [cs], Jul. 2017.
.. [OpenAI2018] OpenAI et al., "Learning Dexterous In-Hand Manipulation,"
   arXiv:1808.00177 [cs, stat], Aug. 2018.
.. [Kudinski2017] "Reinforcement learning with musculoskeletal models."
   [Online]. Available: http://osim-rl.stanford.edu/. [Accessed: 12-Sep-2018].
