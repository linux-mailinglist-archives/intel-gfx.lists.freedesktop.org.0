Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 125B8552260
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 18:38:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 306A810E0D6;
	Mon, 20 Jun 2022 16:38:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DDF610E0D6
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 16:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655743122; x=1687279122;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=8VtoAyq80ql8IM1Z/5IuBvQMYmCYbTHZ8B+fHJFlySo=;
 b=lOcsOeN8139xbBrKVHF+YNMsTdrwE6YaXTJzIUcn7IR2MHuyKSfeN/lY
 NujTjK6jjQ/gKi96S4fLkRQCH+rLbDA6+Ki58KG2AmrgJp3yfgH6FRyDA
 Iujx021o6OeT8R8Y6wH5GWgB2ONjxb6xT+F4Ws2Z9pNs7tRoKSqYNjjb9
 /KF3ATp+OEK87b1tLk6s3xDEHKsCzooOACFGQIBv/FmSEbOEN3jR7+OPK
 6Xpyeox1A0YHMBLrVk/JtN43ftBZ905F9BcD5ZURyqSjpYqGfcL45UzWo
 hm2G9tSNicdzSEpcHXDuZRGkLP05m234XwQxVpVoTyos1zLKYr6CNxEaD g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="280667844"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="280667844"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 09:38:41 -0700
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="643195068"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 09:38:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20220617094817.3466584-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220617094817.3466584-1-jani.nikula@intel.com>
Date: Mon, 20 Jun 2022 19:37:58 +0300
Message-ID: <87zgi7s32x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: split out hw state
 readout and sanitize
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

On Fri, 17 Jun 2022, Jani Nikula <jani.nikula@intel.com> wrote:
> Split out the modeset hardware state readout and sanitize, or state
> setup, to a separate file.
>
> Do some drive-by checkpatch fixes while at it.
>
> v2: Rebase
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com> # v1

Both patches pushed to drm-intel-next, thanks for the review.

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  drivers/gpu/drm/i915/display/intel_display.c  | 739 +-----------------
>  drivers/gpu/drm/i915/display/intel_display.h  |  12 +
>  .../drm/i915/display/intel_modeset_setup.c    | 736 +++++++++++++++++
>  .../drm/i915/display/intel_modeset_setup.h    |  15 +
>  5 files changed, 778 insertions(+), 725 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_setup.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_modeset_setup.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 37a8ea56f7d6..c84a9cd8440d 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -244,6 +244,7 @@ i915-y +=3D \
>  	display/intel_hotplug.o \
>  	display/intel_lpe_audio.o \
>  	display/intel_modeset_verify.o \
> +	display/intel_modeset_setup.o \
>  	display/intel_overlay.o \
>  	display/intel_pch_display.o \
>  	display/intel_pch_refclk.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 90bd26431e31..710a51f14649 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -101,6 +101,7 @@
>  #include "intel_hdcp.h"
>  #include "intel_hotplug.h"
>  #include "intel_modeset_verify.h"
> +#include "intel_modeset_setup.h"
>  #include "intel_overlay.h"
>  #include "intel_panel.h"
>  #include "intel_pch_display.h"
> @@ -130,8 +131,6 @@ static void ilk_set_pipeconf(const struct intel_crtc_=
state *crtc_state);
>  static void hsw_set_transconf(const struct intel_crtc_state *crtc_state);
>  static void bdw_set_pipemisc(const struct intel_crtc_state *crtc_state);
>  static void ilk_pfit_enable(const struct intel_crtc_state *crtc_state);
> -static void intel_modeset_setup_hw_state(struct drm_device *dev,
> -					 struct drm_modeset_acquire_ctx *ctx);
>=20=20
>  /**
>   * intel_update_watermarks - update FIFO watermark values based on curre=
nt modes
> @@ -166,7 +165,7 @@ static void intel_modeset_setup_hw_state(struct drm_d=
evice *dev,
>   * We don't use the sprite, so we can ignore that.  And on Crestline we =
have
>   * to set the non-SR watermarks to 8.
>   */
> -static void intel_update_watermarks(struct drm_i915_private *dev_priv)
> +void intel_update_watermarks(struct drm_i915_private *dev_priv)
>  {
>  	if (dev_priv->wm_disp->update_wm)
>  		dev_priv->wm_disp->update_wm(dev_priv);
> @@ -733,10 +732,9 @@ u32 intel_plane_fb_max_stride(struct drm_i915_privat=
e *dev_priv,
>  				 DRM_MODE_ROTATE_0);
>  }
>=20=20
> -static void
> -intel_set_plane_visible(struct intel_crtc_state *crtc_state,
> -			struct intel_plane_state *plane_state,
> -			bool visible)
> +void intel_set_plane_visible(struct intel_crtc_state *crtc_state,
> +			     struct intel_plane_state *plane_state,
> +			     bool visible)
>  {
>  	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane);
>=20=20
> @@ -748,7 +746,7 @@ intel_set_plane_visible(struct intel_crtc_state *crtc=
_state,
>  		crtc_state->uapi.plane_mask &=3D ~drm_plane_mask(&plane->base);
>  }
>=20=20
> -static void fixup_plane_bitmasks(struct intel_crtc_state *crtc_state)
> +void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
>  	struct drm_plane *plane;
> @@ -783,7 +781,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *=
crtc,
>  		    crtc->base.base.id, crtc->base.name);
>=20=20
>  	intel_set_plane_visible(crtc_state, plane_state, false);
> -	fixup_plane_bitmasks(crtc_state);
> +	intel_plane_fixup_bitmasks(crtc_state);
>  	crtc_state->data_rate[plane->id] =3D 0;
>  	crtc_state->data_rate_y[plane->id] =3D 0;
>  	crtc_state->rel_data_rate[plane->id] =3D 0;
> @@ -2209,9 +2207,8 @@ static void get_crtc_power_domains(struct intel_crt=
c_state *crtc_state,
>  		set_bit(intel_dsc_power_domain(crtc, cpu_transcoder), mask->bits);
>  }
>=20=20
> -static void
> -modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_state,
> -			       struct intel_power_domain_mask *old_domains)
> +void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_=
state,
> +					  struct intel_power_domain_mask *old_domains)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -2235,8 +2232,8 @@ modeset_get_crtc_power_domains(struct intel_crtc_st=
ate *crtc_state,
>  					       domain);
>  }
>=20=20
> -static void modeset_put_crtc_power_domains(struct intel_crtc *crtc,
> -					   struct intel_power_domain_mask *domains)
> +void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
> +					  struct intel_power_domain_mask *domains)
>  {
>  	intel_display_power_put_mask_in_set(to_i915(crtc->base.dev),
>  					    &crtc->enabled_power_domains,
> @@ -2416,89 +2413,6 @@ static void i9xx_crtc_disable(struct intel_atomic_=
state *state,
>  		i830_enable_pipe(dev_priv, pipe);
>  }
>=20=20
> -static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
> -					struct drm_modeset_acquire_ctx *ctx)
> -{
> -	struct intel_encoder *encoder;
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> -	struct intel_bw_state *bw_state =3D
> -		to_intel_bw_state(dev_priv->bw_obj.state);
> -	struct intel_cdclk_state *cdclk_state =3D
> -		to_intel_cdclk_state(dev_priv->cdclk.obj.state);
> -	struct intel_dbuf_state *dbuf_state =3D
> -		to_intel_dbuf_state(dev_priv->dbuf.obj.state);
> -	struct intel_crtc_state *crtc_state =3D
> -		to_intel_crtc_state(crtc->base.state);
> -	struct intel_plane *plane;
> -	struct drm_atomic_state *state;
> -	struct intel_crtc_state *temp_crtc_state;
> -	enum pipe pipe =3D crtc->pipe;
> -	int ret;
> -
> -	if (!crtc_state->hw.active)
> -		return;
> -
> -	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> -		const struct intel_plane_state *plane_state =3D
> -			to_intel_plane_state(plane->base.state);
> -
> -		if (plane_state->uapi.visible)
> -			intel_plane_disable_noatomic(crtc, plane);
> -	}
> -
> -	state =3D drm_atomic_state_alloc(&dev_priv->drm);
> -	if (!state) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "failed to disable [CRTC:%d:%s], out of memory",
> -			    crtc->base.base.id, crtc->base.name);
> -		return;
> -	}
> -
> -	state->acquire_ctx =3D ctx;
> -
> -	/* Everything's already locked, -EDEADLK can't happen. */
> -	temp_crtc_state =3D intel_atomic_get_crtc_state(state, crtc);
> -	ret =3D drm_atomic_add_affected_connectors(state, &crtc->base);
> -
> -	drm_WARN_ON(&dev_priv->drm, IS_ERR(temp_crtc_state) || ret);
> -
> -	dev_priv->display->crtc_disable(to_intel_atomic_state(state), crtc);
> -
> -	drm_atomic_state_put(state);
> -
> -	drm_dbg_kms(&dev_priv->drm,
> -		    "[CRTC:%d:%s] hw state adjusted, was enabled, now disabled\n",
> -		    crtc->base.base.id, crtc->base.name);
> -
> -	crtc->active =3D false;
> -	crtc->base.enabled =3D false;
> -
> -	drm_WARN_ON(&dev_priv->drm,
> -		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, NULL) < 0);
> -	crtc_state->uapi.active =3D false;
> -	crtc_state->uapi.connector_mask =3D 0;
> -	crtc_state->uapi.encoder_mask =3D 0;
> -	intel_crtc_free_hw_state(crtc_state);
> -	memset(&crtc_state->hw, 0, sizeof(crtc_state->hw));
> -
> -	for_each_encoder_on_crtc(&dev_priv->drm, &crtc->base, encoder)
> -		encoder->base.crtc =3D NULL;
> -
> -	intel_fbc_disable(crtc);
> -	intel_update_watermarks(dev_priv);
> -	intel_disable_shared_dpll(crtc_state);
> -
> -	intel_display_power_put_all_in_set(dev_priv, &crtc->enabled_power_domai=
ns);
> -
> -	cdclk_state->min_cdclk[pipe] =3D 0;
> -	cdclk_state->min_voltage_level[pipe] =3D 0;
> -	cdclk_state->active_pipes &=3D ~BIT(pipe);
> -
> -	dbuf_state->active_pipes &=3D ~BIT(pipe);
> -
> -	bw_state->data_rate[pipe] =3D 0;
> -	bw_state->num_active_planes[pipe] =3D 0;
> -}
>=20=20
>  /*
>   * turn all crtc's off, but do not adjust state
> @@ -4948,39 +4862,6 @@ static int intel_crtc_atomic_check(struct intel_at=
omic_state *state,
>  	return 0;
>  }
>=20=20
> -static void intel_modeset_update_connector_atomic_state(struct drm_devic=
e *dev)
> -{
> -	struct intel_connector *connector;
> -	struct drm_connector_list_iter conn_iter;
> -
> -	drm_connector_list_iter_begin(dev, &conn_iter);
> -	for_each_intel_connector_iter(connector, &conn_iter) {
> -		struct drm_connector_state *conn_state =3D connector->base.state;
> -		struct intel_encoder *encoder =3D
> -			to_intel_encoder(connector->base.encoder);
> -
> -		if (conn_state->crtc)
> -			drm_connector_put(&connector->base);
> -
> -		if (encoder) {
> -			struct intel_crtc *crtc =3D
> -				to_intel_crtc(encoder->base.crtc);
> -			const struct intel_crtc_state *crtc_state =3D
> -				to_intel_crtc_state(crtc->base.state);
> -
> -			conn_state->best_encoder =3D &encoder->base;
> -			conn_state->crtc =3D &crtc->base;
> -			conn_state->max_bpc =3D (crtc_state->pipe_bpp ?: 24) / 3;
> -
> -			drm_connector_get(&connector->base);
> -		} else {
> -			conn_state->best_encoder =3D NULL;
> -			conn_state->crtc =3D NULL;
> -		}
> -	}
> -	drm_connector_list_iter_end(&conn_iter);
> -}
> -
>  static int
>  compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
>  		      struct intel_crtc_state *crtc_state)
> @@ -5165,27 +5046,6 @@ intel_crtc_copy_uapi_to_hw_state_modeset(struct in=
tel_atomic_state *state,
>  	intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc);
>  }
>=20=20
> -static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *cr=
tc_state)
> -{
> -	if (intel_crtc_is_bigjoiner_slave(crtc_state))
> -		return;
> -
> -	crtc_state->uapi.enable =3D crtc_state->hw.enable;
> -	crtc_state->uapi.active =3D crtc_state->hw.active;
> -	drm_WARN_ON(crtc_state->uapi.crtc->dev,
> -		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, &crtc_state->hw.mo=
de) < 0);
> -
> -	crtc_state->uapi.adjusted_mode =3D crtc_state->hw.adjusted_mode;
> -	crtc_state->uapi.scaling_filter =3D crtc_state->hw.scaling_filter;
> -
> -	drm_property_replace_blob(&crtc_state->uapi.degamma_lut,
> -				  crtc_state->hw.degamma_lut);
> -	drm_property_replace_blob(&crtc_state->uapi.gamma_lut,
> -				  crtc_state->hw.gamma_lut);
> -	drm_property_replace_blob(&crtc_state->uapi.ctm,
> -				  crtc_state->hw.ctm);
> -}
> -
>  static void
>  copy_bigjoiner_crtc_state_nomodeset(struct intel_atomic_state *state,
>  				    struct intel_crtc *slave_crtc)
> @@ -6115,8 +5975,7 @@ int intel_modeset_all_pipes(struct intel_atomic_sta=
te *state)
>  	return 0;
>  }
>=20=20
> -static void
> -intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_sta=
te)
> +void intel_crtc_update_active_timings(const struct intel_crtc_state *crt=
c_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> @@ -7670,7 +7529,7 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
>  					    new_crtc_state, i) {
>  		if (intel_crtc_needs_modeset(new_crtc_state) ||
>  		    new_crtc_state->update_pipe) {
> -			modeset_get_crtc_power_domains(new_crtc_state, &put_domains[crtc->pip=
e]);
> +			intel_modeset_get_crtc_power_domains(new_crtc_state, &put_domains[crt=
c->pipe]);
>  		}
>  	}
>=20=20
> @@ -7770,7 +7629,7 @@ static void intel_atomic_commit_tail(struct intel_a=
tomic_state *state)
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_cr=
tc_state, i) {
>  		intel_post_plane_update(state, crtc);
>=20=20
> -		modeset_put_crtc_power_domains(crtc, &put_domains[crtc->pipe]);
> +		intel_modeset_put_crtc_power_domains(crtc, &put_domains[crtc->pipe]);
>=20=20
>  		intel_modeset_verify_crtc(crtc, state, old_crtc_state, new_crtc_state);
>=20=20
> @@ -9060,576 +8919,6 @@ void i830_disable_pipe(struct drm_i915_private *d=
ev_priv, enum pipe pipe)
>  	intel_de_posting_read(dev_priv, DPLL(pipe));
>  }
>=20=20
> -static void
> -intel_sanitize_plane_mapping(struct drm_i915_private *dev_priv)
> -{
> -	struct intel_crtc *crtc;
> -
> -	if (DISPLAY_VER(dev_priv) >=3D 4)
> -		return;
> -
> -	for_each_intel_crtc(&dev_priv->drm, crtc) {
> -		struct intel_plane *plane =3D
> -			to_intel_plane(crtc->base.primary);
> -		struct intel_crtc *plane_crtc;
> -		enum pipe pipe;
> -
> -		if (!plane->get_hw_state(plane, &pipe))
> -			continue;
> -
> -		if (pipe =3D=3D crtc->pipe)
> -			continue;
> -
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "[PLANE:%d:%s] attached to the wrong pipe, disabling plane\n",
> -			    plane->base.base.id, plane->base.name);
> -
> -		plane_crtc =3D intel_crtc_for_pipe(dev_priv, pipe);
> -		intel_plane_disable_noatomic(plane_crtc, plane);
> -	}
> -}
> -
> -static bool intel_crtc_has_encoders(struct intel_crtc *crtc)
> -{
> -	struct drm_device *dev =3D crtc->base.dev;
> -	struct intel_encoder *encoder;
> -
> -	for_each_encoder_on_crtc(dev, &crtc->base, encoder)
> -		return true;
> -
> -	return false;
> -}
> -
> -static struct intel_connector *intel_encoder_find_connector(struct intel=
_encoder *encoder)
> -{
> -	struct drm_device *dev =3D encoder->base.dev;
> -	struct intel_connector *connector;
> -
> -	for_each_connector_on_encoder(dev, &encoder->base, connector)
> -		return connector;
> -
> -	return NULL;
> -}
> -
> -static void intel_sanitize_fifo_underrun_reporting(const struct intel_cr=
tc_state *crtc_state)
> -{
> -	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> -
> -	if (!crtc_state->hw.active && !HAS_GMCH(i915))
> -		return;
> -
> -	/*
> -	 * We start out with underrun reporting disabled to avoid races.
> -	 * For correct bookkeeping mark this on active crtcs.
> -	 *
> -	 * Also on gmch platforms we dont have any hardware bits to
> -	 * disable the underrun reporting. Which means we need to start
> -	 * out with underrun reporting disabled also on inactive pipes,
> -	 * since otherwise we'll complain about the garbage we read when
> -	 * e.g. coming up after runtime pm.
> -	 *
> -	 * No protection against concurrent access is required - at
> -	 * worst a fifo underrun happens which also sets this to false.
> -	 */
> -	crtc->cpu_fifo_underrun_disabled =3D true;
> -
> -	/*
> -	 * We track the PCH trancoder underrun reporting state
> -	 * within the crtc. With crtc for pipe A housing the underrun
> -	 * reporting state for PCH transcoder A, crtc for pipe B housing
> -	 * it for PCH transcoder B, etc. LPT-H has only PCH transcoder A,
> -	 * and marking underrun reporting as disabled for the non-existing
> -	 * PCH transcoders B and C would prevent enabling the south
> -	 * error interrupt (see cpt_can_enable_serr_int()).
> -	 */
> -	if (intel_has_pch_trancoder(i915, crtc->pipe))
> -		crtc->pch_fifo_underrun_disabled =3D true;
> -}
> -
> -static void intel_sanitize_crtc(struct intel_crtc *crtc,
> -				struct drm_modeset_acquire_ctx *ctx)
> -{
> -	struct drm_device *dev =3D crtc->base.dev;
> -	struct intel_crtc_state *crtc_state =3D to_intel_crtc_state(crtc->base.=
state);
> -
> -	if (crtc_state->hw.active) {
> -		struct intel_plane *plane;
> -
> -		/* Disable everything but the primary plane */
> -		for_each_intel_plane_on_crtc(dev, crtc, plane) {
> -			const struct intel_plane_state *plane_state =3D
> -				to_intel_plane_state(plane->base.state);
> -
> -			if (plane_state->uapi.visible &&
> -			    plane->base.type !=3D DRM_PLANE_TYPE_PRIMARY)
> -				intel_plane_disable_noatomic(crtc, plane);
> -		}
> -
> -		/* Disable any background color/etc. set by the BIOS */
> -		intel_color_commit_noarm(crtc_state);
> -		intel_color_commit_arm(crtc_state);
> -	}
> -
> -	/* Adjust the state of the output pipe according to whether we
> -	 * have active connectors/encoders. */
> -	if (crtc_state->hw.active && !intel_crtc_has_encoders(crtc) &&
> -	    !intel_crtc_is_bigjoiner_slave(crtc_state))
> -		intel_crtc_disable_noatomic(crtc, ctx);
> -}
> -
> -static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_st=
ate)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> -
> -	/*
> -	 * Some SNB BIOSen (eg. ASUS K53SV) are known to misprogram
> -	 * the hardware when a high res displays plugged in. DPLL P
> -	 * divider is zero, and the pipe timings are bonkers. We'll
> -	 * try to disable everything in that case.
> -	 *
> -	 * FIXME would be nice to be able to sanitize this state
> -	 * without several WARNs, but for now let's take the easy
> -	 * road.
> -	 */
> -	return IS_SANDYBRIDGE(dev_priv) &&
> -		crtc_state->hw.active &&
> -		crtc_state->shared_dpll &&
> -		crtc_state->port_clock =3D=3D 0;
> -}
> -
> -static void intel_sanitize_encoder(struct intel_encoder *encoder)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> -	struct intel_connector *connector;
> -	struct intel_crtc *crtc =3D to_intel_crtc(encoder->base.crtc);
> -	struct intel_crtc_state *crtc_state =3D crtc ?
> -		to_intel_crtc_state(crtc->base.state) : NULL;
> -
> -	/* We need to check both for a crtc link (meaning that the
> -	 * encoder is active and trying to read from a pipe) and the
> -	 * pipe itself being active. */
> -	bool has_active_crtc =3D crtc_state &&
> -		crtc_state->hw.active;
> -
> -	if (crtc_state && has_bogus_dpll_config(crtc_state)) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "BIOS has misprogrammed the hardware. Disabling pipe %c\n",
> -			    pipe_name(crtc->pipe));
> -		has_active_crtc =3D false;
> -	}
> -
> -	connector =3D intel_encoder_find_connector(encoder);
> -	if (connector && !has_active_crtc) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "[ENCODER:%d:%s] has active connectors but no active pipe!\n",
> -			    encoder->base.base.id,
> -			    encoder->base.name);
> -
> -		/* Connector is active, but has no active pipe. This is
> -		 * fallout from our resume register restoring. Disable
> -		 * the encoder manually again. */
> -		if (crtc_state) {
> -			struct drm_encoder *best_encoder;
> -
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "[ENCODER:%d:%s] manually disabled\n",
> -				    encoder->base.base.id,
> -				    encoder->base.name);
> -
> -			/* avoid oopsing in case the hooks consult best_encoder */
> -			best_encoder =3D connector->base.state->best_encoder;
> -			connector->base.state->best_encoder =3D &encoder->base;
> -
> -			/* FIXME NULL atomic state passed! */
> -			if (encoder->disable)
> -				encoder->disable(NULL, encoder, crtc_state,
> -						 connector->base.state);
> -			if (encoder->post_disable)
> -				encoder->post_disable(NULL, encoder, crtc_state,
> -						      connector->base.state);
> -
> -			connector->base.state->best_encoder =3D best_encoder;
> -		}
> -		encoder->base.crtc =3D NULL;
> -
> -		/* Inconsistent output/port/pipe state happens presumably due to
> -		 * a bug in one of the get_hw_state functions. Or someplace else
> -		 * in our code, like the register restore mess on resume. Clamp
> -		 * things to off as a safer default. */
> -
> -		connector->base.dpms =3D DRM_MODE_DPMS_OFF;
> -		connector->base.encoder =3D NULL;
> -	}
> -
> -	/* notify opregion of the sanitized encoder state */
> -	intel_opregion_notify_encoder(encoder, connector && has_active_crtc);
> -
> -	if (HAS_DDI(dev_priv))
> -		intel_ddi_sanitize_encoder_pll_mapping(encoder);
> -}
> -
> -/* FIXME read out full plane state for all planes */
> -static void readout_plane_state(struct drm_i915_private *dev_priv)
> -{
> -	struct intel_plane *plane;
> -	struct intel_crtc *crtc;
> -
> -	for_each_intel_plane(&dev_priv->drm, plane) {
> -		struct intel_plane_state *plane_state =3D
> -			to_intel_plane_state(plane->base.state);
> -		struct intel_crtc_state *crtc_state;
> -		enum pipe pipe =3D PIPE_A;
> -		bool visible;
> -
> -		visible =3D plane->get_hw_state(plane, &pipe);
> -
> -		crtc =3D intel_crtc_for_pipe(dev_priv, pipe);
> -		crtc_state =3D to_intel_crtc_state(crtc->base.state);
> -
> -		intel_set_plane_visible(crtc_state, plane_state, visible);
> -
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "[PLANE:%d:%s] hw state readout: %s, pipe %c\n",
> -			    plane->base.base.id, plane->base.name,
> -			    str_enabled_disabled(visible), pipe_name(pipe));
> -	}
> -
> -	for_each_intel_crtc(&dev_priv->drm, crtc) {
> -		struct intel_crtc_state *crtc_state =3D
> -			to_intel_crtc_state(crtc->base.state);
> -
> -		fixup_plane_bitmasks(crtc_state);
> -	}
> -}
> -
> -static void intel_modeset_readout_hw_state(struct drm_device *dev)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	struct intel_cdclk_state *cdclk_state =3D
> -		to_intel_cdclk_state(dev_priv->cdclk.obj.state);
> -	struct intel_dbuf_state *dbuf_state =3D
> -		to_intel_dbuf_state(dev_priv->dbuf.obj.state);
> -	enum pipe pipe;
> -	struct intel_crtc *crtc;
> -	struct intel_encoder *encoder;
> -	struct intel_connector *connector;
> -	struct drm_connector_list_iter conn_iter;
> -	u8 active_pipes =3D 0;
> -
> -	for_each_intel_crtc(dev, crtc) {
> -		struct intel_crtc_state *crtc_state =3D
> -			to_intel_crtc_state(crtc->base.state);
> -
> -		__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
> -		intel_crtc_free_hw_state(crtc_state);
> -		intel_crtc_state_reset(crtc_state, crtc);
> -
> -		intel_crtc_get_pipe_config(crtc_state);
> -
> -		crtc_state->hw.enable =3D crtc_state->hw.active;
> -
> -		crtc->base.enabled =3D crtc_state->hw.enable;
> -		crtc->active =3D crtc_state->hw.active;
> -
> -		if (crtc_state->hw.active)
> -			active_pipes |=3D BIT(crtc->pipe);
> -
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "[CRTC:%d:%s] hw state readout: %s\n",
> -			    crtc->base.base.id, crtc->base.name,
> -			    str_enabled_disabled(crtc_state->hw.active));
> -	}
> -
> -	cdclk_state->active_pipes =3D dbuf_state->active_pipes =3D active_pipes;
> -
> -	readout_plane_state(dev_priv);
> -
> -	for_each_intel_encoder(dev, encoder) {
> -		struct intel_crtc_state *crtc_state =3D NULL;
> -
> -		pipe =3D 0;
> -
> -		if (encoder->get_hw_state(encoder, &pipe)) {
> -			crtc =3D intel_crtc_for_pipe(dev_priv, pipe);
> -			crtc_state =3D to_intel_crtc_state(crtc->base.state);
> -
> -			encoder->base.crtc =3D &crtc->base;
> -			intel_encoder_get_config(encoder, crtc_state);
> -
> -			/* read out to slave crtc as well for bigjoiner */
> -			if (crtc_state->bigjoiner_pipes) {
> -				struct intel_crtc *slave_crtc;
> -
> -				/* encoder should read be linked to bigjoiner master */
> -				WARN_ON(intel_crtc_is_bigjoiner_slave(crtc_state));
> -
> -				for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
> -								 intel_crtc_bigjoiner_slave_pipes(crtc_state)) {
> -					struct intel_crtc_state *slave_crtc_state;
> -
> -					slave_crtc_state =3D to_intel_crtc_state(slave_crtc->base.state);
> -					intel_encoder_get_config(encoder, slave_crtc_state);
> -				}
> -			}
> -		} else {
> -			encoder->base.crtc =3D NULL;
> -		}
> -
> -		if (encoder->sync_state)
> -			encoder->sync_state(encoder, crtc_state);
> -
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "[ENCODER:%d:%s] hw state readout: %s, pipe %c\n",
> -			    encoder->base.base.id, encoder->base.name,
> -			    str_enabled_disabled(encoder->base.crtc),
> -			    pipe_name(pipe));
> -	}
> -
> -	intel_dpll_readout_hw_state(dev_priv);
> -
> -	drm_connector_list_iter_begin(dev, &conn_iter);
> -	for_each_intel_connector_iter(connector, &conn_iter) {
> -		if (connector->get_hw_state(connector)) {
> -			struct intel_crtc_state *crtc_state;
> -			struct intel_crtc *crtc;
> -
> -			connector->base.dpms =3D DRM_MODE_DPMS_ON;
> -
> -			encoder =3D intel_attached_encoder(connector);
> -			connector->base.encoder =3D &encoder->base;
> -
> -			crtc =3D to_intel_crtc(encoder->base.crtc);
> -			crtc_state =3D crtc ? to_intel_crtc_state(crtc->base.state) : NULL;
> -
> -			if (crtc_state && crtc_state->hw.active) {
> -				/*
> -				 * This has to be done during hardware readout
> -				 * because anything calling .crtc_disable may
> -				 * rely on the connector_mask being accurate.
> -				 */
> -				crtc_state->uapi.connector_mask |=3D
> -					drm_connector_mask(&connector->base);
> -				crtc_state->uapi.encoder_mask |=3D
> -					drm_encoder_mask(&encoder->base);
> -			}
> -		} else {
> -			connector->base.dpms =3D DRM_MODE_DPMS_OFF;
> -			connector->base.encoder =3D NULL;
> -		}
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "[CONNECTOR:%d:%s] hw state readout: %s\n",
> -			    connector->base.base.id, connector->base.name,
> -			    str_enabled_disabled(connector->base.encoder));
> -	}
> -	drm_connector_list_iter_end(&conn_iter);
> -
> -	for_each_intel_crtc(dev, crtc) {
> -		struct intel_bw_state *bw_state =3D
> -			to_intel_bw_state(dev_priv->bw_obj.state);
> -		struct intel_crtc_state *crtc_state =3D
> -			to_intel_crtc_state(crtc->base.state);
> -		struct intel_plane *plane;
> -		int min_cdclk =3D 0;
> -
> -		if (crtc_state->hw.active) {
> -			/*
> -			 * The initial mode needs to be set in order to keep
> -			 * the atomic core happy. It wants a valid mode if the
> -			 * crtc's enabled, so we do the above call.
> -			 *
> -			 * But we don't set all the derived state fully, hence
> -			 * set a flag to indicate that a full recalculation is
> -			 * needed on the next commit.
> -			 */
> -			crtc_state->inherited =3D true;
> -
> -			intel_crtc_update_active_timings(crtc_state);
> -
> -			intel_crtc_copy_hw_to_uapi_state(crtc_state);
> -		}
> -
> -		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> -			const struct intel_plane_state *plane_state =3D
> -				to_intel_plane_state(plane->base.state);
> -
> -			/*
> -			 * FIXME don't have the fb yet, so can't
> -			 * use intel_plane_data_rate() :(
> -			 */
> -			if (plane_state->uapi.visible)
> -				crtc_state->data_rate[plane->id] =3D
> -					4 * crtc_state->pixel_rate;
> -			/*
> -			 * FIXME don't have the fb yet, so can't
> -			 * use plane->min_cdclk() :(
> -			 */
> -			if (plane_state->uapi.visible && plane->min_cdclk) {
> -				if (crtc_state->double_wide || DISPLAY_VER(dev_priv) >=3D 10)
> -					crtc_state->min_cdclk[plane->id] =3D
> -						DIV_ROUND_UP(crtc_state->pixel_rate, 2);
> -				else
> -					crtc_state->min_cdclk[plane->id] =3D
> -						crtc_state->pixel_rate;
> -			}
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "[PLANE:%d:%s] min_cdclk %d kHz\n",
> -				    plane->base.base.id, plane->base.name,
> -				    crtc_state->min_cdclk[plane->id]);
> -		}
> -
> -		if (crtc_state->hw.active) {
> -			min_cdclk =3D intel_crtc_compute_min_cdclk(crtc_state);
> -			if (drm_WARN_ON(dev, min_cdclk < 0))
> -				min_cdclk =3D 0;
> -		}
> -
> -		cdclk_state->min_cdclk[crtc->pipe] =3D min_cdclk;
> -		cdclk_state->min_voltage_level[crtc->pipe] =3D
> -			crtc_state->min_voltage_level;
> -
> -		intel_bw_crtc_update(bw_state, crtc_state);
> -	}
> -}
> -
> -static void
> -get_encoder_power_domains(struct drm_i915_private *dev_priv)
> -{
> -	struct intel_encoder *encoder;
> -
> -	for_each_intel_encoder(&dev_priv->drm, encoder) {
> -		struct intel_crtc_state *crtc_state;
> -
> -		if (!encoder->get_power_domains)
> -			continue;
> -
> -		/*
> -		 * MST-primary and inactive encoders don't have a crtc state
> -		 * and neither of these require any power domain references.
> -		 */
> -		if (!encoder->base.crtc)
> -			continue;
> -
> -		crtc_state =3D to_intel_crtc_state(encoder->base.crtc->state);
> -		encoder->get_power_domains(encoder, crtc_state);
> -	}
> -}
> -
> -static void intel_early_display_was(struct drm_i915_private *dev_priv)
> -{
> -	/*
> -	 * Display WA #1185 WaDisableDARBFClkGating:glk,icl,ehl,tgl
> -	 * Also known as Wa_14010480278.
> -	 */
> -	if (IS_DISPLAY_VER(dev_priv, 10, 12))
> -		intel_de_write(dev_priv, GEN9_CLKGATE_DIS_0,
> -			       intel_de_read(dev_priv, GEN9_CLKGATE_DIS_0) | DARBF_GATING_DIS=
);
> -
> -	if (IS_HASWELL(dev_priv)) {
> -		/*
> -		 * WaRsPkgCStateDisplayPMReq:hsw
> -		 * System hang if this isn't done before disabling all planes!
> -		 */
> -		intel_de_write(dev_priv, CHICKEN_PAR1_1,
> -			       intel_de_read(dev_priv, CHICKEN_PAR1_1) | FORCE_ARB_IDLE_PLANE=
S);
> -	}
> -
> -	if (IS_KABYLAKE(dev_priv) || IS_COFFEELAKE(dev_priv) || IS_COMETLAKE(de=
v_priv)) {
> -		/* Display WA #1142:kbl,cfl,cml */
> -		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> -			     KBL_ARB_FILL_SPARE_22, KBL_ARB_FILL_SPARE_22);
> -		intel_de_rmw(dev_priv, CHICKEN_MISC_2,
> -			     KBL_ARB_FILL_SPARE_13 | KBL_ARB_FILL_SPARE_14,
> -			     KBL_ARB_FILL_SPARE_14);
> -	}
> -}
> -
> -
> -/* Scan out the current hw modeset state,
> - * and sanitizes it to the current state
> - */
> -static void
> -intel_modeset_setup_hw_state(struct drm_device *dev,
> -			     struct drm_modeset_acquire_ctx *ctx)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	struct intel_encoder *encoder;
> -	struct intel_crtc *crtc;
> -	intel_wakeref_t wakeref;
> -
> -	wakeref =3D intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
> -
> -	intel_early_display_was(dev_priv);
> -	intel_modeset_readout_hw_state(dev);
> -
> -	/* HW state is read out, now we need to sanitize this mess. */
> -	get_encoder_power_domains(dev_priv);
> -
> -	intel_pch_sanitize(dev_priv);
> -
> -	/*
> -	 * intel_sanitize_plane_mapping() may need to do vblank
> -	 * waits, so we need vblank interrupts restored beforehand.
> -	 */
> -	for_each_intel_crtc(&dev_priv->drm, crtc) {
> -		struct intel_crtc_state *crtc_state =3D
> -			to_intel_crtc_state(crtc->base.state);
> -
> -		intel_sanitize_fifo_underrun_reporting(crtc_state);
> -
> -		drm_crtc_vblank_reset(&crtc->base);
> -
> -		if (crtc_state->hw.active)
> -			intel_crtc_vblank_on(crtc_state);
> -	}
> -
> -	intel_fbc_sanitize(dev_priv);
> -
> -	intel_sanitize_plane_mapping(dev_priv);
> -
> -	for_each_intel_encoder(dev, encoder)
> -		intel_sanitize_encoder(encoder);
> -
> -	for_each_intel_crtc(&dev_priv->drm, crtc) {
> -		struct intel_crtc_state *crtc_state =3D
> -			to_intel_crtc_state(crtc->base.state);
> -
> -		intel_sanitize_crtc(crtc, ctx);
> -		intel_crtc_state_dump(crtc_state, NULL, "setup_hw_state");
> -	}
> -
> -	intel_modeset_update_connector_atomic_state(dev);
> -
> -	intel_dpll_sanitize_state(dev_priv);
> -
> -	if (IS_G4X(dev_priv)) {
> -		g4x_wm_get_hw_state(dev_priv);
> -		g4x_wm_sanitize(dev_priv);
> -	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> -		vlv_wm_get_hw_state(dev_priv);
> -		vlv_wm_sanitize(dev_priv);
> -	} else if (DISPLAY_VER(dev_priv) >=3D 9) {
> -		skl_wm_get_hw_state(dev_priv);
> -		skl_wm_sanitize(dev_priv);
> -	} else if (HAS_PCH_SPLIT(dev_priv)) {
> -		ilk_wm_get_hw_state(dev_priv);
> -	}
> -
> -	for_each_intel_crtc(dev, crtc) {
> -		struct intel_crtc_state *crtc_state =3D
> -			to_intel_crtc_state(crtc->base.state);
> -		struct intel_power_domain_mask put_domains;
> -
> -		modeset_get_crtc_power_domains(crtc_state, &put_domains);
> -		if (drm_WARN_ON(dev, !bitmap_empty(put_domains.bits, POWER_DOMAIN_NUM)=
))
> -			modeset_put_crtc_power_domains(crtc, &put_domains);
> -	}
> -
> -	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
> -
> -	intel_power_domains_sanitize_state(dev_priv);
> -}
> -
>  void intel_display_resume(struct drm_device *dev)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(dev);
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/d=
rm/i915/display/intel_display.h
> index 2feb8ae5d5d4..8610e17cc593 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -56,6 +56,7 @@ struct intel_initial_plane_config;
>  struct intel_load_detect_pipe;
>  struct intel_plane;
>  struct intel_plane_state;
> +struct intel_power_domain_mask;
>  struct intel_remapped_info;
>  struct intel_rotation_info;
>  struct pci_dev;
> @@ -563,6 +564,7 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_sta=
te *crtc_state);
>  bool intel_pipe_config_compare(const struct intel_crtc_state *current_co=
nfig,
>  			       const struct intel_crtc_state *pipe_config,
>  			       bool fastset);
> +void intel_crtc_update_active_timings(const struct intel_crtc_state *crt=
c_state);
>=20=20
>  void intel_plane_destroy(struct drm_plane *plane);
>  void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_sta=
te);
> @@ -659,10 +661,16 @@ intel_get_crtc_new_encoder(const struct intel_atomi=
c_state *state,
>  			   const struct intel_crtc_state *crtc_state);
>  void intel_plane_disable_noatomic(struct intel_crtc *crtc,
>  				  struct intel_plane *plane);
> +void intel_set_plane_visible(struct intel_crtc_state *crtc_state,
> +			     struct intel_plane_state *plane_state,
> +			     bool visible);
> +void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state);
>=20=20
>  void intel_display_driver_register(struct drm_i915_private *i915);
>  void intel_display_driver_unregister(struct drm_i915_private *i915);
>=20=20
> +void intel_update_watermarks(struct drm_i915_private *i915);
> +
>  /* modesetting */
>  bool intel_modeset_probe_defer(struct pci_dev *pdev);
>  void intel_modeset_init_hw(struct drm_i915_private *i915);
> @@ -674,6 +682,10 @@ void intel_modeset_driver_remove_noirq(struct drm_i9=
15_private *i915);
>  void intel_modeset_driver_remove_nogem(struct drm_i915_private *i915);
>  void intel_display_resume(struct drm_device *dev);
>  int intel_modeset_all_pipes(struct intel_atomic_state *state);
> +void intel_modeset_get_crtc_power_domains(struct intel_crtc_state *crtc_=
state,
> +					  struct intel_power_domain_mask *old_domains);
> +void intel_modeset_put_crtc_power_domains(struct intel_crtc *crtc,
> +					  struct intel_power_domain_mask *domains);
>=20=20
>  /* modesetting asserts */
>  void assert_transcoder(struct drm_i915_private *dev_priv,
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers=
/gpu/drm/i915/display/intel_modeset_setup.c
> new file mode 100644
> index 000000000000..c340f3393246
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> @@ -0,0 +1,736 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2022 Intel Corporation
> + *
> + * Read out the current hardware modeset state, and sanitize it to the c=
urrent
> + * state.
> + */
> +
> +#include <drm/drm_atomic_uapi.h>
> +#include <drm/drm_atomic_state_helper.h>
> +
> +#include "i915_drv.h"
> +#include "intel_atomic.h"
> +#include "intel_bw.h"
> +#include "intel_color.h"
> +#include "intel_crtc.h"
> +#include "intel_crtc_state_dump.h"
> +#include "intel_ddi.h"
> +#include "intel_de.h"
> +#include "intel_display.h"
> +#include "intel_display_power.h"
> +#include "intel_display_types.h"
> +#include "intel_modeset_setup.h"
> +#include "intel_pch_display.h"
> +#include "intel_pm.h"
> +
> +static void intel_crtc_disable_noatomic(struct intel_crtc *crtc,
> +					struct drm_modeset_acquire_ctx *ctx)
> +{
> +	struct intel_encoder *encoder;
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct intel_bw_state *bw_state =3D
> +		to_intel_bw_state(dev_priv->bw_obj.state);
> +	struct intel_cdclk_state *cdclk_state =3D
> +		to_intel_cdclk_state(dev_priv->cdclk.obj.state);
> +	struct intel_dbuf_state *dbuf_state =3D
> +		to_intel_dbuf_state(dev_priv->dbuf.obj.state);
> +	struct intel_crtc_state *crtc_state =3D
> +		to_intel_crtc_state(crtc->base.state);
> +	struct intel_plane *plane;
> +	struct drm_atomic_state *state;
> +	struct intel_crtc_state *temp_crtc_state;
> +	enum pipe pipe =3D crtc->pipe;
> +	int ret;
> +
> +	if (!crtc_state->hw.active)
> +		return;
> +
> +	for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> +		const struct intel_plane_state *plane_state =3D
> +			to_intel_plane_state(plane->base.state);
> +
> +		if (plane_state->uapi.visible)
> +			intel_plane_disable_noatomic(crtc, plane);
> +	}
> +
> +	state =3D drm_atomic_state_alloc(&dev_priv->drm);
> +	if (!state) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "failed to disable [CRTC:%d:%s], out of memory",
> +			    crtc->base.base.id, crtc->base.name);
> +		return;
> +	}
> +
> +	state->acquire_ctx =3D ctx;
> +
> +	/* Everything's already locked, -EDEADLK can't happen. */
> +	temp_crtc_state =3D intel_atomic_get_crtc_state(state, crtc);
> +	ret =3D drm_atomic_add_affected_connectors(state, &crtc->base);
> +
> +	drm_WARN_ON(&dev_priv->drm, IS_ERR(temp_crtc_state) || ret);
> +
> +	dev_priv->display->crtc_disable(to_intel_atomic_state(state), crtc);
> +
> +	drm_atomic_state_put(state);
> +
> +	drm_dbg_kms(&dev_priv->drm,
> +		    "[CRTC:%d:%s] hw state adjusted, was enabled, now disabled\n",
> +		    crtc->base.base.id, crtc->base.name);
> +
> +	crtc->active =3D false;
> +	crtc->base.enabled =3D false;
> +
> +	drm_WARN_ON(&dev_priv->drm,
> +		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, NULL) < 0);
> +	crtc_state->uapi.active =3D false;
> +	crtc_state->uapi.connector_mask =3D 0;
> +	crtc_state->uapi.encoder_mask =3D 0;
> +	intel_crtc_free_hw_state(crtc_state);
> +	memset(&crtc_state->hw, 0, sizeof(crtc_state->hw));
> +
> +	for_each_encoder_on_crtc(&dev_priv->drm, &crtc->base, encoder)
> +		encoder->base.crtc =3D NULL;
> +
> +	intel_fbc_disable(crtc);
> +	intel_update_watermarks(dev_priv);
> +	intel_disable_shared_dpll(crtc_state);
> +
> +	intel_display_power_put_all_in_set(dev_priv, &crtc->enabled_power_domai=
ns);
> +
> +	cdclk_state->min_cdclk[pipe] =3D 0;
> +	cdclk_state->min_voltage_level[pipe] =3D 0;
> +	cdclk_state->active_pipes &=3D ~BIT(pipe);
> +
> +	dbuf_state->active_pipes &=3D ~BIT(pipe);
> +
> +	bw_state->data_rate[pipe] =3D 0;
> +	bw_state->num_active_planes[pipe] =3D 0;
> +}
> +
> +static void intel_modeset_update_connector_atomic_state(struct drm_devic=
e *dev)
> +{
> +	struct intel_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +
> +	drm_connector_list_iter_begin(dev, &conn_iter);
> +	for_each_intel_connector_iter(connector, &conn_iter) {
> +		struct drm_connector_state *conn_state =3D connector->base.state;
> +		struct intel_encoder *encoder =3D
> +			to_intel_encoder(connector->base.encoder);
> +
> +		if (conn_state->crtc)
> +			drm_connector_put(&connector->base);
> +
> +		if (encoder) {
> +			struct intel_crtc *crtc =3D
> +				to_intel_crtc(encoder->base.crtc);
> +			const struct intel_crtc_state *crtc_state =3D
> +				to_intel_crtc_state(crtc->base.state);
> +
> +			conn_state->best_encoder =3D &encoder->base;
> +			conn_state->crtc =3D &crtc->base;
> +			conn_state->max_bpc =3D (crtc_state->pipe_bpp ?: 24) / 3;
> +
> +			drm_connector_get(&connector->base);
> +		} else {
> +			conn_state->best_encoder =3D NULL;
> +			conn_state->crtc =3D NULL;
> +		}
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +}
> +
> +static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state *cr=
tc_state)
> +{
> +	if (intel_crtc_is_bigjoiner_slave(crtc_state))
> +		return;
> +
> +	crtc_state->uapi.enable =3D crtc_state->hw.enable;
> +	crtc_state->uapi.active =3D crtc_state->hw.active;
> +	drm_WARN_ON(crtc_state->uapi.crtc->dev,
> +		    drm_atomic_set_mode_for_crtc(&crtc_state->uapi, &crtc_state->hw.mo=
de) < 0);
> +
> +	crtc_state->uapi.adjusted_mode =3D crtc_state->hw.adjusted_mode;
> +	crtc_state->uapi.scaling_filter =3D crtc_state->hw.scaling_filter;
> +
> +	drm_property_replace_blob(&crtc_state->uapi.degamma_lut,
> +				  crtc_state->hw.degamma_lut);
> +	drm_property_replace_blob(&crtc_state->uapi.gamma_lut,
> +				  crtc_state->hw.gamma_lut);
> +	drm_property_replace_blob(&crtc_state->uapi.ctm,
> +				  crtc_state->hw.ctm);
> +}
> +
> +static void
> +intel_sanitize_plane_mapping(struct drm_i915_private *dev_priv)
> +{
> +	struct intel_crtc *crtc;
> +
> +	if (DISPLAY_VER(dev_priv) >=3D 4)
> +		return;
> +
> +	for_each_intel_crtc(&dev_priv->drm, crtc) {
> +		struct intel_plane *plane =3D
> +			to_intel_plane(crtc->base.primary);
> +		struct intel_crtc *plane_crtc;
> +		enum pipe pipe;
> +
> +		if (!plane->get_hw_state(plane, &pipe))
> +			continue;
> +
> +		if (pipe =3D=3D crtc->pipe)
> +			continue;
> +
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "[PLANE:%d:%s] attached to the wrong pipe, disabling plane\n",
> +			    plane->base.base.id, plane->base.name);
> +
> +		plane_crtc =3D intel_crtc_for_pipe(dev_priv, pipe);
> +		intel_plane_disable_noatomic(plane_crtc, plane);
> +	}
> +}
> +
> +static bool intel_crtc_has_encoders(struct intel_crtc *crtc)
> +{
> +	struct drm_device *dev =3D crtc->base.dev;
> +	struct intel_encoder *encoder;
> +
> +	for_each_encoder_on_crtc(dev, &crtc->base, encoder)
> +		return true;
> +
> +	return false;
> +}
> +
> +static struct intel_connector *intel_encoder_find_connector(struct intel=
_encoder *encoder)
> +{
> +	struct drm_device *dev =3D encoder->base.dev;
> +	struct intel_connector *connector;
> +
> +	for_each_connector_on_encoder(dev, &encoder->base, connector)
> +		return connector;
> +
> +	return NULL;
> +}
> +
> +static void intel_sanitize_fifo_underrun_reporting(const struct intel_cr=
tc_state *crtc_state)
> +{
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +
> +	if (!crtc_state->hw.active && !HAS_GMCH(i915))
> +		return;
> +
> +	/*
> +	 * We start out with underrun reporting disabled to avoid races.
> +	 * For correct bookkeeping mark this on active crtcs.
> +	 *
> +	 * Also on gmch platforms we dont have any hardware bits to
> +	 * disable the underrun reporting. Which means we need to start
> +	 * out with underrun reporting disabled also on inactive pipes,
> +	 * since otherwise we'll complain about the garbage we read when
> +	 * e.g. coming up after runtime pm.
> +	 *
> +	 * No protection against concurrent access is required - at
> +	 * worst a fifo underrun happens which also sets this to false.
> +	 */
> +	crtc->cpu_fifo_underrun_disabled =3D true;
> +
> +	/*
> +	 * We track the PCH trancoder underrun reporting state
> +	 * within the crtc. With crtc for pipe A housing the underrun
> +	 * reporting state for PCH transcoder A, crtc for pipe B housing
> +	 * it for PCH transcoder B, etc. LPT-H has only PCH transcoder A,
> +	 * and marking underrun reporting as disabled for the non-existing
> +	 * PCH transcoders B and C would prevent enabling the south
> +	 * error interrupt (see cpt_can_enable_serr_int()).
> +	 */
> +	if (intel_has_pch_trancoder(i915, crtc->pipe))
> +		crtc->pch_fifo_underrun_disabled =3D true;
> +}
> +
> +static void intel_sanitize_crtc(struct intel_crtc *crtc,
> +				struct drm_modeset_acquire_ctx *ctx)
> +{
> +	struct drm_device *dev =3D crtc->base.dev;
> +	struct intel_crtc_state *crtc_state =3D to_intel_crtc_state(crtc->base.=
state);
> +
> +	if (crtc_state->hw.active) {
> +		struct intel_plane *plane;
> +
> +		/* Disable everything but the primary plane */
> +		for_each_intel_plane_on_crtc(dev, crtc, plane) {
> +			const struct intel_plane_state *plane_state =3D
> +				to_intel_plane_state(plane->base.state);
> +
> +			if (plane_state->uapi.visible &&
> +			    plane->base.type !=3D DRM_PLANE_TYPE_PRIMARY)
> +				intel_plane_disable_noatomic(crtc, plane);
> +		}
> +
> +		/* Disable any background color/etc. set by the BIOS */
> +		intel_color_commit_noarm(crtc_state);
> +		intel_color_commit_arm(crtc_state);
> +	}
> +
> +	/*
> +	 * Adjust the state of the output pipe according to whether we have
> +	 * active connectors/encoders.
> +	 */
> +	if (crtc_state->hw.active && !intel_crtc_has_encoders(crtc) &&
> +	    !intel_crtc_is_bigjoiner_slave(crtc_state))
> +		intel_crtc_disable_noatomic(crtc, ctx);
> +}
> +
> +static bool has_bogus_dpll_config(const struct intel_crtc_state *crtc_st=
ate)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> +
> +	/*
> +	 * Some SNB BIOSen (eg. ASUS K53SV) are known to misprogram
> +	 * the hardware when a high res displays plugged in. DPLL P
> +	 * divider is zero, and the pipe timings are bonkers. We'll
> +	 * try to disable everything in that case.
> +	 *
> +	 * FIXME would be nice to be able to sanitize this state
> +	 * without several WARNs, but for now let's take the easy
> +	 * road.
> +	 */
> +	return IS_SANDYBRIDGE(dev_priv) &&
> +		crtc_state->hw.active &&
> +		crtc_state->shared_dpll &&
> +		crtc_state->port_clock =3D=3D 0;
> +}
> +
> +static void intel_sanitize_encoder(struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(encoder->base.dev);
> +	struct intel_connector *connector;
> +	struct intel_crtc *crtc =3D to_intel_crtc(encoder->base.crtc);
> +	struct intel_crtc_state *crtc_state =3D crtc ?
> +		to_intel_crtc_state(crtc->base.state) : NULL;
> +
> +	/*
> +	 * We need to check both for a crtc link (meaning that the encoder is
> +	 * active and trying to read from a pipe) and the pipe itself being
> +	 * active.
> +	 */
> +	bool has_active_crtc =3D crtc_state &&
> +		crtc_state->hw.active;
> +
> +	if (crtc_state && has_bogus_dpll_config(crtc_state)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "BIOS has misprogrammed the hardware. Disabling pipe %c\n",
> +			    pipe_name(crtc->pipe));
> +		has_active_crtc =3D false;
> +	}
> +
> +	connector =3D intel_encoder_find_connector(encoder);
> +	if (connector && !has_active_crtc) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "[ENCODER:%d:%s] has active connectors but no active pipe!\n",
> +			    encoder->base.base.id,
> +			    encoder->base.name);
> +
> +		/*
> +		 * Connector is active, but has no active pipe. This is fallout
> +		 * from our resume register restoring. Disable the encoder
> +		 * manually again.
> +		 */
> +		if (crtc_state) {
> +			struct drm_encoder *best_encoder;
> +
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "[ENCODER:%d:%s] manually disabled\n",
> +				    encoder->base.base.id,
> +				    encoder->base.name);
> +
> +			/* avoid oopsing in case the hooks consult best_encoder */
> +			best_encoder =3D connector->base.state->best_encoder;
> +			connector->base.state->best_encoder =3D &encoder->base;
> +
> +			/* FIXME NULL atomic state passed! */
> +			if (encoder->disable)
> +				encoder->disable(NULL, encoder, crtc_state,
> +						 connector->base.state);
> +			if (encoder->post_disable)
> +				encoder->post_disable(NULL, encoder, crtc_state,
> +						      connector->base.state);
> +
> +			connector->base.state->best_encoder =3D best_encoder;
> +		}
> +		encoder->base.crtc =3D NULL;
> +
> +		/*
> +		 * Inconsistent output/port/pipe state happens presumably due to
> +		 * a bug in one of the get_hw_state functions. Or someplace else
> +		 * in our code, like the register restore mess on resume. Clamp
> +		 * things to off as a safer default.
> +		 */
> +		connector->base.dpms =3D DRM_MODE_DPMS_OFF;
> +		connector->base.encoder =3D NULL;
> +	}
> +
> +	/* notify opregion of the sanitized encoder state */
> +	intel_opregion_notify_encoder(encoder, connector && has_active_crtc);
> +
> +	if (HAS_DDI(dev_priv))
> +		intel_ddi_sanitize_encoder_pll_mapping(encoder);
> +}
> +
> +/* FIXME read out full plane state for all planes */
> +static void readout_plane_state(struct drm_i915_private *dev_priv)
> +{
> +	struct intel_plane *plane;
> +	struct intel_crtc *crtc;
> +
> +	for_each_intel_plane(&dev_priv->drm, plane) {
> +		struct intel_plane_state *plane_state =3D
> +			to_intel_plane_state(plane->base.state);
> +		struct intel_crtc_state *crtc_state;
> +		enum pipe pipe =3D PIPE_A;
> +		bool visible;
> +
> +		visible =3D plane->get_hw_state(plane, &pipe);
> +
> +		crtc =3D intel_crtc_for_pipe(dev_priv, pipe);
> +		crtc_state =3D to_intel_crtc_state(crtc->base.state);
> +
> +		intel_set_plane_visible(crtc_state, plane_state, visible);
> +
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "[PLANE:%d:%s] hw state readout: %s, pipe %c\n",
> +			    plane->base.base.id, plane->base.name,
> +			    str_enabled_disabled(visible), pipe_name(pipe));
> +	}
> +
> +	for_each_intel_crtc(&dev_priv->drm, crtc) {
> +		struct intel_crtc_state *crtc_state =3D
> +			to_intel_crtc_state(crtc->base.state);
> +
> +		intel_plane_fixup_bitmasks(crtc_state);
> +	}
> +}
> +
> +static void intel_modeset_readout_hw_state(struct drm_device *dev)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct intel_cdclk_state *cdclk_state =3D
> +		to_intel_cdclk_state(dev_priv->cdclk.obj.state);
> +	struct intel_dbuf_state *dbuf_state =3D
> +		to_intel_dbuf_state(dev_priv->dbuf.obj.state);
> +	enum pipe pipe;
> +	struct intel_crtc *crtc;
> +	struct intel_encoder *encoder;
> +	struct intel_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +	u8 active_pipes =3D 0;
> +
> +	for_each_intel_crtc(dev, crtc) {
> +		struct intel_crtc_state *crtc_state =3D
> +			to_intel_crtc_state(crtc->base.state);
> +
> +		__drm_atomic_helper_crtc_destroy_state(&crtc_state->uapi);
> +		intel_crtc_free_hw_state(crtc_state);
> +		intel_crtc_state_reset(crtc_state, crtc);
> +
> +		intel_crtc_get_pipe_config(crtc_state);
> +
> +		crtc_state->hw.enable =3D crtc_state->hw.active;
> +
> +		crtc->base.enabled =3D crtc_state->hw.enable;
> +		crtc->active =3D crtc_state->hw.active;
> +
> +		if (crtc_state->hw.active)
> +			active_pipes |=3D BIT(crtc->pipe);
> +
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "[CRTC:%d:%s] hw state readout: %s\n",
> +			    crtc->base.base.id, crtc->base.name,
> +			    str_enabled_disabled(crtc_state->hw.active));
> +	}
> +
> +	cdclk_state->active_pipes =3D active_pipes;
> +	dbuf_state->active_pipes =3D active_pipes;
> +
> +	readout_plane_state(dev_priv);
> +
> +	for_each_intel_encoder(dev, encoder) {
> +		struct intel_crtc_state *crtc_state =3D NULL;
> +
> +		pipe =3D 0;
> +
> +		if (encoder->get_hw_state(encoder, &pipe)) {
> +			crtc =3D intel_crtc_for_pipe(dev_priv, pipe);
> +			crtc_state =3D to_intel_crtc_state(crtc->base.state);
> +
> +			encoder->base.crtc =3D &crtc->base;
> +			intel_encoder_get_config(encoder, crtc_state);
> +
> +			/* read out to slave crtc as well for bigjoiner */
> +			if (crtc_state->bigjoiner_pipes) {
> +				struct intel_crtc *slave_crtc;
> +
> +				/* encoder should read be linked to bigjoiner master */
> +				WARN_ON(intel_crtc_is_bigjoiner_slave(crtc_state));
> +
> +				for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, slave_crtc,
> +								 intel_crtc_bigjoiner_slave_pipes(crtc_state)) {
> +					struct intel_crtc_state *slave_crtc_state;
> +
> +					slave_crtc_state =3D to_intel_crtc_state(slave_crtc->base.state);
> +					intel_encoder_get_config(encoder, slave_crtc_state);
> +				}
> +			}
> +		} else {
> +			encoder->base.crtc =3D NULL;
> +		}
> +
> +		if (encoder->sync_state)
> +			encoder->sync_state(encoder, crtc_state);
> +
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "[ENCODER:%d:%s] hw state readout: %s, pipe %c\n",
> +			    encoder->base.base.id, encoder->base.name,
> +			    str_enabled_disabled(encoder->base.crtc),
> +			    pipe_name(pipe));
> +	}
> +
> +	intel_dpll_readout_hw_state(dev_priv);
> +
> +	drm_connector_list_iter_begin(dev, &conn_iter);
> +	for_each_intel_connector_iter(connector, &conn_iter) {
> +		if (connector->get_hw_state(connector)) {
> +			struct intel_crtc_state *crtc_state;
> +			struct intel_crtc *crtc;
> +
> +			connector->base.dpms =3D DRM_MODE_DPMS_ON;
> +
> +			encoder =3D intel_attached_encoder(connector);
> +			connector->base.encoder =3D &encoder->base;
> +
> +			crtc =3D to_intel_crtc(encoder->base.crtc);
> +			crtc_state =3D crtc ? to_intel_crtc_state(crtc->base.state) : NULL;
> +
> +			if (crtc_state && crtc_state->hw.active) {
> +				/*
> +				 * This has to be done during hardware readout
> +				 * because anything calling .crtc_disable may
> +				 * rely on the connector_mask being accurate.
> +				 */
> +				crtc_state->uapi.connector_mask |=3D
> +					drm_connector_mask(&connector->base);
> +				crtc_state->uapi.encoder_mask |=3D
> +					drm_encoder_mask(&encoder->base);
> +			}
> +		} else {
> +			connector->base.dpms =3D DRM_MODE_DPMS_OFF;
> +			connector->base.encoder =3D NULL;
> +		}
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "[CONNECTOR:%d:%s] hw state readout: %s\n",
> +			    connector->base.base.id, connector->base.name,
> +			    str_enabled_disabled(connector->base.encoder));
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +
> +	for_each_intel_crtc(dev, crtc) {
> +		struct intel_bw_state *bw_state =3D
> +			to_intel_bw_state(dev_priv->bw_obj.state);
> +		struct intel_crtc_state *crtc_state =3D
> +			to_intel_crtc_state(crtc->base.state);
> +		struct intel_plane *plane;
> +		int min_cdclk =3D 0;
> +
> +		if (crtc_state->hw.active) {
> +			/*
> +			 * The initial mode needs to be set in order to keep
> +			 * the atomic core happy. It wants a valid mode if the
> +			 * crtc's enabled, so we do the above call.
> +			 *
> +			 * But we don't set all the derived state fully, hence
> +			 * set a flag to indicate that a full recalculation is
> +			 * needed on the next commit.
> +			 */
> +			crtc_state->inherited =3D true;
> +
> +			intel_crtc_update_active_timings(crtc_state);
> +
> +			intel_crtc_copy_hw_to_uapi_state(crtc_state);
> +		}
> +
> +		for_each_intel_plane_on_crtc(&dev_priv->drm, crtc, plane) {
> +			const struct intel_plane_state *plane_state =3D
> +				to_intel_plane_state(plane->base.state);
> +
> +			/*
> +			 * FIXME don't have the fb yet, so can't
> +			 * use intel_plane_data_rate() :(
> +			 */
> +			if (plane_state->uapi.visible)
> +				crtc_state->data_rate[plane->id] =3D
> +					4 * crtc_state->pixel_rate;
> +			/*
> +			 * FIXME don't have the fb yet, so can't
> +			 * use plane->min_cdclk() :(
> +			 */
> +			if (plane_state->uapi.visible && plane->min_cdclk) {
> +				if (crtc_state->double_wide || DISPLAY_VER(dev_priv) >=3D 10)
> +					crtc_state->min_cdclk[plane->id] =3D
> +						DIV_ROUND_UP(crtc_state->pixel_rate, 2);
> +				else
> +					crtc_state->min_cdclk[plane->id] =3D
> +						crtc_state->pixel_rate;
> +			}
> +			drm_dbg_kms(&dev_priv->drm,
> +				    "[PLANE:%d:%s] min_cdclk %d kHz\n",
> +				    plane->base.base.id, plane->base.name,
> +				    crtc_state->min_cdclk[plane->id]);
> +		}
> +
> +		if (crtc_state->hw.active) {
> +			min_cdclk =3D intel_crtc_compute_min_cdclk(crtc_state);
> +			if (drm_WARN_ON(dev, min_cdclk < 0))
> +				min_cdclk =3D 0;
> +		}
> +
> +		cdclk_state->min_cdclk[crtc->pipe] =3D min_cdclk;
> +		cdclk_state->min_voltage_level[crtc->pipe] =3D
> +			crtc_state->min_voltage_level;
> +
> +		intel_bw_crtc_update(bw_state, crtc_state);
> +	}
> +}
> +
> +static void
> +get_encoder_power_domains(struct drm_i915_private *dev_priv)
> +{
> +	struct intel_encoder *encoder;
> +
> +	for_each_intel_encoder(&dev_priv->drm, encoder) {
> +		struct intel_crtc_state *crtc_state;
> +
> +		if (!encoder->get_power_domains)
> +			continue;
> +
> +		/*
> +		 * MST-primary and inactive encoders don't have a crtc state
> +		 * and neither of these require any power domain references.
> +		 */
> +		if (!encoder->base.crtc)
> +			continue;
> +
> +		crtc_state =3D to_intel_crtc_state(encoder->base.crtc->state);
> +		encoder->get_power_domains(encoder, crtc_state);
> +	}
> +}
> +
> +static void intel_early_display_was(struct drm_i915_private *dev_priv)
> +{
> +	/*
> +	 * Display WA #1185 WaDisableDARBFClkGating:glk,icl,ehl,tgl
> +	 * Also known as Wa_14010480278.
> +	 */
> +	if (IS_DISPLAY_VER(dev_priv, 10, 12))
> +		intel_de_write(dev_priv, GEN9_CLKGATE_DIS_0,
> +			       intel_de_read(dev_priv, GEN9_CLKGATE_DIS_0) | DARBF_GATING_DIS=
);
> +
> +	if (IS_HASWELL(dev_priv)) {
> +		/*
> +		 * WaRsPkgCStateDisplayPMReq:hsw
> +		 * System hang if this isn't done before disabling all planes!
> +		 */
> +		intel_de_write(dev_priv, CHICKEN_PAR1_1,
> +			       intel_de_read(dev_priv, CHICKEN_PAR1_1) | FORCE_ARB_IDLE_PLANE=
S);
> +	}
> +
> +	if (IS_KABYLAKE(dev_priv) || IS_COFFEELAKE(dev_priv) || IS_COMETLAKE(de=
v_priv)) {
> +		/* Display WA #1142:kbl,cfl,cml */
> +		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> +			     KBL_ARB_FILL_SPARE_22, KBL_ARB_FILL_SPARE_22);
> +		intel_de_rmw(dev_priv, CHICKEN_MISC_2,
> +			     KBL_ARB_FILL_SPARE_13 | KBL_ARB_FILL_SPARE_14,
> +			     KBL_ARB_FILL_SPARE_14);
> +	}
> +}
> +
> +void intel_modeset_setup_hw_state(struct drm_device *dev,
> +				  struct drm_modeset_acquire_ctx *ctx)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct intel_encoder *encoder;
> +	struct intel_crtc *crtc;
> +	intel_wakeref_t wakeref;
> +
> +	wakeref =3D intel_display_power_get(dev_priv, POWER_DOMAIN_INIT);
> +
> +	intel_early_display_was(dev_priv);
> +	intel_modeset_readout_hw_state(dev);
> +
> +	/* HW state is read out, now we need to sanitize this mess. */
> +	get_encoder_power_domains(dev_priv);
> +
> +	intel_pch_sanitize(dev_priv);
> +
> +	/*
> +	 * intel_sanitize_plane_mapping() may need to do vblank
> +	 * waits, so we need vblank interrupts restored beforehand.
> +	 */
> +	for_each_intel_crtc(&dev_priv->drm, crtc) {
> +		struct intel_crtc_state *crtc_state =3D
> +			to_intel_crtc_state(crtc->base.state);
> +
> +		intel_sanitize_fifo_underrun_reporting(crtc_state);
> +
> +		drm_crtc_vblank_reset(&crtc->base);
> +
> +		if (crtc_state->hw.active)
> +			intel_crtc_vblank_on(crtc_state);
> +	}
> +
> +	intel_fbc_sanitize(dev_priv);
> +
> +	intel_sanitize_plane_mapping(dev_priv);
> +
> +	for_each_intel_encoder(dev, encoder)
> +		intel_sanitize_encoder(encoder);
> +
> +	for_each_intel_crtc(&dev_priv->drm, crtc) {
> +		struct intel_crtc_state *crtc_state =3D
> +			to_intel_crtc_state(crtc->base.state);
> +
> +		intel_sanitize_crtc(crtc, ctx);
> +		intel_crtc_state_dump(crtc_state, NULL, "setup_hw_state");
> +	}
> +
> +	intel_modeset_update_connector_atomic_state(dev);
> +
> +	intel_dpll_sanitize_state(dev_priv);
> +
> +	if (IS_G4X(dev_priv)) {
> +		g4x_wm_get_hw_state(dev_priv);
> +		g4x_wm_sanitize(dev_priv);
> +	} else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv)) {
> +		vlv_wm_get_hw_state(dev_priv);
> +		vlv_wm_sanitize(dev_priv);
> +	} else if (DISPLAY_VER(dev_priv) >=3D 9) {
> +		skl_wm_get_hw_state(dev_priv);
> +		skl_wm_sanitize(dev_priv);
> +	} else if (HAS_PCH_SPLIT(dev_priv)) {
> +		ilk_wm_get_hw_state(dev_priv);
> +	}
> +
> +	for_each_intel_crtc(dev, crtc) {
> +		struct intel_crtc_state *crtc_state =3D
> +			to_intel_crtc_state(crtc->base.state);
> +		struct intel_power_domain_mask put_domains;
> +
> +		intel_modeset_get_crtc_power_domains(crtc_state, &put_domains);
> +		if (drm_WARN_ON(dev, !bitmap_empty(put_domains.bits, POWER_DOMAIN_NUM)=
))
> +			intel_modeset_put_crtc_power_domains(crtc, &put_domains);
> +	}
> +
> +	intel_display_power_put(dev_priv, POWER_DOMAIN_INIT, wakeref);
> +
> +	intel_power_domains_sanitize_state(dev_priv);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.h b/drivers=
/gpu/drm/i915/display/intel_modeset_setup.h
> new file mode 100644
> index 000000000000..c29b34c6a7b0
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2022 Intel Corporation
> + */
> +
> +#ifndef __INTEL_MODESET_SETUP_H__
> +#define __INTEL_MODESET_SETUP_H__
> +
> +struct drm_device;
> +struct drm_modeset_acquire_ctx;
> +
> +void intel_modeset_setup_hw_state(struct drm_device *dev,
> +				  struct drm_modeset_acquire_ctx *ctx);
> +
> +#endif /* __INTEL_MODESET_SETUP_H__ */

--=20
Jani Nikula, Intel Open Source Graphics Center
