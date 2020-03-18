Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C369F18A936
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 00:30:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73E0A6E999;
	Wed, 18 Mar 2020 23:30:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 308246E999
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 23:30:35 +0000 (UTC)
IronPort-SDR: +edbTFcBnsie+yyUuFszpjHT09aS2z6WBQxOenI80ik/TcP/O43K8+k1vRDzLEgnspyj2PgXIA
 hXflxw7r5M3w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 16:30:34 -0700
IronPort-SDR: QItcKGJLTaZAWdzloo7MOhcyn+aUefpciWwqgjI0OzBZTcx0QVXvCSK/PhecMII1EaeGc2/yOD
 MN4NBMsTt7Bg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; d="scan'208";a="446043077"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga006.fm.intel.com with ESMTP; 18 Mar 2020 16:30:34 -0700
Date: Wed, 18 Mar 2020 16:32:08 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200318233208.GG6675@intel.com>
References: <20200313164831.5980-1-ville.syrjala@linux.intel.com>
 <20200313164831.5980-9-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313164831.5980-9-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 08/13] drm/i915: Implement port sync for SKL+
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

On Fri, Mar 13, 2020 at 06:48:26PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Transcoder port sync was introduced to the hardware in BDW. We
> can trivially enable it for SKL+ since the same codepaths are
> already used for ICL+ port sync. The only difference is the actual
> location of the bits we need to poke.
> =

> We leave BDW out (at least for now) since it uses different modeset
> paths that haven't been adapted for port sync, and IIRC using the
> feature would involve some extra workarounds we've not implemented.
> =

> Pre-BDW hardware does not support port sync so we'd have to tweak
> the modeset sequence to start the pipes as close together as possible
> and hope for the best. So far no one has seriously tried to implement
> that.
> =

> Closes: https://gitlab.freedesktop.org/drm/intel/issues/27
> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 70 +++++++++++++++++-------
>  drivers/gpu/drm/i915/display/intel_dp.c  |  6 +-
>  drivers/gpu/drm/i915/i915_reg.h          |  3 +
>  3 files changed, 59 insertions(+), 20 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index 0fea2ec2cdd8..9e6eb0ee5ba4 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1450,6 +1450,14 @@ void intel_ddi_set_dp_msa(const struct intel_crtc_=
state *crtc_state,
>  	intel_de_write(dev_priv, TRANS_MSA_MISC(cpu_transcoder), temp);
>  }
>  =

> +static u32 bdw_trans_port_sync_master_select(enum transcoder master_tran=
scoder)
> +{
> +	if (master_transcoder =3D=3D TRANSCODER_EDP)
> +		return 0;
> +	else
> +		return master_transcoder + 1;
> +}
> +
>  /*
>   * Returns the TRANS_DDI_FUNC_CTL value based on CRTC state.
>   *
> @@ -1550,6 +1558,15 @@ intel_ddi_transcoder_func_reg_val_get(const struct=
 intel_crtc_state *crtc_state)
>  		temp |=3D DDI_PORT_WIDTH(crtc_state->lane_count);
>  	}
>  =

> +	if (IS_GEN_RANGE(dev_priv, 8, 10) &&
> +	    crtc_state->master_transcoder !=3D INVALID_TRANSCODER) {
> +		u8 master_select =3D
> +			bdw_trans_port_sync_master_select(crtc_state->master_transcoder);
> +
> +		temp |=3D TRANS_DDI_PORT_SYNC_ENABLE |
> +			TRANS_DDI_PORT_SYNC_MASTER_SELECT(master_select);
> +	}
> +
>  	return temp;
>  }
>  =

> @@ -1565,12 +1582,8 @@ void intel_ddi_enable_transcoder_func(const struct=
 intel_crtc_state *crtc_state)
>  		u32 ctl2 =3D 0;
>  =

>  		if (master_transcoder !=3D INVALID_TRANSCODER) {
> -			u8 master_select;
> -
> -			if (master_transcoder =3D=3D TRANSCODER_EDP)
> -				master_select =3D 0;
> -			else
> -				master_select =3D master_transcoder + 1;
> +			u8 master_select =3D
> +				bdw_trans_port_sync_master_select(master_transcoder);
>  =

>  			ctl2 |=3D PORT_SYNC_MODE_ENABLE |
>  				PORT_SYNC_MODE_MASTER_SELECT(master_select);
> @@ -1614,8 +1627,13 @@ void intel_ddi_disable_transcoder_func(const struc=
t intel_crtc_state *crtc_state
>  		intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL2(cpu_transcoder), 0);
>  =

>  	ctl =3D intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder));
> +
>  	ctl &=3D ~TRANS_DDI_FUNC_ENABLE;
>  =

> +	if (IS_GEN_RANGE(dev_priv, 8, 10))
> +		ctl &=3D ~(TRANS_DDI_PORT_SYNC_ENABLE |
> +			 TRANS_DDI_PORT_SYNC_MASTER_SELECT_MASK);
> +
>  	if (INTEL_GEN(dev_priv) >=3D 12) {
>  		if (!intel_dp_mst_is_master_trans(crtc_state)) {
>  			ctl &=3D ~(TGL_TRANS_DDI_PORT_MASK |
> @@ -1624,6 +1642,7 @@ void intel_ddi_disable_transcoder_func(const struct=
 intel_crtc_state *crtc_state
>  	} else {
>  		ctl &=3D ~(TRANS_DDI_PORT_MASK | TRANS_DDI_MODE_SELECT_MASK);
>  	}
> +
>  	intel_de_write(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder), ctl);
>  =

>  	if (dev_priv->quirks & QUIRK_INCREASE_DDI_DISABLED_TIME &&
> @@ -3842,17 +3861,26 @@ void intel_ddi_compute_min_voltage_level(struct d=
rm_i915_private *dev_priv,
>  		crtc_state->min_voltage_level =3D 2;
>  }
>  =

> -static enum transcoder transcoder_master_readout(struct drm_i915_private=
 *dev_priv,
> -						 enum transcoder cpu_transcoder)
> +static enum transcoder bdw_transcoder_master_readout(struct drm_i915_pri=
vate *dev_priv,
> +						     enum transcoder cpu_transcoder)
>  {
> -	u32 ctl2, master_select;
> +	u32 master_select;
>  =

> -	ctl2 =3D intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL2(cpu_transcoder));
> +	if (INTEL_GEN(dev_priv) >=3D 11) {
> +		u32 ctl2 =3D intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL2(cpu_transcode=
r));
>  =

> -	if ((ctl2 & PORT_SYNC_MODE_ENABLE) =3D=3D 0)
> -		return INVALID_TRANSCODER;
> +		if ((ctl2 & PORT_SYNC_MODE_ENABLE) =3D=3D 0)
> +			return INVALID_TRANSCODER;
>  =

> -	master_select =3D REG_FIELD_GET(PORT_SYNC_MODE_MASTER_SELECT_MASK, ctl2=
);
> +		master_select =3D REG_FIELD_GET(PORT_SYNC_MODE_MASTER_SELECT_MASK, ctl=
2);
> +	} else {
> +		u32 ctl =3D intel_de_read(dev_priv, TRANS_DDI_FUNC_CTL(cpu_transcoder)=
);
> +
> +		if ((ctl & TRANS_DDI_PORT_SYNC_ENABLE) =3D=3D 0)
> +			return INVALID_TRANSCODER;
> +
> +		master_select =3D REG_FIELD_GET(TRANS_DDI_PORT_SYNC_MASTER_SELECT_MASK=
, ctl);
> +	}
>  =

>  	if (master_select =3D=3D 0)
>  		return TRANSCODER_EDP;
> @@ -3860,7 +3888,7 @@ static enum transcoder transcoder_master_readout(st=
ruct drm_i915_private *dev_pr
>  		return master_select - 1;
>  }
>  =

> -static void icl_get_trans_port_sync_config(struct intel_crtc_state *crtc=
_state)
> +static void bdw_get_trans_port_sync_config(struct intel_crtc_state *crtc=
_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
>  	u32 transcoders =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
> @@ -3868,7 +3896,7 @@ static void icl_get_trans_port_sync_config(struct i=
ntel_crtc_state *crtc_state)
>  	enum transcoder cpu_transcoder;
>  =

>  	crtc_state->master_transcoder =3D
> -		transcoder_master_readout(dev_priv, crtc_state->cpu_transcoder);
> +		bdw_transcoder_master_readout(dev_priv, crtc_state->cpu_transcoder);
>  =

>  	for_each_cpu_transcoder_masked(dev_priv, cpu_transcoder, transcoders) {
>  		enum intel_display_power_domain power_domain;
> @@ -3881,7 +3909,7 @@ static void icl_get_trans_port_sync_config(struct i=
ntel_crtc_state *crtc_state)
>  		if (!trans_wakeref)
>  			continue;
>  =

> -		if (transcoder_master_readout(dev_priv, cpu_transcoder) =3D=3D
> +		if (bdw_transcoder_master_readout(dev_priv, cpu_transcoder) =3D=3D
>  		    crtc_state->cpu_transcoder)
>  			crtc_state->sync_mode_slaves_mask |=3D BIT(cpu_transcoder);
>  =

> @@ -4045,8 +4073,8 @@ void intel_ddi_get_config(struct intel_encoder *enc=
oder,
>  			     HDMI_INFOFRAME_TYPE_DRM,
>  			     &pipe_config->infoframes.drm);
>  =

> -	if (INTEL_GEN(dev_priv) >=3D 11)
> -		icl_get_trans_port_sync_config(pipe_config);
> +	if (INTEL_GEN(dev_priv) >=3D 8)
> +		bdw_get_trans_port_sync_config(pipe_config);
>  }
>  =

>  static enum intel_output_type
> @@ -4148,7 +4176,11 @@ intel_ddi_port_sync_transcoders(const struct intel=
_crtc_state *ref_crtc_state,
>  	u8 transcoders =3D 0;
>  	int i;
>  =

> -	if (INTEL_GEN(dev_priv) < 11)
> +	/*
> +	 * We don't enable port sync on BDW due to missing w/as and
> +	 * due to not having adjusted the modeset sequence appropriately.
> +	 */
> +	if (INTEL_GEN(dev_priv) < 9)
>  		return 0;
>  =

>  	if (!intel_crtc_has_type(ref_crtc_state, INTEL_OUTPUT_DP))
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 0a417cd2af2b..89d54f5fe60b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6724,7 +6724,11 @@ static int intel_dp_connector_atomic_check(struct =
drm_connector *conn,
>  	if (ret)
>  		return ret;
>  =

> -	if (INTEL_GEN(dev_priv) < 11)
> +	/*
> +	 * We don't enable port sync on BDW due to missing w/as and
> +	 * due to not having adjusted the modeset sequence appropriately.
> +	 */
> +	if (INTEL_GEN(dev_priv) < 9)
>  		return 0;
>  =

>  	if (!intel_connector_needs_modeset(state, conn))
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index fc5c00bfed87..fdee1da801bf 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -9698,8 +9698,11 @@ enum skl_power_gate {
>  #define  TRANS_DDI_BPC_10		(1 << 20)
>  #define  TRANS_DDI_BPC_6		(2 << 20)
>  #define  TRANS_DDI_BPC_12		(3 << 20)
> +#define  TRANS_DDI_PORT_SYNC_MASTER_SELECT_MASK	REG_GENMASK(19, 18) /* b=
dw-cnl */
> +#define  TRANS_DDI_PORT_SYNC_MASTER_SELECT(x)	REG_FIELD_PREP(TRANS_DDI_P=
ORT_SYNC_MASTER_SELECT_MASK, (x))
>  #define  TRANS_DDI_PVSYNC		(1 << 17)
>  #define  TRANS_DDI_PHSYNC		(1 << 16)
> +#define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15) /* bdw-cnl */
>  #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
>  #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
>  #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
> -- =

> 2.24.1
> =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
