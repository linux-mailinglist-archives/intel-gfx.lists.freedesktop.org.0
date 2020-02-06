Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD24154968
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2020 17:40:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99B4B6FAA7;
	Thu,  6 Feb 2020 16:40:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44EEE6FAA7
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Feb 2020 16:40:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20138905-1500050 for multiple; Thu, 06 Feb 2020 16:40:35 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200206163243.2559830-1-chris@chris-wilson.co.uk>
References: <158100623556.7306.572507111354238028@skylake-alporthouse-com>
 <20200206163243.2559830-1-chris@chris-wilson.co.uk>
Message-ID: <158100723395.7306.4293107933765605235@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 06 Feb 2020 16:40:33 +0000
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-02-06 16:32:43)
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
>  drivers/gpu/drm/i915/gt/intel_engine.h      |  1 +
>  drivers/gpu/drm/i915/gt/intel_gt_requests.c |  3 +++
>  drivers/gpu/drm/i915/gt/intel_lrc.c         | 21 ++++++++++++++++++---
>  drivers/gpu/drm/i915/i915_request.c         |  2 ++
>  4 files changed, 24 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index b36ec1fddc3d..5b21ca5478c2 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -217,6 +217,7 @@ void intel_engine_disarm_breadcrumbs(struct intel_engine_cs *engine);
>  static inline void
>  intel_engine_signal_breadcrumbs(struct intel_engine_cs *engine)
>  {
> +       GEM_BUG_ON(!engine->breadcrumbs.irq_work.func);
>         irq_work_queue(&engine->breadcrumbs.irq_work);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> index 7ef1d37970f6..8a5054f21bf8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> @@ -99,6 +99,9 @@ static bool add_retire(struct intel_engine_cs *engine,
>  void intel_engine_add_retire(struct intel_engine_cs *engine,
>                              struct intel_timeline *tl)
>  {
> +       /* We don't deal well with the engine disappearing beneath us */
> +       GEM_BUG_ON(intel_engine_is_virtual(engine));
> +
>         if (add_retire(engine, tl))
>                 schedule_work(&engine->retire_work);
>  }
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index c196fb90c59f..639b5be56026 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -4883,6 +4883,22 @@ static void virtual_submission_tasklet(unsigned long data)
>         local_irq_enable();
>  }
>  
> +static void __ve_request_submit(const struct virtual_engine *ve,
> +                               struct i915_request *rq)
> +{
> +       struct intel_engine_cs *engine = ve->siblings[0]; /* totally random! */
> +
> +       /*
> +        * Select a real engine to act as our permanent storage
> +        * and signaler for the stale request, and prevent
> +        * this virtual engine from leaking into the execution state.
> +        */
> +       spin_lock(&engine->active.lock);
> +       rq->engine = engine;
> +       __i915_request_submit(rq);
> +       spin_unlock(&engine->active.lock);

This won't do either as it inverts the ve/phys locking order... And wait
for it...

We call ve->submit_request() underneath the phys->active.lock when
unsubmitting.

Bleurgh. Let's take the path in v1 for a bit while I see if this can be
unravelled.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
