Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35D7B314D09
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 11:31:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F77C6EADA;
	Tue,  9 Feb 2021 10:31:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 692E06EADA
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 10:31:37 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.69.177; 
Received: from localhost (unverified [78.156.69.177]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23820179-1500050 for multiple; Tue, 09 Feb 2021 10:31:32 +0000
MIME-Version: 1.0
In-Reply-To: <9073d73f-d6ff-ae3a-0944-e62a6d190e2f@linux.intel.com>
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
 <20210208105236.28498-10-chris@chris-wilson.co.uk>
 <9073d73f-d6ff-ae3a-0944-e62a6d190e2f@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 09 Feb 2021 10:31:33 +0000
Message-ID: <161286669315.7943.8584320401849289041@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 10/31] drm/i915: Fair low-latency scheduling
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2021-02-09 09:37:19)
> 
> On 08/02/2021 10:52, Chris Wilson wrote:
> 
> > diff --git a/drivers/gpu/drm/i915/Kconfig.profile b/drivers/gpu/drm/i915/Kconfig.profile
> > index 35bbe2b80596..f1d009906f71 100644
> > --- a/drivers/gpu/drm/i915/Kconfig.profile
> > +++ b/drivers/gpu/drm/i915/Kconfig.profile
> > @@ -1,3 +1,65 @@
> > +choice
> > +     prompt "Preferred scheduler"
> > +     default DRM_I915_SCHED_VIRTUAL_DEADLINE
> > +     help
> > +       Select the preferred method to decide the order of execution.
> > +
> > +       The scheduler is used for two purposes. First to defer unready
> > +       jobs to not block execution of independent ready clients, so
> > +       preventing GPU stalls while work waits for other tasks. The second
> > +       purpose is to decide which task to run next, as well as decide
> > +       if that task should preempt the currently running task, or if
> > +       the current task has exceeded its allotment of GPU time and should
> > +       be replaced.
> > +
> > +     config DRM_I915_SCHED_FIFO
> > +     bool "FIFO"
> > +     help
> > +       No task reordering, tasks are executed in order of readiness.
> > +       First in, first out.
> > +
> > +       Unready tasks do not block execution of other, independent clients.
> > +       A client will not be scheduled for execution until all of its
> > +       prerequisite work has completed.
> > +
> > +       This disables the scheduler and puts it into a pass-through mode.
> > +
> > +     config DRM_I915_SCHED_PRIORITY
> > +     bool "Priority"
> > +     help
> > +       Strict priority ordering, equal priority tasks are executed
> > +       in order of readiness. Clients are liable to starve other clients,
> > +       causing uneven execution and excess task latency. High priority
> > +       clients will preempt lower priority clients and will run
> > +       uninterrupted.
> > +
> > +       Note that interactive desktops will implicitly perform priority
> > +       boosting to minimise frame jitter.
> > +
> > +     config DRM_I915_SCHED_VIRTUAL_DEADLINE
> > +     bool "Virtual Deadline"
> > +     help
> > +       A fair scheduler based on MuQSS with priority-hinting.
> > +
> > +       When a task is ready for execution, it is given a quota (from the
> > +       engine's timeslice) and a virtual deadline. The virtual deadline is
> > +       derived from the current time and the timeslice scaled by the
> > +       task's priority. Higher priority tasks are given an earlier
> > +       deadline and receive a large portion of the execution bandwidth.
> > +
> > +       Requests are then executed in order of deadline completion.
> > +       Requests with earlier deadlines and higher priority than currently
> > +       executing on the engine will preempt the active task.
> > +
> > +endchoice
> > +
> > +config DRM_I915_SCHED
> > +     int
> > +     default 2 if DRM_I915_SCHED_VIRTUAL_DEADLINE
> > +     default 1 if DRM_I915_SCHED_PRIORITY
> > +     default 0 if DRM_I915_SCHED_FIFO
> > +     default -1
> 
> Default -1 would mean it would ask the user and not default to deadline?

CONFIG_DRM_I915_SCHED is unnamed, it is never itself presented to the
user. The choice is, and that ends up setting one of the 3 values, which
is then mapped to an integer value by DRM_I915_SCHED. That was done to
give the hierarchy to the policies which resulted in the cascade of
supporting fifo as a subset of priorites and priorities as a subset of
deadlines. Which also ties nicely into the different backends being able
to select different scheduling levels for themselves (no scheduling at
all for legacy ringbuffer and mock, deadlines for execlists/ringscheduler,
and fifo for guc).

> Implementation wise it is very neat how you did it so there is basically 
> very little cost for the compiled out options. And code maintenance cost 
> to support multiple options is pretty trivial as well.
> 
> Only cost I can see is potential bug reports if "wrong" scheduler was 
> picked by someone. What do you envisage, or who, would be the use cases 
> for not going with deadline? (I think deadline should be default.)

The first thing I did with it was compare none/priority/deadlines with
wsim and ift, that's what I would expect most to try as well (replace
wsim with their favourite benchmark). For instance, it was reassuring
that timeslicing just worked, even without priorities. Beyond testing, it
is a gesture to putting policy back into the hands of the user, though
to truly do that we would make it a sysfs attribute.

That found a couple of bugs to make sure i915_sched_defer_request
degraded back into sorting by priorities (or not). And suggested maybe
we should try harder to avoid semaphores without the more adaptable
scheduling modes.

As for feedback in bugs, the choice should be included with the engine
state dump.

> Then there is a question of how these kconfig will interact, or at least 
> what their semantics would be, considering the GuC.

Hence the weasel word of "preferred". This config is the maximum
scheduling level, if the backend does not provide for request reordering
at all (e.g. the ringbuffer), then the user wishing to use a different
scheduler is out of luck. Also being a module level parameter, different
devices within the system may support different schedulers, and yet we
still want them to interact. Which poses a very real risk of priority
inversion across the boundaries. That I do not have an answer for, just
the intention to write tests to demonstrate the issue.

> I think we can modify the kconfig blurb to say they only apply to 
> execlists platforms, once we get a GuC scheduling platform upstream. And 
> fudge some sched mode bits for sysfs reporting in that case.

Aye, we will need some fudging for the GuC as it presents a very limited
interface and probably merits some unique caps.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
