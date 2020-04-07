Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B26121A17A7
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 00:04:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B9CC6E913;
	Tue,  7 Apr 2020 22:04:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 464E06E913
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 22:03:58 +0000 (UTC)
IronPort-SDR: ZlwrN2L5B1Oayc61+W+hQ3a9q9pKlCR5lhQm6yqZotK7uI8KEjXl5q7PVAHPjNyhrH8jnOAseV
 OXP180L1sQIQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 15:03:57 -0700
IronPort-SDR: NygCohEAb0W2x9TnmU3baFG5iqzma+YNSOHovGjb/KtIE5BRppVIOvJ1sKbdGWAK12VKFq6HIc
 Ota+zG+5tWzA==
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="243876342"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 15:03:56 -0700
Date: Wed, 8 Apr 2020 01:03:46 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200407220346.GC23597@ideak-desk.fi.intel.com>
References: <20200407214000.342933-1-jose.souza@intel.com>
 <20200407214000.342933-4-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200407214000.342933-4-jose.souza@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v3 4/8] drm/i915/tc/icl: Implement TC cold
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
Cc: Cooper Chiou <cooper.chiou@intel.com>, intel-gfx@lists.freedesktop.org,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 07, 2020 at 02:39:56PM -0700, Jos=E9 Roberto de Souza wrote:
> This is required for legacy/static TC ports as IOM is not aware of
> the connection and will not trigger the TC cold exit.
> =

> Just request PCODE to exit TCCOLD is not enough as it could enter
> again before driver makes use of the port, to prevent it BSpec states
> that aux powerwell should be held.
> =

> So here embedding the TC cold exit sequence into ICL aux enable,
> it will enable aux and then request TC cold to exit.
> =

> The TC cold block(exit and aux hold) and unblock was added to some
> exported TC functions for the others and to access PHY registers,
> callers should enable and keep aux powerwell enabled during access.
> =

> Also adding TC cold check and warnig in tc_port_load_fia_params() as
> at this point of the driver initialization we can't request power
> wells, if we get this warning we will need to figure out how to handle
> it.
> =

> v2:
> - moved ICL TC cold exit function to intel_display_power
> - using dig_port->tc_legacy_port to only execute sequences for legacy
> ports, hopefully VBTs will have this right
> - fixed check to call _hsw_power_well_continue_enable()
> - calling _hsw_power_well_continue_enable() unconditionally in
> icl_tc_phy_aux_power_well_enable(), if needed we will surpress timeout
> warnings of TC legacy ports
> - only blocking TC cold around fia access
> =

> v3:
> - added timeout of 5msec to not loop forever if
> sandybridge_pcode_write_timeout() keeps returning -EAGAIN
> returning -EAGAIN in in icl_tc_cold_exit()
> - removed leftover tc_cold_wakeref
> - added one msec sleep when PCODE returns -EAGAIN
> =

> BSpec: 21750
> Fixes: https://gitlab.freedesktop.org/drm/intel/issues/1296
> Cc: Imre Deak <imre.deak@intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    | 24 ++++++-
>  drivers/gpu/drm/i915/display/intel_tc.c       | 64 +++++++++++++++++--
>  drivers/gpu/drm/i915/i915_reg.h               |  1 +
>  3 files changed, 82 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 1cd271d0f114..2d7b2999561a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -575,6 +575,27 @@ static void icl_tc_port_assert_ref_held(struct drm_i=
915_private *dev_priv,
>  =

>  #define TGL_AUX_PW_TO_TC_PORT(pw_idx)	((pw_idx) - TGL_PW_CTL_IDX_AUX_TC1)
>  =

> +static void icl_tc_cold_exit(struct drm_i915_private *i915)
> +{
> +	const ktime_t timeout =3D ktime_add_ms(ktime_get_raw(), 5);
> +	int ret;
> +
> +	do {
> +		ret =3D sandybridge_pcode_write_timeout(i915,
> +						      ICL_PCODE_EXIT_TCCOLD,
> +						      0, 250, 1);
> +		if (ret =3D=3D -EAGAIN)
> +			msleep(1);
> +	} while (ret =3D=3D -EAGAIN && ktime_compare(timeout, ktime_get_raw()) =
> 0);

this could exit after a single pcode_write() that polled for 1ms, and
msleep(1); is not needed in the last iteration. Retrying 3 times as
discussed earlier would solve that.

> +
> +	/* Spec states that TC cold exit can take up to 1ms to complete */
> +	if (!ret)
> +		msleep(1);
> +
> +	drm_dbg_kms(&i915->drm, "TC cold block %s\n", ret ? "failed" :
> +		    "succeeded");

You missed turning this to an error.

> +}
> +
>  static void
>  icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
>  				 struct i915_power_well *power_well)
> @@ -593,7 +614,8 @@ icl_tc_phy_aux_power_well_enable(struct drm_i915_priv=
ate *dev_priv,
>  =

>  	hsw_power_well_enable_prepare(dev_priv, power_well);
>  =

> -	/* TODO ICL TC cold handling */
> +	if (INTEL_GEN(dev_priv) =3D=3D 11 && dig_port->tc_legacy_port)
> +		icl_tc_cold_exit(dev_priv);
>  =

>  	hsw_power_well_enable_complete(dev_priv, power_well);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i9=
15/display/intel_tc.c
> index 9b850c11aa78..74061bf9b2b9 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -34,6 +34,7 @@ tc_port_load_fia_params(struct drm_i915_private *i915,
>  	if (INTEL_INFO(i915)->display.has_modular_fia) {
>  		modular_fia =3D intel_uncore_read(&i915->uncore,
>  						PORT_TX_DFLEXDPSP(FIA1));
> +		drm_WARN_ON(&i915->drm, modular_fia =3D=3D 0xffffffff);
>  		modular_fia &=3D MODULAR_FIA_MASK;
>  	} else {
>  		modular_fia =3D 0;
> @@ -52,6 +53,37 @@ tc_port_load_fia_params(struct drm_i915_private *i915,
>  	}
>  }
>  =

> +static intel_wakeref_t
> +tc_cold_block(struct intel_digital_port *dig_port)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +	enum intel_display_power_domain domain;
> +
> +	if (INTEL_GEN(i915) !=3D 11 || !dig_port->tc_legacy_port)
> +		return 0;
> +
> +	domain =3D intel_legacy_aux_to_power_domain(dig_port->aux_ch);
> +	return intel_display_power_get(i915, domain);
> +}
> +
> +static void
> +tc_cold_unblock(struct intel_digital_port *dig_port, intel_wakeref_t wak=
eref)
> +{
> +	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> +	enum intel_display_power_domain domain;
> +
> +	/*
> +	 * wakeref =3D=3D -1, means some error happened saving save_depot_stack=
 but
> +	 * power should still be put down and 0 is a invalid save_depot_stack
> +	 * id so can be used to skip it for non TC legacy ports.
> +	 */
> +	if (wakeref =3D=3D 0)
> +		return;
> +
> +	domain =3D intel_legacy_aux_to_power_domain(dig_port->aux_ch);
> +	intel_display_power_put_async(i915, domain, wakeref);
> +}
> +
>  u32 intel_tc_port_get_lane_mask(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dig_port->base.base.dev);
> @@ -415,9 +447,14 @@ static void intel_tc_port_reset_mode(struct intel_di=
gital_port *dig_port,
>  	enum tc_port_mode old_tc_mode =3D dig_port->tc_mode;
>  =

>  	intel_display_power_flush_work(i915);
> -	drm_WARN_ON(&i915->drm,
> -		    intel_display_power_is_enabled(i915,
> -					intel_aux_power_domain(dig_port)));
> +	if (INTEL_GEN(i915) !=3D 11 || !dig_port->tc_legacy_port) {
> +		enum intel_display_power_domain aux_domain;
> +		bool aux_powered;
> +
> +		aux_domain =3D intel_aux_power_domain(dig_port);
> +		aux_powered =3D intel_display_power_is_enabled(i915, aux_domain);
> +		drm_WARN_ON(&i915->drm, aux_powered);
> +	}
>  =

>  	icl_tc_phy_disconnect(dig_port);
>  	icl_tc_phy_connect(dig_port, required_lanes);
> @@ -439,9 +476,11 @@ intel_tc_port_link_init_refcount(struct intel_digita=
l_port *dig_port,
>  void intel_tc_port_sanitize(struct intel_digital_port *dig_port)
>  {
>  	struct intel_encoder *encoder =3D &dig_port->base;
> +	intel_wakeref_t tc_cold_wref;
>  	int active_links =3D 0;
>  =

>  	mutex_lock(&dig_port->tc_lock);
> +	tc_cold_wref =3D tc_cold_block(dig_port);
>  =

>  	dig_port->tc_mode =3D intel_tc_port_get_current_mode(dig_port);
>  	if (dig_port->dp.is_mst)
> @@ -466,6 +505,7 @@ void intel_tc_port_sanitize(struct intel_digital_port=
 *dig_port)
>  		      dig_port->tc_port_name,
>  		      tc_port_mode_name(dig_port->tc_mode));
>  =

> +	tc_cold_unblock(dig_port, tc_cold_wref);
>  	mutex_unlock(&dig_port->tc_lock);
>  }
>  =

> @@ -487,10 +527,15 @@ static bool intel_tc_port_needs_reset(struct intel_=
digital_port *dig_port)
>  bool intel_tc_port_connected(struct intel_digital_port *dig_port)
>  {
>  	bool is_connected;
> +	intel_wakeref_t tc_cold_wref;
>  =

>  	intel_tc_port_lock(dig_port);
> +	tc_cold_wref =3D tc_cold_block(dig_port);
> +
>  	is_connected =3D tc_port_live_status_mask(dig_port) &
>  		       BIT(dig_port->tc_mode);
> +
> +	tc_cold_unblock(dig_port, tc_cold_wref);
>  	intel_tc_port_unlock(dig_port);
>  =

>  	return is_connected;
> @@ -506,9 +551,16 @@ static void __intel_tc_port_lock(struct intel_digita=
l_port *dig_port,
>  =

>  	mutex_lock(&dig_port->tc_lock);
>  =

> -	if (!dig_port->tc_link_refcount &&
> -	    intel_tc_port_needs_reset(dig_port))
> -		intel_tc_port_reset_mode(dig_port, required_lanes);
> +	if (!dig_port->tc_link_refcount) {
> +		intel_wakeref_t tc_cold_wref;
> +
> +		tc_cold_wref =3D tc_cold_block(dig_port);
> +
> +		if (intel_tc_port_needs_reset(dig_port))
> +			intel_tc_port_reset_mode(dig_port, required_lanes);
> +
> +		tc_cold_unblock(dig_port, tc_cold_wref);
> +	}
>  =

>  	drm_WARN_ON(&i915->drm, dig_port->tc_lock_wakeref);
>  	dig_port->tc_lock_wakeref =3D wakeref;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 1a7bd6db164b..0389afa2361f 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9108,6 +9108,7 @@ enum {
>  #define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16)=
 | (0x1 << 8))
>  #define   GEN6_PCODE_READ_D_COMP		0x10
>  #define   GEN6_PCODE_WRITE_D_COMP		0x11
> +#define   ICL_PCODE_EXIT_TCCOLD			0x12
>  #define   HSW_PCODE_DE_WRITE_FREQ_REQ		0x17
>  #define   DISPLAY_IPS_CONTROL			0x19
>              /* See also IPS_CTL */
> -- =

> 2.26.0
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
