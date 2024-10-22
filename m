Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BAD9A9C7B
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 10:26:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE2D110E60E;
	Tue, 22 Oct 2024 08:26:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ih9c6W+9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6B4A10E61B
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2024 08:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729585613; x=1761121613;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=Sx/eAf4IDyU9cHrY6iEgducJi3WqTSC9rko1hJ+oIJ0=;
 b=ih9c6W+9841HTRRazWv6N1mlvuKNacj37vs4NhVTWQ9npv/y2WblHSCk
 OD8fYrI6YR2DcYODuDPJD/lOBomJO8NTlAsy91v9XRd0TZCa/W0gpQwb3
 9da5bh2ppyB/JNaHM+tcNUmJ0q0ybqLgDoDGUw4iW2UcYLC+R6ULnEHaD
 6Q56r4bWnDP33/NavoZSR/ABOuowGHHDRVqUniUWrQDCte+i5e1816ANt
 iJAQtTmwL2/3NS6ShEDyGZJ2YiNI4hYDCcLcqHDeCGLd/+/eT7c1p54lq
 yC7GZORGyr5BgxxsP5j8LxxPAOy8eu8tIprdQxRdFAgmcQ922QqNT3QDH g==;
X-CSE-ConnectionGUID: NK6+mORlQnmYbLKSiZ6zgw==
X-CSE-MsgGUID: pNQIiPpBR7O52lIFIudrWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="32795304"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="32795304"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:26:53 -0700
X-CSE-ConnectionGUID: /Leoj1NPTdCr5Aqym8Bf+w==
X-CSE-MsgGUID: KyJG0IJvSNGWQeZ9KZyRVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="80203559"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 01:26:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 7/9] drm/i915/panel: Convert panel code to intel_display
In-Reply-To: <20241016143134.26903-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241016143134.26903-1-ville.syrjala@linux.intel.com>
 <20241016143134.26903-8-ville.syrjala@linux.intel.com>
Date: Tue, 22 Oct 2024 11:26:49 +0300
Message-ID: <878qugwnjq.fsf@intel.com>
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

On Wed, 16 Oct 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> struct intel_display will replace struct drm_i915_private as
> the main thing for display code. Convert the panel code to
> use it (as much as possible at this stage).
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  3 +-
>  drivers/gpu/drm/i915/display/intel_dpll.c     | 27 ++++++++----
>  drivers/gpu/drm/i915/display/intel_panel.c    | 44 +++++++++----------
>  drivers/gpu/drm/i915/display/intel_panel.h    |  4 +-
>  .../gpu/drm/i915/display/intel_pch_refclk.c   |  9 ++--
>  5 files changed, 47 insertions(+), 40 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/d=
rm/i915/display/intel_cx0_phy.c
> index f73d576fd99e..045ad6539c65 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2003,12 +2003,13 @@ intel_c10pll_tables_get(struct intel_crtc_state *=
crtc_state,
>  static void intel_c10pll_update_pll(struct intel_crtc_state *crtc_state,
>  				    struct intel_encoder *encoder)
>  {
> +	struct intel_display *display =3D to_intel_display(encoder);
>  	struct drm_i915_private *i915 =3D to_i915(encoder->base.dev);
>  	struct intel_cx0pll_state *pll_state =3D &crtc_state->dpll_hw_state.cx0=
pll;
>  	int i;
>=20=20
>  	if (intel_crtc_has_dp_encoder(crtc_state)) {
> -		if (intel_panel_use_ssc(i915)) {
> +		if (intel_panel_use_ssc(display)) {
>  			struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
>=20=20
>  			pll_state->ssc_enabled =3D
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/=
i915/display/intel_dpll.c
> index b679c5391fe6..c0a3c4b53b0a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -1003,6 +1003,7 @@ static u32 i9xx_dpll(const struct intel_crtc_state =
*crtc_state,
>  		     const struct dpll *clock,
>  		     const struct dpll *reduced_clock)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	u32 dpll;
> @@ -1061,7 +1062,7 @@ static u32 i9xx_dpll(const struct intel_crtc_state =
*crtc_state,
>  	if (crtc_state->sdvo_tv_clock)
>  		dpll |=3D PLL_REF_INPUT_TVCLKINBC;
>  	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS) &&
> -		 intel_panel_use_ssc(dev_priv))
> +		 intel_panel_use_ssc(display))
>  		dpll |=3D PLLB_REF_INPUT_SPREADSPECTRUMIN;
>  	else
>  		dpll |=3D PLL_REF_INPUT_DREFCLK;
> @@ -1095,6 +1096,7 @@ static u32 i8xx_dpll(const struct intel_crtc_state =
*crtc_state,
>  		     const struct dpll *clock,
>  		     const struct dpll *reduced_clock)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	u32 dpll;
> @@ -1131,7 +1133,7 @@ static u32 i8xx_dpll(const struct intel_crtc_state =
*crtc_state,
>  		dpll |=3D DPLL_DVO_2X_MODE;
>=20=20
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS) &&
> -	    intel_panel_use_ssc(dev_priv))
> +	    intel_panel_use_ssc(display))
>  		dpll |=3D PLLB_REF_INPUT_SPREADSPECTRUMIN;
>  	else
>  		dpll |=3D PLL_REF_INPUT_DREFCLK;
> @@ -1237,11 +1239,12 @@ static int mtl_crtc_compute_clock(struct intel_at=
omic_state *state,
>=20=20
>  static int ilk_fb_cb_factor(const struct intel_crtc_state *crtc_state)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>=20=20
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS) &&
> -	    ((intel_panel_use_ssc(i915) && i915->display.vbt.lvds_ssc_freq =3D=
=3D 100000) ||
> +	    ((intel_panel_use_ssc(display) && i915->display.vbt.lvds_ssc_freq =
=3D=3D 100000) ||
>  	     (HAS_PCH_IBX(i915) && intel_is_dual_link_lvds(i915))))
>  		return 25;
>=20=20
> @@ -1271,6 +1274,7 @@ static u32 ilk_dpll(const struct intel_crtc_state *=
crtc_state,
>  		    const struct dpll *clock,
>  		    const struct dpll *reduced_clock)
>  {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	u32 dpll;
> @@ -1332,7 +1336,7 @@ static u32 ilk_dpll(const struct intel_crtc_state *=
crtc_state,
>  	WARN_ON(reduced_clock->p2 !=3D clock->p2);
>=20=20
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS) &&
> -	    intel_panel_use_ssc(dev_priv))
> +	    intel_panel_use_ssc(display))
>  		dpll |=3D PLLB_REF_INPUT_SPREADSPECTRUMIN;
>  	else
>  		dpll |=3D PLL_REF_INPUT_DREFCLK;
> @@ -1356,6 +1360,7 @@ static void ilk_compute_dpll(struct intel_crtc_stat=
e *crtc_state,
>  static int ilk_crtc_compute_clock(struct intel_atomic_state *state,
>  				  struct intel_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(state);
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> @@ -1368,7 +1373,7 @@ static int ilk_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  		return 0;
>=20=20
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
> -		if (intel_panel_use_ssc(dev_priv)) {
> +		if (intel_panel_use_ssc(display)) {
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "using SSC reference clock of %d kHz\n",
>  				    dev_priv->display.vbt.lvds_ssc_freq);
> @@ -1532,6 +1537,7 @@ static int vlv_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  static int g4x_crtc_compute_clock(struct intel_atomic_state *state,
>  				  struct intel_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(state);
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> @@ -1539,7 +1545,7 @@ static int g4x_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  	int refclk =3D 96000;
>=20=20
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
> -		if (intel_panel_use_ssc(dev_priv)) {
> +		if (intel_panel_use_ssc(display)) {
>  			refclk =3D dev_priv->display.vbt.lvds_ssc_freq;
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "using SSC reference clock of %d kHz\n",
> @@ -1581,6 +1587,7 @@ static int g4x_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  static int pnv_crtc_compute_clock(struct intel_atomic_state *state,
>  				  struct intel_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(state);
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> @@ -1588,7 +1595,7 @@ static int pnv_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  	int refclk =3D 96000;
>=20=20
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
> -		if (intel_panel_use_ssc(dev_priv)) {
> +		if (intel_panel_use_ssc(display)) {
>  			refclk =3D dev_priv->display.vbt.lvds_ssc_freq;
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "using SSC reference clock of %d kHz\n",
> @@ -1619,6 +1626,7 @@ static int pnv_crtc_compute_clock(struct intel_atom=
ic_state *state,
>  static int i9xx_crtc_compute_clock(struct intel_atomic_state *state,
>  				   struct intel_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(state);
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> @@ -1626,7 +1634,7 @@ static int i9xx_crtc_compute_clock(struct intel_ato=
mic_state *state,
>  	int refclk =3D 96000;
>=20=20
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
> -		if (intel_panel_use_ssc(dev_priv)) {
> +		if (intel_panel_use_ssc(display)) {
>  			refclk =3D dev_priv->display.vbt.lvds_ssc_freq;
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "using SSC reference clock of %d kHz\n",
> @@ -1659,6 +1667,7 @@ static int i9xx_crtc_compute_clock(struct intel_ato=
mic_state *state,
>  static int i8xx_crtc_compute_clock(struct intel_atomic_state *state,
>  				   struct intel_crtc *crtc)
>  {
> +	struct intel_display *display =3D to_intel_display(state);
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc_state *crtc_state =3D
>  		intel_atomic_get_new_crtc_state(state, crtc);
> @@ -1666,7 +1675,7 @@ static int i8xx_crtc_compute_clock(struct intel_ato=
mic_state *state,
>  	int refclk =3D 48000;
>=20=20
>  	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_LVDS)) {
> -		if (intel_panel_use_ssc(dev_priv)) {
> +		if (intel_panel_use_ssc(display)) {
>  			refclk =3D dev_priv->display.vbt.lvds_ssc_freq;
>  			drm_dbg_kms(&dev_priv->drm,
>  				    "using SSC reference clock of %d kHz\n",
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index d66ce8537f7d..7fa0a54a3d3a 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -45,10 +45,8 @@
>  #include "intel_quirks.h"
>  #include "intel_vrr.h"
>=20=20
> -bool intel_panel_use_ssc(struct drm_i915_private *i915)
> +bool intel_panel_use_ssc(struct intel_display *display)
>  {
> -	struct intel_display *display =3D &i915->display;
> -
>  	if (display->params.panel_use_ssc >=3D 0)
>  		return display->params.panel_use_ssc !=3D 0;
>  	return display->vbt.lvds_use_ssc &&
> @@ -252,7 +250,7 @@ int intel_panel_compute_config(struct intel_connector=
 *connector,
>=20=20
>  static void intel_panel_add_edid_alt_fixed_modes(struct intel_connector =
*connector)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	const struct drm_display_mode *preferred_mode =3D
>  		intel_panel_preferred_fixed_mode(connector);
>  	struct drm_display_mode *mode, *next;
> @@ -261,7 +259,7 @@ static void intel_panel_add_edid_alt_fixed_modes(stru=
ct intel_connector *connect
>  		if (!is_alt_fixed_mode(mode, preferred_mode))
>  			continue;
>=20=20
> -		drm_dbg_kms(&dev_priv->drm,
> +		drm_dbg_kms(display->drm,
>  			    "[CONNECTOR:%d:%s] using alternate EDID fixed mode: " DRM_MODE_FM=
T "\n",
>  			    connector->base.base.id, connector->base.name,
>  			    DRM_MODE_ARG(mode));
> @@ -272,7 +270,7 @@ static void intel_panel_add_edid_alt_fixed_modes(stru=
ct intel_connector *connect
>=20=20
>  static void intel_panel_add_edid_preferred_mode(struct intel_connector *=
connector)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct drm_display_mode *scan, *fixed_mode =3D NULL;
>=20=20
>  	if (list_empty(&connector->base.probed_modes))
> @@ -290,7 +288,7 @@ static void intel_panel_add_edid_preferred_mode(struc=
t intel_connector *connecto
>  		fixed_mode =3D list_first_entry(&connector->base.probed_modes,
>  					      typeof(*fixed_mode), head);
>=20=20
> -	drm_dbg_kms(&dev_priv->drm,
> +	drm_dbg_kms(display->drm,
>  		    "[CONNECTOR:%d:%s] using %s EDID fixed mode: " DRM_MODE_FMT "\n",
>  		    connector->base.base.id, connector->base.name,
>  		    fixed_mode->type & DRM_MODE_TYPE_PREFERRED ? "preferred" : "first",
> @@ -303,16 +301,16 @@ static void intel_panel_add_edid_preferred_mode(str=
uct intel_connector *connecto
>=20=20
>  static void intel_panel_destroy_probed_modes(struct intel_connector *con=
nector)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct drm_display_mode *mode, *next;
>=20=20
>  	list_for_each_entry_safe(mode, next, &connector->base.probed_modes, hea=
d) {
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    "[CONNECTOR:%d:%s] not using EDID mode: " DRM_MODE_FMT "\n",
>  			    connector->base.base.id, connector->base.name,
>  			    DRM_MODE_ARG(mode));
>  		list_del(&mode->head);
> -		drm_mode_destroy(&i915->drm, mode);
> +		drm_mode_destroy(display->drm, mode);
>  	}
>  }
>=20=20
> @@ -329,7 +327,7 @@ static void intel_panel_add_fixed_mode(struct intel_c=
onnector *connector,
>  				       struct drm_display_mode *fixed_mode,
>  				       const char *type)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	struct drm_display_info *info =3D &connector->base.display_info;
>=20=20
>  	if (!fixed_mode)
> @@ -340,7 +338,7 @@ static void intel_panel_add_fixed_mode(struct intel_c=
onnector *connector,
>  	info->width_mm =3D fixed_mode->width_mm;
>  	info->height_mm =3D fixed_mode->height_mm;
>=20=20
> -	drm_dbg_kms(&i915->drm, "[CONNECTOR:%d:%s] using %s fixed mode: " DRM_M=
ODE_FMT "\n",
> +	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] using %s fixed mode: " DRM=
_MODE_FMT "\n",
>  		    connector->base.base.id, connector->base.name, type,
>  		    DRM_MODE_ARG(fixed_mode));
>=20=20
> @@ -349,7 +347,7 @@ static void intel_panel_add_fixed_mode(struct intel_c=
onnector *connector,
>=20=20
>  void intel_panel_add_vbt_lfp_fixed_mode(struct intel_connector *connecto=
r)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	const struct drm_display_mode *mode;
>=20=20
>  	mode =3D connector->panel.vbt.lfp_vbt_mode;
> @@ -357,13 +355,13 @@ void intel_panel_add_vbt_lfp_fixed_mode(struct inte=
l_connector *connector)
>  		return;
>=20=20
>  	intel_panel_add_fixed_mode(connector,
> -				   drm_mode_duplicate(&i915->drm, mode),
> +				   drm_mode_duplicate(display->drm, mode),
>  				   "VBT LFP");
>  }
>=20=20
>  void intel_panel_add_vbt_sdvo_fixed_mode(struct intel_connector *connect=
or)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(connector->base.dev);
> +	struct intel_display *display =3D to_intel_display(connector);
>  	const struct drm_display_mode *mode;
>=20=20
>  	mode =3D connector->panel.vbt.sdvo_lvds_vbt_mode;
> @@ -371,7 +369,7 @@ void intel_panel_add_vbt_sdvo_fixed_mode(struct intel=
_connector *connector)
>  		return;
>=20=20
>  	intel_panel_add_fixed_mode(connector,
> -				   drm_mode_duplicate(&i915->drm, mode),
> +				   drm_mode_duplicate(display->drm, mode),
>  				   "VBT SDVO");
>  }
>=20=20
> @@ -819,7 +817,6 @@ static int gmch_panel_fitting(struct intel_crtc_state=
 *crtc_state,
>  {
>  	struct intel_display *display =3D to_intel_display(crtc_state);
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	u32 pfit_control =3D 0, pfit_pgm_ratios =3D 0, border =3D 0;
>  	struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjusted_mod=
e;
>  	int pipe_src_w =3D drm_rect_width(&crtc_state->pipe_src);
> @@ -861,7 +858,7 @@ static int gmch_panel_fitting(struct intel_crtc_state=
 *crtc_state,
>  		break;
>  	case DRM_MODE_SCALE_ASPECT:
>  		/* Scale but preserve the aspect ratio */
> -		if (DISPLAY_VER(dev_priv) >=3D 4)
> +		if (DISPLAY_VER(display) >=3D 4)
>  			i965_scale_aspect(crtc_state, &pfit_control);
>  		else
>  			i9xx_scale_aspect(crtc_state, &pfit_control,
> @@ -875,7 +872,7 @@ static int gmch_panel_fitting(struct intel_crtc_state=
 *crtc_state,
>  		if (pipe_src_h !=3D adjusted_mode->crtc_vdisplay ||
>  		    pipe_src_w !=3D adjusted_mode->crtc_hdisplay) {
>  			pfit_control |=3D PFIT_ENABLE;
> -			if (DISPLAY_VER(dev_priv) >=3D 4)
> +			if (DISPLAY_VER(display) >=3D 4)
>  				pfit_control |=3D PFIT_SCALING_AUTO;
>  			else
>  				pfit_control |=3D (PFIT_VERT_AUTO_SCALE |
> @@ -891,7 +888,7 @@ static int gmch_panel_fitting(struct intel_crtc_state=
 *crtc_state,
>=20=20
>  	/* 965+ wants fuzzy fitting */
>  	/* FIXME: handle multiple panels by failing gracefully */
> -	if (DISPLAY_VER(dev_priv) >=3D 4)
> +	if (DISPLAY_VER(display) >=3D 4)
>  		pfit_control |=3D PFIT_PIPE(crtc->pipe) | PFIT_FILTER_FUZZY;
>=20=20
>  out:
> @@ -901,7 +898,7 @@ static int gmch_panel_fitting(struct intel_crtc_state=
 *crtc_state,
>  	}
>=20=20
>  	/* Make sure pre-965 set dither correctly for 18bpp panels. */
> -	if (DISPLAY_VER(dev_priv) < 4 && crtc_state->pipe_bpp =3D=3D 18)
> +	if (DISPLAY_VER(display) < 4 && crtc_state->pipe_bpp =3D=3D 18)
>  		pfit_control |=3D PFIT_PANEL_8TO6_DITHER_ENABLE;
>=20=20
>  	crtc_state->gmch_pfit.control =3D pfit_control;
> @@ -917,10 +914,9 @@ static int gmch_panel_fitting(struct intel_crtc_stat=
e *crtc_state,
>  int intel_panel_fitting(struct intel_crtc_state *crtc_state,
>  			const struct drm_connector_state *conn_state)
>  {
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct intel_display *display =3D to_intel_display(crtc_state);
>=20=20
> -	if (HAS_GMCH(i915))
> +	if (HAS_GMCH(display))
>  		return gmch_panel_fitting(crtc_state, conn_state);
>  	else
>  		return pch_panel_fitting(crtc_state, conn_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm=
/i915/display/intel_panel.h
> index 15a8c897b33f..d6dd88473555 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -14,9 +14,9 @@ struct drm_connector;
>  struct drm_connector_state;
>  struct drm_display_mode;
>  struct drm_edid;
> -struct drm_i915_private;
>  struct intel_connector;
>  struct intel_crtc_state;
> +struct intel_display;
>  struct intel_encoder;
>=20=20
>  void intel_panel_init_alloc(struct intel_connector *connector);
> @@ -25,7 +25,7 @@ int intel_panel_init(struct intel_connector *connector,
>  void intel_panel_fini(struct intel_connector *connector);
>  enum drm_connector_status
>  intel_panel_detect(struct drm_connector *connector, bool force);
> -bool intel_panel_use_ssc(struct drm_i915_private *i915);
> +bool intel_panel_use_ssc(struct intel_display *display);
>  const struct drm_display_mode *
>  intel_panel_preferred_fixed_mode(struct intel_connector *connector);
>  const struct drm_display_mode *
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gp=
u/drm/i915/display/intel_pch_refclk.c
> index 713cfba71475..84c55971e91a 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
> @@ -491,6 +491,7 @@ static void lpt_init_pch_refclk(struct drm_i915_priva=
te *dev_priv)
>=20=20
>  static void ilk_init_pch_refclk(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_display *display =3D &dev_priv->display;
>  	struct intel_encoder *encoder;
>  	struct intel_shared_dpll *pll;
>  	int i;
> @@ -572,11 +573,11 @@ static void ilk_init_pch_refclk(struct drm_i915_pri=
vate *dev_priv)
>  	if (has_panel) {
>  		final |=3D DREF_SSC_SOURCE_ENABLE;
>=20=20
> -		if (intel_panel_use_ssc(dev_priv) && can_ssc)
> +		if (intel_panel_use_ssc(display) && can_ssc)
>  			final |=3D DREF_SSC1_ENABLE;
>=20=20
>  		if (has_cpu_edp) {
> -			if (intel_panel_use_ssc(dev_priv) && can_ssc)
> +			if (intel_panel_use_ssc(display) && can_ssc)
>  				final |=3D DREF_CPU_SOURCE_OUTPUT_DOWNSPREAD;
>  			else
>  				final |=3D DREF_CPU_SOURCE_OUTPUT_NONSPREAD;
> @@ -604,7 +605,7 @@ static void ilk_init_pch_refclk(struct drm_i915_priva=
te *dev_priv)
>  		val |=3D DREF_SSC_SOURCE_ENABLE;
>=20=20
>  		/* SSC must be turned on before enabling the CPU output  */
> -		if (intel_panel_use_ssc(dev_priv) && can_ssc) {
> +		if (intel_panel_use_ssc(display) && can_ssc) {
>  			drm_dbg_kms(&dev_priv->drm, "Using SSC on panel\n");
>  			val |=3D DREF_SSC1_ENABLE;
>  		} else {
> @@ -620,7 +621,7 @@ static void ilk_init_pch_refclk(struct drm_i915_priva=
te *dev_priv)
>=20=20
>  		/* Enable CPU source on CPU attached eDP */
>  		if (has_cpu_edp) {
> -			if (intel_panel_use_ssc(dev_priv) && can_ssc) {
> +			if (intel_panel_use_ssc(display) && can_ssc) {
>  				drm_dbg_kms(&dev_priv->drm,
>  					    "Using SSC on eDP\n");
>  				val |=3D DREF_CPU_SOURCE_OUTPUT_DOWNSPREAD;

--=20
Jani Nikula, Intel
