Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3992874DF
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Oct 2020 15:06:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE42B6E328;
	Thu,  8 Oct 2020 13:06:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D894A6E328
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Oct 2020 13:06:51 +0000 (UTC)
IronPort-SDR: 5rb3AFhVZBoYOYV2RWMVR++ZUYaHBMYJYDUNuVqt1khkVajBoXnFNrA8lRYjYHMv0uMZEJz6BR
 SkSNrJnrEAFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9767"; a="145195415"
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="145195415"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2020 06:06:51 -0700
IronPort-SDR: DEWUpw/FVd9gUDqdRVwB1+NpKDsOpZ/+khRkqT4eVazAqo9bVk4m3miJgFoarIUzckAgMdTZDX
 h8eWzEFYbq1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,350,1596524400"; d="scan'208";a="343403466"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 08 Oct 2020 06:06:50 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 90E385C2042; Thu,  8 Oct 2020 16:04:42 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20201008105059.3656-1-chris@chris-wilson.co.uk>
References: <20201008105059.3656-1-chris@chris-wilson.co.uk>
Date: Thu, 08 Oct 2020 16:04:42 +0300
Message-ID: <87d01sg979.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Poison stolen pages before use
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

> When allocating objects from stolen, memset() the backing store to
> POISON_INUSE (0x5a) to help identify any uninitialised use of a stolen
> object.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 33 ++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> index 0be5e8683337..4c2869c0a802 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -572,6 +572,38 @@ static const struct drm_i915_gem_object_ops i915_gem_object_stolen_ops = {
>  	.release = i915_gem_object_release_stolen,
>  };
>  
> +static void dbg_poison(struct drm_i915_gem_object *obj)
> +{
> +#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)
> +	struct drm_i915_private *i915 = to_i915(obj->base.dev);
> +	struct i915_ggtt *ggtt = &i915->ggtt;
> +	struct sgt_iter iter;
> +	dma_addr_t addr;
> +
> +	if (!drm_mm_node_allocated(&ggtt->error_capture))
> +		return;
> +
> +	mutex_lock(&ggtt->error_mutex);
> +	for_each_sgt_daddr(addr, iter, obj->mm.pages) {
> +		void __iomem *s;
> +
> +		ggtt->vm.insert_page(&ggtt->vm, addr,
> +				     ggtt->error_capture.start,
> +				     I915_CACHE_NONE, 0);
> +		mb();
> +
> +		s = io_mapping_map_wc(&ggtt->iomap,
> +				      ggtt->error_capture.start,
> +				      PAGE_SIZE);
> +		memset(s, POISON_INUSE, PAGE_SIZE);
> +		io_mapping_unmap(s);
> +	}
> +	mb();
> +	ggtt->vm.clear_range(&ggtt->vm, ggtt->error_capture.start, PAGE_SIZE);
> +	mutex_unlock(&ggtt->error_mutex);
> +#endif
> +}
> +
>  static struct drm_i915_gem_object *
>  __i915_gem_object_create_stolen(struct intel_memory_region *mem,
>  				struct drm_mm_node *stolen)
> @@ -598,6 +630,7 @@ __i915_gem_object_create_stolen(struct intel_memory_region *mem,
>  		goto cleanup;
>  
>  	i915_gem_object_init_memory_region(obj, mem, 0);
> +	dbg_poison(obj);
>  
>  	return obj;
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
