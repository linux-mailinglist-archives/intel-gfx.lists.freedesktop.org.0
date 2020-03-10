Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74E0F17F462
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 11:07:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B783B6E858;
	Tue, 10 Mar 2020 10:07:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE1326E856
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 10:07:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 03:07:36 -0700
X-IronPort-AV: E=Sophos;i="5.70,536,1574150400"; d="scan'208";a="288991065"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO [10.252.21.27])
 ([10.252.21.27])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 10 Mar 2020 03:07:35 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200306133852.3420322-1-chris@chris-wilson.co.uk>
 <20200306133852.3420322-4-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f93b81f1-ad00-da75-92dd-dad7b4467416@linux.intel.com>
Date: Tue, 10 Mar 2020 10:07:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200306133852.3420322-4-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 04/17] drm/i915: Tweak scheduler's
 kick_submission()
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


On 06/03/2020 13:38, Chris Wilson wrote:
> Skip useless priority bumping on adding a new dependency, but otherwise
> prevent tasklet scheduling until we have completed all the potential
> rescheduling.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/i915_scheduler.c | 7 ++++++-
>   1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_scheduler.c b/drivers/gpu/drm/i915/i915_scheduler.c
> index 52f71e83e088..603cba36d6a4 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler.c
> +++ b/drivers/gpu/drm/i915/i915_scheduler.c
> @@ -209,6 +209,8 @@ static void kick_submission(struct intel_engine_cs *engine,
>   	if (!inflight)
>   		goto unlock;
>   
> +	engine->execlists.queue_priority_hint = prio;
> +

What is the significance of moving this up? I couldn't correlate it to 
the commit message.

>   	/*
>   	 * If we are already the currently executing context, don't
>   	 * bother evaluating if we should preempt ourselves.
> @@ -216,7 +218,6 @@ static void kick_submission(struct intel_engine_cs *engine,
>   	if (inflight->context == rq->context)
>   		goto unlock;
>   
> -	engine->execlists.queue_priority_hint = prio;
>   	if (need_preempt(prio, rq_prio(inflight)))
>   		tasklet_hi_schedule(&engine->execlists.tasklet);
>   
> @@ -463,11 +464,15 @@ int i915_sched_node_add_dependency(struct i915_sched_node *node,
>   	if (!dep)
>   		return -ENOMEM;
>   
> +	local_bh_disable();
> +
>   	if (!__i915_sched_node_add_dependency(node, signal, dep,
>   					      I915_DEPENDENCY_EXTERNAL |
>   					      I915_DEPENDENCY_ALLOC))
>   		i915_dependency_free(dep);
>   
> +	local_bh_enable(); /* kick submission tasklet */
> +

And this presumably postpones the tasklet until __bump_priority -> 
__i915_schedule is finished. But then why the request submission path 
which calls __i915_sched_node_add_dependency directly does not need this 
treatment?

Regards,

Tvrtko

>   	return 0;
>   }
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
