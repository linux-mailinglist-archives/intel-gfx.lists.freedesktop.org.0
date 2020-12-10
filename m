Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 762212D69F5
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Dec 2020 22:34:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF3F56EB5C;
	Thu, 10 Dec 2020 21:34:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E823A6EB5C
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Dec 2020 21:34:10 +0000 (UTC)
IronPort-SDR: g4OW9rERLsRxr4VQbk0K31Sglo3wCWCAloX/xL2t+/eFvi5UpFcfCLliir7sxZhlX5I1g5QPfL
 QDOQU2cd0Eag==
X-IronPort-AV: E=McAfee;i="6000,8403,9831"; a="161387223"
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="161387223"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 13:34:10 -0800
IronPort-SDR: lGrJls/YaINWDexmkDlHfrCQ58ehYo48YloMtaG+d6HXydT3VDCc6Uxu7Xk3w0V1PpHEWzHDeo
 iULbi0ZQ2O4w==
X-IronPort-AV: E=Sophos;i="5.78,409,1599548400"; d="scan'208";a="349010743"
Received: from unknown (HELO sdutt-i7) ([10.165.21.147])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2020 13:34:10 -0800
Date: Thu, 10 Dec 2020 13:28:24 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201210212824.GA24184@sdutt-i7>
References: <20201210080240.24529-1-chris@chris-wilson.co.uk>
 <20201210080240.24529-21-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201210080240.24529-21-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 21/21] drm/i915/gt: Use ppHWSP for unshared
 non-semaphore related timelines
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

On Thu, Dec 10, 2020 at 08:02:40AM +0000, Chris Wilson wrote:
> When we are not using semaphores with a context/engine, we can simply
> reuse the same seqno location across wraps, but we still require each
> timeline to have its own address. For LRC submission, each context is
> prefixed by a per-process HWSP, which provides us with a unique location
> for each context-local timeline. A shared timeline that is common to
> multiple contexts will continue to use a separate page.
> 
> This enables us to create position invariant contexts should we feel the
> need to relocate them.
> 

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>  .../drm/i915/gt/intel_execlists_submission.c  | 37 +++++++++++--------
>  1 file changed, 22 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 8bff0559a6a9..cc1b3509d808 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -4749,6 +4749,14 @@ static struct intel_timeline *pinned_timeline(struct intel_context *ce)
>  						 page_unmask_bits(tl));
>  }
>  
> +static struct intel_timeline *pphwsp_timeline(struct intel_context *ce,
> +					      struct i915_vma *state)
> +{
> +	return __intel_timeline_create(ce->engine->gt, state,
> +				       I915_GEM_HWS_SEQNO_ADDR |
> +				       INTEL_TIMELINE_CONTEXT);
> +}
> +
>  static int __execlists_context_alloc(struct intel_context *ce,
>  				     struct intel_engine_cs *engine)
>  {
> @@ -4779,6 +4787,16 @@ static int __execlists_context_alloc(struct intel_context *ce,
>  		goto error_deref_obj;
>  	}
>  
> +	ring = intel_engine_create_ring(engine, (unsigned long)ce->ring);
> +	if (IS_ERR(ring)) {
> +		ret = PTR_ERR(ring);
> +		goto error_deref_obj;
> +	}
> +
> +	ret = populate_lr_context(ce, ctx_obj, engine, ring);
> +	if (ret)
> +		goto error_ring_free;
> +
>  	if (!page_mask_bits(ce->timeline)) {
>  		struct intel_timeline *tl;
>  
> @@ -4788,29 +4806,18 @@ static int __execlists_context_alloc(struct intel_context *ce,
>  		 */
>  		if (unlikely(ce->timeline))
>  			tl = pinned_timeline(ce);
> -		else
> +		else if (intel_engine_has_semaphores(engine))
>  			tl = intel_timeline_create(engine->gt);
> +		else
> +			tl = pphwsp_timeline(ce, vma);
>  		if (IS_ERR(tl)) {
>  			ret = PTR_ERR(tl);
> -			goto error_deref_obj;
> +			goto error_ring_free;
>  		}
>  
>  		ce->timeline = tl;
>  	}
>  
> -	ring = intel_engine_create_ring(engine, (unsigned long)ce->ring);
> -	if (IS_ERR(ring)) {
> -		ret = PTR_ERR(ring);
> -		goto error_deref_obj;
> -	}
> -
> -	ret = populate_lr_context(ce, ctx_obj, engine, ring);
> -	if (ret) {
> -		drm_dbg(&engine->i915->drm,
> -			"Failed to populate LRC: %d\n", ret);
> -		goto error_ring_free;
> -	}
> -
>  	ce->ring = ring;
>  	ce->state = vma;
>  
> -- 
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
