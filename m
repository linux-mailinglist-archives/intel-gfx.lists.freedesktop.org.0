Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4374E5589CF
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 22:05:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76F2F10E379;
	Thu, 23 Jun 2022 20:05:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6310010E379
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 20:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656014722; x=1687550722;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=II4BMlPlZmaX/e6Tzl2YXUY8W04VtRvwbNsDZWIOg6s=;
 b=E3Fe0zVhiksfZLNAamAH6zN/pFlte+0QndjqfVZIu4hhzdopes172ttS
 FvAE243Uzddm+CIQss7CzHOFk+e0C/t7VzBri9I/uxnGq/gOtJpyvz5u9
 vwp9Bm8X85RlR0lcwUwus9UCQjBeNkvJMTaINgJYupbMP/EIMkitn+K0k
 /g7Rrp/0waEQgzlCLsl3AHelvCYVHtMQR6iJ+7jf8/FnnMGPBrLcRxTEF
 RA8ruAvF0YSWWDbxrrV9dcAMrzX4xkxlyTlm7vduxFYQy2pVcTAKsP07H
 Wvb+QzCgHCit7eTOpqYrNQLlIEB/G3HjXSHtOxMz+SSaQElAMquGGWj/D g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="306290598"
X-IronPort-AV: E=Sophos;i="5.92,217,1650956400"; d="scan'208";a="306290598"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 13:05:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,217,1650956400"; d="scan'208";a="621445605"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.161])
 by orsmga001.jf.intel.com with SMTP; 23 Jun 2022 13:05:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Jun 2022 23:05:18 +0300
Date: Thu, 23 Jun 2022 23:05:18 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YrTHfkVrzx2v8wSW@intel.com>
References: <cover.1655712106.git.jani.nikula@intel.com>
 <1037cd2faeb2ad28be07dcb07afd4ec80a80e7a4.1655712106.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1037cd2faeb2ad28be07dcb07afd4ec80a80e7a4.1655712106.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 03/16] drm/i915: add initial runtime info
 into device info
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

On Mon, Jun 20, 2022 at 11:38:02AM +0300, Jani Nikula wrote:
> Add initial runtime info that we can copy to runtime info at i915
> creation time. This lets us define the initial values for runtime info
> statically while making it possible to change them runtime. This will be
> the new home for the current "const" device info members that are
> modified runtime anyway.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_driver.c       |  7 +++-
>  drivers/gpu/drm/i915/intel_device_info.h | 41 +++++++++++++-----------
>  2 files changed, 29 insertions(+), 19 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 0b00a05f1a74..5969cc7805d3 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -796,6 +796,7 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	const struct intel_device_info *match_info =
>  		(struct intel_device_info *)ent->driver_data;
>  	struct intel_device_info *device_info;
> +	struct intel_runtime_info *runtime;
>  	struct drm_i915_private *i915;
>  
>  	i915 = devm_drm_dev_alloc(&pdev->dev, &i915_drm_driver,
> @@ -811,7 +812,11 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	/* Setup the write-once "constant" device info */
>  	device_info = mkwrite_device_info(i915);
>  	memcpy(device_info, match_info, sizeof(*device_info));
> -	RUNTIME_INFO(i915)->device_id = pdev->device;
> +
> +	/* Initialize initial runtime info from static const data and pdev. */
> +	runtime = RUNTIME_INFO(i915);
> +	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
> +	runtime->device_id = pdev->device;
>  
>  	return i915;
>  }
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index b86f68866e35..85385c98b9f4 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -197,6 +197,27 @@ struct ip_version {
>  	u8 rel;
>  };
>  
> +struct intel_runtime_info {
> +	/*
> +	 * Platform mask is used for optimizing or-ed IS_PLATFORM calls into
> +	 * into single runtime conditionals, and also to provide groundwork
> +	 * for future per platform, or per SKU build optimizations.
> +	 *
> +	 * Array can be extended when necessary if the corresponding
> +	 * BUILD_BUG_ON is hit.
> +	 */
> +	u32 platform_mask[2];
> +
> +	u16 device_id;
> +
> +	u8 num_sprites[I915_MAX_PIPES];
> +	u8 num_scalers[I915_MAX_PIPES];

I was just thinking about moving these out from runtime init,
and perhaps converting to something a bit less funky (eg. plane
bitmask or somesuch thing). But then I got lost trying to parse
my way through the macro hell in i915_pci.c...

> +
> +	u32 rawclk_freq;
> +
> +	struct intel_step_info step;
> +};
> +
>  struct intel_device_info {
>  	struct ip_version graphics;
>  	struct ip_version media;
> @@ -252,27 +273,11 @@ struct intel_device_info {
>  		u32 degamma_lut_tests;
>  		u32 gamma_lut_tests;
>  	} color;
> -};
>  
> -struct intel_runtime_info {
>  	/*
> -	 * Platform mask is used for optimizing or-ed IS_PLATFORM calls into
> -	 * into single runtime conditionals, and also to provide groundwork
> -	 * for future per platform, or per SKU build optimizations.
> -	 *
> -	 * Array can be extended when necessary if the corresponding
> -	 * BUILD_BUG_ON is hit.
> +	 * Initial runtime info. Do not access outside of i915_driver_create().
>  	 */
> -	u32 platform_mask[2];
> -
> -	u16 device_id;
> -
> -	u8 num_sprites[I915_MAX_PIPES];
> -	u8 num_scalers[I915_MAX_PIPES];
> -
> -	u32 rawclk_freq;
> -
> -	struct intel_step_info step;
> +	const struct intel_runtime_info __runtime;
>  };
>  
>  struct intel_driver_caps {
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
