Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 692865B6E5D
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 15:30:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4063510E710;
	Tue, 13 Sep 2022 13:29:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 891AD10E716
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 13:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663075791; x=1694611791;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=NEXaO4z3BseNp2NMLuJO2fwobFqBhGnvkWpiGwDX8rE=;
 b=LD4V4Ul+iGQhJ1t8qgSMqnmnOCFBoxrxpA78cYKhYAxFoxkSSHUE7ItI
 TzVZanqQRMhMD9XoiS0PVE6Kwz19n4Uv0UTFgnpTB5oRTYPW+QGME5RAW
 2KMuP+n0SCZakoP+5CJ4F2OGeV+G7mtME2lrICooTkh+oi5b6KYePGVVW
 Jf8xIhotUHu/H57zaU9V9nJzO06LWHWDQDXo7N8BYU5SONzGHk1mzx+V9
 W6C/juOeR3sxf9n31syB4up2av+1bCIUF1l35tLl31wR0xd7opWbySu6R
 YmB3+zm6p++ceMTvoIJS9+IsztWClczeyTO2sWpHCZCljP68tS7mDCYBX Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="384432187"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="384432187"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 06:29:50 -0700
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="646929611"
Received: from crijnder-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.209.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 06:29:49 -0700
Date: Tue, 13 Sep 2022 15:29:47 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <YyCFywmnx2kpgews@alfio.lan>
References: <20220912121306.24926-1-anshuman.gupta@intel.com>
 <20220912121306.24926-3-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220912121306.24926-3-anshuman.gupta@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/dgfx: Release mmap on rpm
 suspend
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
Cc: intel-gfx@lists.freedesktop.org, rodrigo.vivi@intel.com,
 Matthew Auld <matthew.auld@intel.com>, chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Anshuman,

[...]

>  	struct ttm_buffer_object *bo = area->vm_private_data;
>  	struct drm_device *dev = bo->base.dev;
>  	struct drm_i915_gem_object *obj;
> +	intel_wakeref_t wakeref = 0;
>  	vm_fault_t ret;
>  	int idx;
>  
> @@ -990,18 +1000,24 @@ static vm_fault_t vm_fault_ttm(struct vm_fault *vmf)
>  
>  	/* Sanity check that we allow writing into this object */
>  	if (unlikely(i915_gem_object_is_readonly(obj) &&
> -		     area->vm_flags & VM_WRITE))
> -		return VM_FAULT_SIGBUS;
> +		     area->vm_flags & VM_WRITE)) {
> +		ret = VM_FAULT_SIGBUS;
> +		goto out_rpm;

we don't need for this change, wakeref is 0 here.

> +	}
>  
>  	ret = ttm_bo_vm_reserve(bo, vmf);
>  	if (ret)
> -		return ret;
> +		goto out_rpm;

Same here.

>  	if (obj->mm.madv != I915_MADV_WILLNEED) {
>  		dma_resv_unlock(bo->base.resv);
> -		return VM_FAULT_SIGBUS;
> +		ret = VM_FAULT_SIGBUS;
> +		goto out_rpm;

Same here.

>  	}
>  
> +	if (i915_ttm_cpu_maps_iomem(bo->resource))
> +		wakeref = intel_runtime_pm_get(&to_i915(obj->base.dev)->runtime_pm);
> +
>  	if (!i915_ttm_resource_mappable(bo->resource)) {
>  		int err = -ENODEV;
>  		int i;

[...]

> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 8262bfb2a2d9..897148880acc 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -1634,7 +1634,6 @@ static int intel_runtime_suspend(struct device *kdev)
>  		return -ENODEV;
>  
>  	drm_dbg(&dev_priv->drm, "Suspending device\n");
> -

Please remove this change.

>  	disable_rpm_wakeref_asserts(rpm);
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
> index 3463dd795950..c3a83b234b6e 100644
> --- a/drivers/gpu/drm/i915/i915_gem.c
> +++ b/drivers/gpu/drm/i915/i915_gem.c
> @@ -842,6 +842,11 @@ void i915_gem_runtime_suspend(struct drm_i915_private *i915)
>  				 &to_gt(i915)->ggtt->userfault_list, userfault_link)
>  		__i915_gem_object_release_mmap_gtt(obj);
>  
> +	list_for_each_entry_safe(obj, on,
> +				 &to_gt(i915)->lmem_userfault_list, userfault_link) {
> +		i915_gem_runtime_pm_object_release_mmap_offset(obj);
> +	}

Don't need for brackets here.

I see that all Matt's suggestions have been addressed. From v3
this latest release was the biggest concern. From my side looks
all correct.

would be nice if you add the cleanups above, besides that:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks and thanks Matt for the reviews.

Andi

> +
>  	/*
>  	 * The fence will be lost when the device powers down. If any were
>  	 * in use by hardware (i.e. they are pinned), we should not be powering
> -- 
> 2.26.2
