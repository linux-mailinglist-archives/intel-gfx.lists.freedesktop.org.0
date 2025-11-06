Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 339CAC3C1B4
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 16:38:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2CFB10E91F;
	Thu,  6 Nov 2025 15:38:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k+JzQfcb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A612E10E915;
 Thu,  6 Nov 2025 15:38:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762443536; x=1793979536;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ZBVjFCijfiCngDz8Tx6R6xOS5xO/9hkYzi6VgCOSoJw=;
 b=k+JzQfcblcBDT4WnGVZqobSwDFxiGgwe+BlZgjxfx49SFyofLw1mzLWk
 qrdfCzLS5FiPV0ssTEfQ+SASB/gC6rCiF82Fsy2bpgUnIdk5kRazPomhz
 uY1CG6ytUArDrSfVHw6WJ2fnfF/VuqZDWUorDpq25XQNfA5+n7o01Xqxp
 s026/rmoWRxLGGFLJc78gDgvyDApD77qxmZxOCTX1hhtvgdMzEqc+BeAC
 thK3qUj3IdGRqDFzdXwPQOOyoFRweOnUrYh7aQCZYm0oFv0+oRmQGPis1
 K7280bdAM9TVS6bMqNNIyZDNUWiwUOtTfFwvs4mh8D71T47idWlM8Bl4n w==;
X-CSE-ConnectionGUID: D74WDvtBQLuuucL1HHGZwQ==
X-CSE-MsgGUID: IcvVCSa+QR2qWQ6+bW0gCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64491939"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64491939"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:38:56 -0800
X-CSE-ConnectionGUID: NeGVs5aRRh+p5wCGa2yRIg==
X-CSE-MsgGUID: dF16rYVpTEKhu0aoCI4t/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="187041398"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:38:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 07/10] drm/i915/cx0:
 s/XELPDP_PORT_RESET_END_TIMEOUT/XELPDP_PORT_RESET_END_TIMEOUT_US/
In-Reply-To: <20251106152049.21115-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
 <20251106152049.21115-8-ville.syrjala@linux.intel.com>
Date: Thu, 06 Nov 2025 17:38:51 +0200
Message-ID: <97d35fe20391273937c9d3b39ccfc023a6e9cae0@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 06 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Include the units the in the define name for XELPDP_PORT_RESET_END_TIMEOUT
> to make it match all its other counterparts.
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
> index dd1429fa5028..b51075143cf5 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2926,7 +2926,7 @@ static void intel_cx0_phy_lane_reset(struct intel_e=
ncoder *encoder,
>=20=20
>  	if (intel_de_wait_for_clear(display, XELPDP_PORT_BUF_CTL2(display, port=
),
>  				    lane_phy_current_status,
> -				    XELPDP_PORT_RESET_END_TIMEOUT))
> +				    XELPDP_PORT_RESET_END_TIMEOUT_US))

Oops, this one's actually _MS.

>  		drm_warn(display->drm,
>  			 "PHY %c failed to bring out of lane reset\n",
>  			 phy_name(phy));
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/=
gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 715ca004516a..f0bfb0ac1816 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -80,7 +80,7 @@
>  #define XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US		100
>  #define XELPDP_PORT_RESET_START_TIMEOUT_US		5
>  #define XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_MS		2
> -#define XELPDP_PORT_RESET_END_TIMEOUT			15
> +#define XELPDP_PORT_RESET_END_TIMEOUT_US		15
>  #define XELPDP_REFCLK_ENABLE_TIMEOUT_US			1
>=20=20
>  #define _XELPDP_PORT_BUF_CTL1_LN0_A			0x64004

--=20
Jani Nikula, Intel
