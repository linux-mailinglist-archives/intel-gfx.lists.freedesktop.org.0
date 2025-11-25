Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F37C847B6
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 11:28:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 167D210E3AE;
	Tue, 25 Nov 2025 10:28:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b2wxMMRq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA76C10E3AE
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Nov 2025 10:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764066518; x=1795602518;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=skEu+HBcmdx+q3VTFYaFEQU3+bQD3GUarjyvkk085IU=;
 b=b2wxMMRqGEpE8V734hpT2JwjOLT+1IZETtZNDos9kFs26ZoCBw3/eIWL
 qr1V5vaHzy9N4PP9teYRAaGZYkbu5I5XBJEtRtK15g9KKMIRcFOfg3oNU
 c40RUk7AVxz2x4EnafQDVN1fEoW7uBnzfxdIEBP45TTaQ8GwcDYsKk37g
 oQ3Jjn6m9r5SUfoG7ljBdsaHhkMgtUQ378yQqw4GNGPA2ESb6j1rBcT5S
 A13GgkcxjPkWVgEXG+eY+4vGkFQMZ1dJ0IimzMXWUJ/hLXwTeD3gGeXdX
 E9bgj/lKar8ovEjrLHgcFII+qlRBh2JG0J8f/ylbOFeBtE+rD1ytEubnC Q==;
X-CSE-ConnectionGUID: OBwmB/nMRC6cVYpWWvW35w==
X-CSE-MsgGUID: nXisSLdDQCarcoOZaXDYXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="83692173"
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="83692173"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 02:28:37 -0800
X-CSE-ConnectionGUID: tbKDBd3zR1aWzgpomNnC3w==
X-CSE-MsgGUID: 7vgClvtaTi6Yfbj4kyMx/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,225,1758610800"; d="scan'208";a="223574051"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.213])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 02:28:35 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: gregkh@linuxfoundation.org, Daniele Ceraolo Spurio
 <daniele.ceraolospurio@intel.com>, Valentine Burley
 <valentine.burley@collabora.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>, Alan Previn
 <alan.previn.teres.alexis@intel.com>
Subject: Re: [PATCH v3 2/2] drm/i915/pxp: Do not support PXP if CSME is not
 available
In-Reply-To: <20251114201431.1135031-6-daniele.ceraolospurio@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251114201431.1135031-4-daniele.ceraolospurio@intel.com>
 <20251114201431.1135031-6-daniele.ceraolospurio@intel.com>
Date: Tue, 25 Nov 2025 12:28:32 +0200
Message-ID: <aae6c3f4466e0f52e4f1f482c14dba68d8d04c0e@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 14 Nov 2025, Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> wrote:
> The PXP flow requires us to communicate with CSME, which we do via a
> mei component. Since the mei component binding is async and can take
> a bit to complete, we don't wait for it during i915 load. If userspace
> queries the state before the async binding is complete, we return an
> "init in progress" state, with the expectation that it will eventually
> transition to "init complete" if the CSME device is functional.
>
> Mesa CI is flashing a custom coreboot on their Chromebooks that hides
> the CSME device, which means that we never transition to the "init
> complete" state. While from an interface POV it is not incorrect to not
> end up in "init complete" if the CSME is missing, we can mitigate the
> impact of this by simply checking if the CSME device is available at
> all before attempting to initialize PXP.
>
> v2: rebase on updated mei patch.
> v3: rebase on exported pci id list.
>
> Reported-by: Valentine Burley <valentine.burley@collabora.com>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14516
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Alexander Usyskin <alexander.usyskin@intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>  drivers/gpu/drm/i915/pxp/intel_pxp.c | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 2860474ad2d0..26e7c5c26bac 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -3,6 +3,7 @@
>   * Copyright(c) 2020 Intel Corporation.
>   */
>  
> +#include <linux/mei_me.h>
>  #include <linux/workqueue.h>
>  
>  #include <drm/drm_print.h>
> @@ -197,6 +198,15 @@ static struct intel_gt *find_gt_for_required_protected_content(struct drm_i915_p
>  	return NULL;
>  }
>  
> +static bool mei_device_available(void)
> +{
> +#if IS_ENABLED(CONFIG_INTEL_MEI_ME)
> +	return pci_dev_present(mei_me_pci_tbl);
> +#else
> +	return false;
> +#endif
> +}
> +

I think it's just ugly to have this in i915. IMO the function belongs in
mei.

BR,
Jani.

>  int intel_pxp_init(struct drm_i915_private *i915)
>  {
>  	struct intel_gt *gt;
> @@ -205,6 +215,21 @@ int intel_pxp_init(struct drm_i915_private *i915)
>  	if (intel_gt_is_wedged(to_gt(i915)))
>  		return -ENOTCONN;
>  
> +	/*
> +	 * iGPUs require CSME to be available to use PXP. Note that the
> +	 * availability of CSME might change after we check, but we only support
> +	 * PXP in the case where the CSME device is available from boot and
> +	 * stays that way. If CSME was not initially available and appears later
> +	 * we'll just continue without PXP, while if it was available and is
> +	 * then removed we'll catch it via the component unbind callback and
> +	 * handle it gracefully. Therefore, we don't require any locking around
> +	 * the state checking.
> +	 */
> +	if (!IS_DGFX(i915) && !mei_device_available()) {
> +		drm_dbg(&i915->drm, "skipping PXP init due to missing ME device\n");
> +		return -ENODEV;
> +	}
> +
>  	/*
>  	 * NOTE: Get the ctrl_gt before checking intel_pxp_is_supported since
>  	 * we still need it if PXP's backend tee transport is needed.

-- 
Jani Nikula, Intel
