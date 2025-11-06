Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92961C3C112
	for <lists+intel-gfx@lfdr.de>; Thu, 06 Nov 2025 16:33:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D47A210E916;
	Thu,  6 Nov 2025 15:33:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aAoqagrC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9C6C10E916;
 Thu,  6 Nov 2025 15:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762443228; x=1793979228;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=UXUGbTXNk8q77HvmxNy0LORAaCzWvVs8e9d4HgQWLZ8=;
 b=aAoqagrCHzEJK3Ef1MRr3eSLth+VY0mjRKzKfxGb3DxdEL8BBHJTYq3Y
 YfbZvmZ9ixX/oCg4vfNCqMMS1m+ffmEh/2Btri/0PNKz5xa3kJ/AWKYHd
 sOmMXmcSUKWhL/ascDhjcGWKB4bbRVs+o7KCLtWcjTvC+AvU1L4IfPZA4
 dH6Id2eoNAgKd04MvzE17sTEJKE0pd0CqNqIwrwWpg7QDucIJRyB4DhBy
 SD5aS6fzxEReOVvzBeK5BqZ2ByHfSe1cHsS4KNm3IjIksvluCa/V1t0pw
 lMWEgEYUmDLsh7JBdtwaFXILidhAbsjO/vkEWgl1OJlUniAbNLcAlMKEa g==;
X-CSE-ConnectionGUID: bAlh+AGvQj24Gjsd8rrpmQ==
X-CSE-MsgGUID: pvqO+lkHThuZX8obg8Hs/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="68443163"
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="68443163"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:33:47 -0800
X-CSE-ConnectionGUID: R+aqi3ayQ6KbMPYZ6sjp3A==
X-CSE-MsgGUID: duNotPFNRzKCgkY7tsTqzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,284,1754982000"; d="scan'208";a="191883026"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.65])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2025 07:33:46 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2 02/10] drm/i915/cx0: Nuke extraneous timeout debugs
In-Reply-To: <20251106152049.21115-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251106152049.21115-1-ville.syrjala@linux.intel.com>
 <20251106152049.21115-3-ville.syrjala@linux.intel.com>
Date: Thu, 06 Nov 2025 17:33:42 +0200
Message-ID: <1ea7dbfb599850b27e8f931e563b68d3d1c83d19@intel.com>
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
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 35 +++++++++-----------
>  1 file changed, 16 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
> index 21f046576ee3..ddc26e383714 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2832,8 +2832,8 @@ void intel_cx0_powerdown_change_sequence(struct int=
el_encoder *encoder,
>  				 intel_cx0_get_powerdown_update(lane_mask), 0,
>  				 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 2, NULL))
>  		drm_warn(display->drm,
> -			 "PHY %c failed to bring out of Lane reset after %dus.\n",
> -			 phy_name(phy), XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US);
> +			 "PHY %c failed to bring out of lane reset\n",
> +			 phy_name(phy));
>  }
>=20=20
>  void intel_cx0_setup_powerdown(struct intel_encoder *encoder)
> @@ -2894,8 +2894,8 @@ static void intel_cx0_phy_lane_reset(struct intel_e=
ncoder *encoder,
>  				 XELPDP_PORT_BUF_SOC_PHY_READY,
>  				 XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, 0, NULL))
>  		drm_warn(display->drm,
> -			 "PHY %c failed to bring out of SOC reset after %dus.\n",
> -			 phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US);
> +			 "PHY %c failed to bring out of SOC reset\n",
> +			 phy_name(phy));
>=20=20
>  	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_pipe_re=
set,
>  		     lane_pipe_reset);
> @@ -2904,8 +2904,8 @@ static void intel_cx0_phy_lane_reset(struct intel_e=
ncoder *encoder,
>  				 lane_phy_current_status, lane_phy_current_status,
>  				 XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
>  		drm_warn(display->drm,
> -			 "PHY %c failed to bring out of Lane reset after %dus.\n",
> -			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
> +			 "PHY %c failed to bring out of lane reset\n",
> +			 phy_name(phy));
>=20=20
>  	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
>  		     intel_cx0_get_pclk_refclk_request(owned_lane_mask),
> @@ -2916,8 +2916,8 @@ static void intel_cx0_phy_lane_reset(struct intel_e=
ncoder *encoder,
>  				 intel_cx0_get_pclk_refclk_ack(lane_mask),
>  				 XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
>  		drm_warn(display->drm,
> -			 "PHY %c failed to request refclk after %dus.\n",
> -			 phy_name(phy), XELPDP_REFCLK_ENABLE_TIMEOUT_US);
> +			 "PHY %c failed to request refclk\n",
> +			 phy_name(phy));
>=20=20
>  	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
>  					    XELPDP_P2_STATE_RESET);
> @@ -2929,8 +2929,8 @@ static void intel_cx0_phy_lane_reset(struct intel_e=
ncoder *encoder,
>  				    lane_phy_current_status,
>  				    XELPDP_PORT_RESET_END_TIMEOUT))
>  		drm_warn(display->drm,
> -			 "PHY %c failed to bring out of Lane reset after %dms.\n",
> -			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
> +			 "PHY %c failed to bring out of lane reset\n",
> +			 phy_name(phy));
>  }
>=20=20
>  static void intel_cx0_program_phy_lane(struct intel_encoder *encoder, in=
t lane_count,
> @@ -3069,8 +3069,8 @@ static void __intel_cx0pll_enable(struct intel_enco=
der *encoder,
>  				 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
>  				 intel_cx0_get_pclk_pll_ack(maxpclk_lane),
>  				 XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, 0, NULL))
> -		drm_warn(display->drm, "Port %c PLL not locked after %dus.\n",
> -			 phy_name(phy), XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US);
> +		drm_warn(display->drm, "Port %c PLL not locked\n",
> +			 phy_name(phy));
>=20=20
>  	/*
>  	 * 11. Follow the Display Voltage Frequency Switching Sequence After
> @@ -3193,8 +3193,7 @@ void intel_mtl_tbt_pll_enable(struct intel_encoder =
*encoder,
>  				 XELPDP_TBT_CLOCK_ACK,
>  				 XELPDP_TBT_CLOCK_ACK,
>  				 100, 0, NULL))
> -		drm_warn(display->drm,
> -			 "[ENCODER:%d:%s][%c] PHY PLL not locked after 100us.\n",
> +		drm_warn(display->drm, "[ENCODER:%d:%s][%c] PHY PLL not locked\n",
>  			 encoder->base.base.id, encoder->base.name, phy_name(phy));
>=20=20
>  	/*
> @@ -3308,9 +3307,8 @@ static void intel_cx0pll_disable(struct intel_encod=
er *encoder)
>  				 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |
>  				 intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES), 0,
>  				 XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, 0, NULL))
> -		drm_warn(display->drm,
> -			 "Port %c PLL not unlocked after %dus.\n",
> -			 phy_name(phy), XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US);
> +		drm_warn(display->drm, "Port %c PLL not unlocked\n",
> +			 phy_name(phy));
>=20=20
>  	/*
>  	 * 6. Follow the Display Voltage Frequency Switching Sequence After
> @@ -3355,8 +3353,7 @@ void intel_mtl_tbt_pll_disable(struct intel_encoder=
 *encoder)
>  	/* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack =3D=3D "0". */
>  	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, encode=
r->port),
>  				 XELPDP_TBT_CLOCK_ACK, 0, 10, 0, NULL))
> -		drm_warn(display->drm,
> -			 "[ENCODER:%d:%s][%c] PHY PLL not unlocked after 10us.\n",
> +		drm_warn(display->drm, "[ENCODER:%d:%s][%c] PHY PLL not unlocked\n",
>  			 encoder->base.base.id, encoder->base.name, phy_name(phy));
>=20=20
>  	/*

--=20
Jani Nikula, Intel
