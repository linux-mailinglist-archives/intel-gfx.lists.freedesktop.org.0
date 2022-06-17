Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5857054F518
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 12:15:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04CFB10FF1A;
	Fri, 17 Jun 2022 10:15:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7586410F9CA;
 Fri, 17 Jun 2022 10:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655460899; x=1686996899;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=qrUR+lKdDLwAMp0zrS1h/g2SrydR8VR+Oi7F4T+Z8PM=;
 b=j6WM55AHr5RERzQrLCNflDB37zLcWTiX5VxvGf1BqZNcNdrp2TSg0pas
 RH8Pkp4hT3TRGuhDIHvinNAEHXyB5s0AuBruL4NWQ2gLOvY/4EzoE/Tie
 wjY1DnSsdNo4QbnrUaIPiZT78yRZhqlWLetNXROGSUGE5LGDXk+mGVdN1
 UwC6yUxMngIt+uaomX6KKbPoaDLYNRhVPoBzLlXNgeA2OvloBo/83+N1u
 sDzK49k712A+9XBwxfoL4pLjTiWmdl7I+o5i5BUfak2t5kZzHktCeqgTP
 2OCJXFMwd7pmyb7R9fPXbXUPZta5xoGfq1V8+IHprxfvqDScqo52LYhaK Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="280184786"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="280184786"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 03:12:52 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="653571582"
Received: from aabdu11-mobl1.gar.corp.intel.com (HELO [10.213.45.96])
 ([10.213.45.96])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 03:12:33 -0700
Message-ID: <df5a6cb4-48fc-04b8-7f5f-293e2ab54a18@intel.com>
Date: Fri, 17 Jun 2022 11:12:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.10.0
Content-Language: en-GB
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220405105944.336896-1-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20220405105944.336896-1-thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Improve on suspend / resume time
 with VT-d enabled
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 05/04/2022 11:59, Thomas Hellström wrote:
> When DMAR / VT-d is enabled, the display engine uses overfetching,
> presumably to deal with the increased latency. To avoid display engine
> errors and DMAR faults, as a workaround the GGTT is populated with scatch
> PTEs when VT-d is enabled. However starting with gen10, Write-combined
> writing of scratch PTES is no longer possible and as a result, populating
> the full GGTT with scratch PTEs like on resume becomes very slow as
> uncached access is needed.
> 
> Therefore, on integrated GPUs utilize the fact that the PTEs are stored in
> stolen memory which retain content across S3 suspend. Don't clear the PTEs
> on suspend and resume. This improves on resume time with around 100 ms.
> While 100+ms might appear like a short time it's 10% to 20% of total resume
> time and important in some applications.
> 
> One notable exception is Intel Rapid Start Technology which may cause
> stolen memory to be lost across what the OS percieves as S3 suspend.
> If IRST is enabled or if we can't detect whether IRST is enabled, retain
> the old workaround, clearing and re-instating PTEs.
> 
> As an additional measure, if we detect that the last ggtt pte was lost
> during suspend, print a warning and re-populate the GGTT ptes
> 
> On discrete GPUs, the display engine scans out from LMEM which isn't
> subject to DMAR, and presumably the workaround is therefore not needed,
> but that needs to be verified and disabling the workaround for dGPU,
> if possible, will be deferred to a follow-up patch.
> 
> v2:
> - Rely on retained ptes to also speed up suspend and resume re-binding.
> - Re-build GGTT ptes if Intel rst is enabled.
> v3:
> - Re-build GGTT ptes also if we can't detect whether Intel rst is enabled,
>    and if the guard page PTE and end of GGTT was lost.
> 
> Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_ggtt.c | 56 +++++++++++++++++++++++++---
>   drivers/gpu/drm/i915/gt/intel_gtt.h  | 20 ++++++++++
>   drivers/gpu/drm/i915/i915_driver.c   | 16 ++++++++
>   3 files changed, 86 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 04191fe2ee34..98441b1c1b75 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -23,6 +23,13 @@
>   #include "intel_gtt.h"
>   #include "gen8_ppgtt.h"
>   
> +static inline bool suspend_retains_ptes(struct i915_address_space *vm)
> +{
> +	return GRAPHICS_VER(vm->i915) >= 8 &&
> +		!HAS_LMEM(vm->i915) &&
> +		vm->is_ggtt;
> +}
> +
>   static void i915_ggtt_color_adjust(const struct drm_mm_node *node,
>   				   unsigned long color,
>   				   u64 *start,
> @@ -116,6 +123,23 @@ static bool needs_idle_maps(struct drm_i915_private *i915)
>   	return false;
>   }
>   
> +/*
> + * Return the value of the last GGTT pte cast to an u64, if
> + * the system is supposed to retain ptes across resume. 0 otherwise.
> + */
> +static u64 read_last_pte(struct i915_address_space *vm)
> +{
> +	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
> +	gen8_pte_t __iomem *ptep;
> +
> +	if (!suspend_retains_ptes(vm))
> +		return 0;
> +
> +	GEM_BUG_ON(GRAPHICS_VER(vm->i915) < 8);
> +	ptep = (typeof(ptep))ggtt->gsm + (ggtt_total_entries(ggtt) - 1);
> +	return readq(ptep);
> +}
> +
>   /**
>    * i915_ggtt_suspend_vm - Suspend the memory mappings for a GGTT or DPT VM
>    * @vm: The VM to suspend the mappings for
> @@ -179,7 +203,10 @@ void i915_ggtt_suspend_vm(struct i915_address_space *vm)
>   		i915_gem_object_unlock(obj);
>   	}
>   
> -	vm->clear_range(vm, 0, vm->total);
> +	if (!suspend_retains_ptes(vm))
> +		vm->clear_range(vm, 0, vm->total);
> +	else
> +		i915_vm_to_ggtt(vm)->probed_pte = read_last_pte(vm);
>   
>   	vm->skip_pte_rewrite = save_skip_rewrite;
>   
> @@ -578,6 +605,8 @@ static int init_ggtt(struct i915_ggtt *ggtt)
>   	struct drm_mm_node *entry;
>   	int ret;
>   
> +	ggtt->pte_lost = true;
> +
>   	/*
>   	 * GuC requires all resources that we're sharing with it to be placed in
>   	 * non-WOPCM memory. If GuC is not present or not in use we still need a
> @@ -1309,11 +1338,20 @@ bool i915_ggtt_resume_vm(struct i915_address_space *vm)
>   {
>   	struct i915_vma *vma;
>   	bool write_domain_objs = false;
> +	bool retained_ptes;
>   
>   	drm_WARN_ON(&vm->i915->drm, !vm->is_ggtt && !vm->is_dpt);
>   
> -	/* First fill our portion of the GTT with scratch pages */
> -	vm->clear_range(vm, 0, vm->total);
> +	/*
> +	 * First fill our portion of the GTT with scratch pages if
> +	 * they were not retained across suspend.
> +	 */
> +	retained_ptes = suspend_retains_ptes(vm) &&
> +		!i915_vm_to_ggtt(vm)->pte_lost &&
> +		!GEM_WARN_ON(i915_vm_to_ggtt(vm)->probed_pte != read_last_pte(vm));
> +
> +	if (!retained_ptes)
> +		vm->clear_range(vm, 0, vm->total);
>   
>   	/* clflush objects bound into the GGTT and rebind them. */
>   	list_for_each_entry(vma, &vm->bound_list, vm_link) {
> @@ -1322,9 +1360,10 @@ bool i915_ggtt_resume_vm(struct i915_address_space *vm)
>   			atomic_read(&vma->flags) & I915_VMA_BIND_MASK;
>   
>   		GEM_BUG_ON(!was_bound);
> -		vma->ops->bind_vma(vm, NULL, vma->resource,
> -				   obj ? obj->cache_level : 0,
> -				   was_bound);
> +		if (!retained_ptes)
> +			vma->ops->bind_vma(vm, NULL, vma->resource,
> +					   obj ? obj->cache_level : 0,
> +					   was_bound);
>   		if (obj) { /* only used during resume => exclusive access */
>   			write_domain_objs |= fetch_and_zero(&obj->write_domain);
>   			obj->read_domains |= I915_GEM_DOMAIN_GTT;
> @@ -1352,3 +1391,8 @@ void i915_ggtt_resume(struct i915_ggtt *ggtt)
>   
>   	intel_ggtt_restore_fences(ggtt);
>   }
> +
> +void i915_ggtt_mark_pte_lost(struct drm_i915_private *i915, bool val)
> +{
> +	to_gt(i915)->ggtt->pte_lost = val;
> +}
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index 4529b5e9f6e6..7561672c4f17 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -345,6 +345,15 @@ struct i915_ggtt {
>   
>   	bool do_idle_maps;
>   
> +	/**
> +	 * Whether the system was recently restored from hibernate and
> +	 * thus may have lost pte content.
> +	 */

Nit: I guess that's not really proper kernel-doc. Below also.

Anyway,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> +	bool pte_lost;
> +
> +	/** Probed pte value on suspend. Re-checked on resume. */
> +	u64 probed_pte;
> +
>   	int mtrr;
>   
>   	/** Bit 6 swizzling required for X tiling */
> @@ -571,6 +580,17 @@ bool i915_ggtt_resume_vm(struct i915_address_space *vm);
>   void i915_ggtt_suspend(struct i915_ggtt *gtt);
>   void i915_ggtt_resume(struct i915_ggtt *ggtt);
>   
> +/**
> + * i915_ggtt_mark_pte_lost - Mark ggtt ptes as lost or clear such a marking
> + * @i915 The device private.
> + * @val whether the ptes should be marked as lost.
> + *
> + * In some cases pte content is retained across suspend, but typically lost
> + * across hibernate. Typically they should be marked as lost on
> + * hibernation restore and such marking cleared on suspend.
> + */
> +void i915_ggtt_mark_pte_lost(struct drm_i915_private *i915, bool val);
> +
>   void
>   fill_page_dma(struct drm_i915_gem_object *p, const u64 val, unsigned int count);
>   
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 64e6f76861f9..f50256e4c2d2 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -98,6 +98,9 @@
>   #include "intel_region_ttm.h"
>   #include "vlv_suspend.h"
>   
> +/* Intel Rapid Start Technology ACPI device name */
> +static const char irst_name[] = "INT3392";
> +
>   static const struct drm_driver i915_drm_driver;
>   
>   static int i915_get_bridge_dev(struct drm_i915_private *dev_priv)
> @@ -1425,6 +1428,8 @@ static int i915_pm_suspend(struct device *kdev)
>   		return -ENODEV;
>   	}
>   
> +	i915_ggtt_mark_pte_lost(i915, false);
> +
>   	if (i915->drm.switch_power_state == DRM_SWITCH_POWER_OFF)
>   		return 0;
>   
> @@ -1477,6 +1482,14 @@ static int i915_pm_resume(struct device *kdev)
>   	if (i915->drm.switch_power_state == DRM_SWITCH_POWER_OFF)
>   		return 0;
>   
> +	/*
> +	 * If IRST is enabled, or if we can't detect whether it's enabled,
> +	 * then we must assume we lost the GGTT page table entries, since
> +	 * they are not retained if IRST decided to enter S4.
> +	 */
> +	if (!IS_ENABLED(CONFIG_ACPI) || acpi_dev_present(irst_name, NULL, -1))
> +		i915_ggtt_mark_pte_lost(i915, true);
> +
>   	return i915_drm_resume(&i915->drm);
>   }
>   
> @@ -1536,6 +1549,9 @@ static int i915_pm_restore_early(struct device *kdev)
>   
>   static int i915_pm_restore(struct device *kdev)
>   {
> +	struct drm_i915_private *i915 = kdev_to_i915(kdev);
> +
> +	i915_ggtt_mark_pte_lost(i915, true);
>   	return i915_pm_resume(kdev);
>   }
>   
