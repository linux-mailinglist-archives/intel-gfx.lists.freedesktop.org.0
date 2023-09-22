Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0507AB01A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Sep 2023 13:01:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DBA710E653;
	Fri, 22 Sep 2023 11:01:31 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B78B10E653;
 Fri, 22 Sep 2023 11:01:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695380488; x=1726916488;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=/XDRiKvZTirNlFCxumatwODg9n1Y5YR5GozmM3Chqk8=;
 b=nnHpS0aKjjyPdEADHqzczUb1CocD8w+gSdv7hgkz8UC3Mno5Xnq4qF+l
 j0gAjh7D/jGLVhFU+NYeiZQxJt8rCCAyfSr9tuV8czg+q5HwqjWxxmxg6
 yrpsbE6Bw6a1nWlObjaD11XpzR3hqo7Fl47BdQMRdIRgtKsoxD1059XUO
 jIhOFNKhQ+9XfvsMZkJSfmvdDs4VZNWbzbS1nr0W48ofNyRKCCZIoLidC
 Q65IsMekCoZHlGWGfvWrZCZhI1EvcgjVcEYTCFze4Q9xXkPNOOqrErZj8
 hqhG+z9/91T96Mq2l1mbX9ZzoR3rkJP6iJ2fa5i+rWo4LYK+sQLVCXY05 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="444899338"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="444899338"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 04:01:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10840"; a="724141887"
X-IronPort-AV: E=Sophos;i="6.03,167,1694761200"; d="scan'208";a="724141887"
Received: from isajal-mobl1.gar.corp.intel.com (HELO intel.com)
 ([10.214.174.7])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2023 04:01:20 -0700
Date: Fri, 22 Sep 2023 13:01:13 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <ZQ1z+TJyDrwr0KTP@ashyti-mobl2.lan>
References: <20230921114852.192862-1-tvrtko.ursulin@linux.intel.com>
 <20230921114852.192862-6-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921114852.192862-6-tvrtko.ursulin@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: Implement fdinfo memory stats
 printing
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
Cc: Intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tvrtko,

On Thu, Sep 21, 2023 at 12:48:52PM +0100, Tvrtko Ursulin wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Use the newly added drm_print_memory_stats helper to show memory
> utilisation of our objects in drm/driver specific fdinfo output.
> 
> To collect the stats we walk the per memory regions object lists
> and accumulate object size into the respective drm_memory_stats
> categories.
> 
> Objects with multiple possible placements are reported in multiple
> regions for total and shared sizes, while other categories are
> counted only for the currently active region.
> 
> v2:
>  * Only account against the active region.
>  * Use DMA_RESV_USAGE_BOOKKEEP when testing for active. (Tejas)
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
> Cc: Rob Clark <robdclark@gmail.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: Tejas Upadhyay <tejas.upadhyay@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> # v1

Reiewed also this version :)

Thanks,
Andi

> ---
>  drivers/gpu/drm/i915/i915_drm_client.c | 64 ++++++++++++++++++++++++++
>  1 file changed, 64 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
> index a61356012df8..94abc2fb2ea6 100644
> --- a/drivers/gpu/drm/i915/i915_drm_client.c
> +++ b/drivers/gpu/drm/i915/i915_drm_client.c
> @@ -45,6 +45,68 @@ void __i915_drm_client_free(struct kref *kref)
>  }
>  
>  #ifdef CONFIG_PROC_FS
> +static void
> +obj_meminfo(struct drm_i915_gem_object *obj,
> +	    struct drm_memory_stats stats[INTEL_REGION_UNKNOWN])
> +{
> +	const enum intel_region_id id = obj->mm.region ?
> +					obj->mm.region->id : INTEL_REGION_SMEM;
> +	const u64 sz = obj->base.size;
> +
> +	if (obj->base.handle_count > 1)
> +		stats[id].shared += sz;
> +	else
> +		stats[id].private += sz;
> +
> +	if (i915_gem_object_has_pages(obj)) {
> +		stats[id].resident += sz;
> +
> +		if (!dma_resv_test_signaled(obj->base.resv,
> +					    DMA_RESV_USAGE_BOOKKEEP))
> +			stats[id].active += sz;
> +		else if (i915_gem_object_is_shrinkable(obj) &&
> +			 obj->mm.madv == I915_MADV_DONTNEED)
> +			stats[id].purgeable += sz;
> +	}
> +}
> +
> +static void show_meminfo(struct drm_printer *p, struct drm_file *file)
> +{
> +	struct drm_memory_stats stats[INTEL_REGION_UNKNOWN] = {};
> +	struct drm_i915_file_private *fpriv = file->driver_priv;
> +	struct i915_drm_client *client = fpriv->client;
> +	struct drm_i915_private *i915 = fpriv->i915;
> +	struct drm_i915_gem_object *obj;
> +	struct intel_memory_region *mr;
> +	struct list_head *pos;
> +	unsigned int id;
> +
> +	/* Public objects. */
> +	spin_lock(&file->table_lock);
> +	idr_for_each_entry(&file->object_idr, obj, id)
> +		obj_meminfo(obj, stats);
> +	spin_unlock(&file->table_lock);
> +
> +	/* Internal objects. */
> +	rcu_read_lock();
> +	list_for_each_rcu(pos, &client->objects_list) {
> +		obj = i915_gem_object_get_rcu(list_entry(pos, typeof(*obj),
> +							 client_link));
> +		if (!obj)
> +			continue;
> +		obj_meminfo(obj, stats);
> +		i915_gem_object_put(obj);
> +	}
> +	rcu_read_unlock();
> +
> +	for_each_memory_region(mr, i915, id)
> +		drm_print_memory_stats(p,
> +				       &stats[id],
> +				       DRM_GEM_OBJECT_RESIDENT |
> +				       DRM_GEM_OBJECT_PURGEABLE,
> +				       mr->name);
> +}
> +
>  static const char * const uabi_class_names[] = {
>  	[I915_ENGINE_CLASS_RENDER] = "render",
>  	[I915_ENGINE_CLASS_COPY] = "copy",
> @@ -106,6 +168,8 @@ void i915_drm_client_fdinfo(struct drm_printer *p, struct drm_file *file)
>  	 * ******************************************************************
>  	 */
>  
> +	show_meminfo(p, file);
> +
>  	if (GRAPHICS_VER(i915) < 8)
>  		return;
>  
> -- 
> 2.39.2
