Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11CDDBAFC28
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 11:03:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 849A910E6BA;
	Wed,  1 Oct 2025 09:03:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b9Bh2ejN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4423E10E6BA;
 Wed,  1 Oct 2025 09:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759309404; x=1790845404;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=4LiSmJtqWRRyOI5V4cZeUvZVO9NkvsxRuw5ZULSxrSU=;
 b=b9Bh2ejNbnkUCC61qzLWmXgrh2OrbK1iCoS+SAjXRCIW4pSCTtg+SCVu
 guff5j6uLi980Y0d7RQkhNpH+3DARe/uPEMQ5s7gIymFiAkqed3uUSvzk
 47ae4uoAshW0INZ0bXylLAZt0CUN3T6JDjNVRg2Cyl2bM3Wdd2iK6nj6A
 tYDYWX/Ccfyvz48BUUsyFSoHugH+Ph5gJjov8epuqehkcEtRYi4uajv6N
 K/Px7G5jWNj6uemBAOPHvZ9AbceNu/V+0vrPycFSvW4dgS4x3Cw2J4XL6
 BtyJIKlhmPVJtpWdDBncMUCAOXWXduJ33/eKwpifDbEBAISTM6dqRX4Na g==;
X-CSE-ConnectionGUID: 42iOIHIKQ9ab2Nvzp1Wtfg==
X-CSE-MsgGUID: PUe2yktwR7Oc71v1k0VvFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61537740"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61537740"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 02:03:23 -0700
X-CSE-ConnectionGUID: 71+d/5U4RvWP3eJU5mthXw==
X-CSE-MsgGUID: fD60cqU/Q827Ak/nCdNiGg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="179153654"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.217])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 02:03:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@intel.com>
Subject: Re: [RFC PATCH 12/39] drm/i915/display: Track the C20 PHY VDR state
 in the PLL state
In-Reply-To: <20251001082839.2585559-13-mika.kahola@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251001082839.2585559-1-mika.kahola@intel.com>
 <20251001082839.2585559-13-mika.kahola@intel.com>
Date: Wed, 01 Oct 2025 12:03:17 +0300
Message-ID: <86dd5dc9193aecbd95f92a05d504e694fe49ffa0@intel.com>
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

On Wed, 01 Oct 2025, Mika Kahola <mika.kahola@intel.com> wrote:
> From: Imre Deak <imre.deak@intel.com>
>
> The Cx0 PLL enable programming needs to know if the PLL is in DP or HDMI
> mode. The PLL manager framework doesn't pass the CRTC state to the PLL's
> enable hook, so prepare here for the conversion to use the PLL manager
> for Cx0 PHY PLLs by tracking the DP/HDMI mode in the PLL state.
>
> This change has the advantage, that the VDR HW/SW state can be verified
> now.
>
> A follow up change will convert the PLL enable function to retrieve the
> DP/HDMI mode parameter from the PLL state.
>
> This also allows dropping the is_dp and port clock params from the
> intel_c20_pll_program() function, since it can retrieve these now from
> the PLL state.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 115 +++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |   5 +
>  2 files changed, 89 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
> index b2fc93954933..3f426f5b4929 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2362,6 +2362,76 @@ intel_c20_pll_tables_get(const struct intel_crtc_s=
tate *crtc_state,
>  	return NULL;
>  }
>=20=20
> +static u8 intel_c20_get_dp_rate(u32 clock);
> +static u8 intel_c20_get_hdmi_rate(u32 clock);
> +static bool is_hdmi_frl(u32 clock);
> +static int intel_get_c20_custom_width(u32 clock, bool dp);
> +
> +static void intel_c20_calc_vdr_params(struct intel_c20pll_vdr_state *vdr=
, bool is_dp,
> +				      int port_clock)
> +{
> +	vdr->custom_width =3D intel_get_c20_custom_width(port_clock, is_dp);
> +
> +	vdr->serdes_rate =3D 0;
> +	vdr->hdmi_rate =3D 0;
> +
> +	if (is_dp) {
> +		vdr->serdes_rate =3D PHY_C20_IS_DP |
> +				   PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock));
> +	} else {
> +		if (is_hdmi_frl(port_clock))
> +			vdr->serdes_rate =3D PHY_C20_IS_HDMI_FRL;
> +
> +		vdr->hdmi_rate =3D intel_c20_get_hdmi_rate(port_clock);
> +	}
> +}
> +
> +#define PHY_C20_SERDES_RATE_MASK	(PHY_C20_IS_DP | PHY_C20_DP_RATE_MASK |=
 PHY_C20_IS_HDMI_FRL)
> +
> +static void intel_c20_readout_vdr_params(struct intel_encoder *encoder,
> +					 struct intel_c20pll_vdr_state *vdr, bool *cntx)
> +{
> +	u8 serdes;
> +
> +	serdes =3D intel_cx0_read(encoder, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_=
SERDES_RATE);
> +	*cntx =3D serdes & PHY_C20_CONTEXT_TOGGLE;
> +
> +	vdr->custom_width =3D intel_cx0_read(encoder, INTEL_CX0_LANE0, PHY_C20_=
VDR_CUSTOM_WIDTH) &
> +			    PHY_C20_CUSTOM_WIDTH_MASK;
> +
> +	vdr->serdes_rate =3D serdes & PHY_C20_SERDES_RATE_MASK;

I'm not a huge fan of storing =C5=95egister contents directly in state. This
sounds like three separate fields, is_dp, rate, and is_hdmi_frl, or
similar.


> +	if (!(vdr->serdes_rate & PHY_C20_IS_DP))
> +		vdr->hdmi_rate =3D intel_cx0_read(encoder, INTEL_CX0_LANE0, PHY_C20_VD=
R_HDMI_RATE) &
> +				 PHY_C20_HDMI_RATE_MASK;
> +	else
> +		vdr->hdmi_rate =3D 0;
> +}
> +
> +static void intel_c20_program_vdr_params(struct intel_encoder *encoder,
> +					 const struct intel_c20pll_vdr_state *vdr,
> +					 u8 owned_lane_mask)
> +{
> +	struct intel_display *display =3D to_intel_display(encoder);
> +
> +	drm_WARN_ON(display->drm, vdr->custom_width & ~PHY_C20_CUSTOM_WIDTH_MAS=
K);
> +	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_WIDTH,
> +		      PHY_C20_CUSTOM_WIDTH_MASK, vdr->custom_width,
> +		      MB_WRITE_COMMITTED);
> +
> +	drm_WARN_ON(display->drm, vdr->serdes_rate & ~PHY_C20_SERDES_RATE_MASK);
> +	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +		      PHY_C20_SERDES_RATE_MASK, vdr->serdes_rate,
> +		      MB_WRITE_COMMITTED);
> +
> +	if (vdr->serdes_rate & PHY_C20_IS_DP)

Case in point. Please let's not mix software state and hardware register
definitions.

> +		return;
> +
> +	drm_WARN_ON(display->drm, vdr->hdmi_rate & ~PHY_C20_HDMI_RATE_MASK);
> +	intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
> +		      PHY_C20_HDMI_RATE_MASK, vdr->hdmi_rate,
> +		      MB_WRITE_COMMITTED);
> +}
> +
>  static const struct intel_c20pll_state *
>  intel_c20_pll_find_table(const struct intel_crtc_state *crtc_state,
>  			 struct intel_encoder *encoder)
> @@ -2400,19 +2470,26 @@ static int intel_c20pll_calc_state_from_table(str=
uct intel_crtc_state *crtc_stat
>  static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
>  				   struct intel_encoder *encoder)
>  {
> +	bool is_dp =3D intel_crtc_has_dp_encoder(crtc_state);
>  	int err =3D -ENOENT;
>=20=20
>  	crtc_state->dpll_hw_state.cx0pll.use_c10 =3D false;
>=20=20
>  	/* try computed C20 HDMI tables before using consolidated tables */
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +	if (!is_dp)
>  		/* TODO: Update SSC state for HDMI as well */
>  		err =3D intel_c20_compute_hdmi_tmds_pll(crtc_state);
>=20=20
>  	if (err)
>  		err =3D intel_c20pll_calc_state_from_table(crtc_state, encoder);
>=20=20
> -	return err;
> +	if (err)
> +		return err;
> +
> +	intel_c20_calc_vdr_params(&crtc_state->dpll_hw_state.cx0pll.c20.vdr,
> +				  is_dp, crtc_state->port_clock);
> +
> +	return 0;
>  }
>=20=20
>  int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
> @@ -2486,8 +2563,8 @@ static void intel_c20pll_readout_hw_state(struct in=
tel_encoder *encoder,
>=20=20
>  	wakeref =3D intel_cx0_phy_transaction_begin(encoder);
>=20=20
> -	/* 1. Read current context selection */
> -	cntx =3D intel_cx0_read(encoder, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SE=
RDES_RATE) & PHY_C20_CONTEXT_TOGGLE;
> +	/* 1. Read VDR params and current context selection */
> +	intel_c20_readout_vdr_params(encoder, &pll_state->vdr, &cntx);
>=20=20
>  	/* Read Tx configuration */
>  	for (i =3D 0; i < ARRAY_SIZE(pll_state->tx); i++) {
> @@ -2676,11 +2753,9 @@ static int intel_get_c20_custom_width(u32 clock, b=
ool dp)
>=20=20
>  static void intel_c20_pll_program(struct intel_display *display,
>  				  struct intel_encoder *encoder,
> -				  const struct intel_c20pll_state *pll_state,
> -				  bool is_dp, int port_clock)
> +				  const struct intel_c20pll_state *pll_state)
>  {
>  	u8 owned_lane_mask =3D intel_cx0_get_owned_lane_mask(encoder);
> -	u8 serdes;
>  	bool cntx;
>  	int i;
>=20=20
> @@ -2750,30 +2825,8 @@ static void intel_c20_pll_program(struct intel_dis=
play *display,
>  	}
>=20=20
>  	/* 4. Program custom width to match the link protocol */
> -	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_WIDTH,
> -		      PHY_C20_CUSTOM_WIDTH_MASK,
> -		      PHY_C20_CUSTOM_WIDTH(intel_get_c20_custom_width(port_clock, is_d=
p)),
> -		      MB_WRITE_COMMITTED);
> -
>  	/* 5. For DP or 6. For HDMI */
> -	serdes =3D 0;
> -
> -	if (is_dp)
> -		serdes =3D PHY_C20_IS_DP |
> -			 PHY_C20_DP_RATE(intel_c20_get_dp_rate(port_clock));
> -	else if (is_hdmi_frl(port_clock))
> -		serdes =3D PHY_C20_IS_HDMI_FRL;
> -
> -	intel_cx0_rmw(encoder, owned_lane_mask, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> -		      PHY_C20_IS_DP | PHY_C20_DP_RATE_MASK | PHY_C20_IS_HDMI_FRL,
> -		      serdes,
> -		      MB_WRITE_COMMITTED);
> -
> -	if (!is_dp)
> -		intel_cx0_rmw(encoder, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
> -			      PHY_C20_HDMI_RATE_MASK,
> -			      intel_c20_get_hdmi_rate(port_clock),
> -			      MB_WRITE_COMMITTED);
> +	intel_c20_program_vdr_params(encoder, &pll_state->vdr, owned_lane_mask);
>=20=20
>  	/*
>  	 * 7. Write Vendor specific registers to toggle context setting to load
> @@ -3098,7 +3151,7 @@ static void __intel_cx0pll_enable(struct intel_enco=
der *encoder,
>  	if (intel_encoder_is_c10phy(encoder))
>  		intel_c10_pll_program(display, encoder, &pll_state->c10);
>  	else
> -		intel_c20_pll_program(display, encoder, &pll_state->c20, is_dp, port_c=
lock);
> +		intel_c20_pll_program(display, encoder, &pll_state->c20);
>=20=20
>  	/*
>  	 * 6. Program the enabled and disabled owned PHY lane
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/=
drm/i915/display/intel_dpll_mgr.h
> index f131bdd1c975..43c7200050e9 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
> @@ -255,6 +255,11 @@ struct intel_c20pll_state {
>  		u16 mplla[10];
>  		u16 mpllb[11];
>  	};
> +	struct intel_c20pll_vdr_state {
> +		u8 custom_width;
> +		u8 serdes_rate;
> +		u8 hdmi_rate;
> +	} vdr;
>  };
>=20=20
>  struct intel_cx0pll_state {

--=20
Jani Nikula, Intel
