Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF35C3C1F3
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 16:41:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE6C10E93D;
	Thu,  6 Nov 2025 15:41:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Hk/KLhll";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5800B10E93D;
 Thu,  6 Nov 2025 15:41:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762443689; x=1793979689;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=gpyblG5CVJYBI7m4yYfPi3oc1QEz2RL2KIshU65e5kY=;
 b=Hk/KLhllNUh52YUbm2YVVai0zxbJ17aDli4aR4JEyv+pzDDaRqSFVytf
 0xT1qOGf0uk68Fy3DJRfWdFOemPEeuU6EPRaOg5BsEkaZrysS/yD3YEyt
 LQDBB7oh0Cd98+zD6zMV6nmZl2CRNNgzQjyL79k51c9Lrb0r6suGcegwy
 C4FJMjBuzULirZqRy3eu5QShKIi+m776AIDK77EDi0jgUXVud2vutwF9Z
 1bJj5bG4LU6PjYTDlKQp2dbAu+9qAMeyxpQ5zDbSZUZWEVmxTkYtEobmk
 Gr7Gfj1Lsi6s8qId+eorgvXrcGgB+mhnKNB0Wp9/Ei19VUvi0XqkPygYN Q==;
X-CSE-ConnectionGUID: hIjFBzm0TZqw9iTTlErBxw==
X-CSE-MsgGUID: MwYQe+t0QZuxG1IZucWrSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="63790482"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="63790482"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:41:29 -0800
X-CSE-ConnectionGUID: KtSu5pcbQQKYDcgXb6ZLjA==
X-CSE-MsgGUID: WmqW2OtKQMKyyRHRveHgdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="191884837"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:41:27 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 08/10] drm/i915/ltphy: Nuke bogus weird timeouts
In-Reply-To: <20251106152049.21115-9-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
 <20251106152049.21115-9-ville.syrjala@linux.intel.com>
Date: Thu, 06 Nov 2025 17:41:23 +0200
Message-ID: <8daed3172903a2ed6258641d0dd9f3ff1f6f4b59@intel.com>
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
> The LT PHY code is abusing intel_de_wait_custom() in all kinds of weird
> ways. Get rid of the weird fast timeouts, and just use the slow ones.
> For consistency with intel_wait_for_register() we'll stick to the
> default 2 usec fast timeout for all cases.
>
> Someone really needs to properly document where all these magic numbers
> came from...
>
> This will let us eventually nuke intel_de_wait_custom() and convert
> over to poll_timeout_us().
>
> v2: Go for the longer (ms) timeout in case it actually matters
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_lt_phy.c      | 11 +++++------
>  drivers/gpu/drm/i915/display/intel_lt_phy_regs.h |  7 +++----
>  2 files changed, 8 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/dr=
m/i915/display/intel_lt_phy.c
> index ff5af9c25e6d..cd4ac9679fc9 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1178,8 +1178,7 @@ intel_lt_phy_lane_reset(struct intel_encoder *encod=
er,
>  	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
>  				 XELPDP_LANE_PCLK_PLL_ACK(0),
>  				 XELPDP_LANE_PCLK_PLL_ACK(0),
> -				 XE3PLPD_MACCLK_TURNON_LATENCY_US,
> -				 XE3PLPD_MACCLK_TURNON_LATENCY_MS, NULL))
> +				 2, XE3PLPD_MACCLK_TURNON_LATENCY_MS, NULL))
>  		drm_warn(display->drm, "PHY %c PLL MacCLK assertion ack not done\n",
>  			 phy_name(phy));
>=20=20
> @@ -1192,13 +1191,13 @@ intel_lt_phy_lane_reset(struct intel_encoder *enc=
oder,
>=20=20
>  	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
>  				 lane_phy_current_status, 0,
> -				 XE3PLPD_RESET_END_LATENCY_US, 2, NULL))
> +				 2, XE3PLPD_RESET_END_LATENCY_MS, NULL))
>  		drm_warn(display->drm, "PHY %c failed to bring out of lane reset\n",
>  			 phy_name(phy));
>=20=20
>  	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
>  				 lane_phy_pulse_status, lane_phy_pulse_status,
> -				 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 0, NULL))
> +				 2, XE3PLPD_RATE_CALIB_DONE_LATENCY_MS, NULL))
>  		drm_warn(display->drm, "PHY %c PLL rate not changed\n",
>  			 phy_name(phy));
>=20=20
> @@ -1673,7 +1672,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *=
encoder,
>  		if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
>  					 XELPDP_LANE_PCLK_PLL_ACK(0),
>  					 XELPDP_LANE_PCLK_PLL_ACK(0),
> -					 XE3PLPD_MACCLK_TURNON_LATENCY_US, 2, NULL))
> +					 2, XE3PLPD_MACCLK_TURNON_LATENCY_MS, NULL))
>  			drm_warn(display->drm, "PHY %c PLL MacCLK ack assertion timeout\n",
>  				 phy_name(phy));
>=20=20
> @@ -1701,7 +1700,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *=
encoder,
>  		/* 16. Poll for PORT_BUF_CTL2 register PHY Pulse Status =3D 1 for Owne=
d PHY Lanes. */
>  		if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
>  					 lane_phy_pulse_status, lane_phy_pulse_status,
> -					 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 2, NULL))
> +					 2, XE3PLPD_RATE_CALIB_DONE_LATENCY_MS, NULL))
>  			drm_warn(display->drm, "PHY %c PLL rate not changed\n",
>  				 phy_name(phy));
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/g=
pu/drm/i915/display/intel_lt_phy_regs.h
> index 9223487d764e..c00a7a8a68dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> @@ -7,13 +7,12 @@
>  #define __INTEL_LT_PHY_REGS_H__
>=20=20
>  #define XE3PLPD_MSGBUS_TIMEOUT_FAST_US	500
> -#define XE3PLPD_MACCLK_TURNON_LATENCY_MS	1
> -#define XE3PLPD_MACCLK_TURNON_LATENCY_US	21
> +#define XE3PLPD_MACCLK_TURNON_LATENCY_MS	2
>  #define XE3PLPD_MACCLK_TURNOFF_LATENCY_US	1
> -#define XE3PLPD_RATE_CALIB_DONE_LATENCY_US	50
> +#define XE3PLPD_RATE_CALIB_DONE_LATENCY_MS	1
>  #define XE3PLPD_RESET_START_LATENCY_US	10
>  #define XE3PLPD_PWRDN_TO_RDY_LATENCY_US	4
> -#define XE3PLPD_RESET_END_LATENCY_US		200
> +#define XE3PLPD_RESET_END_LATENCY_MS		2
>=20=20
>  /* LT Phy MAC Register */
>  #define LT_PHY_MAC_VDR			_MMIO(0xC00)

--=20
Jani Nikula, Intel
