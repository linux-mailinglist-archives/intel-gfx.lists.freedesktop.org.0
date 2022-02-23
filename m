Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B605C4C1D84
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Feb 2022 22:15:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE77410EB87;
	Wed, 23 Feb 2022 21:15:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D502A10EB87
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Feb 2022 21:15:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645650950; x=1677186950;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=mlasgF31DoDTRhFARnzxN6FkjqVti6deNSGIZ/62E+o=;
 b=ky6pBUfCAAz765o21iaAEbXGeQVAWE5tV1VegbhaLLSetF4hMg1esbsL
 FCMooiL3KpB7wfxJqg4ibz7YjXLOPIbP4wMeAH5UchYZy67VMLumF/0yl
 Bnyw9hzXAB56umIa10s9a3v3naBniDakVvFtDqJzI/RspYxCQgdmflG1c
 MzSklM+5AbXHrC8EKOtn6KmvDjuu329BKYfGPtFh+2Q2rtddjoR5m4XRT
 Cw2Tu8nevXoSRZ8vkVnJ7zZBuNrnFx0rJUYEuh+RkiB6j5uyOgtkPmTJm
 ypOZXNe70LMbYu0m+AO+7aSZExo8TFgV0kthmREIbAeg8thIZvj8CpdOE w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10267"; a="315308089"
X-IronPort-AV: E=Sophos;i="5.88,392,1635231600"; d="scan'208";a="315308089"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 13:15:50 -0800
X-IronPort-AV: E=Sophos;i="5.88,392,1635231600"; d="scan'208";a="548442813"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2022 13:15:50 -0800
Date: Wed, 23 Feb 2022 13:15:48 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YhakBCmLFmqNRH6D@mdroper-desk1.amr.corp.intel.com>
References: <20220223210933.3049143-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220223210933.3049143-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Do not try loading wrong DMC
 version
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

On Wed, Feb 23, 2022 at 01:09:33PM -0800, Lucas De Marchi wrote:
> Checking by >= DISPLAY_VER(12) made sense when the support for Tiger
> Lake was added. However now it only leads to wrong behavior when adding
> more platforms since it's expected they either don't have DMC to load
> or they have their own blob.
> 
> Logs from DG2 loading on a CFL host, without having a DMC firmware
> defined:
> 
> 	<6>[    0.000000] DMI: Intel Corporation CoffeeLake Client Platform/CoffeeLake S UDIMM RVP, BIOS CNLSFWR1.R00.X220.B00.2103302221 03/30/2021
> 	...
> 	<6>[    2.706607] pci 0000:03:00.0: [8086:56a0] type 00 class 0x030000
> 	...
> 	<7>[    6.340397] i915 0000:03:00.0: [drm:intel_dmc_ucode_init [i915]] Loading i915/tgl_dmc_ver2_12.bin
> 	<7>[    6.341841] i915 0000:03:00.0: [drm:intel_fbc_init [i915]] Sanitized enable_fbc value: 1
> 	<3>[    6.342432] genirq: Flags mismatch irq 0. 00000080 (i915) vs. 00015a00 (timer)
> 	<6>[    6.346283] i915 0000:03:00.0: [drm] Finished loading DMC firmware i915/tgl_dmc_ver2_12.bin (v2.12)
> 	<3>[    6.385756] i915 0000:03:00.0: Device initialization failed (-16)
> 	<5>[    6.385778] i915 0000:03:00.0: Please file a bug on drm/i915; see https://gitlab.freedesktop.org/drm/intel/-/wikis/How-to-file-i915-bugs for details.
> 	<4>[    6.385782] i915: probe of 0000:03:00.0 failed with error -16
> 
> TGL is the only platform left with DISPLAY_VER() == 12 that is not
> handled already in the if/else ladder, so handle it specifically.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 7616a3906b9e..133476be6d28 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -697,7 +697,7 @@ void intel_dmc_ucode_init(struct drm_i915_private *dev_priv)
>  		dmc->fw_path = RKL_DMC_PATH;
>  		dmc->required_version = RKL_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
> -	} else if (DISPLAY_VER(dev_priv) >= 12) {
> +	} else if (IS_TIGERLAKE(dev_priv)) {
>  		dmc->fw_path = TGL_DMC_PATH;
>  		dmc->required_version = TGL_DMC_VERSION_REQUIRED;
>  		dmc->max_fw_size = DISPLAY_VER12_DMC_MAX_FW_SIZE;
> -- 
> 2.35.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
