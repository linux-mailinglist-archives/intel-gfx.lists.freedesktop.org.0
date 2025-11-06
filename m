Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49423C3C148
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 16:35:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94C0010E93A;
	Thu,  6 Nov 2025 15:35:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PJ3tXpqz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4736510E938;
 Thu,  6 Nov 2025 15:35:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762443302; x=1793979302;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=vnvG+V0Ug0jBb69qfjn9Xo/WrCLK2sdrkAanQ4RIYHc=;
 b=PJ3tXpqzPa6uEhlcGZmnnMRHU5PQuCu3mVQVuG17nSkhr1JWV0QFiQsc
 uDEOsSCu9+IbuVEW1afmgyRMP4IJqpNfi4R/WsaocHWRV7OeN8hpbChi0
 ov3B0fiunms+eCPqI0Tgj1AErGrTM8QdVha4RF7P/cnSdAGRlvRz820k1
 y6Pdj9sV4O2Js2TWM6mcXTWWMPZ3nMiLs8X9zH6Us1pG4qBRkK3Echybc
 qxrDvLWhK0ndIJ9qIdWihbLzjqYKPnf1X9I6sqx/uxxD8jo51Fcl0Ci3x
 hjSCJ2Z2+XKEWXv1GorYqoLYhwpWmg2gvIBppEwtLE4NVPAM/fBCGV1F7 w==;
X-CSE-ConnectionGUID: snEP43LGReePhh4uC0TNuA==
X-CSE-MsgGUID: 4oyudXpPQU+cub3yAiZ2Iw==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="64281078"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="64281078"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:35:01 -0800
X-CSE-ConnectionGUID: QNHJLOfcRESMBiJ+SK+Fmg==
X-CSE-MsgGUID: Bo1r954oSdCTfrYCpYMl8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="225034090"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:35:00 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 03/10] drm/i915/ltphy: Nuke extraneous timeout debugs
In-Reply-To: <20251106152049.21115-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
 <20251106152049.21115-4-ville.syrjala@linux.intel.com>
Date: Thu, 06 Nov 2025 17:34:56 +0200
Message-ID: <23b582b1ce7c2f7b70701ed333335f554d031641@intel.com>
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
> The actual timeout used isn't particularly interesting, so
> don't print it. Makes the code simpler.
>
> The debugs are also using some random capitalizaton rule.
> Clean that up a bit while at it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_lt_phy.c | 34 ++++++++++-----------
>  1 file changed, 16 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/dr=
m/i915/display/intel_lt_phy.c
> index af48d6cde226..8ab632965033 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -1180,8 +1180,8 @@ intel_lt_phy_lane_reset(struct intel_encoder *encod=
er,
>  				 XELPDP_LANE_PCLK_PLL_ACK(0),
>  				 XE3PLPD_MACCLK_TURNON_LATENCY_US,
>  				 XE3PLPD_MACCLK_TURNON_LATENCY_MS, NULL))
> -		drm_warn(display->drm, "PHY %c PLL MacCLK assertion Ack not done after=
 %dus.\n",
> -			 phy_name(phy), XE3PLPD_MACCLK_TURNON_LATENCY_MS * 1000);
> +		drm_warn(display->drm, "PHY %c PLL MacCLK assertion ack not done\n",
> +			 phy_name(phy));
>=20=20
>  	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
>  		     XELPDP_FORWARD_CLOCK_UNGATE,
> @@ -1193,15 +1193,14 @@ intel_lt_phy_lane_reset(struct intel_encoder *enc=
oder,
>  	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
>  				 lane_phy_current_status, 0,
>  				 XE3PLPD_RESET_END_LATENCY_US, 2, NULL))
> -		drm_warn(display->drm,
> -			 "PHY %c failed to bring out of Lane reset after %dus.\n",
> -			 phy_name(phy), XE3PLPD_RESET_END_LATENCY_US);
> +		drm_warn(display->drm, "PHY %c failed to bring out of lane reset\n",
> +			 phy_name(phy));
>=20=20
>  	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
>  				 lane_phy_pulse_status, lane_phy_pulse_status,
>  				 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 0, NULL))
> -		drm_warn(display->drm, "PHY %c PLL rate not changed after %dus.\n",
> -			 phy_name(phy), XE3PLPD_RATE_CALIB_DONE_LATENCY_US);
> +		drm_warn(display->drm, "PHY %c PLL rate not changed\n",
> +			 phy_name(phy));
>=20=20
>  	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_phy_pul=
se_status, 0);
>  }
> @@ -1654,8 +1653,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder *=
encoder,
>  		if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
>  					 XELPDP_LANE_PCLK_PLL_ACK(0), 0,
>  					 XE3PLPD_MACCLK_TURNOFF_LATENCY_US, 0, NULL))
> -			drm_warn(display->drm, "PHY %c PLL MacCLK Ack deassertion Timeout aft=
er %dus.\n",
> -				 phy_name(phy), XE3PLPD_MACCLK_TURNOFF_LATENCY_US);
> +			drm_warn(display->drm, "PHY %c PLL MacCLK ack deassertion timeout\n",
> +				 phy_name(phy));
>=20=20
>  		/*
>  		 * 9. Follow the Display Voltage Frequency Switching - Sequence Before=
 Frequency
> @@ -1675,8 +1674,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder *=
encoder,
>  					 XELPDP_LANE_PCLK_PLL_ACK(0),
>  					 XELPDP_LANE_PCLK_PLL_ACK(0),
>  					 XE3PLPD_MACCLK_TURNON_LATENCY_US, 2, NULL))
> -			drm_warn(display->drm, "PHY %c PLL MacCLK Ack assertion Timeout after=
 %dus.\n",
> -				 phy_name(phy), XE3PLPD_MACCLK_TURNON_LATENCY_US);
> +			drm_warn(display->drm, "PHY %c PLL MacCLK ack assertion timeout\n",
> +				 phy_name(phy));
>=20=20
>  		/*
>  		 * 13. Ungate the forward clock by setting
> @@ -1703,8 +1702,8 @@ void intel_lt_phy_pll_enable(struct intel_encoder *=
encoder,
>  		if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
>  					 lane_phy_pulse_status, lane_phy_pulse_status,
>  					 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 2, NULL))
> -			drm_warn(display->drm, "PHY %c PLL rate not changed after %dus.\n",
> -				 phy_name(phy), XE3PLPD_RATE_CALIB_DONE_LATENCY_US);
> +			drm_warn(display->drm, "PHY %c PLL rate not changed\n",
> +				 phy_name(phy));
>=20=20
>  		/* 17. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
>  		intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
> @@ -1762,9 +1761,8 @@ void intel_lt_phy_pll_disable(struct intel_encoder =
*encoder)
>  				 lane_phy_current_status,
>  				 lane_phy_current_status,
>  				 XE3PLPD_RESET_START_LATENCY_US, 0, NULL))
> -		drm_warn(display->drm,
> -			 "PHY %c failed to reset Lane after %dms.\n",
> -			 phy_name(phy), XE3PLPD_RESET_START_LATENCY_US);
> +		drm_warn(display->drm, "PHY %c failed to reset lane\n",
> +			 phy_name(phy));
>=20=20
>  	/* 4. Clear for PHY pulse status on owned PHY lanes. */
>  	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
> @@ -1786,8 +1784,8 @@ void intel_lt_phy_pll_disable(struct intel_encoder =
*encoder)
>  	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
>  				 XELPDP_LANE_PCLK_PLL_ACK(0), 0,
>  				 XE3PLPD_MACCLK_TURNOFF_LATENCY_US, 0, NULL))
> -		drm_warn(display->drm, "PHY %c PLL MacCLK Ack deassertion Timeout afte=
r %dus.\n",
> -			 phy_name(phy), XE3PLPD_MACCLK_TURNOFF_LATENCY_US);
> +		drm_warn(display->drm, "PHY %c PLL MacCLK ack deassertion timeout\n",
> +			 phy_name(phy));
>=20=20
>  	/*
>  	 *  9. Follow the Display Voltage Frequency Switching -

--=20
Jani Nikula, Intel
