Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66A1F4E9450
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 13:26:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8906410E113;
	Mon, 28 Mar 2022 11:26:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F4A410E113
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Mar 2022 11:26:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648466801; x=1680002801;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=BA8xd48IMfDBJpGrFcIZnEaYL7gfBFcfDFkrq96P40E=;
 b=lbu01BQFMFht5BzrK82jMq0Wvb/C/LQSnQ28N16qab7+jGSYmyInP4wg
 r6gxQv5JK8sVo3brcHTZWg6DimuiCt49cMbnuAc7H5Nn/rpPfgV3BA/rV
 YFG4lU7aCR0NGsryw33yH2xgi6nKAaPfF/kFIyJOaogaCBYm2n7Zup8ms
 Ekk/eZW1kiGwPRSLfI5Fgv4UGDTjpdzopSUR894WQ9kwBdnYeCLSiifwq
 qOj6eQL3lqL/VJAAGgnzl3hdtV59sP1kqGZdVv+NAnMi6ZtNCLW9MmEQf
 osp9zcaqjdGdv8E3Tf9bd2OrSDi2sF6zFFYmVUBVR2hM96XIGY6L8bsyA Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10299"; a="322160509"
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="322160509"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:26:41 -0700
X-IronPort-AV: E=Sophos;i="5.90,217,1643702400"; d="scan'208";a="563567454"
Received: from aysivtso-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.62.56])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 04:26:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220323182935.4701-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
 <20220323182935.4701-3-ville.syrjala@linux.intel.com>
Date: Mon, 28 Mar 2022 14:26:30 +0300
Message-ID: <8735j2fhcp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/9] drm/i915: Use
 DRM_MODE_FMT+DRM_MODE_ARG()
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

On Wed, 23 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Replace all drm_mode_debug_printmodeline() calls with
> DRM_MODE_FMT+DRM_MODE_ARG(). Makes the debug output a bit more
> terse in places where we previously had a newline in the precedeing
> drm_dbg_kms(), and avoids anything else sneaking in between the two
> printk()s in all cases.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c    | 12 +++++-----
>  drivers/gpu/drm/i915/display/intel_display.c | 12 +++++-----
>  drivers/gpu/drm/i915/display/intel_dp.c      |  6 ++---
>  drivers/gpu/drm/i915/display/intel_dvo.c     |  4 ++--
>  drivers/gpu/drm/i915/display/intel_lvds.c    |  4 ++--
>  drivers/gpu/drm/i915/display/intel_panel.c   | 24 ++++++++++----------
>  drivers/gpu/drm/i915/display/intel_tv.c      | 12 +++++-----
>  7 files changed, 37 insertions(+), 37 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/=
i915/display/intel_bios.c
> index c7afe19dd44a..3f3e8ccd9026 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -306,8 +306,8 @@ parse_lfp_panel_dtd(struct drm_i915_private *i915,
>  	i915->vbt.lfp_lvds_vbt_mode =3D panel_fixed_mode;
>=20=20
>  	drm_dbg_kms(&i915->drm,
> -		    "Found panel mode in BIOS VBT legacy lfp table:\n");
> -	drm_mode_debug_printmodeline(panel_fixed_mode);
> +		    "Found panel mode in BIOS VBT legacy lfp table: " DRM_MODE_FMT "\n=
",
> +		    DRM_MODE_ARG(panel_fixed_mode));
>=20=20
>  	fp_timing =3D get_lvds_fp_timing(bdb, lvds_lfp_data,
>  				       lvds_lfp_data_ptrs,
> @@ -397,8 +397,8 @@ parse_generic_dtd(struct drm_i915_private *i915,
>  		panel_fixed_mode->flags |=3D DRM_MODE_FLAG_NVSYNC;
>=20=20
>  	drm_dbg_kms(&i915->drm,
> -		    "Found panel mode in BIOS VBT generic dtd table:\n");
> -	drm_mode_debug_printmodeline(panel_fixed_mode);
> +		    "Found panel mode in BIOS VBT generic dtd table: " DRM_MODE_FMT "\=
n",
> +		    DRM_MODE_ARG(panel_fixed_mode));
>=20=20
>  	i915->vbt.lfp_lvds_vbt_mode =3D panel_fixed_mode;
>  }
> @@ -551,8 +551,8 @@ parse_sdvo_panel_data(struct drm_i915_private *i915,
>  	i915->vbt.sdvo_lvds_vbt_mode =3D panel_fixed_mode;
>=20=20
>  	drm_dbg_kms(&i915->drm,
> -		    "Found SDVO panel mode in BIOS VBT tables:\n");
> -	drm_mode_debug_printmodeline(panel_fixed_mode);
> +		    "Found SDVO panel mode in BIOS VBT tables: " DRM_MODE_FMT "\n",
> +		    DRM_MODE_ARG(panel_fixed_mode));
>  }
>=20=20
>  static int intel_bios_ssc_frequency(struct drm_i915_private *i915,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index dc6e21e4ef0b..ff50b4bc2b3d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5417,13 +5417,13 @@ static void intel_dump_pipe_config(const struct i=
ntel_crtc_state *pipe_config,
>  		    intel_vrr_vmin_vblank_start(pipe_config),
>  		    intel_vrr_vmax_vblank_start(pipe_config));
>=20=20
> -	drm_dbg_kms(&dev_priv->drm, "requested mode:\n");
> -	drm_mode_debug_printmodeline(&pipe_config->hw.mode);
> -	drm_dbg_kms(&dev_priv->drm, "adjusted mode:\n");
> -	drm_mode_debug_printmodeline(&pipe_config->hw.adjusted_mode);
> +	drm_dbg_kms(&dev_priv->drm, "requested mode: " DRM_MODE_FMT "\n",
> +		    DRM_MODE_ARG(&pipe_config->hw.mode));
> +	drm_dbg_kms(&dev_priv->drm, "adjusted mode: " DRM_MODE_FMT "\n",
> +		    DRM_MODE_ARG(&pipe_config->hw.adjusted_mode));
>  	intel_dump_crtc_timings(dev_priv, &pipe_config->hw.adjusted_mode);
> -	drm_dbg_kms(&dev_priv->drm, "pipe mode:\n");
> -	drm_mode_debug_printmodeline(&pipe_config->hw.pipe_mode);
> +	drm_dbg_kms(&dev_priv->drm, "pipe mode: " DRM_MODE_FMT "\n",
> +		    DRM_MODE_ARG(&pipe_config->hw.pipe_mode));
>  	intel_dump_crtc_timings(dev_priv, &pipe_config->hw.pipe_mode);
>  	drm_dbg_kms(&dev_priv->drm,
>  		    "port clock: %d, pipe src: " DRM_RECT_FMT ", pixel rate %d\n",
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 3bf44f7909e5..f54088db9862 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2579,9 +2579,9 @@ static void intel_edp_mso_mode_fixup(struct intel_c=
onnector *connector,
>  	drm_mode_set_name(mode);
>=20=20
>  	drm_dbg_kms(&i915->drm,
> -		    "[CONNECTOR:%d:%s] using generated MSO mode: ",
> -		    connector->base.base.id, connector->base.name);
> -	drm_mode_debug_printmodeline(mode);
> +		    "[CONNECTOR:%d:%s] using generated MSO mode: " DRM_MODE_FMT "\n",
> +		    connector->base.base.id, connector->base.name,
> +		    DRM_MODE_ARG(mode));
>  }
>=20=20
>  static void intel_edp_mso_init(struct intel_dp *intel_dp)
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i=
915/display/intel_dvo.c
> index d4dc16a9c0dd..90e026cef6ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_dvo.c
> @@ -391,8 +391,8 @@ intel_dvo_get_current_mode(struct intel_encoder *enco=
der)
>=20=20
>  	mode =3D intel_encoder_current_mode(encoder);
>  	if (mode) {
> -		DRM_DEBUG_KMS("using current (BIOS) mode: ");
> -		drm_mode_debug_printmodeline(mode);
> +		DRM_DEBUG_KMS("using current (BIOS) mode: " DRM_MODE_FMT "\n",
> +			      DRM_MODE_ARG(mode));
>  		mode->type |=3D DRM_MODE_TYPE_PREFERRED;
>  	}
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/=
i915/display/intel_lvds.c
> index cd685dbf324b..b57e76b4ef04 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -984,8 +984,8 @@ void intel_lvds_init(struct drm_i915_private *dev_pri=
v)
>  	 */
>  	fixed_mode =3D intel_encoder_current_mode(intel_encoder);
>  	if (fixed_mode) {
> -		drm_dbg_kms(&dev_priv->drm, "using current (BIOS) mode: ");
> -		drm_mode_debug_printmodeline(fixed_mode);
> +		drm_dbg_kms(&dev_priv->drm, "using current (BIOS) mode: " DRM_MODE_FMT=
 "\n",
> +			    DRM_MODE_ARG(fixed_mode));
>  		fixed_mode->type |=3D DRM_MODE_TYPE_PREFERRED;
>  	}
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 8c9e26539cc5..2ba51222d156 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -194,9 +194,9 @@ intel_panel_edid_downclock_mode(struct intel_connecto=
r *connector,
>  		return NULL;
>=20=20
>  	drm_dbg_kms(&dev_priv->drm,
> -		    "[CONNECTOR:%d:%s] using downclock mode from EDID: ",
> -		    connector->base.base.id, connector->base.name);
> -	drm_mode_debug_printmodeline(downclock_mode);
> +		    "[CONNECTOR:%d:%s] using downclock mode from EDID: " DRM_MODE_FMT =
"\n",
> +		    connector->base.base.id, connector->base.name,
> +		    DRM_MODE_ARG(downclock_mode));
>=20=20
>  	return downclock_mode;
>  }
> @@ -221,9 +221,9 @@ intel_panel_edid_fixed_mode(struct intel_connector *c=
onnector)
>  			return NULL;
>=20=20
>  		drm_dbg_kms(&dev_priv->drm,
> -			    "[CONNECTOR:%d:%s] using preferred mode from EDID: ",
> -			    connector->base.base.id, connector->base.name);
> -		drm_mode_debug_printmodeline(fixed_mode);
> +			    "[CONNECTOR:%d:%s] using preferred mode from EDID: " DRM_MODE_FMT=
 "\n",
> +			    connector->base.base.id, connector->base.name,
> +			    DRM_MODE_ARG(fixed_mode));
>=20=20
>  		return fixed_mode;
>  	}
> @@ -238,9 +238,9 @@ intel_panel_edid_fixed_mode(struct intel_connector *c=
onnector)
>  	fixed_mode->type |=3D DRM_MODE_TYPE_PREFERRED;
>=20=20
>  	drm_dbg_kms(&dev_priv->drm,
> -		    "[CONNECTOR:%d:%s] using first mode from EDID: ",
> -		    connector->base.base.id, connector->base.name);
> -	drm_mode_debug_printmodeline(fixed_mode);
> +		    "[CONNECTOR:%d:%s] using first mode from EDID: " DRM_MODE_FMT "\n",
> +		    connector->base.base.id, connector->base.name,
> +		    DRM_MODE_ARG(fixed_mode));
>=20=20
>  	return fixed_mode;
>  }
> @@ -262,9 +262,9 @@ intel_panel_vbt_fixed_mode(struct intel_connector *co=
nnector)
>=20=20
>  	fixed_mode->type |=3D DRM_MODE_TYPE_PREFERRED;
>=20=20
> -	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s] using mode from VBT: ",
> -		    connector->base.base.id, connector->base.name);
> -	drm_mode_debug_printmodeline(fixed_mode);
> +	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s] using mode from VBT: " D=
RM_MODE_FMT "\n",
> +		    connector->base.base.id, connector->base.name,
> +		    DRM_MODE_ARG(fixed_mode));
>=20=20
>  	info->width_mm =3D fixed_mode->width_mm;
>  	info->height_mm =3D fixed_mode->height_mm;
> diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i9=
15/display/intel_tv.c
> index 8a39989b87ad..9379f3463344 100644
> --- a/drivers/gpu/drm/i915/display/intel_tv.c
> +++ b/drivers/gpu/drm/i915/display/intel_tv.c
> @@ -1145,8 +1145,8 @@ intel_tv_get_config(struct intel_encoder *encoder,
>=20=20
>  	intel_tv_mode_to_mode(&mode, &tv_mode);
>=20=20
> -	drm_dbg_kms(&dev_priv->drm, "TV mode:\n");
> -	drm_mode_debug_printmodeline(&mode);
> +	drm_dbg_kms(&dev_priv->drm, "TV mode: " DRM_MODE_FMT "\n",
> +		    DRM_MODE_ARG(&mode));
>=20=20
>  	intel_tv_scale_mode_horiz(&mode, hdisplay,
>  				  xpos, mode.hdisplay - xsize - xpos);
> @@ -1250,8 +1250,8 @@ intel_tv_compute_config(struct intel_encoder *encod=
er,
>  		tv_conn_state->bypass_vfilter =3D false;
>  	}
>=20=20
> -	drm_dbg_kms(&dev_priv->drm, "TV mode:\n");
> -	drm_mode_debug_printmodeline(adjusted_mode);
> +	drm_dbg_kms(&dev_priv->drm, "TV mode: " DRM_MODE_FMT "\n",
> +		    DRM_MODE_ARG(adjusted_mode));
>=20=20
>  	/*
>  	 * The pipe scanline counter behaviour looks as follows when
> @@ -1806,8 +1806,8 @@ intel_tv_get_modes(struct drm_connector *connector)
>  		 */
>  		intel_tv_mode_to_mode(mode, tv_mode);
>  		if (count =3D=3D 0) {
> -			drm_dbg_kms(&dev_priv->drm, "TV mode:\n");
> -			drm_mode_debug_printmodeline(mode);
> +			drm_dbg_kms(&dev_priv->drm, "TV mode: " DRM_MODE_FMT "\n",
> +				    DRM_MODE_ARG(mode));
>  		}
>  		intel_tv_scale_mode_horiz(mode, input->w, 0, 0);
>  		intel_tv_scale_mode_vert(mode, input->h, 0, 0);

--=20
Jani Nikula, Intel Open Source Graphics Center
