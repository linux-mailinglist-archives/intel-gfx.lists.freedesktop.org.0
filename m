Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7FA82C232
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 15:52:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D32A10EB2C;
	Fri, 12 Jan 2024 14:52:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F39A10EB29
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 14:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705071160; x=1736607160;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=coDSrZfxNrcfWK9q2uESbFGhMRjjQUNcsnl2Nq36p4o=;
 b=njFaBHF7HEid04P0SxrqvoyYRZOaiCF50Hduey4HVspq6mPuBvR/8Yqp
 D5JYriZxCdQGPjRoiv9VFX89o7cFb3CEdX+LOacAC1hWtBvxYPF+l3Ekj
 tPTCQpjtyZbs5BU7UnX2/2JRgrYg6HSxuwiZ9NvO3dpQQt67dJMnG2CZc
 pXspksTcLPihj3UvdM1OqB6xGzGXPGShk6ZgcZg1MyUV7iz5IONrykOEJ
 RSeV7GaBHX4tBU9tZDomUcHzAGmmg8kqj4ZgVkeM3VnJ1bujgB+sO2NOI
 dVFB8I8ZWrHKBufzKzcYMOwcNqQ4REYjw9WA8IrlvddgPBA3p19H+TjWH Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="398067895"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; d="scan'208";a="398067895"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 06:52:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="776022579"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; d="scan'208";a="776022579"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 12 Jan 2024 06:52:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Jan 2024 16:52:36 +0200
Date: Fri, 12 Jan 2024 16:52:36 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Subject: Re: [PATCH v2 09/15] drm/i915: Fix MTL initial plane readout
Message-ID: <ZaFSNKUckbj3oy2i@intel.com>
References: <20231215105929.29568-1-ville.syrjala@linux.intel.com>
 <20231215105929.29568-10-ville.syrjala@linux.intel.com>
 <167fb691-d2e4-4716-ba77-eebd39f6efcf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <167fb691-d2e4-4716-ba77-eebd39f6efcf@intel.com>
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

On Tue, Dec 19, 2023 at 11:58:36AM +0100, Andrzej Hajda wrote:
> On 15.12.2023 11:59, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > MTL stolen memory looks more like local memory, so use the
> > (now fixed) lmem path when doing the initial plane readout.
> > 
> > Cc: Paz Zcharya <pazz@chromium.org>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >   .../drm/i915/display/intel_plane_initial.c    | 25 +++++++++++++------
> >   1 file changed, 18 insertions(+), 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > index db594ccf0323..c72d4cacf631 100644
> > --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > @@ -59,7 +59,7 @@ initial_plane_vma(struct drm_i915_private *i915,
> >   		return NULL;
> >   
> >   	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
> > -	if (IS_DGFX(i915)) {
> > +	if (IS_DGFX(i915) || HAS_LMEMBAR_SMEM_STOLEN(i915)) {
> >   		gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
> >   		gen8_pte_t pte;
> >   
> > @@ -73,11 +73,20 @@ initial_plane_vma(struct drm_i915_private *i915,
> >   		}
> >   
> >   		phys_base = pte & GEN12_GGTT_PTE_ADDR_MASK;
> > -		mem = i915->mm.regions[INTEL_REGION_LMEM_0];
> > +
> > +		if (IS_DGFX(i915))
> > +			mem = i915->mm.regions[INTEL_REGION_LMEM_0];
> > +		else
> > +			mem = i915->mm.stolen_region;
> > +		if (!mem) {
> > +			drm_dbg_kms(&i915->drm,
> > +				    "Initial plane memory region not initialized\n");
> > +			return NULL;
> > +		}
> >   
> >   		/*
> > -		 * We don't currently expect this to ever be placed in the
> > -		 * stolen portion.
> > +		 * On lmem we don't currently expect this to
> > +		 * ever be placed in the stolen portion.
> >   		 */
> >   		if (phys_base < mem->region.start || phys_base > mem->region.end) {
> >   			drm_err(&i915->drm,
> > @@ -94,11 +103,13 @@ initial_plane_vma(struct drm_i915_private *i915,
> >   	} else {
> >   		phys_base = base;
> >   		mem = i915->mm.stolen_region;
> > +		if (!mem) {
> > +			drm_dbg_kms(&i915->drm,
> > +				    "Initial plane memory region not initialized\n");
> > +			return NULL;
> > +		}
> 
> Code duplication suggests, we could try to move this out ifs.
> The extra check should be harmless in case of 1:1.

With the lmem vs. smem split later this is needed in both branches.
Maybe we can re-unify it later if/when we add the PTE redout for the
smem case.

> 
> Regards
> Andrzej
> 
> >   	}
> >   
> > -	if (!mem)
> > -		return NULL;
> > -
> >   	size = round_up(plane_config->base + plane_config->size,
> >   			mem->min_page_size);
> >   	size -= base;

-- 
Ville Syrjälä
Intel
