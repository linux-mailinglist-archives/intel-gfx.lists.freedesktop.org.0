Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10039196502
	for <lists+intel-gfx@lfdr.de>; Sat, 28 Mar 2020 11:21:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AF456EACB;
	Sat, 28 Mar 2020 10:21:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CDE46EACB
 for <intel-gfx@lists.freedesktop.org>; Sat, 28 Mar 2020 10:21:19 +0000 (UTC)
IronPort-SDR: 67uV9AtiIZfz1AN2xvTwo/qoVTK5NauJosE00xTeFtgnBCq/6LbeAFzXgORrkb3W0tgET8BE8H
 mXEsmm4fiENQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2020 03:21:18 -0700
IronPort-SDR: nqBkBfFpEdGSmnhnDfNgKret/B8hsIN1pmeM+5EHR3kml3uWqQcdjWsyPCRXQWPrh1aQsVl8IL
 v8MQYZtYg+dw==
X-IronPort-AV: E=Sophos;i="5.72,316,1580803200"; d="scan'208";a="421392877"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2020 03:21:16 -0700
Date: Sat, 28 Mar 2020 12:20:11 +0200
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200328102011.GC12322@ideak-desk.fi.intel.com>
References: <20200324201429.29153-1-jose.souza@intel.com>
 <20200324201429.29153-5-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324201429.29153-5-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 5/6] drm/i915/tc/icl: Implement the TC
 cold exit sequence
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 24, 2020 at 01:14:28PM -0700, Jos=E9 Roberto de Souza wrote:
> This is required for legacy/static TC ports as IOM is not aware of
> the connection and will not trigger the TC cold exit.
> =

> Just request PCODE to exit TCCOLD is not enough as it could enter
> again be driver makes use of the port, to prevent it BSpec states that
> aux powerwell should be held.
> =

> So before detecting the mode, aux power is requested without wait for
> hardware ack, PCODE is requested to exit TCCOLD and the TC detection
> sequences follows as normal.
> After detection if mode is not static aux can be powered off otherwise
> we need to wait for HW ack as future calls to intel_display_power_get()
> over aux will not check for HW ack.

Based on the earlier comments tc_cold_off would be requested any time a
legacy AUX power ref is acquired, so we wouldn't need a new no_ack power
well interface.

> =

> v2:
> - fixed typo tc_lock_wakeref to tc_cold_wakeref in icl_tc_cold_request()
> =

> v3:
> - fixed non initialized ret in icl_tc_cold_request()
> - added missing sleep step, initially it was not added because I
> thought that the aux enable and then HW ack wait would take care of
> that but that is not the case
> =

> BSpec: 21750
> Fixes: https://gitlab.freedesktop.org/drm/intel/issues/1296
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 30 +++++++++-
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_tc.c       | 60 +++++++++++++++++--
>  drivers/gpu/drm/i915/i915_reg.h               |  1 +
>  4 files changed, 84 insertions(+), 8 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index a7e531b64e16..71a4c5d790ea 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -573,8 +573,9 @@ static void icl_tc_port_assert_ref_held(struct drm_i9=
15_private *dev_priv,
>  #define TGL_AUX_PW_TO_TC_PORT(pw_idx)	((pw_idx) - TGL_PW_CTL_IDX_AUX_TC1)
>  =

>  static void
> -icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
> -				 struct i915_power_well *power_well)
> +_icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
> +				  struct i915_power_well *power_well,
> +				  bool wait_ack)
>  {
>  	enum aux_ch aux_ch =3D icl_tc_phy_aux_ch(dev_priv, power_well);
>  	u32 val;
> @@ -587,7 +588,7 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_priv=
ate *dev_priv,
>  		val |=3D DP_AUX_CH_CTL_TBT_IO;
>  	intel_de_write(dev_priv, DP_AUX_CH_CTL(aux_ch), val);
>  =

> -	hsw_power_well_enable(dev_priv, power_well);
> +	_hsw_power_well_enable(dev_priv, power_well, wait_ack);
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 12 && !power_well->desc->hsw.is_tc_tbt) {
>  		enum tc_port tc_port;
> @@ -603,6 +604,20 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_pri=
vate *dev_priv,
>  	}
>  }
>  =

> +static void
> +icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
> +				 struct i915_power_well *power_well)
> +{
> +	_icl_tc_phy_aux_power_well_enable(dev_priv, power_well, true);
> +}
> +
> +static void
> +icl_tc_phy_aux_power_well_enable_without_ack(struct drm_i915_private *de=
v_priv,
> +					     struct i915_power_well *power_well)
> +{
> +	_icl_tc_phy_aux_power_well_enable(dev_priv, power_well, false);
> +}
> +
>  static void
>  icl_tc_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
>  				  struct i915_power_well *power_well)
> @@ -642,6 +657,13 @@ static bool hsw_power_well_enabled(struct drm_i915_p=
rivate *dev_priv,
>  	return (val & mask) =3D=3D mask;
>  }
>  =

> +static void
> +hsw_power_well_wait_ack(struct drm_i915_private *dev_priv,
> +			struct i915_power_well *power_well)
> +{
> +	hsw_wait_for_power_well_enable(dev_priv, power_well);
> +}
> +
>  static void assert_can_enable_dc9(struct drm_i915_private *dev_priv)
>  {
>  	drm_WARN_ONCE(&dev_priv->drm,
> @@ -3582,8 +3604,10 @@ static const struct i915_power_well_ops icl_combo_=
phy_aux_power_well_ops =3D {
>  static const struct i915_power_well_ops icl_tc_phy_aux_power_well_ops =
=3D {
>  	.sync_hw =3D hsw_power_well_sync_hw,
>  	.enable =3D icl_tc_phy_aux_power_well_enable,
> +	.enable_without_ack =3D icl_tc_phy_aux_power_well_enable_without_ack,
>  	.disable =3D icl_tc_phy_aux_power_well_disable,
>  	.is_enabled =3D hsw_power_well_enabled,
> +	.wait_enable_ack =3D hsw_power_well_wait_ack,
>  };
>  =

>  static const struct i915_power_well_regs icl_aux_power_well_regs =3D {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 176ab5f1e867..42954be80435 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1397,6 +1397,7 @@ struct intel_digital_port {
>  	enum tc_port_mode tc_mode;
>  	enum phy_fia tc_phy_fia;
>  	u8 tc_phy_fia_idx;
> +	intel_wakeref_t tc_cold_wakeref;
>  =

>  	void (*write_infoframe)(struct intel_encoder *encoder,
>  				const struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i9=
15/display/intel_tc.c
> index e4c5de5ce874..588fca873b55 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -416,9 +416,6 @@ static void intel_tc_port_reset_mode(struct intel_dig=
ital_port *dig_port,
>  	enum tc_port_mode old_tc_mode =3D dig_port->tc_mode;
>  =

>  	intel_display_power_flush_work(i915);
> -	drm_WARN_ON(&i915->drm,
> -		    intel_display_power_is_enabled(i915,
> -					intel_aux_power_domain(dig_port)));

The flush_work/warn is still needed, but we should do that before
getting an AUX power ref around FIA accesses.

>  =

>  	icl_tc_phy_disconnect(dig_port);
>  	icl_tc_phy_connect(dig_port, required_lanes);
> @@ -528,6 +525,39 @@ static inline int tgl_tc_cold_request(struct intel_d=
igital_port *dig_port,
>  	return ret;
>  }
>  =

> +static inline int icl_tc_cold_request(struct intel_digital_port *dig_por=
t,
> +				      bool block)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +	enum intel_display_power_domain aux_domain;
> +	int ret;
> +
> +	aux_domain =3D intel_aux_ch_to_power_domain(dig_port->aux_ch);
> +
> +	if (block) {
> +		dig_port->tc_cold_wakeref =3D
> +			intel_display_power_get_without_ack(i915, aux_domain);
> +
> +		do {
> +			ret =3D sandybridge_pcode_write_timeout(i915,
> +							      ICL_PCODE_EXIT_TCCOLD,
> +							      0, 250, 1);
> +
> +		} while (ret =3D=3D -EAGAIN);
> +
> +		if (!ret)
> +			msleep(1);
> +	} else if (dig_port->tc_mode =3D=3D TC_PORT_LEGACY) {
> +		drm_WARN_ON(&i915->drm, !dig_port->tc_cold_wakeref);
> +		intel_display_power_put(i915, aux_domain,
> +					dig_port->tc_cold_wakeref);
> +		dig_port->tc_cold_wakeref =3D 0;
> +		ret =3D 0;
> +	}
> +
> +	return ret;
> +}
> +
>  static int tc_cold_request(struct intel_digital_port *dig_port, bool blo=
ck)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> @@ -536,8 +566,7 @@ static int tc_cold_request(struct intel_digital_port =
*dig_port, bool block)
>  	if (INTEL_GEN(i915) >=3D 12)
>  		ret =3D tgl_tc_cold_request(dig_port, block);
>  	else
> -		/* TODO: implement GEN11 TCCOLD sequences */
> -		ret =3D 0;
> +		ret =3D icl_tc_cold_request(dig_port, block);
>  =

>  	drm_dbg_kms(&i915->drm, "Port %s: TCCOLD %sblock %s\n",
>  		    dig_port->tc_port_name, (block ? "" : "un"),
> @@ -546,6 +575,26 @@ static int tc_cold_request(struct intel_digital_port=
 *dig_port, bool block)
>  	return ret;
>  }
>  =

> +static void tc_cold_after_reset_mode(struct intel_digital_port *dig_port)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +	enum intel_display_power_domain aux_domain;
> +
> +	if (INTEL_GEN(i915) >=3D 12)
> +		return;
> +
> +	aux_domain =3D intel_aux_ch_to_power_domain(dig_port->aux_ch);
> +
> +	if (dig_port->tc_mode =3D=3D TC_PORT_LEGACY) {
> +		intel_display_power_wait_enable_ack(i915, aux_domain);
> +	} else {
> +		drm_WARN_ON(&i915->drm, !dig_port->tc_cold_wakeref);
> +		intel_display_power_put(i915, aux_domain,
> +					dig_port->tc_cold_wakeref);
> +		dig_port->tc_cold_wakeref =3D 0;
> +	}
> +}
> +
>  static void __intel_tc_port_lock(struct intel_digital_port *dig_port,
>  				 int required_lanes)
>  {
> @@ -560,6 +609,7 @@ static void __intel_tc_port_lock(struct intel_digital=
_port *dig_port,
>  		tc_cold_request(dig_port, true);
>  		intel_tc_port_needs_reset(dig_port);
>  		intel_tc_port_reset_mode(dig_port, required_lanes);
> +		tc_cold_after_reset_mode(dig_port);
>  	}
>  =

>  	drm_WARN_ON(&i915->drm, dig_port->tc_lock_wakeref);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 7e341d9945b3..8d4f40a70a4d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9017,6 +9017,7 @@ enum {
>  #define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16)=
 | (0x1 << 8))
>  #define   GEN6_PCODE_READ_D_COMP		0x10
>  #define   GEN6_PCODE_WRITE_D_COMP		0x11
> +#define   ICL_PCODE_EXIT_TCCOLD			0x12
>  #define   HSW_PCODE_DE_WRITE_FREQ_REQ		0x17
>  #define   DISPLAY_IPS_CONTROL			0x19
>  #define   TGL_PCODE_TCCOLD				0x26
> -- =

> 2.26.0
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
