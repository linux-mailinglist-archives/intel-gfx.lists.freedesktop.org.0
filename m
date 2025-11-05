Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E84C37960
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 20:57:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3B3A10E7B2;
	Wed,  5 Nov 2025 19:57:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P8C1GJh1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92CA910E7AC;
 Wed,  5 Nov 2025 19:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762372639; x=1793908639;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=fMZUZ1vCSu6xJZMQEi2erXanfNMjfy9SH0hGA7MLKq0=;
 b=P8C1GJh1+/HI5I17qUlWR+AWqSB/qRTTiziiOhZfZWghygJyStr4BGbo
 vXPtopRW+AXcXMOx6fQjcOjo1E8+5Iro8bT5tB2jzvMA7iU/40KkrRE5z
 WkMCFwF6AqXHjP2DQy/2b+CJtFYoY5evY4LYREIj93M3TWJatnMsVun20
 X6DSUIHVbsw/P2Ot0KOr2s8IlqQTsN+mik3Z1+/S+eZUnGE+y1JGF3M6G
 EPp3sYQzOzCQFMlT4/e/BafMK20TW8ZciuQX6Lg/DLc7JPFgBzh8yRCsi
 BwHsfygPWlHoGSc4ZXfEoDWt/2yG6X0PvqlIjtx+CoeTlUNOFUTyrAHDK Q==;
X-CSE-ConnectionGUID: wQtxYn4tTUW+nvdPe/4ZWw==
X-CSE-MsgGUID: Gb9p48GPTxmI9ct4hTX3/g==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75108906"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="75108906"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:57:19 -0800
X-CSE-ConnectionGUID: x7Gq1p9xRzyYQ1NphpOOTA==
X-CSE-MsgGUID: mCIV+iMzQYuXiNGMMKB3TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="186836092"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 11:57:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 5/7] drm/i915/ltphy: Nuke bogus weird timeouts
In-Reply-To: <20251105190433.16434-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251105190433.16434-1-ville.syrjala@linux.intel.com>
 <20251105190433.16434-6-ville.syrjala@linux.intel.com>
Date: Wed, 05 Nov 2025 21:57:13 +0200
Message-ID: <96a81c62ca16b7e31c25cc29f450b3666ceb9f88@intel.com>
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

On Wed, 05 Nov 2025, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The LT PHY code is abusing intel_de_wait_custom() in all kinds of weird
> ways. Get rid of the weird slow timeouts. If these are actually needed
> then the fast timeouts should really be specified as the default 2
> microscond or something.
>
> This will let us eventually nuke intel_de_wait_custom() and convert
> over to poll_timeout_us().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Cc: Suraj, yeah, why are these intel_de_wait_custom() in the first
place?

> ---
>  drivers/gpu/drm/i915/display/intel_lt_phy.c      | 11 +++++------
>  drivers/gpu/drm/i915/display/intel_lt_phy_regs.h |  1 -
>  2 files changed, 5 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/dr=
m/i915/display/intel_lt_phy.c
> index 6fb68157b322..cc1d6b7a7de4 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1178,10 +1178,9 @@ intel_lt_phy_lane_reset(struct intel_encoder *enco=
der,
>  	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
>  				 XELPDP_LANE_PCLK_PLL_ACK(0),
>  				 XELPDP_LANE_PCLK_PLL_ACK(0),
> -				 XE3PLPD_MACCLK_TURNON_LATENCY_US,
> -				 XE3PLPD_MACCLK_TURNON_LATENCY_MS, NULL))
> +				 XE3PLPD_MACCLK_TURNON_LATENCY_US, 0, NULL))
>  		drm_warn(display->drm, "PHY %c PLL MacCLK assertion Ack not done after=
 %dus.\n",
> -			 phy_name(phy), XE3PLPD_MACCLK_TURNON_LATENCY_MS * 1000);
> +			 phy_name(phy), XE3PLPD_MACCLK_TURNON_LATENCY_US);
>=20=20
>  	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
>  		     XELPDP_FORWARD_CLOCK_UNGATE,
> @@ -1192,7 +1191,7 @@ intel_lt_phy_lane_reset(struct intel_encoder *encod=
er,
>=20=20
>  	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
>  				 lane_phy_current_status, 0,
> -				 XE3PLPD_RESET_END_LATENCY_US, 2, NULL))
> +				 XE3PLPD_RESET_END_LATENCY_US, 0, NULL))
>  		drm_warn(display->drm,
>  			 "PHY %c failed to bring out of Lane reset after %dus.\n",
>  			 phy_name(phy), XE3PLPD_RESET_END_LATENCY_US);
> @@ -1674,7 +1673,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *=
encoder,
>  		if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
>  					 XELPDP_LANE_PCLK_PLL_ACK(0),
>  					 XELPDP_LANE_PCLK_PLL_ACK(0),
> -					 XE3PLPD_MACCLK_TURNON_LATENCY_US, 2, NULL))
> +					 XE3PLPD_MACCLK_TURNON_LATENCY_US, 0, NULL))
>  			drm_warn(display->drm, "PHY %c PLL MacCLK Ack assertion Timeout after=
 %dus.\n",
>  				 phy_name(phy), XE3PLPD_MACCLK_TURNON_LATENCY_US);
>=20=20
> @@ -1702,7 +1701,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *=
encoder,
>  		/* 16. Poll for PORT_BUF_CTL2 register PHY Pulse Status =3D 1 for Owne=
d PHY Lanes. */
>  		if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
>  					 lane_phy_pulse_status, lane_phy_pulse_status,
> -					 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 2, NULL))
> +					 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 0, NULL))
>  			drm_warn(display->drm, "PHY %c PLL rate not changed after %dus.\n",
>  				 phy_name(phy), XE3PLPD_RATE_CALIB_DONE_LATENCY_US);
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/g=
pu/drm/i915/display/intel_lt_phy_regs.h
> index 9223487d764e..36abc2bdbd9b 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> @@ -7,7 +7,6 @@
>  #define __INTEL_LT_PHY_REGS_H__
>=20=20
>  #define XE3PLPD_MSGBUS_TIMEOUT_FAST_US	500
> -#define XE3PLPD_MACCLK_TURNON_LATENCY_MS	1
>  #define XE3PLPD_MACCLK_TURNON_LATENCY_US	21
>  #define XE3PLPD_MACCLK_TURNOFF_LATENCY_US	1
>  #define XE3PLPD_RATE_CALIB_DONE_LATENCY_US	50

--=20
Jani Nikula, Intel
