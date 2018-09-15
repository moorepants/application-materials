Introduction
============

My research efforts center on understanding and improving human mobility by
developing biomemetic controllers for powered assistive devices and humanoid
robots and on developing control augmentation for small manually controlled
vehicles. The ability humans have to ambulate and manipulate devices continues
to be the envy of engineers who desire to artificially mimic their motion.
Understanding and mimicking the intricacies of the mammalian neuromuscular
system have the potential to allow us to improve human life through assistive
machine and device design. However, contemporary robots and machines are still
limited in their ability to emulate the robust capabilities of mammalian
sensing and actuation.

The fundamental question that I am interested in is:

   Can dynamically human-similar machines and their controllers be designed to
   move as a human would move, if provided neurally-limited driving control
   inputs?

I am interested in identifying practical controllers for devices, robots, and
vehicles which encode feed-forward and feedback control such that the combined
human/machine system has nearly identical motion to an able-bodied human. My
current focus is on improving balance while standing and walking with lower
limb prostheses and exoskeletons. To do this my research currently has three
primary foci:

1. Identifying how humans balance and locomote through data intensive
   computational estimation, learning, and identification.
2. Applying biomemetic control algorithms and design enhancements derived from
   identified controllers to assistive devices such as exoskeletons, powered
   prostheses, small vehicles, and humanoid robots.
3. Developing next generation open and collaborative computational tools to
   back efforts in the first two items.

Current State of Walking Human Motion & Control
===============================================

Deep reinforcement learning has had growing success in creating joint torque
driven closed loop control simulating low-fidelity humanoid models in complex
virtual environments (e.g. [Heess2017]_). Parallel to the reinforcement
learning are efforts to generate closed and open loop controllers through
optimal control methods (shooting and trajectory optimization) that focus on
minimizing energy expenditure of high-fidelity neuromuscular models in much
simpler walking and running tasks. These methods produce simulations of much
more realistic gait [Ackermann2010]_ [vandenBogert2011]_ [Wang2012]_
[Geijtenbeek2013]_ [Mordatch2013]_. Very recently these parallel efforts have
merged with signs of promise. For example, in the 2017 NIPS AI challenge
contestants used deep reinforcement learning to discover realistic gait control
for a muscle activated high-fidelity lower body neuromuscular model
[Kidzinski2017]_. Machine learning and shooting based optimal control using the
high-fidelity models are bound by the forward dynamics computation speeds,
which are real-time at best. Advancements that reduce forward simulation speeds
or circumvent the need to evaluate the stiff dynamics are needed to make more
rapid progress. Successful simulations that incorporate modeled prostheses have
only just emerged [Koelewijn2016]_.

Powered assistive devices such as powered below- and above-knee prostheses have
had interesting recent developments.

Powered and passive Lower limb exoskeleton for paraplegics are
just now being approved by the FDA for the US and European markets, e.g.Rewalk,
Indego, Esko. These devices rely primary on non-neural control, offer no
balance during gait, and very robotic gait.

In the past year, we have started to see merger of the successes in software
and the successes in hardware with demonstrations such as [OpenAI2018]_ but
much is a bright future for discovery with lower limb systems.

..
   TODO : Add Dembia's paper and Uchida: CMC
   TODO : Add Collin's clutch ankle paper. Add bicycle bmx paper.
   TODO : Ferris/Sawicki for powered ankle
   TODO : Take some refs from https://pdfs.semanticscholar.org/f147/212a95e4dc0ff1ca9a6b76e0b32c916b8f0b.pdf

My Past Work in Human Motion & Control
======================================

Much of my prior research has focused on the problem of control identification
in human balance where I have attempted to answer this question:

   Given the simultaneous measurements of the kinematics of human motion and
   optionally human/environment interface and internal system forces, what is
   the casual relationship from sensing to actuation in human motion?

My graduate work focused on understanding the control mechanisms humans use
while balancing on a bicycle. Because the bicycle is a dynamically complex
vehicle [Astrom2005]_ [Meijaard2007]_ [Moore2007]_ [Moore2008]_ that acts as an
intermediary between the human and the environment it is a powerful platform
for understanding balance.

I began by applying principal component analysis to a large collection of
motion capture data during steady state bicycling on a treadmill, which
identified dominant motion patterns and exposed subtle leg motions used for
balance at extreme cases [Moore2009a]_, [Moore2011c]_. We further confirmed
this behavior with video analysis of more natural bicycling behavior around a
city and on a treadmill [Kooijman2009]_. Following those initial experiments, I
developed an instrumented bicycle, capable of accurately measuring the full
dynamic state of the rider-vehicle system [Moore2012]_ [Moore2013]_ and
collected copious amounts of data during responses to lateral perturbations in
path tracking tasks. Using a manual control based theoretic controller
[Hess2012]_ and data driven parameter estimation, I identified a set of
controllers that explained the dominant rider perturbation linear response
behavior [Moore2012]_, which was used to characterize a general controller that
was able to mimic human behavior for a broader set of control tasks. This was
expanded further with other theoretic controller structures for bicycling
[Schwab2012a]_ [Schwab2012]_ [Schwab2013]_ and also applied to aircraft control
identification [Hess2013]_.

The work on bicycle balance control identification lead into postdoctoral work
focused on developing controllers for lower extremity exoskeletons designed to
assist paraplegic individuals in walking. We partnered with Parker Hannifin
Corporation and targeted their Indego Exoskeleton. My goal was to provide
natural gait and unassisted balance for these devices, something that is still
lacking to this day. Utilizing an actuated dual-force plate treadmill coupled
with full body kinematic tracking, I collected large quantities of walking data
from both normal walking and longitudinally perturbed walking. I published the
data as one of the first data papers in the field [Moore2015b]_ and
demonstrated the effectiveness of the treadmill belt perturbation method. I
used this data with a direct gait cycle gain scheduled feedback identification
technique to identify possible closed loop controllers [Moore2013c]_
[Moore2014a]_ [Moore2014c]_. This work led to the development of an indirect
identification technique based on parameter estimation with direct collocation
to enable simulated validation of the controllers. Direct collocation gave us
the computational speed to discretely simulate hours of data. Starting with a
simpler problem, I developed methods with data derived from human perturbed
standing data. The techniques led to orders of magnitude of improvement in
computation speed and control identification strictly from kinematic data
[Moore2014e]_ [Moore2015]_.

Since moving into a teaching faculty position at UC Davis I have mentored and
led a number of sensing, instrumentation, and robotics projects that build on
the prior research with various local companies and undergraduate students. We
have developed an adaptive mouth-based control for an electric tricycle which
is ALS and quadriplegic friendly with Outrider USA and Disability Reports. This
past year my students developed a powered cable driven hand prostheses for
partial upper body paralysis with Ekso Bionics. With SRE Engineering we have
developed a wireless boot for measuring ground reaction forces for horse
trotting in non-laboratory settings that I would like to apply to human
walking. I also mentored a group of students that developed a robot to tie a
shoe, one of the more complex tasks human hands perform. Lastly, I have
developed a desktop balancing robot that will be used to validate the indirect
identification methods for standing balance that I mentioned above. My current
projects can be viewed on my lab website: http://mechmotum.github.io.

All of my research relies heavily on open source computational data analysis
and simulation tools, much of which I have developed and published. Most
notably, I am a core developer of SymPy [SymPyDevelopmentTeam2006]_, a computer
algebra system, and the maintainer of the classical mechanics package
[Gede2013]_. Our 2017 paper [Meurer2017]_ on the 11 year old software has over
100 citations, along with thousands of users and hundreds of contributors
making it one of the most popular packages in the Scientific Python ecosystem.
Additionally, I have developed a suite of bicycle dynamics related software
packages [Moore2010b]_ [Moore2011d]_ [Moore2011a]_ [Moore2011e]_ and
dynamics/biomechanics packages [Dembia2011]_ [Moore2011]_ [Moore2011b]_
[Moore2013b]_ [Moore2017b]_ [Moore2018a]_. Recently I have published a package
for general purpose trajectory optimization and parameter estimation
[Moore2018]_ and ski jump design [Moore2018a]_.

My Research Plans at UC Davis
=============================

As a professor of prosthetics and assistive robotics I will play an integral
role in UC Davis's vision for growth in neuroengineering. I plan to lead a
laboratory that will provide computational and experimental biomechanics
expertise alongside humanoid robot and assistive device design. This will
complement the existing and upcoming efforts that focus on the neural aspects
of an interdisciplinary neuroengineering core. I hope to revive the MAE
department's past notability in biomechanics with a modernized biomechatronics
focus. I also want to help catalyze making the Sacramento region a leader in
bio-robotics. The combination of UC Davis Engineering, UC Davis Med Center,
CSUS Engineering, our proximity to the Bay Area, and local companies such as
Intel and Siemens paired with the burgeoning local startup scene can tie in
with the Chancellor's plans for Sacramento and Davis to become a new hub for
technical innovation.

With more than a decade in the region, I have a wide network of partners to
bring this vision to life that span the UC Davis faculty and centers, UC Davis
Med Center, UC Davis Vet Med Center, local orthotics companies, and Bay Area
biomechanic and robotics companies. My network also spans beyond the region to
the state, national, and international collaborations. I plan to grow my
collaborations with regional companies and labs (e.g. Toyota Research
Institute, Motion Analysis, Ekso Bionics, Inscitech, Open Robotics, Stanford's
Neuromuscular Biomechanics Lab) along with my expanded collaborators (e.g.
Cleveland State's Human Motion and Control Laboratory, Cornell's Biorobotics
Lab, TU Delft's Biomechanics Department, and Meijo University).

I will continue to participate in a number of academic communities that I am
currently involved with. The lab will target conferences such as Dynamic
Walking and ROSCon along with the American and International Societies of
Biomechanics (including the ISB Technical Simulation group). On the software
side, we will continue to present at SciPy, PyData, and PyCon for open source
computation.

In the MAE department, I am interested in developing and growing collaborations
with Zhaodan Kong for high level robot planning and machine learning, Xinfan
Lin for estimation needs in human motion, Karen Moxon for neural sensing and
control, Sanjay Joshi for electromyography and control, and Stephen Robinson's
human/robotics integration. I have relationships with emeritus Profs. Hess,
Hubbard, Hull, Eke, Margolis, and Karnopp for dynamics, biomechanics, and
control. I am a faculty affiliate at the new Data Science Initiative and plan
leverage that relationship to grow our data centric computational work. I also
look forward to developing more cross disciplinary research partners, many which
have begun with the 70+ capstone design projects I have mentored.

The lab I am planning will be able to 1) collect motion data from humans and
robots in mobility related activities both in the lab and in natural
environments, 2) apply cutting edge learning, estimation, and identification
methods to characterize human control, 3) build and test controllers in
humanoid robots and assistive devices, and 4) contribute to and develop the
next generation of open source biomechatronic related software.

My initial project plans are multifold and  will build from my prior work. I
will start recruiting students for 1) applying parameter identification using
direct collocation to perturbed walking data to discover a gain scheduled
closed loop control, 2) development of a desktop balancing robot that simulates
perturbed human balancing, 3) accelerating lower body neuromuscular forward
dynamics simulations through implicit dynamics and  optimized code generation
and common sub-expression evaluation across CPU/GPU cores, and 4) development
of a low-fidelity lower limb exoskeleton for controller testing.

I will use the results from these initial projects to develop grant proposals
for the National Science Foundation's CMMI, IIS, CBET, and CNS divisions[1]_
and the NIH's rehabilitation and data focused initiatives which all have a
history of and currently support similar research. Additionally, I will pursue
funding with private foundations such as the Gordon and Betty Moore Foundation
and the Alfred P. Sloan Foundation for open source computational and data
innovation support and partner with prior mentioned companies for small
commercially relevant project support.

Given the opportunity, I have the skills, network, and vision to succeed as a
professor of prosthetics and assistive robotics at the University of
California, Davis.

.. [1] Division of Civil, Mechanical and Manufacturing Innovation, Division of
   Information & Intelligent Systems, Division of Chemical, Bioengineering,
   Environmental, and Transport Systems, and Division of Computer and Network
   Systems, respectively.

.. [SymPyDevelopmentTeam2006]
.. [Meijaard2007]
.. [Moore2007]
.. [Moore2008]
.. [Kooijman2009]
.. [Moore2009]
.. [Moore2009a]
.. [Ackermann2010]
.. [Moore2010]
.. [Moore2010a]
.. [Moore2010b]
.. [Peterson2010]
.. [vandenBogert2011]
.. [Dembia2011]
.. [Hubbard2011]
.. [Moore2011]
.. [Moore2011a]
.. [Moore2011b]
.. [Moore2011c]
.. [Moore2011d]
.. [Moore2011e]
.. [Hess2012]
.. [Schwab2012]
.. [Schwab2012a]
.. [Moore2012]
.. [Wang2012]
.. [Gede2013]
.. [Geijtenbeek2013]
.. [Hess2013]
.. [Schwab2013]
.. [Moore2013]
.. [Moore2013a]
.. [Moore2013b]
.. [Moore2013c]
.. [Mordatch2013]
.. [Moore2014]
.. [Moore2014a]
.. [Moore2015b]
.. [Moore2014c]
.. [Moore2014d]
.. [Moore2014e]
.. [Moore2014f]
.. [Dembia2015]
.. [Moore2015]
.. [Moore2015a]
.. [Moore2016]
.. [Heess2017]
.. [Meurer2017]
.. [Kresie2017]
.. [Kidzinski2017]
.. [Moore2017]
.. [Moore2017a]
.. [Moore2017b]
.. [Moore2017c]
.. [Cloud2018]
.. [Moore2018]
.. [Moore2018a]
.. [Moore2018b]
.. [OpenAI2018]
.. [Koelewijn2016]
.. [Astrom2005]
