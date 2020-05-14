Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAF21D3001
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2020 14:39:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 669A16EB36;
	Thu, 14 May 2020 12:39:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by gabe.freedesktop.org (Postfix) with ESMTP id 280526E32D
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 May 2020 11:50:33 +0000 (UTC)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 987D630E;
 Thu, 14 May 2020 04:50:32 -0700 (PDT)
Received: from e113632-lin (e113632-lin.cambridge.arm.com [10.1.194.46])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 124FA3F305;
 Thu, 14 May 2020 04:50:30 -0700 (PDT)
References: <20200428032258.2518-1-currojerez@riseup.net>
 <20200511105701.GA2940@hirez.programming.kicks-ass.net>
 <874ksmuqx6.fsf@riseup.net>
User-agent: mu4e 0.9.17; emacs 26.3
From: Valentin Schneider <valentin.schneider@arm.com>
To: Francisco Jerez <currojerez@riseup.net>
In-reply-to: <874ksmuqx6.fsf@riseup.net>
Date: Thu, 14 May 2020 12:50:25 +0100
Message-ID: <jhjwo5erb0e.mognet@arm.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 14 May 2020 12:39:42 +0000
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


(+Lukasz)

On 11/05/20 22:01, Francisco Jerez wrote:
>> What I'm missing is an explanation for why this isn't using the
>> infrastructure that was build for these kinds of things? The thermal
>> framework, was AFAIU, supposed to help with these things, and the IPA
>> thing in particular is used by ARM to do exactly this GPU/CPU power
>> budget thing.
>>
>> If thermal/IPA is found wanting, why aren't we improving that?
>
> The GPU/CPU power budget "thing" is only a positive side effect of this
> series on some TDP-bound systems.  Its ultimate purpose is improving the
> energy efficiency of workloads which have a bottleneck on a device other
> than the CPU, by giving the bottlenecking device driver some influence
> over the response latency of CPUFREQ governors via a PM QoS interface.
> This seems to be completely outside the scope of the thermal framework
> and IPA AFAIU.
>

It's been a while since I've stared at IPA, but it does sound vaguely
familiar.

When thermally constrained, IPA figures out a budget and splits it between
actors (cpufreq and devfreq devices) depending on how much juice they are
asking for; see cpufreq_get_requested_power() and
devfreq_cooling_get_requested_power(). There's also some weighing involved.

If you look at the cpufreq cooling side of things, you'll see it also uses
the PM QoS interface. For instance, should IPA decide to cap the CPUs
(perhaps because say the GPU is the one drawing most of the juice), it'll
lead to a maximum frequency capping request.

So it does sound like that's what you want, only not just when thermally
constrained.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
