Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FDC35F0CE0
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 16:00:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4262110ED12;
	Fri, 30 Sep 2022 14:00:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B276D10ED16
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 14:00:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664546444; x=1696082444;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pcLRgY4aTGtBrQJQr1AW57zi3tnL7Ln1Jyabt/X6wjM=;
 b=duO8dtIeLw3JkdybBiicMMGz4TqWRiGku6NDMMHoq9+/4VTEdjJlOTdM
 HJ4nCObHNzc53H5jhMR0J0CAtxV7KM7qFQYNXgu2pqI/7ocAfGFZz48vQ
 tCwMsMvBeMgtHrZoGBHf0+qVihk/A11mSuj/x7ewnSfUiq2GhYSRZ8G5C
 3YU++uwT3yolVdslk20V6s3mAoxxhptFx4TpQJwrRqMW0Fl00+6Avq741
 JQG8ZTsuGBT7hvp3Cjg2Ne+7D/sbGmksf4kJaq1GyW9GgQC5TaDrfiGt1
 euE4w889Jws5Z3NA0pP2FY95TWSGStY2N4osROx6ubqDSbXvdbVARA5bz w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="388474022"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="388474022"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 07:00:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="655963202"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="655963202"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga001.jf.intel.com with SMTP; 30 Sep 2022 07:00:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Sep 2022 17:00:40 +0300
Date: Fri, 30 Sep 2022 17:00:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matthew Auld <matthew.auld@intel.com>
Message-ID: <Yzb2iHBSFpr6i8B2@intel.com>
References: <20220930134731.389416-1-matthew.auld@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220930134731.389416-1-matthew.auld@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/display: consider
 DG2_RC_CCS_CC when migrating buffers
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>,
 Jianshui Yu <jianshui.yu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 30, 2022 at 02:47:30PM +0100, Matthew Auld wrote:
> For these types of display buffers, we need to able to CPU access some
> part of the backing memory in prepare_plane_clear_colors(). As a result
> we need to ensure we always place in the mappable part of lmem, which
> becomes necessary on small-bar systems.
> 
> Fixes: eb1c535f0d69 ("drm/i915: turn on small BAR support")
> Reported-by: Jianshui Yu <jianshui.yu@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Nirmoy Das <nirmoy.das@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb_pin.c   | 11 ++++--
>  drivers/gpu/drm/i915/gem/i915_gem_object.c    | 37 ++++++++++++++++++-
>  drivers/gpu/drm/i915/gem/i915_gem_object.h    |  4 ++
>  .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +-
>  drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |  5 ++-
>  5 files changed, 53 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> index c86e5d4ee016..f83cf41ddd63 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -139,9 +139,14 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
>  	ret = i915_gem_object_lock(obj, &ww);
>  	if (!ret && phys_cursor)
>  		ret = i915_gem_object_attach_phys(obj, alignment);
> -	else if (!ret && HAS_LMEM(dev_priv))
> -		ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
> -	/* TODO: Do we need to sync when migration becomes async? */

Why is the TODO being removed?

> +	else if (!ret && HAS_LMEM(dev_priv)) {
> +		unsigned int flags = obj->flags;
> +

It might not be super obvious what is going on here, so maybe add
a comment stating the CPU needs to read the clear color from the bo?

> +		if (intel_fb_rc_ccs_cc_plane(fb) >= 0)
> +			flags &= ~I915_BO_ALLOC_GPU_ONLY;

Hmm. Do we require the clear color plane to be in the same bo as the
rest of the planes? I know we require the main and aux to be in the
same bo, but dunno why we would require that also of the clear color
plane (apart from being lazy perhaps).

> +		ret = __i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0,
> +						flags);
> +	}
>  	if (!ret)
>  		ret = i915_gem_object_pin_pages(obj);
>  	if (ret)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index 7ff9c7877bec..369006c5317f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -652,6 +652,41 @@ bool i915_gem_object_can_migrate(struct drm_i915_gem_object *obj,
>  int i915_gem_object_migrate(struct drm_i915_gem_object *obj,
>  			    struct i915_gem_ww_ctx *ww,
>  			    enum intel_region_id id)
> +{
> +	return __i915_gem_object_migrate(obj, ww, id, obj->flags);
> +}
> +
> +/**
> + * __i915_gem_object_migrate - Migrate an object to the desired region id, with
> + * control of the extra flags
> + * @obj: The object to migrate.
> + * @ww: An optional struct i915_gem_ww_ctx. If NULL, the backend may
> + * not be successful in evicting other objects to make room for this object.
> + * @id: The region id to migrate to.
> + * @flags: The object flags. Normally just obj->flags.
> + *
> + * Attempt to migrate the object to the desired memory region. The
> + * object backend must support migration and the object may not be
> + * pinned, (explicitly pinned pages or pinned vmas). The object must
> + * be locked.
> + * On successful completion, the object will have pages pointing to
> + * memory in the new region, but an async migration task may not have
> + * completed yet, and to accomplish that, i915_gem_object_wait_migration()
> + * must be called.
> + *
> + * Note: the @ww parameter is not used yet, but included to make sure
> + * callers put some effort into obtaining a valid ww ctx if one is
> + * available.
> + *
> + * Return: 0 on success. Negative error code on failure. In particular may
> + * return -ENXIO on lack of region space, -EDEADLK for deadlock avoidance
> + * if @ww is set, -EINTR or -ERESTARTSYS if signal pending, and
> + * -EBUSY if the object is pinned.
> + */
> +int __i915_gem_object_migrate(struct drm_i915_gem_object *obj,
> +			      struct i915_gem_ww_ctx *ww,
> +			      enum intel_region_id id,
> +			      unsigned int flags)
>  {
>  	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>  	struct intel_memory_region *mr;
> @@ -672,7 +707,7 @@ int i915_gem_object_migrate(struct drm_i915_gem_object *obj,
>  		return 0;
>  	}
>  
> -	return obj->ops->migrate(obj, mr);
> +	return obj->ops->migrate(obj, mr, flags);
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index a3b7551a57fc..6b9ecff42bb5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -612,6 +612,10 @@ bool i915_gem_object_migratable(struct drm_i915_gem_object *obj);
>  int i915_gem_object_migrate(struct drm_i915_gem_object *obj,
>  			    struct i915_gem_ww_ctx *ww,
>  			    enum intel_region_id id);
> +int __i915_gem_object_migrate(struct drm_i915_gem_object *obj,
> +			      struct i915_gem_ww_ctx *ww,
> +			      enum intel_region_id id,
> +			      unsigned int flags);
>  
>  bool i915_gem_object_can_migrate(struct drm_i915_gem_object *obj,
>  				 enum intel_region_id id);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index 40305e2bcd49..d0d6772e6f36 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -107,7 +107,8 @@ struct drm_i915_gem_object_ops {
>  	 * pinning or for as long as the object lock is held.
>  	 */
>  	int (*migrate)(struct drm_i915_gem_object *obj,
> -		       struct intel_memory_region *mr);
> +		       struct intel_memory_region *mr,
> +		       unsigned int flags);
>  
>  	void (*release)(struct drm_i915_gem_object *obj);
>  
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 3dc6acfcf4ec..5bed353ee9bc 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -848,9 +848,10 @@ static int __i915_ttm_migrate(struct drm_i915_gem_object *obj,
>  }
>  
>  static int i915_ttm_migrate(struct drm_i915_gem_object *obj,
> -			    struct intel_memory_region *mr)
> +			    struct intel_memory_region *mr,
> +			    unsigned int flags)
>  {
> -	return __i915_ttm_migrate(obj, mr, obj->flags);
> +	return __i915_ttm_migrate(obj, mr, flags);
>  }
>  
>  static void i915_ttm_put_pages(struct drm_i915_gem_object *obj,
> -- 
> 2.37.3

-- 
Ville Syrjälä
Intel
