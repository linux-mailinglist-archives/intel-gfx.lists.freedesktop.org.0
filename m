Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A7986CCF9
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Feb 2024 16:29:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29F0810E49B;
	Thu, 29 Feb 2024 15:29:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gGD8JBFl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4238A10E491
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Feb 2024 15:29:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709220564; x=1740756564;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=XWvPYQNRH5XV8x0WJc0cCsDRzmQycKQN4Ukmy7Y2gJ8=;
 b=gGD8JBFlMm3RIXvlSlKX5ZBMmF9zxYu9DMZFjAsuAIjDike//sdPu7KQ
 aBv2BBYgi4E9gdLMznk8ThxIq+reqQ3z42L/1788eHmCvFTBKyKukqhtd
 CPXfynmisVZge/cy8pvQvMJpzA+TRfIDmeK4X9edMzeHFgh3lLss7s2rz
 nsEMO2vm6N8enODEw67AousoR6X38U0apUq3RaHDq/v7xdjztAYs1Txbj
 CKlfaLtKNafNVteIDeQbb6NARGXRnXs40mk1pQhx/aGXITqBzWKIcd7Oj
 3VvHmol7+8f4goKNH2VFe7GLqLHp0eeXa/0XbmJjdwVCuHLppD+F24F0X Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="7476212"
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="7476212"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 07:29:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,194,1705392000"; 
   d="scan'208";a="8099754"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Feb 2024 07:29:22 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 12/12] drm/i915: Create the printer only once in
 intel_pipe_config_compare()
In-Reply-To: <20240215164055.30585-13-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240215164055.30585-1-ville.syrjala@linux.intel.com>
 <20240215164055.30585-13-ville.syrjala@linux.intel.com>
Date: Thu, 29 Feb 2024 17:29:19 +0200
Message-ID: <87h6hr70hc.fsf@intel.com>
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

On Thu, 15 Feb 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Create the drm_printer at the start of intel_pipe_config_compare()
> and pass it on to all the mismatch() functions.

Nice!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 101 +++++++++----------
>  1 file changed, 46 insertions(+), 55 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 26580d4aef2d..69c9693dcc8d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4787,11 +4787,11 @@ intel_compare_buffer(const u8 *a, const u8 *b, si=
ze_t len)
>  	return memcmp(a, b, len) =3D=3D 0;
>  }
>=20=20
> -static void __printf(4, 5)
> -pipe_config_mismatch(bool fastset, const struct intel_crtc *crtc,
> +static void __printf(5, 6)
> +pipe_config_mismatch(struct drm_printer *p, bool fastset,
> +		     const struct intel_crtc *crtc,
>  		     const char *name, const char *format, ...)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	struct va_format vaf;
>  	va_list args;
>=20=20
> @@ -4800,65 +4800,55 @@ pipe_config_mismatch(bool fastset, const struct i=
ntel_crtc *crtc,
>  	vaf.va =3D &args;
>=20=20
>  	if (fastset)
> -		drm_dbg_kms(&i915->drm,
> -			    "[CRTC:%d:%s] fastset requirement not met in %s %pV\n",
> -			    crtc->base.base.id, crtc->base.name, name, &vaf);
> +		drm_printf(p, "[CRTC:%d:%s] fastset requirement not met in %s %pV\n",
> +			   crtc->base.base.id, crtc->base.name, name, &vaf);
>  	else
> -		drm_err(&i915->drm, "[CRTC:%d:%s] mismatch in %s %pV\n",
> -			crtc->base.base.id, crtc->base.name, name, &vaf);
> +		drm_printf(p, "[CRTC:%d:%s] mismatch in %s %pV\n",
> +			   crtc->base.base.id, crtc->base.name, name, &vaf);
>=20=20
>  	va_end(args);
>  }
>=20=20
>  static void
> -pipe_config_infoframe_mismatch(bool fastset, const struct intel_crtc *cr=
tc,
> +pipe_config_infoframe_mismatch(struct drm_printer *p, bool fastset,
> +			       const struct intel_crtc *crtc,
>  			       const char *name,
>  			       const union hdmi_infoframe *a,
>  			       const union hdmi_infoframe *b)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> -	struct drm_printer p;
>  	const char *loglevel;
>=20=20
>  	if (fastset) {
>  		if (!drm_debug_enabled(DRM_UT_KMS))
>  			return;
>=20=20
> -		p =3D drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
>  		loglevel =3D KERN_DEBUG;
>  	} else {
> -		p =3D drm_err_printer(&i915->drm, NULL);
>  		loglevel =3D KERN_ERR;
>  	}
>=20=20
> -	pipe_config_mismatch(fastset, crtc, name, "infoframe");
> +	pipe_config_mismatch(p, fastset, crtc, name, "infoframe");
>=20=20
> -	drm_printf(&p, "expected:\n");
> +	drm_printf(p, "expected:\n");
>  	hdmi_infoframe_log(loglevel, i915->drm.dev, a);
> -	drm_printf(&p, "found:\n");
> +	drm_printf(p, "found:\n");
>  	hdmi_infoframe_log(loglevel, i915->drm.dev, b);
>  }
>=20=20
>  static void
> -pipe_config_dp_vsc_sdp_mismatch(bool fastset, const struct intel_crtc *c=
rtc,
> +pipe_config_dp_vsc_sdp_mismatch(struct drm_printer *p, bool fastset,
> +				const struct intel_crtc *crtc,
>  				const char *name,
>  				const struct drm_dp_vsc_sdp *a,
>  				const struct drm_dp_vsc_sdp *b)
>  {
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> -	struct drm_printer p;
> +	pipe_config_mismatch(p, fastset, crtc, name, "dp sdp");
>=20=20
> -	if (fastset)
> -		p =3D drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
> -	else
> -		p =3D drm_err_printer(&i915->drm, NULL);
> -
> -	pipe_config_mismatch(fastset, crtc, name, "dp sdp");
> -
> -	drm_printf(&p, "expected:\n");
> -	drm_dp_vsc_sdp_log(&p, a);
> -	drm_printf(&p, "found:\n");
> -	drm_dp_vsc_sdp_log(&p, b);
> +	drm_printf(p, "expected:\n");
> +	drm_dp_vsc_sdp_log(p, a);
> +	drm_printf(p, "found:\n");
> +	drm_dp_vsc_sdp_log(p, b);
>  }
>=20=20
>  /* Returns the length up to and including the last differing byte */
> @@ -4876,7 +4866,8 @@ memcmp_diff_len(const u8 *a, const u8 *b, size_t le=
n)
>  }
>=20=20
>  static void
> -pipe_config_buffer_mismatch(bool fastset, const struct intel_crtc *crtc,
> +pipe_config_buffer_mismatch(struct drm_printer *p, bool fastset,
> +			    const struct intel_crtc *crtc,
>  			    const char *name,
>  			    const u8 *a, const u8 *b, size_t len)
>  {
> @@ -4891,7 +4882,7 @@ pipe_config_buffer_mismatch(bool fastset, const str=
uct intel_crtc *crtc,
>  		loglevel =3D KERN_ERR;
>  	}
>=20=20
> -	pipe_config_mismatch(fastset, crtc, name, "buffer");
> +	pipe_config_mismatch(p, fastset, crtc, name, "buffer");
>=20=20
>  	/* only dump up to the last difference */
>  	len =3D memcmp_diff_len(a, b, len);
> @@ -4903,26 +4894,20 @@ pipe_config_buffer_mismatch(bool fastset, const s=
truct intel_crtc *crtc,
>  }
>=20=20
>  static void
> -pipe_config_pll_mismatch(bool fastset,
> +pipe_config_pll_mismatch(struct drm_printer *p, bool fastset,
>  			 const struct intel_crtc *crtc,
>  			 const char *name,
>  			 const struct intel_dpll_hw_state *a,
>  			 const struct intel_dpll_hw_state *b)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> -	struct drm_printer p;
>=20=20
> -	if (fastset)
> -		p =3D drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
> -	else
> -		p =3D drm_err_printer(&i915->drm, NULL);
> +	pipe_config_mismatch(p, fastset, crtc, name, " "); /* stupid -Werror=3D=
format-zero-length */
>=20=20
> -	pipe_config_mismatch(fastset, crtc, name, " "); /* stupid -Werror=3Dfor=
mat-zero-length */
> -
> -	drm_dbg_kms(&i915->drm, "expected:\n");
> -	intel_dpll_dump_hw_state(i915, &p, a);
> -	drm_dbg_kms(&i915->drm, "found:\n");
> -	intel_dpll_dump_hw_state(i915, &p, b);
> +	drm_printf(p, "expected:\n");
> +	intel_dpll_dump_hw_state(i915, p, a);
> +	drm_printf(p, "found:\n");
> +	intel_dpll_dump_hw_state(i915, p, b);
>  }
>=20=20
>  bool
> @@ -4932,13 +4917,19 @@ intel_pipe_config_compare(const struct intel_crtc=
_state *current_config,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(current_config->uapi.crtc=
->dev);
>  	struct intel_crtc *crtc =3D to_intel_crtc(pipe_config->uapi.crtc);
> +	struct drm_printer p;
>  	bool ret =3D true;
>=20=20
> +	if (fastset)
> +		p =3D drm_dbg_printer(&dev_priv->drm, DRM_UT_KMS, NULL);
> +	else
> +		p =3D drm_err_printer(&dev_priv->drm, NULL);
> +
>  #define PIPE_CONF_CHECK_X(name) do { \
>  	if (current_config->name !=3D pipe_config->name) { \
>  		BUILD_BUG_ON_MSG(__same_type(current_config->name, bool), \
>  				 __stringify(name) " is bool");	\
> -		pipe_config_mismatch(fastset, crtc, __stringify(name), \
> +		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
>  				     "(expected 0x%08x, found 0x%08x)", \
>  				     current_config->name, \
>  				     pipe_config->name); \
> @@ -4950,7 +4941,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  	if ((current_config->name & (mask)) !=3D (pipe_config->name & (mask))) =
{ \
>  		BUILD_BUG_ON_MSG(__same_type(current_config->name, bool), \
>  				 __stringify(name) " is bool");	\
> -		pipe_config_mismatch(fastset, crtc, __stringify(name), \
> +		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
>  				     "(expected 0x%08x, found 0x%08x)", \
>  				     current_config->name & (mask), \
>  				     pipe_config->name & (mask)); \
> @@ -4962,7 +4953,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  	if (current_config->name !=3D pipe_config->name) { \
>  		BUILD_BUG_ON_MSG(__same_type(current_config->name, bool), \
>  				 __stringify(name) " is bool");	\
> -		pipe_config_mismatch(fastset, crtc, __stringify(name), \
> +		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
>  				     "(expected %i, found %i)", \
>  				     current_config->name, \
>  				     pipe_config->name); \
> @@ -4974,7 +4965,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  	if (current_config->name !=3D pipe_config->name) { \
>  		BUILD_BUG_ON_MSG(!__same_type(current_config->name, bool), \
>  				 __stringify(name) " is not bool");	\
> -		pipe_config_mismatch(fastset, crtc,  __stringify(name), \
> +		pipe_config_mismatch(&p, fastset, crtc,  __stringify(name), \
>  				     "(expected %s, found %s)", \
>  				     str_yes_no(current_config->name), \
>  				     str_yes_no(pipe_config->name)); \
> @@ -4984,7 +4975,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>=20=20
>  #define PIPE_CONF_CHECK_P(name) do { \
>  	if (current_config->name !=3D pipe_config->name) { \
> -		pipe_config_mismatch(fastset, crtc, __stringify(name), \
> +		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
>  				     "(expected %p, found %p)", \
>  				     current_config->name, \
>  				     pipe_config->name); \
> @@ -4995,7 +4986,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  #define PIPE_CONF_CHECK_M_N(name) do { \
>  	if (!intel_compare_link_m_n(&current_config->name, \
>  				    &pipe_config->name)) { \
> -		pipe_config_mismatch(fastset, crtc, __stringify(name), \
> +		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
>  				     "(expected tu %i data %i/%i link %i/%i, " \
>  				     "found tu %i, data %i/%i link %i/%i)", \
>  				     current_config->name.tu, \
> @@ -5015,7 +5006,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  #define PIPE_CONF_CHECK_PLL(name) do { \
>  	if (!intel_dpll_compare_hw_state(dev_priv, &current_config->name, \
>  					 &pipe_config->name)) { \
> -		pipe_config_pll_mismatch(fastset, crtc, __stringify(name), \
> +		pipe_config_pll_mismatch(&p, fastset, crtc, __stringify(name), \
>  					 &current_config->name, \
>  					 &pipe_config->name); \
>  		ret =3D false; \
> @@ -5048,7 +5039,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>=20=20
>  #define PIPE_CONF_CHECK_FLAGS(name, mask) do { \
>  	if ((current_config->name ^ pipe_config->name) & (mask)) { \
> -		pipe_config_mismatch(fastset, crtc, __stringify(name), \
> +		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
>  				     "(%x) (expected %i, found %i)", \
>  				     (mask), \
>  				     current_config->name & (mask), \
> @@ -5060,7 +5051,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  #define PIPE_CONF_CHECK_INFOFRAME(name) do { \
>  	if (!intel_compare_infoframe(&current_config->infoframes.name, \
>  				     &pipe_config->infoframes.name)) { \
> -		pipe_config_infoframe_mismatch(fastset, crtc, __stringify(name), \
> +		pipe_config_infoframe_mismatch(&p, fastset, crtc, __stringify(name), \
>  					       &current_config->infoframes.name, \
>  					       &pipe_config->infoframes.name); \
>  		ret =3D false; \
> @@ -5070,7 +5061,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  #define PIPE_CONF_CHECK_DP_VSC_SDP(name) do { \
>  	if (!intel_compare_dp_vsc_sdp(&current_config->infoframes.name, \
>  				      &pipe_config->infoframes.name)) { \
> -		pipe_config_dp_vsc_sdp_mismatch(fastset, crtc, __stringify(name), \
> +		pipe_config_dp_vsc_sdp_mismatch(&p, fastset, crtc, __stringify(name), \
>  						&current_config->infoframes.name, \
>  						&pipe_config->infoframes.name); \
>  		ret =3D false; \
> @@ -5081,7 +5072,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  	BUILD_BUG_ON(sizeof(current_config->name) !=3D (len)); \
>  	BUILD_BUG_ON(sizeof(pipe_config->name) !=3D (len)); \
>  	if (!intel_compare_buffer(current_config->name, pipe_config->name, (len=
))) { \
> -		pipe_config_buffer_mismatch(fastset, crtc, __stringify(name), \
> +		pipe_config_buffer_mismatch(&p, fastset, crtc, __stringify(name), \
>  					    current_config->name, \
>  					    pipe_config->name, \
>  					    (len)); \
> @@ -5094,7 +5085,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  	    !intel_color_lut_equal(current_config, \
>  				   current_config->lut, pipe_config->lut, \
>  				   is_pre_csc_lut)) {	\
> -		pipe_config_mismatch(fastset, crtc, __stringify(lut), \
> +		pipe_config_mismatch(&p, fastset, crtc, __stringify(lut), \
>  				     "hw_state doesn't match sw_state"); \
>  		ret =3D false; \
>  	} \

--=20
Jani Nikula, Intel
