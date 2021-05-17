Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABDD3834E7
	for <lists+intel-gfx@lfdr.de>; Mon, 17 May 2021 17:12:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 602DB6E9D0;
	Mon, 17 May 2021 15:12:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87DDB6E9D0
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 May 2021 15:12:39 +0000 (UTC)
IronPort-SDR: WUreuEMwVkIxQf/fnxNHZrokIOQL11yREAiW0FLLiw1AHmxNLfJNHERh8x5JOe37QhJkYzPurR
 Mw7bcHprCugg==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="261722016"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="261722016"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 08:12:38 -0700
IronPort-SDR: hm+bsaylt+CKe7txJl6ShgupM339acgl4Ezc1owY1nh2c4DKMsaKQDGUItPB6ZKkDZfKsImoav
 jdnTXsf8qBkg==
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; d="scan'208";a="472446136"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2021 08:12:37 -0700
Date: Mon, 17 May 2021 18:12:33 +0300
From: Imre Deak <imre.deak@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210517151233.GB1367033@ideak-desk.fi.intel.com>
References: <20210515031035.2561658-1-matthew.d.roper@intel.com>
 <20210515031035.2561658-10-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210515031035.2561658-10-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 09/23] drm/i915/adl_p: Implement TC
 sequences
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, May 14, 2021 at 08:10:21PM -0700, Matt Roper wrote:
> From: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> =

> ADL-P have basically the same TC connection and disconnection
> sequences as ICL and TGL, the major difference is the new registers.
> =

> So here adding functions without the icl prefix in the name and
> making the new functions call the platform specific function to access
> the correct register.
> =

> v2:
>  - Retain DDI TC PHY ownership flag during modesetting.
> =

> BSpec: 55480
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c |   6 ++
>  drivers/gpu/drm/i915/display/intel_tc.c  | 132 +++++++++++++++++++++--
>  drivers/gpu/drm/i915/i915_reg.h          |  10 ++
>  3 files changed, 137 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index eccbdd42d223..38a4f251b9c9 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -252,12 +252,18 @@ static u32 icl_pll_to_ddi_clk_sel(struct intel_enco=
der *encoder,
>  static void intel_ddi_init_dp_buf_reg(struct intel_encoder *encoder,
>  				      const struct intel_crtc_state *crtc_state)
>  {
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> +	enum phy phy =3D intel_port_to_phy(i915, encoder->port);
>  =

>  	intel_dp->DP =3D dig_port->saved_port_bits |
>  		DDI_BUF_CTL_ENABLE | DDI_BUF_TRANS_SELECT(0);
>  	intel_dp->DP |=3D DDI_PORT_WIDTH(crtc_state->lane_count);
> +
> +	if (IS_ALDERLAKE_P(i915) &&
> +	    intel_phy_is_tc(i915, phy) && dig_port->tc_mode !=3D TC_PORT_TBT_AL=
T)
> +		intel_dp->DP |=3D DDI_BUF_CTL_TC_PHY_OWNERSHIP;
>  }
>  =

>  static int icl_calc_tbt_pll_link(struct drm_i915_private *dev_priv,
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i9=
15/display/intel_tc.c
> index 1b108dea5fed..718e38c46dc0 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -205,7 +205,7 @@ static void tc_port_fixup_legacy_flag(struct intel_di=
gital_port *dig_port,
>  	dig_port->tc_legacy_port =3D !dig_port->tc_legacy_port;
>  }
>  =

> -static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port)
> +static u32 icl_tc_port_live_status_mask(struct intel_digital_port *dig_p=
ort)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>  	struct intel_uncore *uncore =3D &i915->uncore;
> @@ -238,6 +238,40 @@ static u32 tc_port_live_status_mask(struct intel_dig=
ital_port *dig_port)
>  	return mask;
>  }
>  =

> +static u32 adl_tc_port_live_status_mask(struct intel_digital_port *dig_p=
ort)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +	enum tc_port tc_port =3D intel_port_to_tc(i915, dig_port->base.port);
> +	u32 isr_bit =3D i915->hotplug.pch_hpd[dig_port->base.hpd_pin];
> +	struct intel_uncore *uncore =3D &i915->uncore;
> +	u32 val, mask =3D 0;
> +
> +	val =3D intel_uncore_read(uncore, TCSS_DDI_STATUS(tc_port));
> +	if (val & TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT)
> +		mask |=3D BIT(TC_PORT_DP_ALT);
> +	if (val & TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT)
> +		mask |=3D BIT(TC_PORT_TBT_ALT);
> +
> +	if (intel_uncore_read(uncore, SDEISR) & isr_bit)
> +		mask |=3D BIT(TC_PORT_LEGACY);
> +
> +	/* The sink can be connected only in a single mode. */
> +	if (!drm_WARN_ON(&i915->drm, hweight32(mask) > 1))
> +		tc_port_fixup_legacy_flag(dig_port, mask);
> +
> +	return mask;
> +}
> +
> +static u32 tc_port_live_status_mask(struct intel_digital_port *dig_port)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +
> +	if (IS_ALDERLAKE_P(i915))
> +		return adl_tc_port_live_status_mask(dig_port);
> +
> +	return icl_tc_port_live_status_mask(dig_port);
> +}
> +
>  static bool icl_tc_phy_status_complete(struct intel_digital_port *dig_po=
rt)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> @@ -256,6 +290,33 @@ static bool icl_tc_phy_status_complete(struct intel_=
digital_port *dig_port)
>  	return val & DP_PHY_MODE_STATUS_COMPLETED(dig_port->tc_phy_fia_idx);
>  }
>  =

> +static bool adl_tc_phy_status_complete(struct intel_digital_port *dig_po=
rt)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +	struct intel_uncore *uncore =3D &i915->uncore;
> +	u32 val;
> +
> +	val =3D intel_uncore_read(uncore, TCSS_DDI_STATUS(dig_port->tc_phy_fia_=
idx));
> +	if (val =3D=3D 0xffffffff) {
> +		drm_dbg_kms(&i915->drm,
> +			    "Port %s: PHY in TCCOLD, assuming not complete\n",
> +			    dig_port->tc_port_name);
> +		return false;
> +	}
> +
> +	return val & TCSS_DDI_STATUS_READY;
> +}
> +
> +static bool tc_phy_status_complete(struct intel_digital_port *dig_port)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +
> +	if (IS_ALDERLAKE_P(i915))
> +		return adl_tc_phy_status_complete(dig_port);
> +
> +	return icl_tc_phy_status_complete(dig_port);
> +}
> +
>  static bool icl_tc_phy_take_ownership(struct intel_digital_port *dig_por=
t,
>  				      bool take)
>  {
> @@ -280,7 +341,7 @@ static bool icl_tc_phy_take_ownership(struct intel_di=
gital_port *dig_port,
>  	intel_uncore_write(uncore,
>  			   PORT_TX_DFLEXDPCSSS(dig_port->tc_phy_fia), val);
>  =

> -	if (!take && wait_for(!icl_tc_phy_status_complete(dig_port), 10))
> +	if (!take && wait_for(!tc_phy_status_complete(dig_port), 10))
>  		drm_dbg_kms(&i915->drm,
>  			    "Port %s: PHY complete clear timed out\n",
>  			    dig_port->tc_port_name);
> @@ -288,6 +349,34 @@ static bool icl_tc_phy_take_ownership(struct intel_d=
igital_port *dig_port,
>  	return true;
>  }
>  =

> +static bool adl_tc_phy_take_ownership(struct intel_digital_port *dig_por=
t,
> +				      bool take)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +	struct intel_uncore *uncore =3D &i915->uncore;
> +	enum port port =3D dig_port->base.port;
> +	u32 val;
> +
> +	val =3D intel_uncore_read(uncore, DDI_BUF_CTL(port));
> +	if (take)
> +		val |=3D DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> +	else
> +		val &=3D ~DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> +	intel_uncore_write(uncore, DDI_BUF_CTL(port), val);
> +
> +	return true;
> +}
> +
> +static bool tc_phy_take_ownership(struct intel_digital_port *dig_port, b=
ool take)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +
> +	if (IS_ALDERLAKE_P(i915))
> +		return adl_tc_phy_take_ownership(dig_port, take);
> +
> +	return icl_tc_phy_take_ownership(dig_port, take);
> +}
> +
>  static bool icl_tc_phy_is_owned(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> @@ -306,6 +395,27 @@ static bool icl_tc_phy_is_owned(struct intel_digital=
_port *dig_port)
>  	return val & DP_PHY_MODE_STATUS_NOT_SAFE(dig_port->tc_phy_fia_idx);
>  }
>  =

> +static bool adl_tc_phy_is_owned(struct intel_digital_port *dig_port)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +	struct intel_uncore *uncore =3D &i915->uncore;
> +	enum port port =3D dig_port->base.port;
> +	u32 val;
> +
> +	val =3D intel_uncore_read(uncore, DDI_BUF_CTL(port));
> +	return val & DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> +}
> +
> +static bool tc_phy_is_owned(struct intel_digital_port *dig_port)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +
> +	if (IS_ALDERLAKE_P(i915))
> +		return adl_tc_phy_is_owned(dig_port);
> +
> +	return icl_tc_phy_is_owned(dig_port);
> +}
> +
>  /*
>   * This function implements the first part of the Connect Flow described=
 by our
>   * specification, Gen11 TypeC Programming chapter. The rest of the flow =
(reading
> @@ -323,13 +433,13 @@ static void icl_tc_phy_connect(struct intel_digital=
_port *dig_port,
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>  	int max_lanes;
>  =

> -	if (!icl_tc_phy_status_complete(dig_port)) {
> +	if (!tc_phy_status_complete(dig_port)) {
>  		drm_dbg_kms(&i915->drm, "Port %s: PHY not ready\n",
>  			    dig_port->tc_port_name);
>  		goto out_set_tbt_alt_mode;
>  	}
>  =

> -	if (!icl_tc_phy_take_ownership(dig_port, true) &&
> +	if (!tc_phy_take_ownership(dig_port, true) &&
>  	    !drm_WARN_ON(&i915->drm, dig_port->tc_legacy_port))
>  		goto out_set_tbt_alt_mode;
>  =

> @@ -364,7 +474,7 @@ static void icl_tc_phy_connect(struct intel_digital_p=
ort *dig_port,
>  	return;
>  =

>  out_release_phy:
> -	icl_tc_phy_take_ownership(dig_port, false);
> +	tc_phy_take_ownership(dig_port, false);
>  out_set_tbt_alt_mode:
>  	dig_port->tc_mode =3D TC_PORT_TBT_ALT;
>  }
> @@ -380,7 +490,7 @@ static void icl_tc_phy_disconnect(struct intel_digita=
l_port *dig_port)
>  		/* Nothing to do, we never disconnect from legacy mode */
>  		break;
>  	case TC_PORT_DP_ALT:
> -		icl_tc_phy_take_ownership(dig_port, false);
> +		tc_phy_take_ownership(dig_port, false);
>  		dig_port->tc_mode =3D TC_PORT_TBT_ALT;
>  		break;
>  	case TC_PORT_TBT_ALT:
> @@ -395,13 +505,13 @@ static bool icl_tc_phy_is_connected(struct intel_di=
gital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
>  =

> -	if (!icl_tc_phy_status_complete(dig_port)) {
> +	if (!tc_phy_status_complete(dig_port)) {
>  		drm_dbg_kms(&i915->drm, "Port %s: PHY status not complete\n",
>  			    dig_port->tc_port_name);
>  		return dig_port->tc_mode =3D=3D TC_PORT_TBT_ALT;
>  	}
>  =

> -	if (!icl_tc_phy_is_owned(dig_port)) {
> +	if (!tc_phy_is_owned(dig_port)) {
>  		drm_dbg_kms(&i915->drm, "Port %s: PHY not owned\n",
>  			    dig_port->tc_port_name);
>  =

> @@ -419,8 +529,8 @@ intel_tc_port_get_current_mode(struct intel_digital_p=
ort *dig_port)
>  	u32 live_status_mask =3D tc_port_live_status_mask(dig_port);
>  	enum tc_port_mode mode;
>  =

> -	if (!icl_tc_phy_is_owned(dig_port) ||
> -	    drm_WARN_ON(&i915->drm, !icl_tc_phy_status_complete(dig_port)))
> +	if (!tc_phy_is_owned(dig_port) ||
> +	    drm_WARN_ON(&i915->drm, !tc_phy_status_complete(dig_port)))
>  		return TC_PORT_TBT_ALT;
>  =

>  	mode =3D dig_port->tc_legacy_port ? TC_PORT_LEGACY : TC_PORT_DP_ALT;
> @@ -442,7 +552,7 @@ intel_tc_port_get_target_mode(struct intel_digital_po=
rt *dig_port)
>  	if (live_status_mask)
>  		return fls(live_status_mask) - 1;
>  =

> -	return icl_tc_phy_status_complete(dig_port) &&
> +	return tc_phy_status_complete(dig_port) &&
>  	       dig_port->tc_legacy_port ? TC_PORT_LEGACY :
>  					  TC_PORT_TBT_ALT;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index ab6ffe036841..65af0d84d75b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -10160,6 +10160,7 @@ enum skl_power_gate {
>  #define  DDI_BUF_EMP_MASK			(0xf << 24)
>  #define  DDI_BUF_PORT_REVERSAL			(1 << 16)
>  #define  DDI_BUF_IS_IDLE			(1 << 7)
> +#define  DDI_BUF_CTL_TC_PHY_OWNERSHIP		REG_BIT(6)
>  #define  DDI_A_4_LANES				(1 << 4)
>  #define  DDI_PORT_WIDTH(width)			(((width) - 1) << 1)
>  #define  DDI_PORT_WIDTH_MASK			(7 << 1)
> @@ -12596,6 +12597,15 @@ enum skl_power_gate {
>  #define   DP_PIN_ASSIGNMENT_MASK(idx)		(0xf << ((idx) * 4))
>  #define   DP_PIN_ASSIGNMENT(idx, x)		((x) << ((idx) * 4))
>  =

> +#define _TCSS_DDI_STATUS_1			0x161500
> +#define _TCSS_DDI_STATUS_2			0x161504
> +#define TCSS_DDI_STATUS(tc)			_MMIO(_PICK_EVEN(tc, \
> +								 _TCSS_DDI_STATUS_1, \
> +								 _TCSS_DDI_STATUS_2))
> +#define  TCSS_DDI_STATUS_READY			REG_BIT(2)
> +#define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT	REG_BIT(1)
> +#define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT	REG_BIT(0)
> +
>  /* This register controls the Display State Buffer (DSB) engines. */
>  #define _DSBSL_INSTANCE_BASE		0x70B00
>  #define DSBSL_INSTANCE(pipe, id)	(_DSBSL_INSTANCE_BASE + \
> -- =

> 2.25.4
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
