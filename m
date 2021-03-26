Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 17A3034AC3A
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 17:04:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E1FB6F415;
	Fri, 26 Mar 2021 16:04:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 395686F415
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Mar 2021 16:04:24 +0000 (UTC)
IronPort-SDR: V3LSSr/62nvNFT3ds+OMlRDBEJAyIfF+NB0oudFDstQk4KRsFGuliXi+v4a5BukQY8CTziVHeP
 Oa0rVXYRKCUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9935"; a="191203871"
X-IronPort-AV: E=Sophos;i="5.81,280,1610438400"; d="scan'208";a="191203871"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 09:04:04 -0700
IronPort-SDR: 10vYfyf/z9W/9zuciMRqkfijfUUX6LZj7mRtDZONnRbZEK4T5zxTpFGWGiE9Sypq0YCPWHADm+
 175D+q8pirIg==
X-IronPort-AV: E=Sophos;i="5.81,280,1610438400"; d="scan'208";a="392261344"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2021 09:04:02 -0700
Date: Fri, 26 Mar 2021 18:03:59 +0200
From: Imre Deak <imre.deak@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210326160359.GJ2237616@ideak-desk.fi.intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
 <20210325180720.401410-29-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210325180720.401410-29-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 28/50] drm/i915/adl_p: Implement TC
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org, me@freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 25, 2021 at 11:06:58AM -0700, Matt Roper wrote:
> From: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> =

> ADL-P have basically the same TC connection and disconnection
> sequences as ICL and TGL, the major difference is the new registers.
> =

> So here adding functions without the icl prefix in the name and
> making the new functions call the platform specific function to access
> the correct register.
> =

> BSpec: 55480
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 132 ++++++++++++++++++++++--
>  drivers/gpu/drm/i915/i915_reg.h         |  10 ++
>  2 files changed, 131 insertions(+), 11 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i9=
15/display/intel_tc.c
> index c007803cfd30..7bae0193aa0f 100644
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

We need to retain this flag during modeset; we can just set it
unconditionally in intel_ddi_init_dp_buf_reg() for legacy and dp-alt
mode.

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
> index 8a04dcaf056d..5b378e5091fa 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -10151,6 +10151,7 @@ enum skl_power_gate {
>  #define  DDI_BUF_EMP_MASK			(0xf << 24)
>  #define  DDI_BUF_PORT_REVERSAL			(1 << 16)
>  #define  DDI_BUF_IS_IDLE			(1 << 7)
> +#define  DDI_BUF_CTL_TC_PHY_OWNERSHIP		REG_BIT(6)
>  #define  DDI_A_4_LANES				(1 << 4)
>  #define  DDI_PORT_WIDTH(width)			(((width) - 1) << 1)
>  #define  DDI_PORT_WIDTH_MASK			(7 << 1)
> @@ -12583,6 +12584,15 @@ enum skl_power_gate {
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

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
