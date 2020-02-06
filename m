Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 35F18154982
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 17:44:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 357926FAB2;
	Thu,  6 Feb 2020 16:44:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 577CF6FAB2
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 16:44:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Feb 2020 08:44:37 -0800
X-IronPort-AV: E=Sophos;i="5.70,410,1574150400"; d="scan'208";a="225068612"
Received: from aabader-mobl1.ccr.corp.intel.com (HELO [10.252.21.249])
 ([10.252.21.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 06 Feb 2020 08:44:36 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <158100623556.7306.572507111354238028@skylake-alporthouse-com>
 <20200206163243.2559830-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b86a8022-7a6a-43f7-5d4f-3d2766848ae1@linux.intel.com>
Date: Thu, 6 Feb 2020 16:44:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200206163243.2559830-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Prevent queuing retire workers
 on the virtual engine
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


On 06/02/2020 16:32, Chris Wilson wrote:
> Virtual engines are fleeting. They carry a reference count and may be freed
> when their last request is retired. This makes them unsuitable for the
> task of housing engine->retire.work so assert that it is not used.
> 
> Tvrtko tracked down an instance where we did indeed violate this rule.
> In virtual_submit_request, we flush a completed request directly with
> __i915_request_submit and this causes us to queue that request on the
> veng's breadcrumb list and signal it. Leading us down a path where we
> should not attach the retire.
> 
> v2: Always select a physical engine before submitting, and so avoid
> using the veng as a signaler.
> 
> Reported-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Fixes: dc93c9b69315 ("drm/i915/gt: Schedule request retirement when signaler idles")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine.h      |  1 +
>   drivers/gpu/drm/i915/gt/intel_gt_requests.c |  3 +++
>   drivers/gpu/drm/i915/gt/intel_lrc.c         | 21 ++++++++++++++++++---
>   drivers/gpu/drm/i915/i915_request.c         |  2 ++
>   4 files changed, 24 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index b36ec1fddc3d..5b21ca5478c2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -217,6 +217,7 @@ void intel_engine_disarm_breadcrumbs(struct intel_engine_cs *engine);
>   static inline void
>   intel_engine_signal_breadcrumbs(struct intel_engine_cs *engine)
>   {
> +	GEM_BUG_ON(!engine->breadcrumbs.irq_work.func);
>   	irq_work_queue(&engine->breadcrumbs.irq_work);
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> index 7ef1d37970f6..8a5054f21bf8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> @@ -99,6 +99,9 @@ static bool add_retire(struct intel_engine_cs *engine,
>   void intel_engine_add_retire(struct intel_engine_cs *engine,
>   			     struct intel_timeline *tl)
>   {
> +	/* We don't deal well with the engine disappearing beneath us */
> +	GEM_BUG_ON(intel_engine_is_virtual(engine));
> +
>   	if (add_retire(engine, tl))
>   		schedule_work(&engine->retire_work);
>   }
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index c196fb90c59f..639b5be56026 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -4883,6 +4883,22 @@ static void virtual_submission_tasklet(unsigned long data)
>   	local_irq_enable();
>   }
>   
> +static void __ve_request_submit(const struct virtual_engine *ve,
> +				struct i915_request *rq)
> +{
> +	struct intel_engine_cs *engine = ve->siblings[0]; /* totally random! */

We don't preserve the execution engine in ce->inflight? No.. Will random 
engine have any effect? Will proper waiters get signaled?

> +
> +	/*
> +	 * Select a real engine to act as our permanent storage
> +	 * and signaler for the stale request, and prevent
> +	 * this virtual engine from leaking into the execution state.
> +	 */
> +	spin_lock(&engine->active.lock);

Nesting phys lock under veng lock will be okay?

Regards,

Tvrtko

> +	rq->engine = engine;
> +	__i915_request_submit(rq);
> +	spin_unlock(&engine->active.lock);
> +}
> +
>   static void virtual_submit_request(struct i915_request *rq)
>   {
>   	struct virtual_engine *ve = to_virtual_engine(rq->engine);
> @@ -4900,12 +4916,12 @@ static void virtual_submit_request(struct i915_request *rq)
>   	old = ve->request;
>   	if (old) { /* background completion event from preempt-to-busy */
>   		GEM_BUG_ON(!i915_request_completed(old));
> -		__i915_request_submit(old);
> +		__ve_request_submit(ve, old);
>   		i915_request_put(old);
>   	}
>   
>   	if (i915_request_completed(rq)) {
> -		__i915_request_submit(rq);
> +		__ve_request_submit(ve, rq);
>   
>   		ve->base.execlists.queue_priority_hint = INT_MIN;
>   		ve->request = NULL;
> @@ -5004,7 +5020,6 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
>   	snprintf(ve->base.name, sizeof(ve->base.name), "virtual");
>   
>   	intel_engine_init_active(&ve->base, ENGINE_VIRTUAL);
> -	intel_engine_init_breadcrumbs(&ve->base);
>   	intel_engine_init_execlists(&ve->base);
>   
>   	ve->base.cops = &virtual_context_ops;
> diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
> index 0ecc2cf64216..2c45d4b93e2c 100644
> --- a/drivers/gpu/drm/i915/i915_request.c
> +++ b/drivers/gpu/drm/i915/i915_request.c
> @@ -358,6 +358,8 @@ bool __i915_request_submit(struct i915_request *request)
>   	GEM_BUG_ON(!irqs_disabled());
>   	lockdep_assert_held(&engine->active.lock);
>   
> +	GEM_BUG_ON(intel_engine_is_virtual(engine));
> +
>   	/*
>   	 * With the advent of preempt-to-busy, we frequently encounter
>   	 * requests that we have unsubmitted from HW, but left running
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
