Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F4340C38C
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 12:19:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A3496E8FF;
	Wed, 15 Sep 2021 10:19:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C8BB6E8FF
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 10:19:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10107"; a="221942824"
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="221942824"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 03:19:43 -0700
X-IronPort-AV: E=Sophos;i="5.85,295,1624345200"; d="scan'208";a="544779403"
Received: from vmastnak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.214.245])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2021 03:19:42 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210913144440.23008-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
 <20210913144440.23008-8-ville.syrjala@linux.intel.com>
Date: Wed, 15 Sep 2021 13:19:39 +0300
Message-ID: <87bl4uywck.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 07/16] drm/i915: Adjust
 intel_dsc_power_domain() calling convention
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

On Mon, 13 Sep 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Pass the crtc+cpu_transcoder rather than the crtc state to
> intel_dsc_power_domain(). This should allow us to reuse it
> during readout as well.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  6 +-
>  drivers/gpu/drm/i915/display/intel_vdsc.c    | 79 ++++++++++----------
>  drivers/gpu/drm/i915/display/intel_vdsc.h    |  6 +-
>  3 files changed, 45 insertions(+), 46 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 1a0eac3da3f0..54107bab4ae6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3404,16 +3404,16 @@ static u64 get_crtc_power_domains(struct intel_cr=
tc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	struct drm_encoder *encoder;
>  	enum pipe pipe =3D crtc->pipe;
>  	u64 mask;
> -	enum transcoder transcoder =3D crtc_state->cpu_transcoder;
>=20=20
>  	if (!crtc_state->hw.active)
>  		return 0;
>=20=20
>  	mask =3D BIT_ULL(POWER_DOMAIN_PIPE(pipe));
> -	mask |=3D BIT_ULL(POWER_DOMAIN_TRANSCODER(transcoder));
> +	mask |=3D BIT_ULL(POWER_DOMAIN_TRANSCODER(cpu_transcoder));
>  	if (crtc_state->pch_pfit.enabled ||
>  	    crtc_state->pch_pfit.force_thru)
>  		mask |=3D BIT_ULL(POWER_DOMAIN_PIPE_PANEL_FITTER(pipe));
> @@ -3432,7 +3432,7 @@ static u64 get_crtc_power_domains(struct intel_crtc=
_state *crtc_state)
>  		mask |=3D BIT_ULL(POWER_DOMAIN_DISPLAY_CORE);
>=20=20
>  	if (crtc_state->dsc.compression_enable)
> -		mask |=3D BIT_ULL(intel_dsc_power_domain(crtc_state));
> +		mask |=3D BIT_ULL(intel_dsc_power_domain(crtc, cpu_transcoder));
>=20=20
>  	return mask;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/=
i915/display/intel_vdsc.c
> index df3286aa6999..2275f99ce9d7 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
> @@ -357,11 +357,9 @@ bool intel_dsc_source_support(const struct intel_crt=
c_state *crtc_state)
>  	return false;
>  }
>=20=20
> -static bool is_pipe_dsc(const struct intel_crtc_state *crtc_state)
> +static bool is_pipe_dsc(struct intel_crtc *crtc, enum transcoder cpu_tra=
nscoder)
>  {
> -	const struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	const struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> -	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>=20=20
>  	if (DISPLAY_VER(i915) >=3D 12)
>  		return true;
> @@ -547,9 +545,8 @@ int intel_dsc_compute_params(struct intel_encoder *en=
coder,
>  }
>=20=20
>  enum intel_display_power_domain
> -intel_dsc_power_domain(const struct intel_crtc_state *crtc_state)
> +intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_tran=
scoder)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	enum pipe pipe =3D crtc->pipe;
>=20=20
> @@ -566,7 +563,7 @@ intel_dsc_power_domain(const struct intel_crtc_state =
*crtc_state)
>  	 */
>  	if (DISPLAY_VER(i915) =3D=3D 12 && !IS_ROCKETLAKE(i915) && pipe =3D=3D =
PIPE_A)
>  		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
> -	else if (is_pipe_dsc(crtc_state))
> +	else if (is_pipe_dsc(crtc, cpu_transcoder))
>  		return POWER_DOMAIN_PIPE(pipe);
>  	else
>  		return POWER_DOMAIN_TRANSCODER_VDSC_PW2;
> @@ -577,6 +574,7 @@ static void intel_dsc_pps_configure(const struct inte=
l_crtc_state *crtc_state)
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	const struct drm_dsc_config *vdsc_cfg =3D &crtc_state->dsc.config;
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	enum pipe pipe =3D crtc->pipe;
>  	u32 pps_val =3D 0;
>  	u32 rc_buf_thresh_dword[4];
> @@ -601,7 +599,7 @@ static void intel_dsc_pps_configure(const struct inte=
l_crtc_state *crtc_state)
>  	if (vdsc_cfg->vbr_enable)
>  		pps_val |=3D DSC_VBR_ENABLE;
>  	drm_info(&dev_priv->drm, "PPS0 =3D 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc_state)) {
> +	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_0,
>  			       pps_val);
>  		/*
> @@ -625,7 +623,7 @@ static void intel_dsc_pps_configure(const struct inte=
l_crtc_state *crtc_state)
>  	pps_val =3D 0;
>  	pps_val |=3D DSC_BPP(vdsc_cfg->bits_per_pixel);
>  	drm_info(&dev_priv->drm, "PPS1 =3D 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc_state)) {
> +	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_1,
>  			       pps_val);
>  		/*
> @@ -650,7 +648,7 @@ static void intel_dsc_pps_configure(const struct inte=
l_crtc_state *crtc_state)
>  	pps_val |=3D DSC_PIC_HEIGHT(vdsc_cfg->pic_height) |
>  		DSC_PIC_WIDTH(vdsc_cfg->pic_width / num_vdsc_instances);
>  	drm_info(&dev_priv->drm, "PPS2 =3D 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc_state)) {
> +	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_2,
>  			       pps_val);
>  		/*
> @@ -675,7 +673,7 @@ static void intel_dsc_pps_configure(const struct inte=
l_crtc_state *crtc_state)
>  	pps_val |=3D DSC_SLICE_HEIGHT(vdsc_cfg->slice_height) |
>  		DSC_SLICE_WIDTH(vdsc_cfg->slice_width);
>  	drm_info(&dev_priv->drm, "PPS3 =3D 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc_state)) {
> +	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_3,
>  			       pps_val);
>  		/*
> @@ -700,7 +698,7 @@ static void intel_dsc_pps_configure(const struct inte=
l_crtc_state *crtc_state)
>  	pps_val |=3D DSC_INITIAL_XMIT_DELAY(vdsc_cfg->initial_xmit_delay) |
>  		DSC_INITIAL_DEC_DELAY(vdsc_cfg->initial_dec_delay);
>  	drm_info(&dev_priv->drm, "PPS4 =3D 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc_state)) {
> +	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_4,
>  			       pps_val);
>  		/*
> @@ -725,7 +723,7 @@ static void intel_dsc_pps_configure(const struct inte=
l_crtc_state *crtc_state)
>  	pps_val |=3D DSC_SCALE_INC_INT(vdsc_cfg->scale_increment_interval) |
>  		DSC_SCALE_DEC_INT(vdsc_cfg->scale_decrement_interval);
>  	drm_info(&dev_priv->drm, "PPS5 =3D 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc_state)) {
> +	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_5,
>  			       pps_val);
>  		/*
> @@ -752,7 +750,7 @@ static void intel_dsc_pps_configure(const struct inte=
l_crtc_state *crtc_state)
>  		DSC_FLATNESS_MIN_QP(vdsc_cfg->flatness_min_qp) |
>  		DSC_FLATNESS_MAX_QP(vdsc_cfg->flatness_max_qp);
>  	drm_info(&dev_priv->drm, "PPS6 =3D 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc_state)) {
> +	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_6,
>  			       pps_val);
>  		/*
> @@ -777,7 +775,7 @@ static void intel_dsc_pps_configure(const struct inte=
l_crtc_state *crtc_state)
>  	pps_val |=3D DSC_SLICE_BPG_OFFSET(vdsc_cfg->slice_bpg_offset) |
>  		DSC_NFL_BPG_OFFSET(vdsc_cfg->nfl_bpg_offset);
>  	drm_info(&dev_priv->drm, "PPS7 =3D 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc_state)) {
> +	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_7,
>  			       pps_val);
>  		/*
> @@ -802,7 +800,7 @@ static void intel_dsc_pps_configure(const struct inte=
l_crtc_state *crtc_state)
>  	pps_val |=3D DSC_FINAL_OFFSET(vdsc_cfg->final_offset) |
>  		DSC_INITIAL_OFFSET(vdsc_cfg->initial_offset);
>  	drm_info(&dev_priv->drm, "PPS8 =3D 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc_state)) {
> +	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_8,
>  			       pps_val);
>  		/*
> @@ -827,7 +825,7 @@ static void intel_dsc_pps_configure(const struct inte=
l_crtc_state *crtc_state)
>  	pps_val |=3D DSC_RC_MODEL_SIZE(vdsc_cfg->rc_model_size) |
>  		DSC_RC_EDGE_FACTOR(DSC_RC_EDGE_FACTOR_CONST);
>  	drm_info(&dev_priv->drm, "PPS9 =3D 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc_state)) {
> +	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_9,
>  			       pps_val);
>  		/*
> @@ -854,7 +852,7 @@ static void intel_dsc_pps_configure(const struct inte=
l_crtc_state *crtc_state)
>  		DSC_RC_TARGET_OFF_HIGH(DSC_RC_TGT_OFFSET_HI_CONST) |
>  		DSC_RC_TARGET_OFF_LOW(DSC_RC_TGT_OFFSET_LO_CONST);
>  	drm_info(&dev_priv->drm, "PPS10 =3D 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc_state)) {
> +	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_10,
>  			       pps_val);
>  		/*
> @@ -882,7 +880,7 @@ static void intel_dsc_pps_configure(const struct inte=
l_crtc_state *crtc_state)
>  		DSC_SLICE_ROW_PER_FRAME(vdsc_cfg->pic_height /
>  					vdsc_cfg->slice_height);
>  	drm_info(&dev_priv->drm, "PPS16 =3D 0x%08x\n", pps_val);
> -	if (!is_pipe_dsc(crtc_state)) {
> +	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>  		intel_de_write(dev_priv, DSCA_PICTURE_PARAMETER_SET_16,
>  			       pps_val);
>  		/*
> @@ -911,7 +909,7 @@ static void intel_dsc_pps_configure(const struct inte=
l_crtc_state *crtc_state)
>  		drm_info(&dev_priv->drm, " RC_BUF_THRESH%d =3D 0x%08x\n", i,
>  			 rc_buf_thresh_dword[i / 4]);
>  	}
> -	if (!is_pipe_dsc(crtc_state)) {
> +	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>  		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_0,
>  			       rc_buf_thresh_dword[0]);
>  		intel_de_write(dev_priv, DSCA_RC_BUF_THRESH_0_UDW,
> @@ -968,7 +966,7 @@ static void intel_dsc_pps_configure(const struct inte=
l_crtc_state *crtc_state)
>  		drm_info(&dev_priv->drm, " RC_RANGE_PARAM_%d =3D 0x%08x\n", i,
>  			 rc_range_params_dword[i / 2]);
>  	}
> -	if (!is_pipe_dsc(crtc_state)) {
> +	if (!is_pipe_dsc(crtc, cpu_transcoder)) {
>  		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_0,
>  			       rc_range_params_dword[0]);
>  		intel_de_write(dev_priv, DSCA_RC_RANGE_PARAMETERS_0_UDW,
> @@ -1095,18 +1093,16 @@ static void intel_dsc_dp_pps_write(struct intel_e=
ncoder *encoder,
>  				  sizeof(dp_dsc_pps_sdp));
>  }
>=20=20
> -static i915_reg_t dss_ctl1_reg(const struct intel_crtc_state *crtc_state)
> +static i915_reg_t dss_ctl1_reg(struct intel_crtc *crtc, enum transcoder =
cpu_transcoder)
>  {
> -	enum pipe pipe =3D to_intel_crtc(crtc_state->uapi.crtc)->pipe;
> -
> -	return is_pipe_dsc(crtc_state) ? ICL_PIPE_DSS_CTL1(pipe) : DSS_CTL1;
> +	return is_pipe_dsc(crtc, cpu_transcoder) ?
> +		ICL_PIPE_DSS_CTL1(crtc->pipe) : DSS_CTL1;
>  }
>=20=20
> -static i915_reg_t dss_ctl2_reg(const struct intel_crtc_state *crtc_state)
> +static i915_reg_t dss_ctl2_reg(struct intel_crtc *crtc, enum transcoder =
cpu_transcoder)
>  {
> -	enum pipe pipe =3D to_intel_crtc(crtc_state->uapi.crtc)->pipe;
> -
> -	return is_pipe_dsc(crtc_state) ? ICL_PIPE_DSS_CTL2(pipe) : DSS_CTL2;
> +	return is_pipe_dsc(crtc, cpu_transcoder) ?
> +		ICL_PIPE_DSS_CTL2(crtc->pipe) : DSS_CTL2;
>  }
>=20=20
>  static struct intel_crtc *
> @@ -1142,7 +1138,7 @@ void intel_uncompressed_joiner_enable(const struct =
intel_crtc_state *crtc_state)
>  		else
>  			dss_ctl1_val |=3D UNCOMPRESSED_JOINER_MASTER;
>=20=20
> -		intel_de_write(dev_priv, dss_ctl1_reg(crtc_state), dss_ctl1_val);
> +		intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder=
), dss_ctl1_val);
>  	}
>  }
>=20=20
> @@ -1176,8 +1172,8 @@ void intel_dsc_enable(struct intel_encoder *encoder,
>  		if (!crtc_state->bigjoiner_slave)
>  			dss_ctl1_val |=3D MASTER_BIG_JOINER_ENABLE;
>  	}
> -	intel_de_write(dev_priv, dss_ctl1_reg(crtc_state), dss_ctl1_val);
> -	intel_de_write(dev_priv, dss_ctl2_reg(crtc_state), dss_ctl2_val);
> +	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder)=
, dss_ctl1_val);
> +	intel_de_write(dev_priv, dss_ctl2_reg(crtc, crtc_state->cpu_transcoder)=
, dss_ctl2_val);
>  }
>=20=20
>  void intel_dsc_disable(const struct intel_crtc_state *old_crtc_state)
> @@ -1188,8 +1184,8 @@ void intel_dsc_disable(const struct intel_crtc_stat=
e *old_crtc_state)
>  	/* Disable only if either of them is enabled */
>  	if (old_crtc_state->dsc.compression_enable ||
>  	    old_crtc_state->bigjoiner) {
> -		intel_de_write(dev_priv, dss_ctl1_reg(old_crtc_state), 0);
> -		intel_de_write(dev_priv, dss_ctl2_reg(old_crtc_state), 0);
> +		intel_de_write(dev_priv, dss_ctl1_reg(crtc, old_crtc_state->cpu_transc=
oder), 0);
> +		intel_de_write(dev_priv, dss_ctl2_reg(crtc, old_crtc_state->cpu_transc=
oder), 0);
>  	}
>  }
>=20=20
> @@ -1199,7 +1195,7 @@ void intel_uncompressed_joiner_get_config(struct in=
tel_crtc_state *crtc_state)
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	u32 dss_ctl1;
>=20=20
> -	dss_ctl1 =3D intel_de_read(dev_priv, dss_ctl1_reg(crtc_state));
> +	dss_ctl1 =3D intel_de_read(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu=
_transcoder));
>  	if (dss_ctl1 & UNCOMPRESSED_JOINER_MASTER) {
>  		crtc_state->bigjoiner =3D true;
>  		crtc_state->bigjoiner_linked_crtc =3D intel_dsc_get_bigjoiner_secondar=
y(crtc);
> @@ -1214,9 +1210,10 @@ void intel_uncompressed_joiner_get_config(struct i=
ntel_crtc_state *crtc_state)
>=20=20
>  void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	struct drm_dsc_config *vdsc_cfg =3D &crtc_state->dsc.config;
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
>  	enum pipe pipe =3D crtc->pipe;
>  	enum intel_display_power_domain power_domain;
>  	intel_wakeref_t wakeref;
> @@ -1225,14 +1222,14 @@ void intel_dsc_get_config(struct intel_crtc_state=
 *crtc_state)
>  	if (!intel_dsc_source_support(crtc_state))
>  		return;
>=20=20
> -	power_domain =3D intel_dsc_power_domain(crtc_state);
> +	power_domain =3D intel_dsc_power_domain(crtc, cpu_transcoder);
>=20=20
>  	wakeref =3D intel_display_power_get_if_enabled(dev_priv, power_domain);
>  	if (!wakeref)
>  		return;
>=20=20
> -	dss_ctl1 =3D intel_de_read(dev_priv, dss_ctl1_reg(crtc_state));
> -	dss_ctl2 =3D intel_de_read(dev_priv, dss_ctl2_reg(crtc_state));
> +	dss_ctl1 =3D intel_de_read(dev_priv, dss_ctl1_reg(crtc, cpu_transcoder)=
);
> +	dss_ctl2 =3D intel_de_read(dev_priv, dss_ctl2_reg(crtc, cpu_transcoder)=
);
>=20=20
>  	crtc_state->dsc.compression_enable =3D dss_ctl2 & LEFT_BRANCH_VDSC_ENAB=
LE;
>  	if (!crtc_state->dsc.compression_enable)
> @@ -1256,7 +1253,7 @@ void intel_dsc_get_config(struct intel_crtc_state *=
crtc_state)
>  	/* FIXME: add more state readout as needed */
>=20=20
>  	/* PPS1 */
> -	if (!is_pipe_dsc(crtc_state))
> +	if (!is_pipe_dsc(crtc, cpu_transcoder))
>  		val =3D intel_de_read(dev_priv, DSCA_PICTURE_PARAMETER_SET_1);
>  	else
>  		val =3D intel_de_read(dev_priv,
> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/=
i915/display/intel_vdsc.h
> index dfb1fd38deb4..0c5d80a572da 100644
> --- a/drivers/gpu/drm/i915/display/intel_vdsc.h
> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
> @@ -8,8 +8,10 @@
>=20=20
>  #include <linux/types.h>
>=20=20
> -struct intel_encoder;
> +enum transcoder;
> +struct intel_crtc;
>  struct intel_crtc_state;
> +struct intel_encoder;
>=20=20
>  bool intel_dsc_source_support(const struct intel_crtc_state *crtc_state);
>  void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crt=
c_state);
> @@ -21,7 +23,7 @@ int intel_dsc_compute_params(struct intel_encoder *enco=
der,
>  void intel_uncompressed_joiner_get_config(struct intel_crtc_state *crtc_=
state);
>  void intel_dsc_get_config(struct intel_crtc_state *crtc_state);
>  enum intel_display_power_domain
> -intel_dsc_power_domain(const struct intel_crtc_state *crtc_state);
> +intel_dsc_power_domain(struct intel_crtc *crtc, enum transcoder cpu_tran=
scoder);
>  struct intel_crtc *intel_dsc_get_bigjoiner_secondary(const struct intel_=
crtc *primary_crtc);
>=20=20
>  #endif /* __INTEL_VDSC_H__ */

--=20
Jani Nikula, Intel Open Source Graphics Center
