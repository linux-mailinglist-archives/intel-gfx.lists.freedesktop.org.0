Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A15B284538C
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Feb 2024 10:15:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1540910EA6F;
	Thu,  1 Feb 2024 09:15:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE8FA10EA6F
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Feb 2024 09:15:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706778915; x=1738314915;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=lnIDP7mag1CVdc6dBeC/BcGs/dkcWie0X74EhQOQJUo=;
 b=IUdxNEeu0AE4V3Ds7khb5ImOokQCYAZdKViiZPk94FP33HDdUWXMxtCW
 w4J/BR+10u8R2sCxcdTEId1vlTLv5ElJ89E3BraOZKsqu910BkmBV6KnA
 QdwcG+vPvgX8haV0K5SCOPuO1nu7DPNgPqHuktJJqrfotmV9YZHKyEn8j
 NiWz4SvxesfiVtehIn4LWur2s1GtPZyf17JqpmyZeDLAliiOgdRXw/Iiq
 wJIS0IhR62zuztB9S1l7CaEyg30g1OZ5uJVyAqsG91EzZzv0vSlbTIK6a
 Wl75TvnZAqxjqUmcNE/57H3aBPH3CadJeO2lCiSDyVMe//B5fEnTixNoe Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="22351321"
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; d="scan'208";a="22351321"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 01:15:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,234,1701158400"; 
   d="scan'208";a="4331259"
Received: from aragners-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.43.111])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 01:15:11 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Manasi Navare <navaremanasi@chromium.org>, intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display/vdsc: Fix the macro that calculates
 DSCC_/DSCA_ PPS reg address
In-Reply-To: <20240131211909.622419-1-navaremanasi@chromium.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240131211909.622419-1-navaremanasi@chromium.org>
Date: Thu, 01 Feb 2024 11:15:08 +0200
Message-ID: <87ttmsh7fn.fsf@intel.com>
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
Cc: Drew Davenport <ddavenport@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Please use "drm/i915/dsc: " as the subject prefix.

On Wed, 31 Jan 2024, Manasi Navare <navaremanasi@chromium.org> wrote:
> Patch (bd077259d0a9: drm/i915/vdsc: Add function to read any PPS register) defines

Please use the usual style to refer to commits:

Commit bd077259d0a9 ("drm/i915/vdsc: Add function to read any PPS register")

> a new macro to calculate the DSC PPS register addresses with PPS number as an
> input. This macro correctly calculates the addresses till PPS 11 since the
> addresses increment by 4. So in that case the following macro works correctly
> to give correct register address:
> _MMIO(_DSCA_PPS_0 + (pps) * 4)
>
> However after PPS 11, the register address for PPS 12 increments by 12 because
> of RC Buffer memory allocation in between. Because of this discontinuity
> in the address space, the macro calculates wrong addresses for PPS 12 - 16
> resulting into incorrect DSC PPS parameter value read/writes causing DSC
> corruption.

Thanks for catching and debugging this!

> This patch fixes it by correcting this macro to add the offset of 12 for
> PPS >=12.

Please just say "Fix it ...". Once committed, this is no longer a patch.

> Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/10172

Closes: instead of Bug:.

> Fixes: bd077259d0a9 ("drm/i915/vdsc: Add function to read any PPS register")
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Animesh Manna <animesh.manna@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Sean Paul <sean@poorly.run>
> Cc: Drew Davenport <ddavenport@chromium.org>
> Signed-off-by: Manasi Navare <navaremanasi@chromium.org>
> ---
>  drivers/gpu/drm/i915/display/intel_vdsc_regs.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> index 64f440fdc22b..db29660b74f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -51,8 +51,8 @@
>  #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
>  #define _DSCA_PPS_0				0x6B200
>  #define _DSCC_PPS_0				0x6BA00
> -#define DSCA_PPS(pps)				_MMIO(_DSCA_PPS_0 + (pps) * 4)
> -#define DSCC_PPS(pps)				_MMIO(_DSCC_PPS_0 + (pps) * 4)
> +#define DSCA_PPS(pps)				((pps < 12) ? _MMIO(_DSCA_PPS_0 + (pps) * 4):_MMIO(_DSCA_PPS_0 + (pps + 12) * 4))
> +#define DSCC_PPS(pps)				((pps < 12) ? _MMIO(_DSCC_PPS_0 + (pps) * 4):_MMIO(_DSCC_PPS_0 + (pps + 12) * 4))

There's no need to duplicate so much here, this could be just:

	_MMIO(_DSCC_PPS_0 + ((pps) < 12 ? (pps) : (pps) + 12) * 4)

Also the macro arguments need to be wrapped in braces.

With the nitpicks fixed, LGTM.

BR,
Jani.

>  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
>  #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
>  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470

-- 
Jani Nikula, Intel
