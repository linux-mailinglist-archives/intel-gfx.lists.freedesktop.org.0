Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACA0C8187D6
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 13:47:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC88F10E05D;
	Tue, 19 Dec 2023 12:47:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CFB2610E05D
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 12:47:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702990045; x=1734526045;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=+XefY86Biny63EYRSe5eHYuhtfCCmxiChHMX0wD0Sbw=;
 b=aJU1tdJ77CP0rJuOjKO/wdmyTrOvcON26hrwPERYnQvgmubXbdM98KrV
 cSNjBHoKwO/k71KIZnaNPyMs93XfRC6vGlQO3iOaGstTssISQACabGdZ6
 w1rxYuhdDqZhSnBrcXCYd3EdTiUjEx8EIBTYjZKuG/S/rdd09EF3pjOpQ
 TUyAoSpqjqORshdPJLqq3QN9t0b3edFWvAu6naOE2kqYmacEy9DTIJ6yx
 mHBDnd8kUt9d8MBPw8/MJuKx5NbVAeygGIDN8XAUIaG6WX103XyhUVbLf
 pEow3PZ9odKBKfKYKFIZs6lmO/4GwrdtaNLAOQAhrMiVpZRtEJyNcRnp8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="17210307"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="17210307"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 04:47:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="769225886"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="769225886"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 19 Dec 2023 04:47:21 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 Dec 2023 14:47:21 +0200
Date: Tue, 19 Dec 2023 14:47:21 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Subject: Re: [PATCH v2 11/15] drm/i915: Split the smem and lmem plane readout
 apart
Message-ID: <ZYGQ2dsNixUQsTXa@intel.com>
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
 <20231215105929.29568-12-ville.syrjala@linux.intel.com>
 <3c8692ea-ca7a-4a1b-8cdc-6128538a3375@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3c8692ea-ca7a-4a1b-8cdc-6128538a3375@intel.com>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 19, 2023 at 11:55:01AM +0100, Andrzej Hajda wrote:
> On 15.12.2023 11:59, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Declutter initial_plane_vma() a bit by pulling the lmem and smem
> > readout paths into their own functions.
> > 
> > TODO: the smem path should still be fixed to get and validate
> >        the dma address from the pte as well
> > 
> > Cc: Paz Zcharya <pazz@chromium.org>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> I am not sure about this split, split suggests the paths significantly 
> differs, but they differ just by 2 things:
> - mem region,
> - assumption about 1:1 mapping for older platforms.

That last one is a fairly major difference which needs
actual work since the PTEs will have a different layouts.
There's the obvious 8byte vs. 4byte difference for gen8+
vs. older, and also there are several variants of 4byte
PTEs (don't recall off the top of my head how many exactly).

> 
> Btw I was wondering if wouldn't be good to abstract out pte retrieval, 
> as the pattern "ggtt->gsm + offset / I915_GTT_PAGE_SIZE" is present in 
> multiple places and depends on hw gen, but maybe it is another patch.

Yeah, I think I'd just prefer the gem/gt code provide a
function we can call with the ggtt address, and it'll spit
out the dma address for us. And if we want to go for belts
and suspenders we could also have it validate that the
dma addresses are contiguous.

But once we have that we should probably be able to collapse
this into just the single codepath.

> 
> No strong feelings.
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> 
> Regards
> Andrzej
> 
> 
> Regards
> Andrzej
> 
> 
> 
> 
> > ---
> >   .../drm/i915/display/intel_display_types.h    |   2 +
> >   .../drm/i915/display/intel_plane_initial.c    | 145 +++++++++++-------
> >   2 files changed, 95 insertions(+), 52 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index 341d80c2b9de..d2b0cc754667 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -782,6 +782,8 @@ struct intel_plane_state {
> >   
> >   struct intel_initial_plane_config {
> >   	struct intel_framebuffer *fb;
> > +	struct intel_memory_region *mem;
> > +	resource_size_t phys_base;
> >   	struct i915_vma *vma;
> >   	unsigned int tiling;
> >   	int size;
> > diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > index 48b74319f45c..78bff6181ceb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > @@ -44,6 +44,93 @@ intel_reuse_initial_plane_obj(struct drm_i915_private *i915,
> >   	return false;
> >   }
> >   
> > +static bool
> > +initial_plane_phys_lmem(struct drm_i915_private *i915,
> > +			struct intel_initial_plane_config *plane_config)
> > +{
> > +	gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
> > +	struct intel_memory_region *mem;
> > +	dma_addr_t dma_addr;
> > +	gen8_pte_t pte;
> > +	u32 base;
> > +
> > +	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
> > +
> > +	gte += base / I915_GTT_PAGE_SIZE;
> > +
> > +	pte = ioread64(gte);
> > +	if (!(pte & GEN12_GGTT_PTE_LM)) {
> > +		drm_err(&i915->drm,
> > +			"Initial plane programming missing PTE_LM bit\n");
> > +		return false;
> > +	}
> > +
> > +	dma_addr = pte & GEN12_GGTT_PTE_ADDR_MASK;
> > +
> > +	if (IS_DGFX(i915))
> > +		mem = i915->mm.regions[INTEL_REGION_LMEM_0];
> > +	else
> > +		mem = i915->mm.stolen_region;
> > +	if (!mem) {
> > +		drm_dbg_kms(&i915->drm,
> > +			    "Initial plane memory region not initialized\n");
> > +		return false;
> > +	}
> > +
> > +	/*
> > +	 * On lmem we don't currently expect this to
> > +	 * ever be placed in the stolen portion.
> > +	 */
> > +	if (dma_addr < mem->region.start || dma_addr > mem->region.end) {
> > +		drm_err(&i915->drm,
> > +			"Initial plane programming using invalid range, dma_addr=%pa (%s [%pa-%pa])\n",
> > +			&dma_addr, mem->region.name, &mem->region.start, &mem->region.end);
> > +		return false;
> > +	}
> > +
> > +	drm_dbg(&i915->drm,
> > +		"Using dma_addr=%pa, based on initial plane programming\n",
> > +		&dma_addr);
> > +
> > +	plane_config->phys_base = dma_addr - mem->region.start;
> > +	plane_config->mem = mem;
> > +
> > +	return true;
> > +}
> > +
> > +static bool
> > +initial_plane_phys_smem(struct drm_i915_private *i915,
> > +			struct intel_initial_plane_config *plane_config)
> > +{
> > +	struct intel_memory_region *mem;
> > +	u32 base;
> > +
> > +	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
> > +
> > +	mem = i915->mm.stolen_region;
> > +	if (!mem) {
> > +		drm_dbg_kms(&i915->drm,
> > +			    "Initial plane memory region not initialized\n");
> > +		return false;
> > +	}
> > +
> > +	/* FIXME get and validate the dma_addr from the PTE */
> > +	plane_config->phys_base = base;
> > +	plane_config->mem = mem;
> > +
> > +	return true;
> > +}
> > +
> > +static bool
> > +initial_plane_phys(struct drm_i915_private *i915,
> > +		   struct intel_initial_plane_config *plane_config)
> > +{
> > +	if (IS_DGFX(i915) || HAS_LMEMBAR_SMEM_STOLEN(i915))
> > +		return initial_plane_phys_lmem(i915, plane_config);
> > +	else
> > +		return initial_plane_phys_smem(i915, plane_config);
> > +}
> > +
> >   static struct i915_vma *
> >   initial_plane_vma(struct drm_i915_private *i915,
> >   		  struct intel_initial_plane_config *plane_config)
> > @@ -58,59 +145,13 @@ initial_plane_vma(struct drm_i915_private *i915,
> >   	if (plane_config->size == 0)
> >   		return NULL;
> >   
> > +	if (!initial_plane_phys(i915, plane_config))
> > +		return NULL;
> > +
> > +	phys_base = plane_config->phys_base;
> > +	mem = plane_config->mem;
> > +
> >   	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
> > -	if (IS_DGFX(i915) || HAS_LMEMBAR_SMEM_STOLEN(i915)) {
> > -		gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
> > -		dma_addr_t dma_addr;
> > -		gen8_pte_t pte;
> > -
> > -		gte += base / I915_GTT_PAGE_SIZE;
> > -
> > -		pte = ioread64(gte);
> > -		if (!(pte & GEN12_GGTT_PTE_LM)) {
> > -			drm_err(&i915->drm,
> > -				"Initial plane programming missing PTE_LM bit\n");
> > -			return NULL;
> > -		}
> > -
> > -		dma_addr = pte & GEN12_GGTT_PTE_ADDR_MASK;
> > -
> > -		if (IS_DGFX(i915))
> > -			mem = i915->mm.regions[INTEL_REGION_LMEM_0];
> > -		else
> > -			mem = i915->mm.stolen_region;
> > -		if (!mem) {
> > -			drm_dbg_kms(&i915->drm,
> > -				    "Initial plane memory region not initialized\n");
> > -			return NULL;
> > -		}
> > -
> > -		/*
> > -		 * On lmem we don't currently expect this to
> > -		 * ever be placed in the stolen portion.
> > -		 */
> > -		if (dma_addr < mem->region.start || dma_addr > mem->region.end) {
> > -			drm_err(&i915->drm,
> > -				"Initial plane programming using invalid range, dma_addr=%pa (%s [%pa-%pa])\n",
> > -				&dma_addr, mem->region.name, &mem->region.start, &mem->region.end);
> > -			return NULL;
> > -		}
> > -
> > -		drm_dbg(&i915->drm,
> > -			"Using dma_addr=%pa, based on initial plane programming\n",
> > -			&dma_addr);
> > -
> > -		phys_base = dma_addr - mem->region.start;
> > -	} else {
> > -		phys_base = base;
> > -		mem = i915->mm.stolen_region;
> > -		if (!mem) {
> > -			drm_dbg_kms(&i915->drm,
> > -				    "Initial plane memory region not initialized\n");
> > -			return NULL;
> > -		}
> > -	}
> > -
> >   	size = round_up(plane_config->base + plane_config->size,
> >   			mem->min_page_size);
> >   	size -= base;

-- 
Ville Syrjälä
Intel
