Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70E9E5F0D52
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Sep 2022 16:20:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9858210ED1E;
	Fri, 30 Sep 2022 14:20:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E972110ED1E
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Sep 2022 14:20:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664547617; x=1696083617;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=59vML55ydh1EBu+67QkGyel5XXTAVHTuh8/Zx8NR+A0=;
 b=A+MXJSeGOM4o7ch1LappQnMxwXH1G/kLciTib/vbE8r+hEplp5CiaI9A
 zdUGVXwKCGKXGLjXwoZT4SZKLgJT2HsH/5td3Ab5ziMd4n4asIHJQjGqy
 LwpY3JAvbAZEqZpzDg0osmiA0wM/CLREiTRs0+M2LlLd3n74wW60OjElI
 xqiJLvJoL7mVCxVXvdMBr/Gbt/N3980yOB+EiwQy4DNlq70a8sM/53ulR
 H1+AecKQE4coPyI5NfRM110wj9+cjVO5gf0Pw0k3VyhsEeRAMMjpzR62s
 4iJ+X2u8XyQ45rysvzdaRVxDWHbxHEGok+6rjowbkripCmYI0o9qIcpv/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="303685505"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="303685505"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 07:20:08 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10486"; a="573875743"
X-IronPort-AV: E=Sophos;i="5.93,358,1654585200"; d="scan'208";a="573875743"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.22.21])
 ([10.252.22.21])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2022 07:20:05 -0700
Message-ID: <5d14a8f9-95c1-2463-f832-232d47735e6f@linux.intel.com>
Date: Fri, 30 Sep 2022 16:20:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220930134731.389416-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220930134731.389416-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
Cc: Jianshui Yu <jianshui.yu@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Should this be split into two patch, display+gem if that doesn't seem 
like a code churn.

For non display part Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

On 9/30/2022 3:47 PM, Matthew Auld wrote:
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
>   drivers/gpu/drm/i915/display/intel_fb_pin.c   | 11 ++++--
>   drivers/gpu/drm/i915/gem/i915_gem_object.c    | 37 ++++++++++++++++++-
>   drivers/gpu/drm/i915/gem/i915_gem_object.h    |  4 ++
>   .../gpu/drm/i915/gem/i915_gem_object_types.h  |  3 +-
>   drivers/gpu/drm/i915/gem/i915_gem_ttm.c       |  5 ++-
>   5 files changed, 53 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> index c86e5d4ee016..f83cf41ddd63 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -139,9 +139,14 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
>   	ret = i915_gem_object_lock(obj, &ww);
>   	if (!ret && phys_cursor)
>   		ret = i915_gem_object_attach_phys(obj, alignment);
> -	else if (!ret && HAS_LMEM(dev_priv))
> -		ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
> -	/* TODO: Do we need to sync when migration becomes async? */
> +	else if (!ret && HAS_LMEM(dev_priv)) {
> +		unsigned int flags = obj->flags;
> +
> +		if (intel_fb_rc_ccs_cc_plane(fb) >= 0)
> +			flags &= ~I915_BO_ALLOC_GPU_ONLY;
> +		ret = __i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0,
> +						flags);
> +	}
>   	if (!ret)
>   		ret = i915_gem_object_pin_pages(obj);
>   	if (ret)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> index 7ff9c7877bec..369006c5317f 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
> @@ -652,6 +652,41 @@ bool i915_gem_object_can_migrate(struct drm_i915_gem_object *obj,
>   int i915_gem_object_migrate(struct drm_i915_gem_object *obj,
>   			    struct i915_gem_ww_ctx *ww,
>   			    enum intel_region_id id)
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
>   {
>   	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>   	struct intel_memory_region *mr;
> @@ -672,7 +707,7 @@ int i915_gem_object_migrate(struct drm_i915_gem_object *obj,
>   		return 0;
>   	}
>   
> -	return obj->ops->migrate(obj, mr);
> +	return obj->ops->migrate(obj, mr, flags);
>   }
>   
>   /**
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> index a3b7551a57fc..6b9ecff42bb5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
> @@ -612,6 +612,10 @@ bool i915_gem_object_migratable(struct drm_i915_gem_object *obj);
>   int i915_gem_object_migrate(struct drm_i915_gem_object *obj,
>   			    struct i915_gem_ww_ctx *ww,
>   			    enum intel_region_id id);
> +int __i915_gem_object_migrate(struct drm_i915_gem_object *obj,
> +			      struct i915_gem_ww_ctx *ww,
> +			      enum intel_region_id id,
> +			      unsigned int flags);
>   
>   bool i915_gem_object_can_migrate(struct drm_i915_gem_object *obj,
>   				 enum intel_region_id id);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> index 40305e2bcd49..d0d6772e6f36 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
> @@ -107,7 +107,8 @@ struct drm_i915_gem_object_ops {
>   	 * pinning or for as long as the object lock is held.
>   	 */
>   	int (*migrate)(struct drm_i915_gem_object *obj,
> -		       struct intel_memory_region *mr);
> +		       struct intel_memory_region *mr,
> +		       unsigned int flags);
>   
>   	void (*release)(struct drm_i915_gem_object *obj);
>   
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> index 3dc6acfcf4ec..5bed353ee9bc 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.c
> @@ -848,9 +848,10 @@ static int __i915_ttm_migrate(struct drm_i915_gem_object *obj,
>   }
>   
>   static int i915_ttm_migrate(struct drm_i915_gem_object *obj,
> -			    struct intel_memory_region *mr)
> +			    struct intel_memory_region *mr,
> +			    unsigned int flags)
>   {
> -	return __i915_ttm_migrate(obj, mr, obj->flags);
> +	return __i915_ttm_migrate(obj, mr, flags);
>   }
>   
>   static void i915_ttm_put_pages(struct drm_i915_gem_object *obj,
