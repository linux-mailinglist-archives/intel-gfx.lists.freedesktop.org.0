Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E655843112
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 00:22:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F00DA10EBA9;
	Tue, 30 Jan 2024 23:21:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com
 [209.85.210.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF21F10EBA9
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 23:21:50 +0000 (UTC)
Received: by mail-ot1-f48.google.com with SMTP id
 46e09a7af769-6e117eec348so2450265a34.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 15:21:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1706656850; x=1707261650;
 darn=lists.freedesktop.org; 
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=mND2Y8d0PBXzA64jz8fmiCTxnuu0zvmYLzW4xgYGQxk=;
 b=GqQxgybF6a0eRhE1D2vEwqrvraIbHEOBXcwZnUT8bpPaP40N1YHUZTePUMq4feO0Jw
 V0hefClbdDY5hLBKBi8GjoybZT229nwS1As4qXAqMHHdCnJOYS2ntJ07qXffu7N8h94t
 GRw6XjLxyvrOJOjHvWLG/U5QAh/ZPkraedodE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706656850; x=1707261650;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=mND2Y8d0PBXzA64jz8fmiCTxnuu0zvmYLzW4xgYGQxk=;
 b=XZq7OKnXxg+HDZcXw5VPe1zoCZI5uCzeXVrMeOB0bfT3BWK+8ZC5Gs3YLjYHuUdfKQ
 WCeTDsRkb/XBWZNYfAgbyufLm6irhfUkXHYfkyRbimEyhv/349c+gfqq3PycAN1zrXPF
 NFyzP6/xn9vNrssSEtHnw1RXr9mf6avG2Lr7TntkfP+LIeqTlrCw2JEXelwPV9qOA4gg
 tLAw8uAr/mRGQJcSN23t8D0+hghE1bQf5HNjnk2xpbvrpN3yMseb30C6K1L9j8RejzT2
 Aw/7Wg/mhZYE82y9dy9w+RlBVSPhETySuefmCaz5fqBcKLhiePCgcTvCdJJ2A/Yaf+nP
 b67w==
X-Gm-Message-State: AOJu0YxC/NS5oRWukZ9knFWxF4tSiBNM0CLUMxXf5ggSC/TX5UDkyclQ
 SHEi5n9Ngr+m3JhTkiJwqhX9hiSiDp4uLeTySzeY2pAKMzl+mS6J/9ml9JG+fQ==
X-Google-Smtp-Source: AGHT+IF/jpv0bS7HypgHkNE94qpQbIT9KRuUbZjdh23I+1JVr72EcF2pmSt/fHaWMcn9/9vUqYCDtA==
X-Received: by 2002:a9d:7602:0:b0:6e0:f809:a3b5 with SMTP id
 k2-20020a9d7602000000b006e0f809a3b5mr733806otl.31.1706656849872; 
 Tue, 30 Jan 2024 15:20:49 -0800 (PST)
Received: from google.com (240.157.150.34.bc.googleusercontent.com.
 [34.150.157.240]) by smtp.gmail.com with ESMTPSA id
 ay24-20020a05622a229800b0042ab68d7c59sm1093480qtb.68.2024.01.30.15.20.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Jan 2024 15:20:49 -0800 (PST)
Date: Tue, 30 Jan 2024 23:20:48 +0000
From: Paz Zcharya <pazz@chromium.org>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v4 06/16] drm/i915: Rename the DSM/GSM registers
Message-ID: <ZbmEUId6cflsIKmB@google.com>
References: <20240116075636.6121-7-ville.syrjala@linux.intel.com>
 <20240125102804.22576-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240125102804.22576-1-ville.syrjala@linux.intel.com>
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

On Thu, Jan 25, 2024 at 12:28:04PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> 0x108100 and 0x1080c0 have been around since snb. Rename the
> defines appropriately.
> 
> v2: Rebase
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
>  drivers/gpu/drm/i915/gem/i915_gem_stolen.c  | 4 ++--
>  drivers/gpu/drm/i915/gt/intel_ggtt.c        | 2 +-
>  drivers/gpu/drm/i915/gt/intel_region_lmem.c | 2 +-
>  drivers/gpu/drm/i915/i915_reg.h             | 7 ++++---
>  4 files changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> index 9ddcae9b3997..ad6dd7f3259b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -935,7 +935,7 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
>  		GEM_BUG_ON((dsm_base + dsm_size) > lmem_size);
>  	} else {
>  		/* Use DSM base address instead for stolen memory */
> -		dsm_base = intel_uncore_read64(uncore, GEN12_DSMBASE) & GEN12_BDSM_MASK;
> +		dsm_base = intel_uncore_read64(uncore, GEN6_DSMBASE) & GEN11_BDSM_MASK;
>  		if (WARN_ON(lmem_size < dsm_base))
>  			return ERR_PTR(-ENODEV);
>  		dsm_size = ALIGN_DOWN(lmem_size - dsm_base, SZ_1M);
> @@ -943,7 +943,7 @@ i915_gem_stolen_lmem_setup(struct drm_i915_private *i915, u16 type,
>  
>  	if (i915_direct_stolen_access(i915)) {
>  		drm_dbg(&i915->drm, "Using direct DSM access\n");
> -		io_start = intel_uncore_read64(uncore, GEN12_DSMBASE) & GEN12_BDSM_MASK;
> +		io_start = intel_uncore_read64(uncore, GEN6_DSMBASE) & GEN11_BDSM_MASK;
>  		io_size = dsm_size;
>  	} else if (pci_resource_len(pdev, GEN12_LMEM_BAR) < lmem_size) {
>  		io_start = 0;
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> index bce5d8025340..ec1cbe229f0e 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -1163,7 +1163,7 @@ static int ggtt_probe_common(struct i915_ggtt *ggtt, u64 size)
>  
>  	if (i915_direct_stolen_access(i915)) {
>  		drm_dbg(&i915->drm, "Using direct GSM access\n");
> -		phys_addr = intel_uncore_read64(uncore, GEN12_GSMBASE) & GEN12_BDSM_MASK;
> +		phys_addr = intel_uncore_read64(uncore, GEN6_GSMBASE) & GEN11_BDSM_MASK;
>  	} else {
>  		phys_addr = pci_resource_start(pdev, GEN4_GTTMMADR_BAR) + gen6_gttadr_offset(i915);
>  	}
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index af357089da6e..51bb27e10a4f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -240,7 +240,7 @@ static struct intel_memory_region *setup_lmem(struct intel_gt *gt)
>  		lmem_size -= tile_stolen;
>  	} else {
>  		/* Stolen starts from GSMBASE without CCS */
> -		lmem_size = intel_uncore_read64(&i915->uncore, GEN12_GSMBASE);
> +		lmem_size = intel_uncore_read64(&i915->uncore, GEN6_GSMBASE);
>  	}
>  
>  	i915_resize_lmem_bar(i915, lmem_size);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index b5f5e0bc6608..1ad55aafe679 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6323,9 +6323,10 @@ enum skl_power_gate {
>  #define   GMS_MASK			REG_GENMASK(15, 8)
>  #define   GGMS_MASK			REG_GENMASK(7, 6)
>  
> -#define GEN12_GSMBASE			_MMIO(0x108100)
> -#define GEN12_DSMBASE			_MMIO(0x1080C0)
> -#define   GEN12_BDSM_MASK		REG_GENMASK64(63, 20)
> +#define GEN6_GSMBASE			_MMIO(0x108100)
> +#define GEN6_DSMBASE			_MMIO(0x1080C0)
> +#define   GEN6_BDSM_MASK		REG_GENMASK64(31, 20)
> +#define   GEN11_BDSM_MASK		REG_GENMASK64(63, 20)
>  
>  #define XEHP_CLOCK_GATE_DIS		_MMIO(0x101014)
>  #define   SGSI_SIDECLK_DIS		REG_BIT(17)
> -- 
> 2.43.0
> 
