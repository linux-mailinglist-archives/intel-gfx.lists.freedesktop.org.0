Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1346155827
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 14:11:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E9C86FC7E;
	Fri,  7 Feb 2020 13:11:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8621A6FC7E
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 13:11:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Feb 2020 05:11:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,413,1574150400"; d="scan'208";a="312027156"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga001.jf.intel.com with ESMTP; 07 Feb 2020 05:11:16 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 43A1C5C0D7B; Fri,  7 Feb 2020 15:10:21 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200207125827.2787472-1-chris@chris-wilson.co.uk>
References: <20200207125827.2787472-1-chris@chris-wilson.co.uk>
Date: Fri, 07 Feb 2020 15:10:21 +0200
Message-ID: <87r1z68rwi.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Use the kernel_context to
 measure the breadcrumb size
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

Chris Wilson <chris@chris-wilson.co.uk> writes:

> We set up a dummy ring in order to measure the size we require for our
> breadcrumb emission, so that we don't have to manually count dwords! We
> can pass in the kernel_context to use for this so that if required it is
> known for the breadcrumb emitter, and we can reuse some details from the
> kernel_context to reduce the number of temporaries we have to mock.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 47 +++++++++--------------
>  1 file changed, 19 insertions(+), 28 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index b1c7b1ed6149..f6f5e1ec48fc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -631,13 +631,13 @@ static int engine_setup_common(struct intel_engine_cs *engine)
>  
>  struct measure_breadcrumb {
>  	struct i915_request rq;
> -	struct intel_timeline timeline;
>  	struct intel_ring ring;
>  	u32 cs[1024];
>  };
>  
> -static int measure_breadcrumb_dw(struct intel_engine_cs *engine)
> +static int measure_breadcrumb_dw(struct intel_context *ce)
>  {
> +	struct intel_engine_cs *engine = ce->engine;
>  	struct measure_breadcrumb *frame;
>  	int dw = -ENOMEM;
>  
> @@ -647,39 +647,27 @@ static int measure_breadcrumb_dw(struct intel_engine_cs *engine)
>  	if (!frame)
>  		return -ENOMEM;
>  
> -	if (intel_timeline_init(&frame->timeline,
> -				engine->gt,
> -				engine->status_page.vma))
> -		goto out_frame;
> -
> -	mutex_lock(&frame->timeline.mutex);

From locking a mock to locking an existing context.

But it is a fresh one so I decide not to worry.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> +	frame->rq.i915 = engine->i915;
> +	frame->rq.engine = engine;
> +	frame->rq.context = ce;
> +	rcu_assign_pointer(frame->rq.timeline, ce->timeline);
>  
>  	frame->ring.vaddr = frame->cs;
>  	frame->ring.size = sizeof(frame->cs);
>  	frame->ring.effective_size = frame->ring.size;
>  	intel_ring_update_space(&frame->ring);
> -
> -	frame->rq.i915 = engine->i915;
> -	frame->rq.engine = engine;
>  	frame->rq.ring = &frame->ring;
> -	rcu_assign_pointer(frame->rq.timeline, &frame->timeline);
> -
> -	dw = intel_timeline_pin(&frame->timeline);
> -	if (dw < 0)
> -		goto out_timeline;
>  
> +	mutex_lock(&ce->timeline->mutex);
>  	spin_lock_irq(&engine->active.lock);
> +
>  	dw = engine->emit_fini_breadcrumb(&frame->rq, frame->cs) - frame->cs;
> +
>  	spin_unlock_irq(&engine->active.lock);
> +	mutex_unlock(&ce->timeline->mutex);
>  
>  	GEM_BUG_ON(dw & 1); /* RING_TAIL must be qword aligned */
>  
> -	intel_timeline_unpin(&frame->timeline);
> -
> -out_timeline:
> -	mutex_unlock(&frame->timeline.mutex);
> -	intel_timeline_fini(&frame->timeline);
> -out_frame:
>  	kfree(frame);
>  	return dw;
>  }
> @@ -754,12 +742,6 @@ static int engine_init_common(struct intel_engine_cs *engine)
>  
>  	engine->set_default_submission(engine);
>  
> -	ret = measure_breadcrumb_dw(engine);
> -	if (ret < 0)
> -		return ret;
> -
> -	engine->emit_fini_breadcrumb_dw = ret;
> -
>  	/*
>  	 * We may need to do things with the shrinker which
>  	 * require us to immediately switch back to the default
> @@ -772,9 +754,18 @@ static int engine_init_common(struct intel_engine_cs *engine)
>  	if (IS_ERR(ce))
>  		return PTR_ERR(ce);
>  
> +	ret = measure_breadcrumb_dw(ce);
> +	if (ret < 0)
> +		goto err_context;
> +
> +	engine->emit_fini_breadcrumb_dw = ret;
>  	engine->kernel_context = ce;
>  
>  	return 0;
> +
> +err_context:
> +	intel_context_put(ce);
> +	return ret;
>  }
>  
>  int intel_engines_init(struct intel_gt *gt)
> -- 
> 2.25.0
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
