Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A2C1D590A
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 20:25:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D92976ECEE;
	Fri, 15 May 2020 18:25:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by gabe.freedesktop.org (Postfix) with ESMTP id 919D66E193
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 18:09:59 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0A2921042;
 Fri, 15 May 2020 11:09:59 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 785E73F71E;
 Fri, 15 May 2020 11:09:57 -0700 (PDT)
References: <20200428032258.2518-1-currojerez@riseup.net>
 <20200511105701.GA2940@hirez.programming.kicks-ass.net>
 <874ksmuqx6.fsf@riseup.net> <jhjwo5erb0e.mognet@arm.com>
 <87a72at44d.fsf@riseup.net>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Francisco Jerez <currojerez@riseup.net>
In-reply-to: <87a72at44d.fsf@riseup.net>
Date: Fri, 15 May 2020 19:09:52 +0100
Message-ID: <jhjv9kxqdcf.mognet@arm.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 15 May 2020 18:25:41 +0000
Subject: Re: [Intel-gfx] [RFC] GPU-bound energy efficiency improvements for
 the intel_pstate driver (v2.99)
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
Cc: amit.kucheria@verdurent.com, linux-pm@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, intel-gfx@lists.freedesktop.org,
 daniel.lezcano@linaro.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 chris.p.wilson@intel.com, "Pandruvada,
 Srinivas" <srinivas.pandruvada@intel.com>, rui.zhang@intel.com,
 Lukasz Luba <Lukasz.Luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 15/05/20 01:48, Francisco Jerez wrote:
> Valentin Schneider <valentin.schneider@arm.com> writes:
>
>> (+Lukasz)
>>
>> On 11/05/20 22:01, Francisco Jerez wrote:
>>>> What I'm missing is an explanation for why this isn't using the
>>>> infrastructure that was build for these kinds of things? The thermal
>>>> framework, was AFAIU, supposed to help with these things, and the IPA
>>>> thing in particular is used by ARM to do exactly this GPU/CPU power
>>>> budget thing.
>>>>
>>>> If thermal/IPA is found wanting, why aren't we improving that?
>>>
>>> The GPU/CPU power budget "thing" is only a positive side effect of this
>>> series on some TDP-bound systems.  Its ultimate purpose is improving the
>>> energy efficiency of workloads which have a bottleneck on a device other
>>> than the CPU, by giving the bottlenecking device driver some influence
>>> over the response latency of CPUFREQ governors via a PM QoS interface.
>>> This seems to be completely outside the scope of the thermal framework
>>> and IPA AFAIU.
>>>
>>
>> It's been a while since I've stared at IPA, but it does sound vaguely
>> familiar.
>>
>> When thermally constrained, IPA figures out a budget and splits it between
>> actors (cpufreq and devfreq devices) depending on how much juice they are
>> asking for; see cpufreq_get_requested_power() and
>> devfreq_cooling_get_requested_power(). There's also some weighing involved.
>>
>
> I'm aware of those.  Main problem is that the current mechanism for IPA
> to figure out the requested power of each actor is based on a rough
> estimate of their past power consumption: If an actor was operating at a
> highly energy-inefficient regime it will end up requesting more power
> than another actor with the same load but more energy-efficient
> behavior.

Right, we do mix load (busy time for either cpufreq and devfreq devices
AFAIR) and current state (freq) into one single power value.

> The IPA power allocator is therefore ineffective at improving
> the energy efficiency of an agent beyond its past behavior --
> Furthermore it seems to *rely* on individual agents being somewhat
> energetically responsible in order for its power allocation result to be
> anywhere close to optimal.  But improving the energy efficiency of an
> agent seems useful in its own right, whether IPA is used to balance
> power across agents or not.  That's precisely the purpose of this
> series.
>
>> If you look at the cpufreq cooling side of things, you'll see it also uses
>> the PM QoS interface. For instance, should IPA decide to cap the CPUs
>> (perhaps because say the GPU is the one drawing most of the juice), it'll
>> lead to a maximum frequency capping request.
>>
>> So it does sound like that's what you want, only not just when thermally
>> constrained.
>
> Capping the CPU frequency from random device drivers is highly
> problematic, because the CPU is a shared resource which a number of
> different concurrent applications might be using beyond the GPU client.
> The GPU driver has no visibility over its impact on the performance of
> other applications.  And even in a single-task environment, in order to
> behave as effectively as the present series the GPU driver would need to
> monitor the utilization of *all* CPUs in the system and place a
> frequency constraint on each one of them (since there is the potential
> of the task scheduler migrating the process from one CPU to another
> without notice).  Furthermore these frequency constraints would need to
> be updated at high frequency in order to avoid performance degradation
> whenever the balance of load between CPU and IO device fluctuates.
>
> The present series attempts to remove the burden of computing frequency
> constraints out of individual device drivers into the CPUFREQ governor.
> Instead the device driver provides a response latency constraint when it
> encounters a bottleneck, which can be more easily derived from hardware
> and protocol characteristics than a CPU frequency.  PM QoS aggregates
> the response latency constraints provided by all applications and gives
> CPUFREQ a single response latency target compatible with all of them (so
> a device driver specifying a high latency target won't lead to
> performance degradation in a concurrent application with lower latency
> constraints).  The CPUFREQ governor then computes frequency constraints
> for each CPU core that minimize energy usage without limiting
> throughput, based on the results obtained from CPU performance counters,
> while guaranteeing that a discontinuous transition in CPU utilization
> leads to a proportional transition in the CPU frequency before the
> specified response latency has elapsed.

Right, I think I see your point there. I'm thinking the 'actual' IPA gurus
(Lukasz or even Javi) may want to have a look at this.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
