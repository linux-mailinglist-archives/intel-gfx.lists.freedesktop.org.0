Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34DE2292A7B
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 17:31:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B3B36E9F8;
	Mon, 19 Oct 2020 15:31:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA9756E9F7
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 15:31:41 +0000 (UTC)
IronPort-SDR: HPOi8c1O8wHOf7xTKKIdYJepVN9HjXV+vgjDUmXKn3zhz5F/qqfbC6Hko17+i1jimE9InMWQry
 /ODXk1kXjXEg==
X-IronPort-AV: E=McAfee;i="6000,8403,9778"; a="163563342"
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="163563342"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 08:31:41 -0700
IronPort-SDR: 8IInk/ltVuSwawLdAOvkt4MtFcsOjrp0Bc/mfw1F6thJBJr1wf1shOcVWHqHU29mBB4mf96wRb
 rnbgkSZgoAJg==
X-IronPort-AV: E=Sophos;i="5.77,394,1596524400"; d="scan'208";a="301396305"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 08:31:40 -0700
Date: Mon, 19 Oct 2020 18:31:36 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20201019153136.GF3199870@ideak-desk.fi.intel.com>
References: <20201016194800.25581-1-ville.syrjala@linux.intel.com>
 <20201016194800.25581-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201016194800.25581-2-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915:
 s/intel_dp_sink_dpms/intel_dp_set_power/
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 16, 2020 at 10:48:00PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Rename intel_dp_sink_dpms() to intel_dp_set_power()
> so one doesn't always have to convert from the DPMS
> enum values to the actual DP D-states.
> =

> Also when dealing with a branch device this has nothing to
> do with any sink, so the old name was nonsense anyway.
> Also adjust the debug message accordingly, and pimp it
> with the standard encoder id+name thing.
> =

> Trivial bits done with cocci:
> @@
> expression DP;
> @@
> (
> - intel_dp_sink_dpms(DP, DRM_MODE_DPMS_OFF)
> + intel_dp_set_power(DP, DP_SET_POWER_D3)
> |
> - intel_dp_sink_dpms(DP, DRM_MODE_DPMS_ON)
> + intel_dp_set_power(DP, DP_SET_POWER_D0)
> )
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c    |  6 +++---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 24 ++++++++++-----------
>  drivers/gpu/drm/i915/display/intel_dp.h     |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 +-
>  4 files changed, 17 insertions(+), 17 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index bb0b9930958f..09811be08cfe 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3482,7 +3482,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atom=
ic_state *state,
>  	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
>  =

>  	if (!is_mst)
> -		intel_dp_sink_dpms(intel_dp, DRM_MODE_DPMS_ON);
> +		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
>  =

>  	intel_dp_sink_set_decompression_state(intel_dp, crtc_state, true);
>  	/*
> @@ -3564,7 +3564,7 @@ static void hsw_ddi_pre_enable_dp(struct intel_atom=
ic_state *state,
>  =

>  	intel_ddi_init_dp_buf_reg(encoder, crtc_state);
>  	if (!is_mst)
> -		intel_dp_sink_dpms(intel_dp, DRM_MODE_DPMS_ON);
> +		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
>  	intel_dp_configure_protocol_converter(intel_dp);
>  	intel_dp_sink_set_decompression_state(intel_dp, crtc_state,
>  					      true);
> @@ -3738,7 +3738,7 @@ static void intel_ddi_post_disable_dp(struct intel_=
atomic_state *state,
>  	 * Power down sink before disabling the port, otherwise we end
>  	 * up getting interrupts from the sink on detecting link loss.
>  	 */
> -	intel_dp_sink_dpms(intel_dp, DRM_MODE_DPMS_OFF);
> +	intel_dp_set_power(intel_dp, DP_SET_POWER_D3);
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 12) {
>  		if (is_mst) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 4784aaeb934e..818daab252f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3471,22 +3471,22 @@ void intel_dp_sink_set_decompression_state(struct=
 intel_dp *intel_dp,
>  			    enable ? "enable" : "disable");
>  }
>  =

> -/* If the sink supports it, try to set the power state appropriately */
> -void intel_dp_sink_dpms(struct intel_dp *intel_dp, int mode)
> +/* If the device supports it, try to set the power state appropriately */
> +void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode)
>  {
> -	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +	struct intel_encoder *encoder =3D &dp_to_dig_port(intel_dp)->base;
> +	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	int ret, i;
>  =

>  	/* Should have a valid DPCD by this point */
>  	if (intel_dp->dpcd[DP_DPCD_REV] < 0x11)
>  		return;
>  =

> -	if (mode !=3D DRM_MODE_DPMS_ON) {
> +	if (mode !=3D DP_SET_POWER_D0) {
>  		if (downstream_hpd_needs_d0(intel_dp))
>  			return;
>  =

> -		ret =3D drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
> -					 DP_SET_POWER_D3);
> +		ret =3D drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, mode);
>  	} else {
>  		struct intel_lspcon *lspcon =3D dp_to_lspcon(intel_dp);
>  =

> @@ -3497,8 +3497,7 @@ void intel_dp_sink_dpms(struct intel_dp *intel_dp, =
int mode)
>  		 * time to wake up.
>  		 */
>  		for (i =3D 0; i < 3; i++) {
> -			ret =3D drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER,
> -						 DP_SET_POWER_D0);
> +			ret =3D drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, mode);
>  			if (ret =3D=3D 1)
>  				break;
>  			msleep(1);
> @@ -3509,8 +3508,9 @@ void intel_dp_sink_dpms(struct intel_dp *intel_dp, =
int mode)
>  	}
>  =

>  	if (ret !=3D 1)
> -		drm_dbg_kms(&i915->drm, "failed to %s sink power state\n",
> -			    mode =3D=3D DRM_MODE_DPMS_ON ? "enable" : "disable");
> +		drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Set power to %s failed\n",
> +			    encoder->base.base.id, encoder->base.name,
> +			    mode =3D=3D DP_SET_POWER_D0 ? "D0" : "D3");
>  }
>  =

>  static bool cpt_dp_port_selected(struct drm_i915_private *dev_priv,
> @@ -3744,7 +3744,7 @@ static void intel_disable_dp(struct intel_atomic_st=
ate *state,
>  	 * ensure that we have vdd while we switch off the panel. */
>  	intel_edp_panel_vdd_on(intel_dp);
>  	intel_edp_backlight_off(old_conn_state);
> -	intel_dp_sink_dpms(intel_dp, DRM_MODE_DPMS_OFF);
> +	intel_dp_set_power(intel_dp, DP_SET_POWER_D3);
>  	intel_edp_panel_off(intel_dp);
>  }
>  =

> @@ -3969,7 +3969,7 @@ static void intel_enable_dp(struct intel_atomic_sta=
te *state,
>  				    lane_mask);
>  	}
>  =

> -	intel_dp_sink_dpms(intel_dp, DRM_MODE_DPMS_ON);
> +	intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
>  	intel_dp_configure_protocol_converter(intel_dp);
>  	intel_dp_start_link_train(intel_dp, pipe_config);
>  	intel_dp_stop_link_train(intel_dp, pipe_config);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index fcc28eb242f2..3f862b4fd34f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -50,7 +50,7 @@ int intel_dp_get_link_train_fallback_values(struct inte=
l_dp *intel_dp,
>  					    int link_rate, u8 lane_count);
>  int intel_dp_retrain_link(struct intel_encoder *encoder,
>  			  struct drm_modeset_acquire_ctx *ctx);
> -void intel_dp_sink_dpms(struct intel_dp *intel_dp, int mode);
> +void intel_dp_set_power(struct intel_dp *intel_dp, u8 mode);
>  void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp);
>  void intel_dp_sink_set_decompression_state(struct intel_dp *intel_dp,
>  					   const struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index e948aacbd4ab..c8fcec4d0788 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -492,7 +492,7 @@ static void intel_mst_pre_enable_dp(struct intel_atom=
ic_state *state,
>  		    intel_dp->active_mst_links);
>  =

>  	if (first_mst_stream)
> -		intel_dp_sink_dpms(intel_dp, DRM_MODE_DPMS_ON);
> +		intel_dp_set_power(intel_dp, DP_SET_POWER_D0);
>  =

>  	drm_dp_send_power_updown_phy(&intel_dp->mst_mgr, connector->port, true);
>  =

> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
