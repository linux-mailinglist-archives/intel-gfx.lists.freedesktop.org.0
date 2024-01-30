Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FC384311B
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 00:24:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD5F111370E;
	Tue, 30 Jan 2024 23:24:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com
 [209.85.222.182])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A59111370E
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 23:24:18 +0000 (UTC)
Received: by mail-qk1-f182.google.com with SMTP id
 af79cd13be357-783da26489aso363433085a.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 15:24:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706656997; x=1707261797;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=Yit2kuYIYBKXM0LqmAclGnIbsOfNOXs/OaVaZMjCqno=;
 b=n4hVBr/c2QEXhonXda4s1C87qlWkxKUOGv00UGpJRAw9LCW6ANQ+7LwXWWklh+S6uT
 bN6G1YYOiHCJY3lWSBftgLAsSoZC9E4SyRrNJCC6Hx9gZV+ArZSgYzeUDgqZfxMjgrqK
 KNDEx/InfwP3mbOdMfCqOArsyQeSCPoW5slog=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706656997; x=1707261797;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=Yit2kuYIYBKXM0LqmAclGnIbsOfNOXs/OaVaZMjCqno=;
 b=F8y0Gm2n7RYVQ9461tLaYCDU3Xy1JoNl+czucoS0FVgNdIiosJSzTJedSQc1IA6GIm
 accq7+Ku2COb6bz/giF2KRvHbllNQ8O0gIYy8gBm6xXiaoIgJ3jHNQjJVZIetakwMRow
 86SFC6LIaaFS2iN5bB4aQCC0J+nxHwyxi+N6u/DA5fApoiMa3zgPF0E9QfmCiXFPY1a5
 4aSTRZTkfvaITvZZHegK1qoiAgbYG2qUO6DzsO51uSgMqzXbQCxgBB0APEo+rKMn3hdO
 Ck9/jnnazo3zf87oVCqcay1uiqgqtDhl03i4G50wBpMkwocUvRCozR+RGIRfdq1isIz+
 35bQ==
X-Gm-Message-State: AOJu0YxVXNVD49OfamkUTMpH2G19T6pXzT+JyHRwnnD3d1gTRT0l/2p3
 t7StqUibol/boFNL0t0C1SY2ILrieyM3vQQ0Ax4zeqAHFDoOIdjVBtX+fzpDug==
X-Google-Smtp-Source: AGHT+IFxBQMU4VhRemXhdcaS2M+vwo8NooBbMDzZuRbld48gWwqt2WtnLfopPMWFJfv5+p5HmiuHdQ==
X-Received: by 2002:a05:620a:166c:b0:783:e3be:9ba0 with SMTP id
 d12-20020a05620a166c00b00783e3be9ba0mr6666735qko.27.1706656997707; 
 Tue, 30 Jan 2024 15:23:17 -0800 (PST)
Received: from google.com (240.157.150.34.bc.googleusercontent.com.
 [34.150.157.240]) by smtp.gmail.com with ESMTPSA id
 c8-20020a05620a11a800b00783ff37c473sm2052713qkk.103.2024.01.30.15.23.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 15:23:17 -0800 (PST)
Date: Tue, 30 Jan 2024 23:23:16 +0000
From: Paz Zcharya <pazz@chromium.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 11/16] drm/i915: Split the smem and lmem plane readout
 apart
Message-ID: <ZbmE5NdOa9_AJEs4@google.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-12-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240116075636.6121-12-ville.syrjala@linux.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 16, 2024 at 09:56:31AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Declutter initial_plane_vma() a bit by pulling the lmem and smem
> readout paths into their own functions.
> 
> TODO: the smem path should still be fixed to get and validate
>       the dma address from the pte as well
> 
> Cc: Paz Zcharya <pazz@chromium.org>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Hi Ville,

Thank you so much for this incredible series.
It solves the issue regarding MTL initial plane readout
that Andrzej Hajda and I worked on in
https://patchwork.freedesktop.org/patch/570811/?series=127130&rev=2
In addition, it solved the issue with the new GOP.

I tested it on two different devices with Meteor Lake and it worked perfectly:
no i915 errors, no flickers or observable issues.

Tested-by: Paz Zcharya <pazz@chromium.org>

> ---
>  .../drm/i915/display/intel_display_types.h    |   2 +
>  .../drm/i915/display/intel_plane_initial.c    | 145 +++++++++++-------
>  2 files changed, 95 insertions(+), 52 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index ae2e8cff9d69..319ba7aed4fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -780,6 +780,8 @@ struct intel_plane_state {
>  
>  struct intel_initial_plane_config {
>  	struct intel_framebuffer *fb;
> +	struct intel_memory_region *mem;
> +	resource_size_t phys_base;
>  	struct i915_vma *vma;
>  	unsigned int tiling;
>  	int size;
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> index 48b74319f45c..78bff6181ceb 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -44,6 +44,93 @@ intel_reuse_initial_plane_obj(struct drm_i915_private *i915,
>  	return false;
>  }
>  
> +static bool
> +initial_plane_phys_lmem(struct drm_i915_private *i915,
> +			struct intel_initial_plane_config *plane_config)
> +{
> +	gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
> +	struct intel_memory_region *mem;
> +	dma_addr_t dma_addr;
> +	gen8_pte_t pte;
> +	u32 base;
> +
> +	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
> +
> +	gte += base / I915_GTT_PAGE_SIZE;
> +
> +	pte = ioread64(gte);
> +	if (!(pte & GEN12_GGTT_PTE_LM)) {
> +		drm_err(&i915->drm,
> +			"Initial plane programming missing PTE_LM bit\n");
> +		return false;
> +	}
> +
> +	dma_addr = pte & GEN12_GGTT_PTE_ADDR_MASK;
> +
> +	if (IS_DGFX(i915))
> +		mem = i915->mm.regions[INTEL_REGION_LMEM_0];
> +	else
> +		mem = i915->mm.stolen_region;
> +	if (!mem) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Initial plane memory region not initialized\n");
> +		return false;
> +	}
> +
> +	/*
> +	 * On lmem we don't currently expect this to
> +	 * ever be placed in the stolen portion.
> +	 */
> +	if (dma_addr < mem->region.start || dma_addr > mem->region.end) {
> +		drm_err(&i915->drm,
> +			"Initial plane programming using invalid range, dma_addr=%pa (%s [%pa-%pa])\n",
> +			&dma_addr, mem->region.name, &mem->region.start, &mem->region.end);
> +		return false;
> +	}
> +
> +	drm_dbg(&i915->drm,
> +		"Using dma_addr=%pa, based on initial plane programming\n",
> +		&dma_addr);
> +
> +	plane_config->phys_base = dma_addr - mem->region.start;
> +	plane_config->mem = mem;
> +
> +	return true;
> +}
> +
> +static bool
> +initial_plane_phys_smem(struct drm_i915_private *i915,
> +			struct intel_initial_plane_config *plane_config)
> +{
> +	struct intel_memory_region *mem;
> +	u32 base;
> +
> +	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
> +
> +	mem = i915->mm.stolen_region;
> +	if (!mem) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Initial plane memory region not initialized\n");
> +		return false;
> +	}
> +
> +	/* FIXME get and validate the dma_addr from the PTE */
> +	plane_config->phys_base = base;
> +	plane_config->mem = mem;
> +
> +	return true;
> +}
> +
> +static bool
> +initial_plane_phys(struct drm_i915_private *i915,
> +		   struct intel_initial_plane_config *plane_config)
> +{
> +	if (IS_DGFX(i915) || HAS_LMEMBAR_SMEM_STOLEN(i915))
> +		return initial_plane_phys_lmem(i915, plane_config);
> +	else
> +		return initial_plane_phys_smem(i915, plane_config);
> +}
> +
>  static struct i915_vma *
>  initial_plane_vma(struct drm_i915_private *i915,
>  		  struct intel_initial_plane_config *plane_config)
> @@ -58,59 +145,13 @@ initial_plane_vma(struct drm_i915_private *i915,
>  	if (plane_config->size == 0)
>  		return NULL;
>  
> +	if (!initial_plane_phys(i915, plane_config))
> +		return NULL;
> +
> +	phys_base = plane_config->phys_base;
> +	mem = plane_config->mem;
> +
>  	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
> -	if (IS_DGFX(i915) || HAS_LMEMBAR_SMEM_STOLEN(i915)) {
> -		gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
> -		dma_addr_t dma_addr;
> -		gen8_pte_t pte;
> -
> -		gte += base / I915_GTT_PAGE_SIZE;
> -
> -		pte = ioread64(gte);
> -		if (!(pte & GEN12_GGTT_PTE_LM)) {
> -			drm_err(&i915->drm,
> -				"Initial plane programming missing PTE_LM bit\n");
> -			return NULL;
> -		}
> -
> -		dma_addr = pte & GEN12_GGTT_PTE_ADDR_MASK;
> -
> -		if (IS_DGFX(i915))
> -			mem = i915->mm.regions[INTEL_REGION_LMEM_0];
> -		else
> -			mem = i915->mm.stolen_region;
> -		if (!mem) {
> -			drm_dbg_kms(&i915->drm,
> -				    "Initial plane memory region not initialized\n");
> -			return NULL;
> -		}
> -
> -		/*
> -		 * On lmem we don't currently expect this to
> -		 * ever be placed in the stolen portion.
> -		 */
> -		if (dma_addr < mem->region.start || dma_addr > mem->region.end) {
> -			drm_err(&i915->drm,
> -				"Initial plane programming using invalid range, dma_addr=%pa (%s [%pa-%pa])\n",
> -				&dma_addr, mem->region.name, &mem->region.start, &mem->region.end);
> -			return NULL;
> -		}
> -
> -		drm_dbg(&i915->drm,
> -			"Using dma_addr=%pa, based on initial plane programming\n",
> -			&dma_addr);
> -
> -		phys_base = dma_addr - mem->region.start;
> -	} else {
> -		phys_base = base;
> -		mem = i915->mm.stolen_region;
> -		if (!mem) {
> -			drm_dbg_kms(&i915->drm,
> -				    "Initial plane memory region not initialized\n");
> -			return NULL;
> -		}
> -	}
> -
>  	size = round_up(plane_config->base + plane_config->size,
>  			mem->min_page_size);
>  	size -= base;
> -- 
> 2.41.0
> 
