Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4228C7A938D
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Sep 2023 12:20:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B875310E5A9;
	Thu, 21 Sep 2023 10:20:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD21B10E5A9
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Sep 2023 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695291633; x=1726827633;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=t+KusAE44LiNUYpILwl+fkxUjWooFNm0JUnwooSgbl8=;
 b=nlilo/Ohqx5ume83c+/TRcCIFLd5IZW9jd10zoaO2UCrAm5ano0pf6J5
 af/b2mYrtDD/j8EPdDRBAMyoa4HwpxOS3i36HtBdNT4XtSlgvrhblkjrU
 OlAXbaQY5nLz6/wNb5YmKarJZBjZaSr5Vjb9IQGO30YO+kBVRHcjBZznk
 Wl+eONSetal+N51f4/dKgX+fIYNmeHeo/kNk+ohGCfs9xmkA5OS0+eThI
 7um658iyVkafQpH9t6IVeV4GpJnf8EXcGKESJd51z2ap+SBCi7hceLpBO
 f1Ln2QNY+It+PJzmOCVVYyQ/J0ZUt2k1b51eYFq1y1iLNKTcsw2LqGsh6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="466788864"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="466788864"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 03:20:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="1077855860"
X-IronPort-AV: E=Sophos;i="6.03,165,1694761200"; d="scan'208";a="1077855860"
Received: from srsubram-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.215.255.193])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Sep 2023 03:20:28 -0700
Date: Thu, 21 Sep 2023 12:20:22 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZQwY5spaJyMUjKIv@ashyti-mobl2.lan>
References: <20230918170257.8586-1-nirmoy.das@intel.com>
 <20230918170257.8586-3-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230918170257.8586-3-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Create a kernel context for
 GGTT updates
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
Cc: chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

[...]

>  	ce = create_kernel_context(engine);
>  	if (IS_ERR(ce))
>  		return PTR_ERR(ce);
> +	/*
> +	 * Create a separate pinned context for GGTT update with blitter engine
> +	 * if a platform require such service. MI_UPDATE_GTT works on other
> +	 * engines as well but BCS should be less busy engine so pick that for
> +	 * GGTT updates.
> +	 */
> +	if (engine->id == BCS0) {
> +		bce = create_ggtt_bind_context(engine);
> +		if (IS_ERR(bce)) {
> +			intel_engine_destroy_pinned_context(ce);
> +			return PTR_ERR(bce);

goto err_context.

> +		}
> +	}
>  
>  	ret = measure_breadcrumb_dw(ce);
>  	if (ret < 0)
> @@ -1464,11 +1491,14 @@ static int engine_init_common(struct intel_engine_cs *engine)
>  
>  	engine->emit_fini_breadcrumb_dw = ret;
>  	engine->kernel_context = ce;
> +	engine->bind_context = bce;
>  
>  	return 0;
>  
>  err_context:
>  	intel_engine_destroy_pinned_context(ce);
> +	if (bce)
> +		intel_engine_destroy_pinned_context(ce);

You can make a goto err_bce_context here

>  	return ret;
>  }
>  
> @@ -1536,6 +1566,9 @@ void intel_engine_cleanup_common(struct intel_engine_cs *engine)
>  
>  	if (engine->kernel_context)
>  		intel_engine_destroy_pinned_context(engine->kernel_context);
> +	if (engine->bind_context)
> +		intel_engine_destroy_pinned_context(engine->bind_context);
> +
>  

blank line

>  	GEM_BUG_ON(!llist_empty(&engine->barrier_tasks));
>  	cleanup_status_page(engine);
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index a7e677598004..a8f527fab0f0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -416,6 +416,9 @@ struct intel_engine_cs {
>  	struct llist_head barrier_tasks;
>  
>  	struct intel_context *kernel_context; /* pinned */
> +	struct intel_context *bind_context; /* pinned, only for BCS0 */
> +	/* mark the bind context's availability status */
> +	bool bind_context_ready;

So... this is used only once, set to ready and move forward...
this would never be false, otherwise it means that we failed to
create the bind_context...

>  	/**
>  	 * pinned_contexts_list: List of pinned contexts. This list is only
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 449f0b7fc843..cd0ff1597db9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -1019,3 +1019,21 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
>  	else
>  		return I915_MAP_WC;
>  }
> +
> +void intel_gt_bind_context_set_ready(struct intel_gt *gt, bool ready)
> +{
> +	struct intel_engine_cs *engine = gt->engine[BCS0];
> +
> +	if (engine && engine->bind_context)
> +		engine->bind_context_ready = ready;
> +}
> +
> +bool intel_gt_is_bind_context_ready(struct intel_gt *gt)
> +{
> +	struct intel_engine_cs *engine = gt->engine[BCS0];
> +
> +	if (engine)
> +		return engine->bind_context_ready;

... can't we just use the bind_context being NULL as a boolean
meaning and save this extra boolean that will always stay there
and always hold the same value?

> +	return false;
> +}
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index 239848bcb2a4..9e70e625cebc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -180,4 +180,6 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
>  					      struct drm_i915_gem_object *obj,
>  					      bool always_coherent);
>  
> +void intel_gt_bind_context_set_ready(struct intel_gt *gt, bool ready);
> +bool intel_gt_is_bind_context_ready(struct intel_gt *gt);

I think there is no mention anywhere of these two functions. Can
we add some comments or some description in the log?

Thanks,
Andi

>  #endif /* __INTEL_GT_H__ */
> -- 
> 2.41.0
