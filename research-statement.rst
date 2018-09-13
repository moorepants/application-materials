..
   Research questions:
      - Understanding how humans balance, ambulate, etc.
      - Powered prostheses
      - Developing next gen sim tools

Research Introduction
=====================

My research efforts center around understanding and improving human mobility by
developing biomemetic controllers for powered assistive devices and humanoid
robots and developing control augmentation for small manually controlled
vehicles. The ability humans have to ambulate an manipulate devices is still
very much the envy of engineers who desire to artificially mimic their motion.
Mammalian sensing and actuation capabilities are robust in ways that our robots
and machines can still only emulate in a limited fashion. Understanding and
grossly mimicking the intricacies of the mammalian neuromuscular system have
the potential to allow us to improve human life through assistive machine and
device design. The fundamental question I am working on is:

   Can dynamically human-similar machines and their controllers be designed to
   move as a human would provided neurally-limited driving control inputs?

I am interested in identifying practical controllers for devices, robots, and
vehicles which encode feed-forward and feedback control such that the combined
human/machine system has identical motion to an able bodied human. In
particular I am focusing on improving balancing while standing and walking with
lower limb prostheses and exoskeletons. To do this my research currently has
three primary focuses:

1. Identifying how humans balance and locomote through data intensive
   computational estimation, learning, and identification.
2. Applying biomemetic control algorithms and design enhancements derived from
   identified controllers to assistive devices such as exoskeletons, powered
   prostheses, small vehicles, and humanoid robots.
3. Developing next generation open and collaborative computational tools to
   back efforts in the first two items.

Current State of Human Lower Body Control
=========================================

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
   TODO : Add Collin's clutch ankle paper.

My Past work
============

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
     internal at ucd: xinfan, kong, stravos, hess, hubbard, hull, robinson, joshi, dsi
     companies: TRI, Ekso Bionics, kindred.ai, guy in sac, med center
     academics: cleveland state, stanford

As a professor of prosthetics and assistive robotics I will play an integral
role in UC Davis's future neuroengineering vision. I plan to lead a laboratory
that will provide computational and experimental biomechanics expertise
alongside humanoid robot and assistive device design. This will complement the
existing and upcoming efforts that focus more on the neural pieces of the
neuroengineering puzzle. Hiring me will also also revive the MAE department's
past notability in biomechanics with a modernized biomechatronics take. I also
want to help catalyze making the Sacramento region a leader in bio-robotics.
The combination of UC Davis Engineering, UC Davis Med Center, Sacramento State
Engineering, closeness to the Bay Area, and local companies such as Intel and
Siemens paired with the burgeoning startup scene and a mechanical engineering
hole left by Aerojet-Rocketdyne and the Chancellor's plans for the Aggie Square
growth, opportunity and potential is high.

With over a decade of time in the region, I have a wide network of partners to
bring this vision to life that span the UC Davis faculty and centers, UC Davis
Med Center, local orthotics companies, Bay Area robotics companies and, etc.
along with a national and international collaborators.

Bay Area companies (Toyota Research Institute, Ekso Bionics, Biorad, Inscitech,
Open Robotics)

We will further develop collaborations through several communities that I am
involved in are , such as the Dynamic Walking conference (top walking robot and
biomechanics series), both the American and International Societies of
Biomechanics (in particular the ISB techinical simulation group), SciPy,
PyData, PyCon, ROSCon.

I will continue to develop
relationships with regional compaines, such at Toyota Research Institute, Ekso
Bionics, Open Source Robotics and partnet academics Stanford Neruomusclar
Biomehcanics lab,

Cleveland State Human Motion and control, TU Delft
Biomechanics.

Profs. Lin, Kong, Robinson, Joshi, Moxon, emeritus Profs. Hess, Hubbard,
Hull in the MAE department.


My lab will develop these specific capabilities:

- ability to collect motion data from humans and robots in
  mobility related activities
- utilizing the cutting edge learning, estimation, and identification methods
to characterize human control in these activities.
- build and test robots and devices and
- contribute to and develop the next generation of open source software.

We will pull graduate students from engineering disiplinces (primarily MAE, EE,
BME, ECS)

The group will house and develop computational and experimental
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
