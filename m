Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FFB129BB0
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Dec 2019 00:01:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF14A6E4AB;
	Mon, 23 Dec 2019 23:01:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8B036E4AB
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 23:01:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 15:01:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="417397690"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga005.fm.intel.com with ESMTP; 23 Dec 2019 15:01:50 -0800
Date: Mon, 23 Dec 2019 15:01:50 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20191223230150.GM2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191223173244.30742-1-lucas.demarchi@intel.com>
 <20191223173244.30742-5-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223173244.30742-5-lucas.demarchi@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v3 04/10] drm/i915: prefer 3-letter acronym
 for skylake
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

On Mon, Dec 23, 2019 at 09:32:38AM -0800, Lucas De Marchi wrote:
> We are currently using a mix of platform name and acronym to name the
> functions. Let's prefer the acronym as it should be clear what platform
> it's about and it's shorter, so it doesn't go over 80 columns in a few
> cases. This converts skylake to skl where appropriate.
> =

> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> Acked-by: Jani Nikula <jani.nikula@linux.intel.com>
> Acked-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_display.c | 29 ++++++++++----------
>  drivers/gpu/drm/i915/display/intel_display.h |  2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  |  2 +-
>  drivers/gpu/drm/i915/display/vlv_dsi.c       |  2 +-
>  drivers/gpu/drm/i915/gt/intel_mocs.c         |  6 ++--
>  7 files changed, 22 insertions(+), 23 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i91=
5/display/icl_dsi.c
> index 006b1a297e6f..8435bc5a7a74 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1259,7 +1259,7 @@ static void gen11_dsi_post_disable(struct intel_enc=
oder *encoder,
>  =

>  	intel_dsc_disable(old_crtc_state);
>  =

> -	skylake_scaler_disable(old_crtc_state);
> +	skl_scaler_disable(old_crtc_state);
>  }
>  =

>  static enum drm_mode_status gen11_dsi_mode_valid(struct drm_connector *c=
onnector,
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i=
915/display/intel_ddi.c
> index d687c9503025..b52c31721755 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3896,7 +3896,7 @@ static void intel_ddi_post_disable(struct intel_enc=
oder *encoder,
>  	intel_dsc_disable(old_crtc_state);
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 9)
> -		skylake_scaler_disable(old_crtc_state);
> +		skl_scaler_disable(old_crtc_state);
>  	else
>  		ironlake_pfit_disable(old_crtc_state);
>  =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 14726a293171..18ac15df91c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -164,7 +164,7 @@ static void vlv_prepare_pll(struct intel_crtc *crtc,
>  			    const struct intel_crtc_state *pipe_config);
>  static void chv_prepare_pll(struct intel_crtc *crtc,
>  			    const struct intel_crtc_state *pipe_config);
> -static void skylake_pfit_enable(const struct intel_crtc_state *crtc_stat=
e);
> +static void skl_pfit_enable(const struct intel_crtc_state *crtc_state);
>  static void ironlake_pfit_enable(const struct intel_crtc_state *crtc_sta=
te);
>  static void intel_modeset_setup_hw_state(struct drm_device *dev,
>  					 struct drm_modeset_acquire_ctx *ctx);
> @@ -6001,7 +6001,7 @@ static int skl_update_scaler_plane(struct intel_crt=
c_state *crtc_state,
>  	return 0;
>  }
>  =

> -void skylake_scaler_disable(const struct intel_crtc_state *old_crtc_stat=
e)
> +void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(old_crtc_state->uapi.crtc);
>  	int i;
> @@ -6010,7 +6010,7 @@ void skylake_scaler_disable(const struct intel_crtc=
_state *old_crtc_state)
>  		skl_detach_scaler(crtc, i);
>  }
>  =

> -static void skylake_pfit_enable(const struct intel_crtc_state *crtc_stat=
e)
> +static void skl_pfit_enable(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -6844,7 +6844,7 @@ static void hsw_crtc_enable(struct intel_atomic_sta=
te *state,
>  		glk_pipe_scaler_clock_gating_wa(dev_priv, pipe, true);
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 9)
> -		skylake_pfit_enable(new_crtc_state);
> +		skl_pfit_enable(new_crtc_state);
>  	else
>  		ironlake_pfit_enable(new_crtc_state);
>  =

> @@ -10116,8 +10116,8 @@ static void ironlake_get_fdi_m_n_config(struct in=
tel_crtc *crtc,
>  				     &pipe_config->fdi_m_n, NULL);
>  }
>  =

> -static void skylake_get_pfit_config(struct intel_crtc *crtc,
> -				    struct intel_crtc_state *pipe_config)
> +static void skl_get_pfit_config(struct intel_crtc *crtc,
> +				struct intel_crtc_state *pipe_config)
>  {
>  	struct drm_device *dev =3D crtc->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> @@ -10148,8 +10148,8 @@ static void skylake_get_pfit_config(struct intel_=
crtc *crtc,
>  }
>  =

>  static void
> -skylake_get_initial_plane_config(struct intel_crtc *crtc,
> -				 struct intel_initial_plane_config *plane_config)
> +skl_get_initial_plane_config(struct intel_crtc *crtc,
> +			     struct intel_initial_plane_config *plane_config)
>  {
>  	struct drm_device *dev =3D crtc->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
> @@ -10517,9 +10517,8 @@ static void bxt_get_ddi_pll(struct drm_i915_priva=
te *dev_priv,
>  	pipe_config->shared_dpll =3D intel_get_shared_dpll_by_id(dev_priv, id);
>  }
>  =

> -static void skylake_get_ddi_pll(struct drm_i915_private *dev_priv,
> -				enum port port,
> -				struct intel_crtc_state *pipe_config)
> +static void skl_get_ddi_pll(struct drm_i915_private *dev_priv, enum port=
 port,
> +			    struct intel_crtc_state *pipe_config)
>  {
>  	enum intel_dpll_id id;
>  	u32 temp;
> @@ -10747,7 +10746,7 @@ static void hsw_get_ddi_port_state(struct intel_c=
rtc *crtc,
>  	else if (IS_CANNONLAKE(dev_priv))
>  		cannonlake_get_ddi_pll(dev_priv, port, pipe_config);
>  	else if (IS_GEN9_BC(dev_priv))
> -		skylake_get_ddi_pll(dev_priv, port, pipe_config);
> +		skl_get_ddi_pll(dev_priv, port, pipe_config);
>  	else if (IS_GEN9_LP(dev_priv))
>  		bxt_get_ddi_pll(dev_priv, port, pipe_config);
>  	else
> @@ -10922,7 +10921,7 @@ static bool hsw_get_pipe_config(struct intel_crtc=
 *crtc,
>  		power_domain_mask |=3D BIT_ULL(power_domain);
>  =

>  		if (INTEL_GEN(dev_priv) >=3D 9)
> -			skylake_get_pfit_config(crtc, pipe_config);
> +			skl_get_pfit_config(crtc, pipe_config);
>  		else
>  			ironlake_get_pfit_config(crtc, pipe_config);
>  	}
> @@ -14472,7 +14471,7 @@ static void intel_pipe_fastset(const struct intel=
_crtc_state *old_crtc_state,
>  		skl_detach_scalers(new_crtc_state);
>  =

>  		if (new_crtc_state->pch_pfit.enabled)
> -			skylake_pfit_enable(new_crtc_state);
> +			skl_pfit_enable(new_crtc_state);
>  	} else if (HAS_PCH_SPLIT(dev_priv)) {
>  		if (new_crtc_state->pch_pfit.enabled)
>  			ironlake_pfit_enable(new_crtc_state);
> @@ -16816,7 +16815,7 @@ void intel_init_display_hooks(struct drm_i915_pri=
vate *dev_priv)
>  	if (INTEL_GEN(dev_priv) >=3D 9) {
>  		dev_priv->display.get_pipe_config =3D hsw_get_pipe_config;
>  		dev_priv->display.get_initial_plane_config =3D
> -			skylake_get_initial_plane_config;
> +			skl_get_initial_plane_config;
>  		dev_priv->display.crtc_compute_clock =3D hsw_crtc_compute_clock;
>  		dev_priv->display.crtc_enable =3D hsw_crtc_enable;
>  		dev_priv->display.crtc_disable =3D hsw_crtc_disable;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 0fef9263cddc..921a584c3284 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -578,7 +578,7 @@ void intel_crtc_arm_fifo_underrun(struct intel_crtc *=
crtc,
>  =

>  u16 skl_scaler_calc_phase(int sub, int scale, bool chroma_center);
>  int skl_update_scaler_crtc(struct intel_crtc_state *crtc_state);
> -void skylake_scaler_disable(const struct intel_crtc_state *old_crtc_stat=
e);
> +void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
>  void ironlake_pfit_disable(const struct intel_crtc_state *old_crtc_state=
);
>  u32 glk_plane_color_ctl(const struct intel_crtc_state *crtc_state,
>  			const struct intel_plane_state *plane_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/dr=
m/i915/display/intel_dp_mst.c
> index 7aa0975c33b7..01b4608ab56c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -248,7 +248,7 @@ static void intel_mst_post_disable_dp(struct intel_en=
coder *encoder,
>  	intel_ddi_disable_transcoder_func(old_crtc_state);
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 9)
> -		skylake_scaler_disable(old_crtc_state);
> +		skl_scaler_disable(old_crtc_state);
>  	else
>  		ironlake_pfit_disable(old_crtc_state);
>  =

> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i91=
5/display/vlv_dsi.c
> index 21e820299107..70ab378803c4 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -895,7 +895,7 @@ static void intel_dsi_post_disable(struct intel_encod=
er *encoder,
>  	if (IS_GEN9_LP(dev_priv)) {
>  		intel_crtc_vblank_off(old_crtc_state);
>  =

> -		skylake_scaler_disable(old_crtc_state);
> +		skl_scaler_disable(old_crtc_state);
>  	}
>  =

>  	if (is_vid_mode(intel_dsi)) {
> diff --git a/drivers/gpu/drm/i915/gt/intel_mocs.c b/drivers/gpu/drm/i915/=
gt/intel_mocs.c
> index 893249ea48d4..cbdeda608359 100644
> --- a/drivers/gpu/drm/i915/gt/intel_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_mocs.c
> @@ -127,7 +127,7 @@ struct drm_i915_mocs_table {
>  		   LE_0_PAGETABLE | LE_TC_2_LLC_ELLC | LE_LRUM(3), \
>  		   L3_3_WB)
>  =

> -static const struct drm_i915_mocs_entry skylake_mocs_table[] =3D {
> +static const struct drm_i915_mocs_entry skl_mocs_table[] =3D {
>  	GEN9_MOCS_ENTRIES,
>  	MOCS_ENTRY(I915_MOCS_CACHED,
>  		   LE_3_WB | LE_TC_2_LLC_ELLC | LE_LRUM(3),
> @@ -292,9 +292,9 @@ static bool get_mocs_settings(const struct drm_i915_p=
rivate *i915,
>  		table->table =3D icelake_mocs_table;
>  		table->n_entries =3D GEN11_NUM_MOCS_ENTRIES;
>  	} else if (IS_GEN9_BC(i915) || IS_CANNONLAKE(i915)) {
> -		table->size  =3D ARRAY_SIZE(skylake_mocs_table);
> +		table->size  =3D ARRAY_SIZE(skl_mocs_table);
>  		table->n_entries =3D GEN9_NUM_MOCS_ENTRIES;
> -		table->table =3D skylake_mocs_table;
> +		table->table =3D skl_mocs_table;
>  	} else if (IS_GEN9_LP(i915)) {
>  		table->size  =3D ARRAY_SIZE(broxton_mocs_table);
>  		table->n_entries =3D GEN9_NUM_MOCS_ENTRIES;
> -- =

> 2.24.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
