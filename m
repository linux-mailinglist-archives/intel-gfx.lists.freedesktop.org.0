Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F1DC155B73
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2020 17:10:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69B056E0C2;
	Fri,  7 Feb 2020 16:10:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A6DC6E0C2
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Feb 2020 16:10:44 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id z9so3302778wrs.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 07 Feb 2020 08:10:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=D67ydG9EqmlTUTstxnD3lVxVLzDL+AkJCNS4f+5hEnI=;
 b=kOEJZfDjKN+PrtmHZZxWjexUlxLFdgvaGTQmNl52W5yBTXZSU95+3FReCNvLMrVUU1
 UcWKgowq96NtiddWgVUh7JDCbzzuobzuNaXQlhhflLTdIPz0MogjnzcYrsUz28JBxzEw
 J9EiH1sYfU6kopntdHP23H6TSb/CvPirYsSYo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=D67ydG9EqmlTUTstxnD3lVxVLzDL+AkJCNS4f+5hEnI=;
 b=AmZiHZweU0GRY7pN5WofY0rAcXD3IVKzzspJ414JB8jfulYs5wp2Tgc3gGt9uudLCS
 yrrokDuPU3QKXNCkpU+pJQ36o5IuBtSC/wiRVa3BZygLHLD7L35a0Py8+MAaUOTR2Q0j
 rKuGYcTmpsmSbXr7wcaJow1qeUZhwScpmbae6VEtX53HU7cY3TcjONPV/vnT3VAvO5bR
 VIRKxLGKOGgGFncMKEpjz+KTftNfKk6JwSw97o7o/B+tLlYSGTFink2nkpqE/5QVdpO9
 S9/kmB0fPsyAz4DjxL4CSloZhERGNof76UuslkT+0lb1iCAMeVXNTNuFKSPom5oCusNF
 VwIg==
X-Gm-Message-State: APjAAAVoBwo7sj8w7U97/tI6n/c42xrkaw4s2+rQXEZfIFXYYYUfIjoS
 I1bTOILvLAOfLgDoAGEWPaZEYdyJnbMCwg==
X-Google-Smtp-Source: APXvYqw4tUyb0EGYwGDuTb8Xsna+rSL2kPsCUyNuIFbzuHAO4MgCs32UKr61IrAJkE7/WBFNXWPnrA==
X-Received: by 2002:a5d:4481:: with SMTP id j1mr5425595wrq.348.1581091842786; 
 Fri, 07 Feb 2020 08:10:42 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id w20sm3834950wmk.34.2020.02.07.08.10.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Feb 2020 08:10:41 -0800 (PST)
Date: Fri, 7 Feb 2020 17:10:40 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200207161040.GF43062@phenom.ffwll.local>
References: <20200129195452.1278481-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200129195452.1278481-1-chris@chris-wilson.co.uk>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use the async worker to avoid
 reclaim tainting the ggtt->mutex
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 29, 2020 at 07:54:52PM +0000, Chris Wilson wrote:
> On Braswell and Broxton (also known as Valleyview and Apollolake), we
> need to serialise updates of the GGTT using the big stop_machine()
> hammer. This has the side effect of appearing to lockdep as a possible
> reclaim (since it uses the cpuhp mutex and that is tainted by per-cpu
> allocations). However, we want to use vm->mutex (including ggtt->mutex)
> from wthin the shrinker and so must avoid such possible taints. For this
> purpose, we introduced the asynchronous vma binding and we can apply it
> to the PIN_GLOBAL so long as take care to add the necessary waits for
> the worker afterwards.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/issues/211
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Hm, isn't that just the usual "lockdep cant see past a wait on another
thread" trick that doesn't actually fix anything? The locking context for
the pte writes and the wait seem exactly the same, at first glance at
least.

I dont' really have a different idea though :-/
-Daniel

> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c |  7 +++---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c      |  1 +
>  drivers/gpu/drm/i915/gt/intel_gt.c        |  2 +-
>  drivers/gpu/drm/i915/gt/intel_lrc.c       |  2 +-
>  drivers/gpu/drm/i915/gt/intel_ring.c      |  6 ++---
>  drivers/gpu/drm/i915/gt/intel_timeline.c  |  4 ++--
>  drivers/gpu/drm/i915/gt/uc/intel_guc.c    |  4 ++--
>  drivers/gpu/drm/i915/i915_gem.c           |  6 +++++
>  drivers/gpu/drm/i915/i915_vma.c           | 27 ++++++++++++++++++++++-
>  drivers/gpu/drm/i915/i915_vma.h           |  2 ++
>  10 files changed, 46 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 39fe9a5b4820..2504f4d05edf 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -527,7 +527,6 @@ static int pin_ggtt_status_page(struct intel_engine_cs *engine,
>  {
>  	unsigned int flags;
>  
> -	flags = PIN_GLOBAL;
>  	if (!HAS_LLC(engine->i915) && i915_ggtt_has_aperture(engine->gt->ggtt))
>  		/*
>  		 * On g33, we cannot place HWS above 256MiB, so
> @@ -540,11 +539,11 @@ static int pin_ggtt_status_page(struct intel_engine_cs *engine,
>  		 * above the mappable region (even though we never
>  		 * actually map it).
>  		 */
> -		flags |= PIN_MAPPABLE;
> +		flags = PIN_MAPPABLE;
>  	else
> -		flags |= PIN_HIGH;
> +		flags = PIN_HIGH;
>  
> -	return i915_vma_pin(vma, 0, 0, flags);
> +	return i915_ggtt_pin(vma, 0, flags);
>  }
>  
>  static int init_status_page(struct intel_engine_cs *engine)
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 79096722ce16..6af50d62d712 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -881,6 +881,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>  		ggtt->vm.insert_page    = bxt_vtd_ggtt_insert_page__BKL;
>  		if (ggtt->vm.clear_range != nop_clear_range)
>  			ggtt->vm.clear_range = bxt_vtd_ggtt_clear_range__BKL;
> +		ggtt->vm.bind_async_flags = I915_VMA_GLOBAL_BIND;
>  	}
>  
>  	ggtt->invalidate = gen8_ggtt_invalidate;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 143268083135..bf6c0f949e35 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -345,7 +345,7 @@ static int intel_gt_init_scratch(struct intel_gt *gt, unsigned int size)
>  		goto err_unref;
>  	}
>  
> -	ret = i915_vma_pin(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
> +	ret = i915_ggtt_pin(vma, 0, PIN_HIGH);
>  	if (ret)
>  		goto err_unref;
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 8f15ab7d8d88..e63ae4a17110 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -3259,7 +3259,7 @@ static int lrc_setup_wa_ctx(struct intel_engine_cs *engine)
>  		goto err;
>  	}
>  
> -	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
> +	err = i915_ggtt_pin(vma, 0, PIN_HIGH);
>  	if (err)
>  		goto err;
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
> index 374b28f13ca0..366013367526 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ring.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ring.c
> @@ -31,17 +31,15 @@ int intel_ring_pin(struct intel_ring *ring)
>  	if (atomic_fetch_inc(&ring->pin_count))
>  		return 0;
>  
> -	flags = PIN_GLOBAL;
> -
>  	/* Ring wraparound at offset 0 sometimes hangs. No idea why. */
> -	flags |= PIN_OFFSET_BIAS | i915_ggtt_pin_bias(vma);
> +	flags = PIN_OFFSET_BIAS | i915_ggtt_pin_bias(vma);
>  
>  	if (vma->obj->stolen)
>  		flags |= PIN_MAPPABLE;
>  	else
>  		flags |= PIN_HIGH;
>  
> -	ret = i915_vma_pin(vma, 0, 0, flags);
> +	ret = i915_ggtt_pin(vma, 0, flags);
>  	if (unlikely(ret))
>  		goto err_unpin;
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
> index 87716529cd2f..465f87b65901 100644
> --- a/drivers/gpu/drm/i915/gt/intel_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
> @@ -308,7 +308,7 @@ int intel_timeline_pin(struct intel_timeline *tl)
>  	if (atomic_add_unless(&tl->pin_count, 1, 0))
>  		return 0;
>  
> -	err = i915_vma_pin(tl->hwsp_ggtt, 0, 0, PIN_GLOBAL | PIN_HIGH);
> +	err = i915_ggtt_pin(tl->hwsp_ggtt, 0, PIN_HIGH);
>  	if (err)
>  		return err;
>  
> @@ -431,7 +431,7 @@ __intel_timeline_get_seqno(struct intel_timeline *tl,
>  		goto err_rollback;
>  	}
>  
> -	err = i915_vma_pin(vma, 0, 0, PIN_GLOBAL | PIN_HIGH);
> +	err = i915_ggtt_pin(vma, 0, PIN_HIGH);
>  	if (err) {
>  		__idle_hwsp_free(vma->private, cacheline);
>  		goto err_rollback;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index 5d00a3b2d914..c4c1523da7a6 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -678,8 +678,8 @@ struct i915_vma *intel_guc_allocate_vma(struct intel_guc *guc, u32 size)
>  	if (IS_ERR(vma))
>  		goto err;
>  
> -	flags = PIN_GLOBAL | PIN_OFFSET_BIAS | i915_ggtt_pin_bias(vma);
> -	ret = i915_vma_pin(vma, 0, 0, flags);
> +	flags = PIN_OFFSET_BIAS | i915_ggtt_pin_bias(vma);
> +	ret = i915_ggtt_pin(vma, 0, flags);
>  	if (ret) {
>  		vma = ERR_PTR(ret);
>  		goto err;
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index ff79da5657f8..dda1a0365f39 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -1009,6 +1009,12 @@ i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
>  	if (ret)
>  		return ERR_PTR(ret);
>  
> +	ret = i915_vma_wait_for_bind(vma);
> +	if (ret) {
> +		i915_vma_unpin(vma);
> +		return ERR_PTR(ret);
> +	}
> +
>  	return vma;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index 84e03da0d5f9..f11abd9553e8 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -339,6 +339,25 @@ struct i915_vma_work *i915_vma_work(void)
>  	return vw;
>  }
>  
> +int i915_vma_wait_for_bind(struct i915_vma *vma)
> +{
> +	int err = 0;
> +
> +	if (!rcu_access_pointer(vma->active.excl.fence)) {
> +		struct dma_fence *fence;
> +
> +		rcu_read_lock();
> +		fence = dma_fence_get_rcu_safe(&vma->active.excl.fence);
> +		rcu_read_unlock();
> +		if (fence) {
> +			err = dma_fence_wait(fence, MAX_SCHEDULE_TIMEOUT);
> +			dma_fence_put(fence);
> +		}
> +	}
> +
> +	return err;
> +}
> +
>  /**
>   * i915_vma_bind - Sets up PTEs for an VMA in it's corresponding address space.
>   * @vma: VMA to map
> @@ -977,8 +996,14 @@ int i915_ggtt_pin(struct i915_vma *vma, u32 align, unsigned int flags)
>  
>  	do {
>  		err = i915_vma_pin(vma, 0, align, flags | PIN_GLOBAL);
> -		if (err != -ENOSPC)
> +		if (err != -ENOSPC) {
> +			if (!err) {
> +				err = i915_vma_wait_for_bind(vma);
> +				if (err)
> +					i915_vma_unpin(vma);
> +			}
>  			return err;
> +		}
>  
>  		/* Unlike i915_vma_pin, we don't take no for an answer! */
>  		flush_idle_contexts(vm->gt);
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index 02b31a62951e..e1ced1df13e1 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -375,6 +375,8 @@ struct i915_vma *i915_vma_make_unshrinkable(struct i915_vma *vma);
>  void i915_vma_make_shrinkable(struct i915_vma *vma);
>  void i915_vma_make_purgeable(struct i915_vma *vma);
>  
> +int i915_vma_wait_for_bind(struct i915_vma *vma);
> +
>  static inline int i915_vma_sync(struct i915_vma *vma)
>  {
>  	/* Wait for the asynchronous bindings and pending GPU reads */
> -- 
> 2.25.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
