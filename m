Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45C1B171552
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 11:53:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C8D96E7D0;
	Thu, 27 Feb 2020 10:53:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B8C06E7D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:53:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Feb 2020 02:53:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,491,1574150400"; d="scan'208";a="261440860"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga004.fm.intel.com with ESMTP; 27 Feb 2020 02:52:58 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 001715C08BA; Thu, 27 Feb 2020 12:51:46 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200226185657.26445-1-daniele.ceraolospurio@intel.com>
References: <20200226185657.26445-1-daniele.ceraolospurio@intel.com>
Date: Thu, 27 Feb 2020 12:51:46 +0200
Message-ID: <87h7zc8fr1.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ggtt: do not set bits 1-11 in
 gen12 ptes
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
Cc: Matthew Auld <matthew.auld@intel.com>, "Sodhi,
 Vunny" <vunny.sodhi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> writes:

> On TGL, bits 2-4 in the GGTT PTE are not ignored anymore and are
> instead used for some extra VT-d capabilities. We don't (yet?) have
> support for those capabilities, but, given that we shared the pte_encode
> function betweed GGTT and PPGTT, we still set those bits to the PPGTT
> PPAT values. The DMA engine gets very confused when those bits are
> set while the iommu is enabled, leading to errors. E.g. when loading
> the GuC we get:
>
> [    9.796218] DMAR: DRHD: handling fault status reg 2
> [    9.796235] DMAR: [DMA Write] Request device [00:02.0] PASID ffffffff fault addr 0 [fault reason 02] Present bit in context entry is clear
> [    9.899215] [drm:intel_guc_fw_upload [i915]] *ERROR* GuC firmware signature verification failed
>
> To fix this, just have dedicated gen8_pte_encode function per type of
> gtt. Also, explicitly set vm->pte_encode for gen8_ppgtt, even if we
> don't use it, to make sure we don't accidentally assign it to the GGTT
> one, like we do for gen6_ppgtt, in case we need it in the future.

Nice find. Tho I feel that the subject and commit message needs
a bit massaging for future archeologists.

We are changing the gen8+ ggtt encoding and not only gen12 and
it should be noted.

>
> Reported-by: "Sodhi, Vunny" <vunny.sodhi@intel.com>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen8_ppgtt.c | 26 ++++++++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_ggtt.c | 13 ++++++++++---
>  drivers/gpu/drm/i915/gt/intel_gtt.c  | 24 ------------------------
>  drivers/gpu/drm/i915/gt/intel_gtt.h  |  4 ----
>  4 files changed, 36 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> index 4d1de2d97d5c..9aabc5815d38 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_ppgtt.c
> @@ -25,6 +25,30 @@ static u64 gen8_pde_encode(const dma_addr_t addr,
>  	return pde;
>  }
>  
> +static u64 gen8_pte_encode(dma_addr_t addr,
> +			   enum i915_cache_level level,
> +			   u32 flags)
> +{
> +	gen8_pte_t pte = addr | _PAGE_PRESENT | _PAGE_RW;
> +
> +	if (unlikely(flags & PTE_READ_ONLY))
> +		pte &= ~_PAGE_RW;
> +
> +	switch (level) {
> +	case I915_CACHE_NONE:
> +		pte |= PPAT_UNCACHED;
> +		break;
> +	case I915_CACHE_WT:
> +		pte |= PPAT_DISPLAY_ELLC;
> +		break;
> +	default:
> +		pte |= PPAT_CACHED;
> +		break;
> +	}
> +
> +	return pte;
> +}
> +
>  static void gen8_ppgtt_notify_vgt(struct i915_ppgtt *ppgtt, bool create)
>  {
>  	struct drm_i915_private *i915 = ppgtt->vm.i915;
> @@ -706,6 +730,8 @@ struct i915_ppgtt *gen8_ppgtt_create(struct intel_gt *gt)
>  	ppgtt->vm.allocate_va_range = gen8_ppgtt_alloc;
>  	ppgtt->vm.clear_range = gen8_ppgtt_clear;
>  
> +	ppgtt->vm.pte_encode = gen8_pte_encode;
> +
>  	if (intel_vgpu_active(gt->i915))
>  		gen8_ppgtt_notify_vgt(ppgtt, true);
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index 41a00281f364..e45eca985b14 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -157,6 +157,13 @@ static void gmch_ggtt_invalidate(struct i915_ggtt *ggtt)
>  	intel_gtt_chipset_flush();
>  }
>  
> +static u64 gen8_ggtt_pte_encode(dma_addr_t addr,
> +				enum i915_cache_level level,
> +				u32 flags)
> +{
> +	return addr | _PAGE_PRESENT;

The bspec is bit ambivalent in here. First it says R/W is ignored but
further ahead it states that bit0 and bit1 defines the validity
and rest are ignored for aperture/display.

This said, I am leaning to give a minimal set a try first :)

> +}
> +
>  static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
>  {
>  	writeq(pte, addr);
> @@ -172,7 +179,7 @@ static void gen8_ggtt_insert_page(struct i915_address_space *vm,
>  	gen8_pte_t __iomem *pte =
>  		(gen8_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
>  
> -	gen8_set_pte(pte, gen8_pte_encode(addr, level, 0));
> +	gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, 0));

Make me ponder why we don't use the vm->pte_encode all the way
as we have it :P

Nevertheless, with s/gen12/gen8 ggtt encoding in subject/
commit msg and this is,

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  
>  	ggtt->invalidate(ggtt);
>  }
> @@ -185,7 +192,7 @@ static void gen8_ggtt_insert_entries(struct i915_address_space *vm,
>  	struct i915_ggtt *ggtt = i915_vm_to_ggtt(vm);
>  	struct sgt_iter sgt_iter;
>  	gen8_pte_t __iomem *gtt_entries;
> -	const gen8_pte_t pte_encode = gen8_pte_encode(0, level, 0);
> +	const gen8_pte_t pte_encode = gen8_ggtt_pte_encode(0, level, 0);
>  	dma_addr_t addr;
>  
>  	/*
> @@ -857,7 +864,7 @@ static int gen8_gmch_probe(struct i915_ggtt *ggtt)
>  	ggtt->vm.vma_ops.set_pages   = ggtt_set_pages;
>  	ggtt->vm.vma_ops.clear_pages = clear_pages;
>  
> -	ggtt->vm.pte_encode = gen8_pte_encode;
> +	ggtt->vm.pte_encode = gen8_ggtt_pte_encode;
>  
>  	setup_private_pat(ggtt->vm.gt->uncore);
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.c b/drivers/gpu/drm/i915/gt/intel_gtt.c
> index bb9a6e638175..c8db4f95c1b7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.c
> @@ -484,30 +484,6 @@ void gtt_write_workarounds(struct intel_gt *gt)
>  	}
>  }
>  
> -u64 gen8_pte_encode(dma_addr_t addr,
> -		    enum i915_cache_level level,
> -		    u32 flags)
> -{
> -	gen8_pte_t pte = addr | _PAGE_PRESENT | _PAGE_RW;
> -
> -	if (unlikely(flags & PTE_READ_ONLY))
> -		pte &= ~_PAGE_RW;
> -
> -	switch (level) {
> -	case I915_CACHE_NONE:
> -		pte |= PPAT_UNCACHED;
> -		break;
> -	case I915_CACHE_WT:
> -		pte |= PPAT_DISPLAY_ELLC;
> -		break;
> -	default:
> -		pte |= PPAT_CACHED;
> -		break;
> -	}
> -
> -	return pte;
> -}
> -
>  static void tgl_setup_private_ppat(struct intel_uncore *uncore)
>  {
>  	/* TGL doesn't support LLC or AGE settings */
> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h b/drivers/gpu/drm/i915/gt/intel_gtt.h
> index 23004445806a..9a185f4537e1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
> @@ -515,10 +515,6 @@ struct i915_ppgtt *i915_ppgtt_create(struct intel_gt *gt);
>  void i915_ggtt_suspend(struct i915_ggtt *gtt);
>  void i915_ggtt_resume(struct i915_ggtt *ggtt);
>  
> -u64 gen8_pte_encode(dma_addr_t addr,
> -		    enum i915_cache_level level,
> -		    u32 flags);
> -
>  int setup_page_dma(struct i915_address_space *vm, struct i915_page_dma *p);
>  void cleanup_page_dma(struct i915_address_space *vm, struct i915_page_dma *p);
>  
> -- 
> 2.24.1
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
