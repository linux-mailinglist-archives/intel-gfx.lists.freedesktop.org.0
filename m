Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 428EB302461
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 12:41:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8800589C60;
	Mon, 25 Jan 2021 11:41:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E3D689C56
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 11:41:34 +0000 (UTC)
IronPort-SDR: 3umefTqveGJ2R7aR5KSlz0epDsnCx2QUGjSuCwqD+KP/COjVOUjQLBm5NMPvucBY0gwKgF9Be8
 2e39oy1M5Ozg==
X-IronPort-AV: E=McAfee;i="6000,8403,9874"; a="177138295"
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="177138295"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2021 03:41:33 -0800
IronPort-SDR: KApHhuKqBzqYwzT6bGYHkQmsXNdGzp1MuCtMkdVvgwntEGE0Rpet8RnxRw3IzxyPTCFjyEw1WD
 l1S/wxIPyEzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,373,1602572400"; d="scan'208";a="387323383"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 25 Jan 2021 03:41:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 25 Jan 2021 13:41:30 +0200
Date: Mon, 25 Jan 2021 13:41:30 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <YA6uauT4HatEFKUq@intel.com>
References: <20210122232647.22688-1-manasi.d.navare@intel.com>
 <20210122232647.22688-6-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210122232647.22688-6-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [CI v5 06/18] drm/i915/display/dp: Compute VRR
 state in atomic_check
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

On Fri, Jan 22, 2021 at 03:26:35PM -0800, Manasi Navare wrote:
> This forces a complete modeset if vrr drm crtc state goes
> from enabled to disabled and vice versa.
> This patch also computes vrr state variables from the mode timings
> and based on the vrr property set by userspace as well as hardware's
> vrr capability.
> =

> v2:
> *Rebase
> v3:
> * Vmin =3D max (vtotal, vmin) (Manasi)
> v4:
> * set crtc_state->vrr.enable =3D 0 for disable request
> v5:
> * drm_dbg_kms, squash crtc states def patch (Jani N)
> v6:
> * Move vrr modeset check to separate function (Jani N)
> v7:
> * Ville's fixes - vmin, vmax rename, fix rounding dir
> * Add pipeline full, flipline to crtc state
> * Pass conn state to vrr_compute_config (Ville)
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  9 +++
>  .../drm/i915/display/intel_display_types.h    |  7 ++
>  drivers/gpu/drm/i915/display/intel_dp.c       |  1 +
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 70 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_vrr.h      |  8 +++
>  5 files changed, 95 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 2f878b7f9be8..7fc3ffdbc9b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -58,6 +58,7 @@
>  #include "display/intel_sdvo.h"
>  #include "display/intel_tv.h"
>  #include "display/intel_vdsc.h"
> +#include "display/intel_vrr.h"
>  =

>  #include "gem/i915_gem_object.h"
>  =

> @@ -11316,6 +11317,12 @@ intel_pipe_config_compare(const struct intel_crt=
c_state *current_config,
>  =

>  	PIPE_CONF_CHECK_I(mst_master_transcoder);
>  =

> +	PIPE_CONF_CHECK_BOOL(vrr.enable);
> +	PIPE_CONF_CHECK_I(vrr.vmin);
> +	PIPE_CONF_CHECK_I(vrr.vmax);
> +	PIPE_CONF_CHECK_I(vrr.flipline);
> +	PIPE_CONF_CHECK_I(vrr.pipeline_full);
> +
>  #undef PIPE_CONF_CHECK_X
>  #undef PIPE_CONF_CHECK_I
>  #undef PIPE_CONF_CHECK_BOOL
> @@ -12473,6 +12480,8 @@ static int intel_atomic_check(struct drm_device *=
dev,
>  			new_crtc_state->uapi.mode_changed =3D true;
>  	}
>  =

> +	intel_vrr_check_modeset(state);
> +
>  	ret =3D drm_atomic_helper_check_modeset(dev, &state->base);
>  	if (ret)
>  		goto fail;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 927a8aeae324..b5bac4c81de1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1151,6 +1151,13 @@ struct intel_crtc_state {
>  	struct intel_dsb *dsb;
>  =

>  	u32 psr2_man_track_ctl;
> +
> +	/* Variable Refresh Rate state */
> +	struct {
> +		bool enable;
> +		u8 pipeline_full;
> +		u16 flipline, vmin, vmax;
> +	} vrr;
>  };
>  =

>  enum intel_pipe_crc_source {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index e6efa0fc31ea..6c1aaaf587c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1827,6 +1827,7 @@ intel_dp_compute_config(struct intel_encoder *encod=
er,
>  	if (!HAS_DDI(dev_priv))
>  		intel_dp_set_clock(encoder, pipe_config);
>  =

> +	intel_vrr_compute_config(pipe_config, conn_state);
>  	intel_psr_compute_config(intel_dp, pipe_config);
>  	intel_dp_drrs_compute_config(intel_dp, pipe_config, output_bpp,
>  				     constant_n);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i=
915/display/intel_vrr.c
> index b0503edbfdfe..346ea3c16cc8 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -29,3 +29,73 @@ bool intel_vrr_is_capable(struct drm_connector *connec=
tor)
>  		drm_dp_sink_can_do_video_without_timing_msa(intel_dp->dpcd) &&
>  		info->monitor_range.max_vfreq - info->monitor_range.min_vfreq > 10;
>  }
> +
> +void
> +intel_vrr_check_modeset(struct intel_atomic_state *state)
> +{
> +	int i;
> +	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> +	struct intel_crtc *crtc;
> +
> +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> +					    new_crtc_state, i) {
> +		if (new_crtc_state->uapi.vrr_enabled !=3D
> +		    old_crtc_state->uapi.vrr_enabled)
> +			new_crtc_state->uapi.mode_changed =3D true;
> +	}
> +}
> +
> +void
> +intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
> +			 struct drm_connector_state *conn_state)
> +{
> +	struct intel_connector *connector =3D
> +		to_intel_connector(conn_state->connector);
> +	struct drm_display_mode *adjusted_mode =3D &crtc_state->hw.adjusted_mod=
e;
> +	const struct drm_display_info *info =3D &connector->base.display_info;
> +	int vmin, vmax;
> +
> +	if (!intel_vrr_is_capable(&connector->base))
> +		return;
> +
> +	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
> +		return;
> +
> +	if (!crtc_state->uapi.vrr_enabled)
> +		return;
> +
> +	vmin =3D DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> +			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
> +	vmax =3D adjusted_mode->crtc_clock * 1000 /
> +		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
> +
> +	vmin =3D max_t(int, vmin, adjusted_mode->crtc_vtotal);
> +	vmax =3D max_t(int, vmax, adjusted_mode->crtc_vtotal);
> +
> +	if (vmin >=3D vmax)
> +		return;
> +
> +	/*
> +	 * flipline determines the min vblank length the hardware will
> +	 * generate, and flipline>=3Dvmin+1, hence we reduce vmin by one
> +	 * to make sure we can get the actual min vblank length.
> +	 */
> +	crtc_state->vrr.vmin =3D vmin - 1;
> +	crtc_state->vrr.vmax =3D vmax;
> +	crtc_state->vrr.enable =3D true;
> +
> +	crtc_state->vrr.flipline =3D crtc_state->vrr.vmin + 1;
> +
> +	/*
> +	 * FIXME: s/4/framestart_delay+1/ to get consistent

Should say just framestart_delay here since it now includes the +1

> +	 * earliest/latest points for register latching regardless
> +	 * of the framestart_delay used?
> +	 *
> +	 * FIXME: this really needs the extra scanline to provide consistent
> +	 * behaviour for all framestart_delay values. Otherwise with
> +	 * framestart_delay=3D=3D3 we will end up extending the min vblank by

And this should say framestart_delay=3D=3D4

> +	 * one extra line.
> +	 */
> +	crtc_state->vrr.pipeline_full =3D
> +		min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay - 4 - 1);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i=
915/display/intel_vrr.h
> index 3700acec5d09..67c477d6d1a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -9,7 +9,15 @@
>  #include <linux/types.h>
>  =

>  struct drm_connector;
> +struct drm_connector_state;
> +struct intel_atomic_state;
> +struct intel_crtc;
> +struct intel_crtc_state;
> +struct intel_dp;
>  =

>  bool intel_vrr_is_capable(struct drm_connector *connector);
> +void intel_vrr_check_modeset(struct intel_atomic_state *state);
> +void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
> +			      struct drm_connector_state *conn_state);
>  =

>  #endif /* __INTEL_VRR_H__ */
> -- =

> 2.19.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
