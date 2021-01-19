Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8EA52FB57F
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Jan 2021 11:58:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 510F66E147;
	Tue, 19 Jan 2021 10:58:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 267A66E147
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Jan 2021 10:58:11 +0000 (UTC)
IronPort-SDR: L/GWhC7BlKHN7IWSl1dcJmHtXd5CI2PXfeN3Z1GvQUSmYdgLKd4/CQHm3Jz58NX8TDtPM743jw
 AKBjY1G2ZfBA==
X-IronPort-AV: E=McAfee;i="6000,8403,9868"; a="176337256"
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="176337256"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2021 02:58:10 -0800
IronPort-SDR: 9cAfLmLa0HmMnfDvC/yCVAJ/YJSbSzhRnc3Dv1xVGkb5UhG+MnjGqE+1YbgtVkcwcYfBD9/3VG
 JOELYrbeYeZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,358,1602572400"; d="scan'208";a="570973994"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 19 Jan 2021 02:58:08 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 7816B5C20E6; Tue, 19 Jan 2021 12:55:23 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20210119094053.6919-4-chris@chris-wilson.co.uk>
References: <20210119094053.6919-1-chris@chris-wilson.co.uk>
 <20210119094053.6919-4-chris@chris-wilson.co.uk>
Date: Tue, 19 Jan 2021 12:55:23 +0200
Message-ID: <87v9btjiw4.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/gt: Pull ring submission
 resume under its caller forcewake
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> Take advantage of calling xcs_resume under a forcewake by using direct
> mmio access. In particular, we can avoid the sleeping variants to allow
> resume to be called from softirq context, required for engine resets.
>
> v2: Keep the positing read at the start of resume as a guardian memory
> barrier.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  .../gpu/drm/i915/gt/intel_ring_submission.c   | 93 +++++++++----------
>  1 file changed, 42 insertions(+), 51 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> index 44159595d909..bf2834424add 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
> @@ -122,31 +122,27 @@ static void set_hwsp(struct intel_engine_cs *engine, u32 offset)
>  		hwsp = RING_HWS_PGA(engine->mmio_base);
>  	}
>  
> -	intel_uncore_write(engine->uncore, hwsp, offset);
> -	intel_uncore_posting_read(engine->uncore, hwsp);
> +	intel_uncore_write_fw(engine->uncore, hwsp, offset);
> +	intel_uncore_posting_read_fw(engine->uncore, hwsp);
>  }
>  
>  static void flush_cs_tlb(struct intel_engine_cs *engine)
>  {
> -	struct drm_i915_private *dev_priv = engine->i915;
> -
> -	if (!IS_GEN_RANGE(dev_priv, 6, 7))
> +	if (!IS_GEN_RANGE(engine->i915, 6, 7))
>  		return;
>  
>  	/* ring should be idle before issuing a sync flush*/
> -	drm_WARN_ON(&dev_priv->drm,
> -		    (ENGINE_READ(engine, RING_MI_MODE) & MODE_IDLE) == 0);
> +	GEM_DEBUG_WARN_ON((ENGINE_READ(engine, RING_MI_MODE) & MODE_IDLE) == 0);
>  
> -	ENGINE_WRITE(engine, RING_INSTPM,
> -		     _MASKED_BIT_ENABLE(INSTPM_TLB_INVALIDATE |
> -					INSTPM_SYNC_FLUSH));
> -	if (intel_wait_for_register(engine->uncore,
> -				    RING_INSTPM(engine->mmio_base),
> -				    INSTPM_SYNC_FLUSH, 0,
> -				    1000))
> -		drm_err(&dev_priv->drm,
> -			"%s: wait for SyncFlush to complete for TLB invalidation timed out\n",
> -			engine->name);
> +	ENGINE_WRITE_FW(engine, RING_INSTPM,
> +			_MASKED_BIT_ENABLE(INSTPM_TLB_INVALIDATE |
> +					   INSTPM_SYNC_FLUSH));
> +	if (__intel_wait_for_register_fw(engine->uncore,
> +					 RING_INSTPM(engine->mmio_base),
> +					 INSTPM_SYNC_FLUSH, 0,
> +					 2000, 0, NULL))
> +		ENGINE_TRACE(engine,
> +			     "wait for SyncFlush to complete for TLB invalidation timed out\n");
>  }
>  
>  static void ring_setup_status_page(struct intel_engine_cs *engine)
> @@ -177,13 +173,13 @@ static void set_pp_dir(struct intel_engine_cs *engine)
>  	if (!vm)
>  		return;
>  
> -	ENGINE_WRITE(engine, RING_PP_DIR_DCLV, PP_DIR_DCLV_2G);
> -	ENGINE_WRITE(engine, RING_PP_DIR_BASE, pp_dir(vm));
> +	ENGINE_WRITE_FW(engine, RING_PP_DIR_DCLV, PP_DIR_DCLV_2G);
> +	ENGINE_WRITE_FW(engine, RING_PP_DIR_BASE, pp_dir(vm));
>  
>  	if (INTEL_GEN(engine->i915) >= 7) {
> -		ENGINE_WRITE(engine,
> -			     RING_MODE_GEN7,
> -			     _MASKED_BIT_ENABLE(GFX_PPGTT_ENABLE));
> +		ENGINE_WRITE_FW(engine,
> +				RING_MODE_GEN7,
> +				_MASKED_BIT_ENABLE(GFX_PPGTT_ENABLE));
>  	}
>  }
>  
> @@ -191,13 +187,10 @@ static int xcs_resume(struct intel_engine_cs *engine)
>  {
>  	struct drm_i915_private *dev_priv = engine->i915;
>  	struct intel_ring *ring = engine->legacy.ring;
> -	int ret = 0;
>  
>  	ENGINE_TRACE(engine, "ring:{HEAD:%04x, TAIL:%04x}\n",
>  		     ring->head, ring->tail);
>  
> -	intel_uncore_forcewake_get(engine->uncore, FORCEWAKE_ALL);
> -
>  	if (HWS_NEEDS_PHYSICAL(dev_priv))
>  		ring_setup_phys_status_page(engine);
>  	else
> @@ -214,7 +207,7 @@ static int xcs_resume(struct intel_engine_cs *engine)
>  	 * also enforces ordering), otherwise the hw might lose the new ring
>  	 * register values.
>  	 */
> -	ENGINE_WRITE(engine, RING_START, i915_ggtt_offset(ring->vma));
> +	ENGINE_WRITE_FW(engine, RING_START, i915_ggtt_offset(ring->vma));
>  
>  	/* Check that the ring offsets point within the ring! */
>  	GEM_BUG_ON(!intel_ring_offset_valid(ring, ring->head));
> @@ -224,46 +217,44 @@ static int xcs_resume(struct intel_engine_cs *engine)
>  	set_pp_dir(engine);
>  
>  	/* First wake the ring up to an empty/idle ring */
> -	ENGINE_WRITE(engine, RING_HEAD, ring->head);
> -	ENGINE_WRITE(engine, RING_TAIL, ring->head);
> +	ENGINE_WRITE_FW(engine, RING_HEAD, ring->head);
> +	ENGINE_WRITE_FW(engine, RING_TAIL, ring->head);
>  	ENGINE_POSTING_READ(engine, RING_TAIL);
>  
> -	ENGINE_WRITE(engine, RING_CTL, RING_CTL_SIZE(ring->size) | RING_VALID);
> +	ENGINE_WRITE_FW(engine, RING_CTL,
> +			RING_CTL_SIZE(ring->size) | RING_VALID);
>  
>  	/* If the head is still not zero, the ring is dead */
> -	if (intel_wait_for_register(engine->uncore,
> -				    RING_CTL(engine->mmio_base),
> -				    RING_VALID, RING_VALID,
> -				    50)) {
> -		drm_err(&dev_priv->drm, "%s initialization failed "
> -			  "ctl %08x (valid? %d) head %08x [%08x] tail %08x [%08x] start %08x [expected %08x]\n",
> -			  engine->name,
> -			  ENGINE_READ(engine, RING_CTL),
> -			  ENGINE_READ(engine, RING_CTL) & RING_VALID,
> -			  ENGINE_READ(engine, RING_HEAD), ring->head,
> -			  ENGINE_READ(engine, RING_TAIL), ring->tail,
> -			  ENGINE_READ(engine, RING_START),
> -			  i915_ggtt_offset(ring->vma));
> -		ret = -EIO;
> -		goto out;
> +	if (__intel_wait_for_register_fw(engine->uncore,
> +					 RING_CTL(engine->mmio_base),
> +					 RING_VALID, RING_VALID,
> +					 5000, 0, NULL)) {
> +		drm_err(&dev_priv->drm,
> +			"%s initialization failed; "
> +			"ctl %08x (valid? %d) head %08x [%08x] tail %08x [%08x] start %08x [expected %08x]\n",
> +			engine->name,
> +			ENGINE_READ(engine, RING_CTL),
> +			ENGINE_READ(engine, RING_CTL) & RING_VALID,
> +			ENGINE_READ(engine, RING_HEAD), ring->head,
> +			ENGINE_READ(engine, RING_TAIL), ring->tail,
> +			ENGINE_READ(engine, RING_START),
> +			i915_ggtt_offset(ring->vma));
> +		return -EIO;
>  	}
>  
>  	if (INTEL_GEN(dev_priv) > 2)
> -		ENGINE_WRITE(engine,
> -			     RING_MI_MODE, _MASKED_BIT_DISABLE(STOP_RING));
> +		ENGINE_WRITE_FW(engine,
> +				RING_MI_MODE, _MASKED_BIT_DISABLE(STOP_RING));
>  
>  	/* Now awake, let it get started */
>  	if (ring->tail != ring->head) {
> -		ENGINE_WRITE(engine, RING_TAIL, ring->tail);
> +		ENGINE_WRITE_FW(engine, RING_TAIL, ring->tail);
>  		ENGINE_POSTING_READ(engine, RING_TAIL);
>  	}
>  
>  	/* Papering over lost _interrupts_ immediately following the restart */
>  	intel_engine_signal_breadcrumbs(engine);
> -out:
> -	intel_uncore_forcewake_put(engine->uncore, FORCEWAKE_ALL);
> -
> -	return ret;
> +	return 0;
>  }
>  
>  static void sanitize_hwsp(struct intel_engine_cs *engine)
> -- 
> 2.20.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
