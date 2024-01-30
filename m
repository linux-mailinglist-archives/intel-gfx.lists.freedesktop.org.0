Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2E384311D
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 00:24:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40435113714;
	Tue, 30 Jan 2024 23:24:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
 [209.85.160.181])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D701113714
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 23:24:02 +0000 (UTC)
Received: by mail-qt1-f181.google.com with SMTP id
 d75a77b69052e-42ab4f6daf2so6937401cf.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 15:24:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706656981; x=1707261781;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=zzXi3WLDubIdZK5VgYxs7pT+Jc9LusflFbc3ICsiB48=;
 b=ajyXS/8+aMomBjkhk6gDsIfUv9aGezFgmB4zelKY9AlnO1zzEI2Yk1zmkQUYNZly+G
 IV9XJbmEntfg7n+Vqd4MPQDMAE5ADKHU5Smu9/18tN6FCLsjK0dBQvMZ8b2IkyOZBrtU
 VygcOD9Z6iQ538hL5/V4OUuuI9y8wYLH4EraA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706656981; x=1707261781;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=zzXi3WLDubIdZK5VgYxs7pT+Jc9LusflFbc3ICsiB48=;
 b=iupoIC9gt0w/35R5JfF8zu+/Tpsi658DttBTVF7wker3mg1mWzRXIc1CMy38giKuXV
 lE029Ajdm/DXJGTlS+NUMqP94/KcSgEVZnFl6pLJ0M3RtFHZmr5dMs2iaP3tZPsvb1pi
 p8kuRSBFYwPQYZdf5M0GQX3UaP0O+56SUU6SgyDZSvmhJWi/TqgRWJmhDsiPJmhzQTpN
 d0mFawrBOPyHUy6vtgUOoMoqnrHT5n5iMxO+r06ybtGdHisqCxZDfB+59bklKmz4agO2
 YbEeVtAXFjoZ7ZfkvzHrRIls06+wLs2h+/vWJxiv4P2TqrB+x87c3+laTu0kETIOY6Lh
 GLMQ==
X-Gm-Message-State: AOJu0Yw8OPn/2x3DM2/tpibgJOfesu79nhFLgR2Y4O0xkAYw7n09cJ+2
 5yjfJBvXJ4DT58k4YLAg9qrwMQnKAWaAlqZ3FPY2sorDwtpJOLIZ51pSz7veSQZ6c1QNe7sc+2h
 aKQ==
X-Google-Smtp-Source: AGHT+IHzFSv4hQFaxvMqUMCx9F1MLB758qB10E25QSbmFlZzX6p23Bl/F/wwB/bcSdbQ9NajbKoYgg==
X-Received: by 2002:a05:6214:2aac:b0:68c:4d33:c859 with SMTP id
 js12-20020a0562142aac00b0068c4d33c859mr10217qvb.63.1706656981285; 
 Tue, 30 Jan 2024 15:23:01 -0800 (PST)
Received: from google.com (240.157.150.34.bc.googleusercontent.com.
 [34.150.157.240]) by smtp.gmail.com with ESMTPSA id
 e9-20020ad45369000000b0068c46068b09sm3253589qvv.141.2024.01.30.15.23.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 15:23:01 -0800 (PST)
Date: Tue, 30 Jan 2024 23:22:59 +0000
From: Paz Zcharya <pazz@chromium.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 10/16] drm/i915: s/phys_base/dma_addr/
Message-ID: <ZbmE05vpWJyBu5Bh@google.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
 <20240116075636.6121-11-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240116075636.6121-11-ville.syrjala@linux.intel.com>
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

On Tue, Jan 16, 2024 at 09:56:30AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> The address we read from the PTE is a dma address, not a physical
> address. Rename the variable to say so.
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
>  .../gpu/drm/i915/display/intel_plane_initial.c    | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> index c72d4cacf631..48b74319f45c 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -61,6 +61,7 @@ initial_plane_vma(struct drm_i915_private *i915,
>  	base = round_down(plane_config->base, I915_GTT_MIN_ALIGNMENT);
>  	if (IS_DGFX(i915) || HAS_LMEMBAR_SMEM_STOLEN(i915)) {
>  		gen8_pte_t __iomem *gte = to_gt(i915)->ggtt->gsm;
> +		dma_addr_t dma_addr;
>  		gen8_pte_t pte;
>  
>  		gte += base / I915_GTT_PAGE_SIZE;
> @@ -72,7 +73,7 @@ initial_plane_vma(struct drm_i915_private *i915,
>  			return NULL;
>  		}
>  
> -		phys_base = pte & GEN12_GGTT_PTE_ADDR_MASK;
> +		dma_addr = pte & GEN12_GGTT_PTE_ADDR_MASK;
>  
>  		if (IS_DGFX(i915))
>  			mem = i915->mm.regions[INTEL_REGION_LMEM_0];
> @@ -88,18 +89,18 @@ initial_plane_vma(struct drm_i915_private *i915,
>  		 * On lmem we don't currently expect this to
>  		 * ever be placed in the stolen portion.
>  		 */
> -		if (phys_base < mem->region.start || phys_base > mem->region.end) {
> +		if (dma_addr < mem->region.start || dma_addr > mem->region.end) {
>  			drm_err(&i915->drm,
> -				"Initial plane programming using invalid range, phys_base=%pa (%s [%pa-%pa])\n",
> -				&phys_base, mem->region.name, &mem->region.start, &mem->region.end);
> +				"Initial plane programming using invalid range, dma_addr=%pa (%s [%pa-%pa])\n",
> +				&dma_addr, mem->region.name, &mem->region.start, &mem->region.end);
>  			return NULL;
>  		}
>  
>  		drm_dbg(&i915->drm,
> -			"Using phys_base=%pa, based on initial plane programming\n",
> -			&phys_base);
> +			"Using dma_addr=%pa, based on initial plane programming\n",
> +			&dma_addr);
>  
> -		phys_base -= mem->region.start;
> +		phys_base = dma_addr - mem->region.start;
>  	} else {
>  		phys_base = base;
>  		mem = i915->mm.stolen_region;
> -- 
> 2.41.0
> 
