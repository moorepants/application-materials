Research Introduction
=====================

My research efforts center around understanding and improving human mobility by
developing biomemetic controllers for powered assistive devices and humanoid
robots and developing control augmentation for small manually controlled
vehicles. The ability humans have to ambulate and manipulate devices continues
to be the envy of engineers who desire to artificially mimic their motion.
Contemporary robots and machines are still limied in their ability to emulate
the robust capabilities of mamalian sensing and acutation. Understanding and
mimicking the intricacies of the mammalian neuromuscular system have the
potential to allow us to improve human life through assistive machine and
device design.

The fundamental question I am working on is:

   Can dynamically human-similar machines and their controllers be designed to
   move as a human would provided neurally-limited driving control inputs?

I am interested in identifying practical controllers for devices, robots, and
vehicles which encode feed-forward and feedback control such that the combined
human/machine system has identical motion to an able-bodied human. My main
focus is on improving balancing while standing and walking with lower limb
prostheses and exoskeletons. To do this my research currently has three primary
foci:

1. Identifying how humans balance and locomote through data intensive
   computational estimation, learning, and identification.
2. Applying biomemetic control algorithms and design enhancements derived from
   identified controllers to assistive devices such as exoskeletons, powered
   prostheses, small vehicles, and humanoid robots.
3. Developing next generation open and collaborative computational tools to
   back efforts in the first two items.

Current State of Human Motion & Control
=======================================

Deep reinforcement learning has had growing success in creating joint torque
driven closed loop control simulating low-fidelity humanoid models in complex
virtual environments, e.g. [Heess2017]_. Parallel efforts to develop closed
loop control through shooting and trajectory optimization methods that minimize
energy expenditure of high-fidelity neuromuscular models are able to produce
more limited, but realistic gait simulations [Ackermann2010]_
[vandenBogert2011]_ [Wang2012]_ [Geijtenbeek2013]_ [Mordatch2013]_. Very
recently these parallel efforts have merged with some signs of success. For
example, in the 2017 NIPS AI challenge contestants used deep learning to
discover realistic gait control for a muscle activated high-fidelity lower body
neuromuscular models [Kidzinski2017]_. The primary limitation of these latest
attempts are the computational speed the dynamically stiff simulations and
identification methods that require the results slow forward dynamic
simulations.

Application of balance and locomotion control in bipedal robots is very much
dominated by the non-academic success of Boston Dynamics. They rely on
controllers designed around the highest quality sensing and actuation platforms
which subsequently require high energy consumption. In general, bipedal robots
developed by the academic community trail Boston Dynamics machines in
performance, but are more successful at lower power consumption.

Powered assistive devices such as powered below- and above-knee prostheses have
had interesting recent developments. Lower limb exoskeleton for paraplegics are
just now being approved by the FDA for the US and European markets, e.g.Rewalk,
Indego, Esko. These devices rely primary on non-neural control, offer no
balance during gait, and very robotic gait.

In the past year, we have started to see merger's of the success in software
and the successes in hardware with demonstrations such as [OpenAI2018]_ but
much is a bright future for discovery with lower limb systems.

..
   TODO : Add Collin's clutch ankle paper. Add bicycle bmx paper.

My Past Work in Human Motion & Control
======================================

Much of my prior research has focused on the problem of control identification
in human balance where I have attempted to answer this question:

   Given the simultaneous measurements of the human/environment interface
   forces and/or internal system forces and kinematics of motion, what is the
   casual relationship from sensing to actuation in human motion?

My graduate work focused on understanding the control mechanisms humans use
while balancing on a bicycle, a surprisingly dynamically complex machine
[Meijaard2007]_. The bicycle acts as an intermediary between the environment
that must be manipulated by the human primarily through the authority of
steering input and/or supplemented by less-authoritative "body language". I
began by applying principal component analysis to hours of motion capture data
during steady state bicycling, which identified dominant motion patterns and
exposed subtle leg motions used for extreme balance [Moore2009a]_, [Moore2011c]_.
We further confirmed this behavior with video analysis in more natural
bicycling around a city and on a treadmill [Kooijman2009]_. Following those
initial experiments, I developed an instrumented bicycle, capable of accurately
measuring the full dynamic state of the rider-vehicle system [Moore2012]_
[Moore2013]_ and collected hours of data during responses to lateral
perturbations in path tracking tasks.  Using a manual control based theoretic
controller [Hess2012]_ and data driven parameter estimation, I identified a set
of controllers that explained the dominant rider perturbation linear response
behavior [Moore2012]_, which was used to characterized a general controller
that was able to mimic human behavior for an broader set of control tasks. This
was expanded further with other theoretic controller structures [Schwab2012a]_
[Schwab2012]_ [Schwab2013]_ and also applied to aircraft control identification
[Hess2013]_.

The work on bicycle balance control identification lead into my postdoctoral
work focused on the development of controllers that could be used in lower
extremity exoskeletons designed to help paraplegics walk again, in particular I
targeted the Parker Hannifin Indego Exoskeleton. My goal was to provide natural
gait and unassisted balance for these devices, something they are still lacking
to this day.  Utilizing an actuated dual-force plate treadmill coupled with
full body kinematic tracking I collected hours of walking data from both normal
walking and longitudinally perturbed walking, publishing the data as one of the
first data papers in the field [Moore2015b]_ and demonstrating the
effectiveness of the belt perturbation method. I used this data with a direct
gait cycle scheduled feedback identification technique to identify a possible
closed loop controllers [Moore2013c]_ [Moore2014a]_ [Moore2014c]_. The
inability to test the robustness of these controllers led to the development of
a indirect identification feedback control technique based on parameter
estimation with direct collocation. Direct collocation gave us the
computational speed to discretely simulate hours of data. Starting with a
simpler problem, I developed methods with data derived from human perturbed
standing data. The techniques led to orders of magnitude of improvement in
computation speed and control identification strictly from kinematic data
[Moore2014e]_ [Moore2015]_.

Since moving into teaching faculty position at UC Davis my research work has
declined, but I have mentored and led a number of sensing, instrumentation, and
robotics projects that build on the prior research with various local companies
and undergraduate students. We have developed an adaptive mouth based control
for an electric tricycle which is ALS and quadriplegic friendly with Outrider
USA and Disability Reports. This past year my students developed a powered
cable driven hand prostheses for partial upper body paralysis with Ekso
Bionics. We have developed a wireless boot for measuring ground reaction forces
in horse trotting in the field that I would like to develop for human walking.
I also mentor a group that developed a robot to tie a shoe; one of the more
complex tasks our human hands perform. Lastly, I have developed a desktop
balancing robot that will be used to validate the indirect identification
methods I developed during my postdoctoral work. My current projects can be
viewed on my lab website: http://mechmotum.github.io.

All of my research relies heavily on open source computational data analysis
and simulation tools, much of which I have developed and published. Most
notably, I am a core developer of SymPy [SymPyDevelopmentTeam2006]_, a computer
algebra system, and the maintainer of the classical mechanics package
[Gede2013]_. Our 2017 paper [Meuer2017]_ on the 11 year old software already
has over 100 citations, along with thousands of users and hundreds of
contributors making it one of the most popular packages in the Scientific
Python ecosystem. Additionally, I have developed a suite of bicycle dynamics
related software packages [Moore2010b]_ [Moore2011d]_ [Moore2011a]_
[Moore2011e]_ and dynamics/biomechanics packages [Dembia2011]_ [Moore2011]_
[Moore2011b]_ [Moore2013b]_ [Moore2017b]_ [Moore2018a]_. Recently I have
published a package for general purpose trajectory optimization and parameter
estimation [Moore2018]_.

My Plans in Human Motion & Control at UC Davis
==============================================

As a professor of prosthetics and assistive robotics I will play an integral
role in UC Davis's future neuroengineering vision. I plan to lead a laboratory
that will provide computational and experimental biomechanics expertise
alongside humanoid robot and assistive device design. This will complement the
existing and upcoming efforts that focus on the neural pieces of the
neuroengineering puzzle. Hiring me will also also revive the MAE department's
past notability in biomechanics with a modernized biomechatronics take. I also
want to help catalyze making the Sacramento region a leader in bio-robotics.
The combination of UC Davis Engineering, UC Davis Med Center, Sacramento State
Engineering, closeness to the Bay Area, and local companies such as Intel and
Siemens paired with the burgeoning startup scene and the Chancellor's plans for
Sacramento to become a tech center like Atlanta the potential and opportunity
is high.

With over a decade of time in the region, I have a wide network of partners to
bring this vision to life that span the UC Davis faculty and centers, UC Davis
Med Center, UC Davis Vet Med Center, local orthotics companies, and Bay Area
biomechanic and robotics companies. This network also spans beyond the region
to the state, national, and international collaborations. I plan to expand my
collaborations with regional companies and labs (e.g. Toyota Research
Institute, Motion Analysis, Ekso Bionics, Inscitech, Open Robotics, Stanford's
Neuromuscular Biomechanics Lab) along with my expanded collaborators (e.g.
Cleveland State's Human Motion and Control Laboratory, Cornell's Biorobotics
Lab, TU Delft's Biomechanics Department, and Meijo University's robotics labs).

I will further grow my presence through several communities that I am involved
in. The lab will target conferences such as the Dynamic Walking and ROSCon
along with the American and International Societies of Biomechanics
(particularly the ISB Technical Simulation group). On the software side, we
will continue to present at SciPy, PyData, and PyCon for computational
advances.

In the MAE department, I am interested in developing and growing collaborations
with Zhaodan Kong for high level robot planning and machine learning, Xinfan
Lin for estimation needs in human motion, Karen Moxen for neural sensing,
Sanjay Joshi for electromyography and control, and Stephen Robinson's human
integration. I have relationships with emeritus Profs. Hess, Hubbard, Hull,
Eke, Margolis, and Karnopp dynamics, biomechanics, which will play a role. I am
a faculty affiate at the new Data Science Initiative and plan leverage that
relationship to grow our data based computational work.

..
   TODO : Mention other departments. Titus, vet med dog guy

My lab will develop these specific capabilities:

- ability to collect motion data from humans and robots in mobility related
  activities both in the lab and in natural environments
- utilizing the cutting edge learning, estimation, and identification methods
  to characterize human control
- build and test controllers in humanoid robots and assistive devices
- contribute to and develop the next generation of open source biomechatronic
  software

The specific initial projects that build on my prior work will be:

- applying parameter identification using direct collocation to perturbed
  walking data to discover a gain scheduled closed loop control
- development of a desktop balancing robot that simulates perturbed human
  balancing
- accelerating lower body neuromuscular forward dynamics simulations through
  implicit dynamics and  optimized code generation and common sub-expression
  evaluation across CPU/GPU cores
- development of a low-fidelity lower limb exoskeleton for controller testing

The results from this work will prime the development of grant proposals to
national funders such as NSF's ... and NIH's Big Data, Data Commons, and
?biorobotics?. I will pursue funding with private foundations Moore, Sloan for
innovative computational work and to specific region companies for biorobotics
needs.

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
.. [Meuer2017]
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
