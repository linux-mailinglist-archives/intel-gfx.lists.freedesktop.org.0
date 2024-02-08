Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC63E84DD7D
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 11:00:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1457410E597;
	Thu,  8 Feb 2024 10:00:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k6Fw84Xb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC6A510E597
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 10:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707386431; x=1738922431;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ixwVGnvn+OzWE8uL7ijTHkX8F6/CyEB4CJ6/+5pjSOQ=;
 b=k6Fw84XbBH8K6ZY85wWssQJkf5+jxgW7EsuW6ezTyTvW9LRWVlSen/qF
 BVoc3NHDXWrnHfjGxy+m5ALKu/9i8MxLwqgvAaCBOgum8wvLR+aJHvvDe
 62luhoN3zR9Z20itn0e27CRjQs/eOftbG00ilMZVkemWi8DBpp+EGMA57
 uZ/3r/sXzWQFRSbv9D3tXk+N0zF8k+u+G8WC50/Qx52/+7aX6PW891X/b
 5UdchtkO/hUG3m63uGs4axXaeArKj6HL5gzZsuOkJy0OSCnhI2S/Oxe/3
 Aa+mIeiDCA5vaECgyp5+zRbnsWW+yD7dSfcZ6jGDUym3Bckgm8MKP+5Ci g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10977"; a="26628406"
X-IronPort-AV: E=Sophos;i="6.05,253,1701158400"; d="scan'208";a="26628406"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 02:00:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,253,1701158400"; d="scan'208";a="32677659"
Received: from aavzirov-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.61.13])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 02:00:25 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Manasi Navare <navaremanasi@chromium.org>, intel-gfx@lists.freedesktop.org
Cc: Manasi Navare <navaremanasi@chromium.org>, Suraj Kandpal
 <suraj.kandpal@intel.com>, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Animesh Manna <animesh.manna@intel.com>, Sean Paul <sean@poorly.run>, Drew
 Davenport <ddavenport@chromium.org>
Subject: Re: [PATCH v3] drm/i915/dsc: Fix the macro that calculates
 DSCC_/DSCA_ PPS reg address
In-Reply-To: <20240205204619.1991673-1-navaremanasi@chromium.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240205204619.1991673-1-navaremanasi@chromium.org>
Date: Thu, 08 Feb 2024 12:00:21 +0200
Message-ID: <87v86zb7ii.fsf@intel.com>
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

On Mon, 05 Feb 2024, Manasi Navare <navaremanasi@chromium.org> wrote:
> Commit bd077259d0a9 ("drm/i915/vdsc: Add function to read any PPS register") defines
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
>
> This fixes it by correcting this macro to add the offset of 12 for
> PPS >=12.
>
> v3: Add correct paranthesis for pps argument (Jani Nikula)
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10172
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
> index 64f440fdc22b..7c50d1c31f74 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc_regs.h
> @@ -51,8 +51,8 @@
>  #define DSCC_PICTURE_PARAMETER_SET_0		_MMIO(0x6BA00)
>  #define _DSCA_PPS_0				0x6B200
>  #define _DSCC_PPS_0				0x6BA00
> -#define DSCA_PPS(pps)				_MMIO(_DSCA_PPS_0 + (pps) * 4)
> -#define DSCC_PPS(pps)				_MMIO(_DSCC_PPS_0 + (pps) * 4)
> +#define DSCA_PPS(pps)				_MMIO(_DSCA_PPS_0 + ((pps) < 12 ? (pps):(pps) + 12) * 4)
> +#define DSCC_PPS(pps)				_MMIO(_DSCC_PPS_0 + ((pps) < 12 ? (pps):(pps) + 12) * 4)

Thanks for the patch. Pushed with the spaces added around ":" while
applying.

BR,
Jani.

>  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PB	0x78270
>  #define _ICL_DSC1_PICTURE_PARAMETER_SET_0_PB	0x78370
>  #define _ICL_DSC0_PICTURE_PARAMETER_SET_0_PC	0x78470

-- 
Jani Nikula, Intel
