Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58D54314D36
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 11:40:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2901E89CAD;
	Tue,  9 Feb 2021 10:40:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C51A289915
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 10:40:30 +0000 (UTC)
IronPort-SDR: 1JkQ0TKne5ujK56HvF2XiLHnqOLXLKd9ded34qQmcUHGbUnwW7jasqcgcyr+KQdM3Fvpv4sJ8U
 +ZkqI4vol4lg==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="181923097"
X-IronPort-AV: E=Sophos;i="5.81,164,1610438400"; d="scan'208";a="181923097"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 02:40:29 -0800
IronPort-SDR: TrkEIDcY88f0GoVjMwRVhWTHmqIsIgOfBbJEiHpEuTPgDa/2lPD0U8RMWWxlI0O9+ao9tWzkp/
 DcPjFhp/q94w==
X-IronPort-AV: E=Sophos;i="5.81,164,1610438400"; d="scan'208";a="396067290"
Received: from gmaoz-mobl.ger.corp.intel.com (HELO [10.249.82.228])
 ([10.249.82.228])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 02:40:26 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
 <20210208105236.28498-10-chris@chris-wilson.co.uk>
 <9073d73f-d6ff-ae3a-0944-e62a6d190e2f@linux.intel.com>
 <161286669315.7943.8584320401849289041@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <02ded36b-78dd-9162-d7ee-e4052bdba514@linux.intel.com>
Date: Tue, 9 Feb 2021 10:40:22 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <161286669315.7943.8584320401849289041@build.alporthouse.com>
Content-Language: en-US
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 09/02/2021 10:31, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2021-02-09 09:37:19)
>>
>> On 08/02/2021 10:52, Chris Wilson wrote:
>>
>>> diff --git a/drivers/gpu/drm/i915/Kconfig.profile b/drivers/gpu/drm/i915/Kconfig.profile
>>> index 35bbe2b80596..f1d009906f71 100644
>>> --- a/drivers/gpu/drm/i915/Kconfig.profile
>>> +++ b/drivers/gpu/drm/i915/Kconfig.profile
>>> @@ -1,3 +1,65 @@
>>> +choice
>>> +     prompt "Preferred scheduler"
>>> +     default DRM_I915_SCHED_VIRTUAL_DEADLINE
>>> +     help
>>> +       Select the preferred method to decide the order of execution.
>>> +
>>> +       The scheduler is used for two purposes. First to defer unready
>>> +       jobs to not block execution of independent ready clients, so
>>> +       preventing GPU stalls while work waits for other tasks. The second
>>> +       purpose is to decide which task to run next, as well as decide
>>> +       if that task should preempt the currently running task, or if
>>> +       the current task has exceeded its allotment of GPU time and should
>>> +       be replaced.
>>> +
>>> +     config DRM_I915_SCHED_FIFO
>>> +     bool "FIFO"
>>> +     help
>>> +       No task reordering, tasks are executed in order of readiness.
>>> +       First in, first out.
>>> +
>>> +       Unready tasks do not block execution of other, independent clients.
>>> +       A client will not be scheduled for execution until all of its
>>> +       prerequisite work has completed.
>>> +
>>> +       This disables the scheduler and puts it into a pass-through mode.
>>> +
>>> +     config DRM_I915_SCHED_PRIORITY
>>> +     bool "Priority"
>>> +     help
>>> +       Strict priority ordering, equal priority tasks are executed
>>> +       in order of readiness. Clients are liable to starve other clients,
>>> +       causing uneven execution and excess task latency. High priority
>>> +       clients will preempt lower priority clients and will run
>>> +       uninterrupted.
>>> +
>>> +       Note that interactive desktops will implicitly perform priority
>>> +       boosting to minimise frame jitter.
>>> +
>>> +     config DRM_I915_SCHED_VIRTUAL_DEADLINE
>>> +     bool "Virtual Deadline"
>>> +     help
>>> +       A fair scheduler based on MuQSS with priority-hinting.
>>> +
>>> +       When a task is ready for execution, it is given a quota (from the
>>> +       engine's timeslice) and a virtual deadline. The virtual deadline is
>>> +       derived from the current time and the timeslice scaled by the
>>> +       task's priority. Higher priority tasks are given an earlier
>>> +       deadline and receive a large portion of the execution bandwidth.
>>> +
>>> +       Requests are then executed in order of deadline completion.
>>> +       Requests with earlier deadlines and higher priority than currently
>>> +       executing on the engine will preempt the active task.
>>> +
>>> +endchoice
>>> +
>>> +config DRM_I915_SCHED
>>> +     int
>>> +     default 2 if DRM_I915_SCHED_VIRTUAL_DEADLINE
>>> +     default 1 if DRM_I915_SCHED_PRIORITY
>>> +     default 0 if DRM_I915_SCHED_FIFO
>>> +     default -1
>>
>> Default -1 would mean it would ask the user and not default to deadline?
> 
> CONFIG_DRM_I915_SCHED is unnamed, it is never itself presented to the
> user. The choice is, and that ends up setting one of the 3 values, which
> is then mapped to an integer value by DRM_I915_SCHED. That was done to
> give the hierarchy to the policies which resulted in the cascade of
> supporting fifo as a subset of priorites and priorities as a subset of
> deadlines. Which also ties nicely into the different backends being able
> to select different scheduling levels for themselves (no scheduling at
> all for legacy ringbuffer and mock, deadlines for execlists/ringscheduler,
> and fifo for guc).

Yes sorry, there is "default DRM_I915_SCHED_VIRTUAL_DEADLINE" above 
which I missed.

>> Implementation wise it is very neat how you did it so there is basically
>> very little cost for the compiled out options. And code maintenance cost
>> to support multiple options is pretty trivial as well.
>>
>> Only cost I can see is potential bug reports if "wrong" scheduler was
>> picked by someone. What do you envisage, or who, would be the use cases
>> for not going with deadline? (I think deadline should be default.)
> 
> The first thing I did with it was compare none/priority/deadlines with
> wsim and ift, that's what I would expect most to try as well (replace
> wsim with their favourite benchmark). For instance, it was reassuring
> that timeslicing just worked, even without priorities. Beyond testing, it
> is a gesture to putting policy back into the hands of the user, though
> to truly do that we would make it a sysfs attribute.
> 
> That found a couple of bugs to make sure i915_sched_defer_request
> degraded back into sorting by priorities (or not). And suggested maybe
> we should try harder to avoid semaphores without the more adaptable
> scheduling modes.
> 
> As for feedback in bugs, the choice should be included with the engine
> state dump.

I think as minimum some strong sentences should be put into the 
"Preferred scheduler" kconfig help saying not to change the default away 
from deadline unless one really really knows what they are doing. You 
know the usual kconfig language for these sort of situations.

>> Then there is a question of how these kconfig will interact, or at least
>> what their semantics would be, considering the GuC.
> 
> Hence the weasel word of "preferred". This config is the maximum
> scheduling level, if the backend does not provide for request reordering
> at all (e.g. the ringbuffer), then the user wishing to use a different
> scheduler is out of luck. Also being a module level parameter, different
> devices within the system may support different schedulers, and yet we
> still want them to interact. Which poses a very real risk of priority
> inversion across the boundaries. That I do not have an answer for, just
> the intention to write tests to demonstrate the issue.

Yes modparam vs multi-gpu we can solve in a generic fashion one day.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
