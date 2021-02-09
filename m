Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF941314BB7
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 10:37:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 296396EAA8;
	Tue,  9 Feb 2021 09:37:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 719986EAA8
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 09:37:24 +0000 (UTC)
IronPort-SDR: Sur8VrRzAZLRDr1YtM2tWQDHxKNkSj5MUo4byvbMPs6PWcDZpXkHpcO/frZmsCOCHxfpWdzPCi
 p/Cn+735bf4g==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="266688601"
X-IronPort-AV: E=Sophos;i="5.81,164,1610438400"; d="scan'208";a="266688601"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 01:37:24 -0800
IronPort-SDR: K4p38r1B2XhycYP26zCj00elMBMbzgQEiBSrDC1OThlkvbUhjBUqHWcvWS7NGM9LOCHh75hG9B
 kcCnTrep7u1g==
X-IronPort-AV: E=Sophos;i="5.81,164,1610438400"; d="scan'208";a="396047770"
Received: from gmaoz-mobl.ger.corp.intel.com (HELO [10.249.82.228])
 ([10.249.82.228])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 01:37:22 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210208105236.28498-1-chris@chris-wilson.co.uk>
 <20210208105236.28498-10-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9073d73f-d6ff-ae3a-0944-e62a6d190e2f@linux.intel.com>
Date: Tue, 9 Feb 2021 09:37:19 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210208105236.28498-10-chris@chris-wilson.co.uk>
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


On 08/02/2021 10:52, Chris Wilson wrote:

> diff --git a/drivers/gpu/drm/i915/Kconfig.profile b/drivers/gpu/drm/i915/Kconfig.profile
> index 35bbe2b80596..f1d009906f71 100644
> --- a/drivers/gpu/drm/i915/Kconfig.profile
> +++ b/drivers/gpu/drm/i915/Kconfig.profile
> @@ -1,3 +1,65 @@
> +choice
> +	prompt "Preferred scheduler"
> +	default DRM_I915_SCHED_VIRTUAL_DEADLINE
> +	help
> +	  Select the preferred method to decide the order of execution.
> +
> +	  The scheduler is used for two purposes. First to defer unready
> +	  jobs to not block execution of independent ready clients, so
> +	  preventing GPU stalls while work waits for other tasks. The second
> +	  purpose is to decide which task to run next, as well as decide
> +	  if that task should preempt the currently running task, or if
> +	  the current task has exceeded its allotment of GPU time and should
> +	  be replaced.
> +
> +	config DRM_I915_SCHED_FIFO
> +	bool "FIFO"
> +	help
> +	  No task reordering, tasks are executed in order of readiness.
> +	  First in, first out.
> +
> +	  Unready tasks do not block execution of other, independent clients.
> +	  A client will not be scheduled for execution until all of its
> +	  prerequisite work has completed.
> +
> +	  This disables the scheduler and puts it into a pass-through mode.
> +
> +	config DRM_I915_SCHED_PRIORITY
> +	bool "Priority"
> +	help
> +	  Strict priority ordering, equal priority tasks are executed
> +	  in order of readiness. Clients are liable to starve other clients,
> +	  causing uneven execution and excess task latency. High priority
> +	  clients will preempt lower priority clients and will run
> +	  uninterrupted.
> +
> +	  Note that interactive desktops will implicitly perform priority
> +	  boosting to minimise frame jitter.
> +
> +	config DRM_I915_SCHED_VIRTUAL_DEADLINE
> +	bool "Virtual Deadline"
> +	help
> +	  A fair scheduler based on MuQSS with priority-hinting.
> +
> +	  When a task is ready for execution, it is given a quota (from the
> +	  engine's timeslice) and a virtual deadline. The virtual deadline is
> +	  derived from the current time and the timeslice scaled by the
> +	  task's priority. Higher priority tasks are given an earlier
> +	  deadline and receive a large portion of the execution bandwidth.
> +
> +	  Requests are then executed in order of deadline completion.
> +	  Requests with earlier deadlines and higher priority than currently
> +	  executing on the engine will preempt the active task.
> +
> +endchoice
> +
> +config DRM_I915_SCHED
> +	int
> +	default 2 if DRM_I915_SCHED_VIRTUAL_DEADLINE
> +	default 1 if DRM_I915_SCHED_PRIORITY
> +	default 0 if DRM_I915_SCHED_FIFO
> +	default -1

Default -1 would mean it would ask the user and not default to deadline?

Implementation wise it is very neat how you did it so there is basically 
very little cost for the compiled out options. And code maintenance cost 
to support multiple options is pretty trivial as well.

Only cost I can see is potential bug reports if "wrong" scheduler was 
picked by someone. What do you envisage, or who, would be the use cases 
for not going with deadline? (I think deadline should be default.)

Then there is a question of how these kconfig will interact, or at least 
what their semantics would be, considering the GuC.

I think we can modify the kconfig blurb to say they only apply to 
execlists platforms, once we get a GuC scheduling platform upstream. And 
fudge some sched mode bits for sysfs reporting in that case.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
