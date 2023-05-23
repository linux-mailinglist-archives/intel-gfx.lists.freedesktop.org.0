Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F0A70DD1E
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 14:59:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A7A310E43A;
	Tue, 23 May 2023 12:58:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 909D210E438;
 Tue, 23 May 2023 12:58:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684846737; x=1716382737;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=fsG/c00umYRRuZCuDD9jwhMUFPCDc2lAZ2s3rws1Ksc=;
 b=HMNxnmhwoo3cbr+8fPGz348WLAgKGa1xG8d8aQIJTUxguI/N4F0LbLCe
 SR/d4s6ymDZjpH97CZ2yV8Y55p3MPDqL9apVYe5EUAt662ebGk783UEUd
 yyKFEWsr/UUbYtwHeunp/zP4QrgjjXU+3vK8b/KpF60ohHLhT+DBCSifU
 SoFhgf2Z7Csz+dEkwxrksht4rtWoNMs0Y3P+Kuthd+arGGP/bQGy1KXl3
 2B3Q3tgU5A1/KV0LvyG1oXstdotFLAghh9vm+4KKN7q0Hr5em1zv4CEi0
 EZgjwkRycUZdpDuGU9ekNyPB8BoJEK1RvUm1UukmZMwFDi4pJj/CldsgP g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="332839659"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="332839659"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 05:58:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="950530358"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="950530358"
Received: from chauvina-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.53.70])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 05:58:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230522202314.3939499-5-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230522202314.3939499-1-matthew.d.roper@intel.com>
 <20230522202314.3939499-5-matthew.d.roper@intel.com>
Date: Tue, 23 May 2023 15:58:52 +0300
Message-ID: <87fs7nkxv7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2 4/6] drm/i915/display: Make
 display responsible for probing its own IP
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
Cc: Matt Roper <matthew.d.roper@intel.com>, intel-xe@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 22 May 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> +static const struct intel_display_device_info xe_lpdp_display = {
> +	XE_LPD_FEATURES,
> +	.has_cdclk_crawl = 1,
> +	.has_cdclk_squash = 1,
> +
> +	.__runtime_defaults.ip.ver = 14,
> +	.__runtime_defaults.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B),
> +	.__runtime_defaults.cpu_transcoder_mask =
> +		BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> +		BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
> +};
> +
> +static const struct pci_device_id intel_display_ids[] = {

Since this is not used for MODULE_DEVICE_TABLE(), there's no requirement
for the array to be struct pci_device_id.

You can either have a struct with compatible members, or just undef and
redefine INTEL_VGA_DEVICE() to initialize a struct with pci id and const
struct intel_display_device_info *, so you can avoid the cast in
intel_display_device_probe().

See what's done with subplatform init arrays in intel_device_info.c.

This too is nitpicking, and can be fixed later.

> +	INTEL_I830_IDS(&i830_display),
> +	INTEL_I845G_IDS(&i845_display),
> +	INTEL_I85X_IDS(&i85x_display),
> +	INTEL_I865G_IDS(&i865g_display),
> +	INTEL_I915G_IDS(&i915g_display),
> +	INTEL_I915GM_IDS(&i915gm_display),
> +	INTEL_I945G_IDS(&i945g_display),
> +	INTEL_I945GM_IDS(&i945gm_display),
> +	INTEL_I965G_IDS(&i965g_display),
> +	INTEL_G33_IDS(&g33_display),
> +	INTEL_I965GM_IDS(&i965gm_display),
> +	INTEL_GM45_IDS(&gm45_display),
> +	INTEL_G45_IDS(&g45_display),
> +	INTEL_PINEVIEW_G_IDS(&g33_display),
> +	INTEL_PINEVIEW_M_IDS(&g33_display),
> +	INTEL_IRONLAKE_D_IDS(&ilk_d_display),
> +	INTEL_IRONLAKE_M_IDS(&ilk_m_display),
> +	INTEL_SNB_D_IDS(&snb_display),
> +	INTEL_SNB_M_IDS(&snb_display),
> +	INTEL_IVB_Q_IDS(NULL),		/* must be first IVB in list */
> +	INTEL_IVB_M_IDS(&ivb_display),
> +	INTEL_IVB_D_IDS(&ivb_display),
> +	INTEL_HSW_IDS(&hsw_display),
> +	INTEL_VLV_IDS(&vlv_display),
> +	INTEL_BDW_IDS(&bdw_display),
> +	INTEL_CHV_IDS(&chv_display),
> +	INTEL_SKL_IDS(&skl_display),
> +	INTEL_BXT_IDS(&bxt_display),
> +	INTEL_GLK_IDS(&glk_display),
> +	INTEL_KBL_IDS(&skl_display),
> +	INTEL_CFL_IDS(&skl_display),
> +	INTEL_ICL_11_IDS(&gen11_display),
> +	INTEL_EHL_IDS(&gen11_display),
> +	INTEL_JSL_IDS(&gen11_display),
> +	INTEL_TGL_12_IDS(&tgl_display),
> +	INTEL_DG1_IDS(&tgl_display),
> +	INTEL_RKL_IDS(&rkl_display),
> +	INTEL_ADLS_IDS(&adl_s_display),
> +	INTEL_RPLS_IDS(&adl_s_display),
> +	INTEL_ADLP_IDS(&xe_lpd_display),
> +	INTEL_ADLN_IDS(&xe_lpd_display),
> +	INTEL_RPLP_IDS(&xe_lpd_display),
> +	INTEL_DG2_IDS(&xe_hpd_display),
> +
> +	/* FIXME: Replace this with a GMD_ID lookup */
> +	INTEL_MTL_IDS(&xe_lpdp_display),
> +};
> +
> +const struct intel_display_device_info *
> +intel_display_device_probe(u16 pci_devid)
> +{
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(intel_display_ids); i++) {
> +		if (intel_display_ids[i].device == pci_devid)
> +			return (struct intel_display_device_info *)intel_display_ids[i].driver_data;
> +	}
> +

I wonder if a debug message here would be helpful. *shrug*.

> +	return &no_display;
> +}


> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 4d158927c78b..e1507ae59f2d 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -574,7 +574,6 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
>  {
>  	struct intel_device_info *info;
>  	struct intel_runtime_info *runtime;
> -	struct intel_display_runtime_info *display_runtime;
>  
>  	/* Setup the write-once "constant" device info */
>  	info = mkwrite_device_info(i915);
> @@ -583,9 +582,10 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
>  	/* Initialize initial runtime info from static const data and pdev. */
>  	runtime = RUNTIME_INFO(i915);
>  	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
> -	display_runtime = DISPLAY_RUNTIME_INFO(i915);
> -	memcpy(display_runtime, &DISPLAY_INFO(i915)->__runtime_defaults,
> -	       sizeof(*display_runtime));
> +
> +	/* Probe display support */
> +	info->display = intel_display_device_probe(device_id);
> +	*DISPLAY_RUNTIME_INFO(i915) = DISPLAY_INFO(i915)->__runtime_defaults;

I think I'd keep the memcpy.

Acked-by: Jani Nikula <jani.nikula@intel.com>


>  
>  	runtime->device_id = device_id;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
