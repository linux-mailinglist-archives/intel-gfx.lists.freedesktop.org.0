Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF28292B9D
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Oct 2020 18:37:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F88E6E02A;
	Mon, 19 Oct 2020 16:37:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 924A06EA16
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Oct 2020 16:37:21 +0000 (UTC)
IronPort-SDR: /+QOQmgm6DEfKj7dGyQnlRA6OAIs7KfLxLfacA4GLL15tFIfIV2APuhUNEICeGeGiWb+Kx42f3
 i/wNlO76gFSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9779"; a="231253134"
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="231253134"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2020 09:37:02 -0700
IronPort-SDR: q+9/xK2OxPyQK37VJ2ZP16EcZl7EoX6mcEFozx20LYYy3B9gx1nzC8B2YwDwqwg3X8oLdCuYOJ
 MQDZHrplujrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,395,1596524400"; d="scan'208";a="331938390"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 19 Oct 2020 09:37:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 19 Oct 2020 19:36:59 +0300
Date: Mon, 19 Oct 2020 19:36:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20201019163659.GW6112@intel.com>
References: <20201008214535.22942-1-manasi.d.navare@intel.com>
 <20201008214535.22942-7-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201008214535.22942-7-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v10 07/11] drm/i915: Make hardware readout
 work on i915.
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

On Thu, Oct 08, 2020 at 02:45:31PM -0700, Manasi Navare wrote:
> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> =

> Unfortunately I have no way to test this, but it should be correct
> if the bios sets up bigjoiner in a sane way.
> =

> Skip iterating over bigjoiner slaves, only the master has the state we
> care about.
> =

> Add the width of the bigjoiner slave to the reconstructed fb.
> =

> Hide the bigjoiner slave to userspace, and double the mode on bigjoiner
> master.
> =

> And last, disable bigjoiner slave from primary if reconstruction fails.
> =

> v2:
> * Manual Rebase (Manasi)
> =

> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 64 +++++++++++++++++++-
>  1 file changed, 62 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index faf8bf757bed..aa981aa4f6a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -3619,6 +3619,8 @@ intel_find_initial_plane_obj(struct intel_crtc *int=
el_crtc,
>  	struct intel_plane *intel_plane =3D to_intel_plane(primary);
>  	struct intel_plane_state *intel_state =3D
>  		to_intel_plane_state(plane_state);
> +	 struct intel_crtc_state *crtc_state =3D

Whitespace fail. Didn't checkpatch complain?

> +		 to_intel_crtc_state(intel_crtc->base.state);
>  	struct drm_framebuffer *fb;
>  	struct i915_vma *vma;
>  =

> @@ -3641,7 +3643,7 @@ intel_find_initial_plane_obj(struct intel_crtc *int=
el_crtc,
>  		if (c =3D=3D &intel_crtc->base)
>  			continue;
>  =

> -		if (!to_intel_crtc(c)->active)
> +		if (!to_intel_crtc_state(c->state)->uapi.active)
>  			continue;
>  =

>  		state =3D to_intel_plane_state(c->primary->state);
> @@ -3663,6 +3665,11 @@ intel_find_initial_plane_obj(struct intel_crtc *in=
tel_crtc,
>  	 * pretend the BIOS never had it enabled.
>  	 */
>  	intel_plane_disable_noatomic(intel_crtc, intel_plane);
> +	if (crtc_state->bigjoiner) {
> +		struct intel_crtc *slave =3D
> +			crtc_state->bigjoiner_linked_crtc;
> +		intel_plane_disable_noatomic(slave, to_intel_plane(slave->base.primary=
));
> +	}
>  =

>  	return;
>  =

> @@ -10687,6 +10694,7 @@ static void
>  skl_get_initial_plane_config(struct intel_crtc *crtc,
>  			     struct intel_initial_plane_config *plane_config)
>  {
> +	struct intel_crtc_state *crtc_state =3D to_intel_crtc_state(crtc->base.=
state);
>  	struct drm_device *dev =3D crtc->base.dev;
>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct intel_plane *plane =3D to_intel_plane(crtc->base.primary);
> @@ -10795,6 +10803,18 @@ skl_get_initial_plane_config(struct intel_crtc *=
crtc,
>  	fb->height =3D ((val >> 16) & 0xffff) + 1;
>  	fb->width =3D ((val >> 0) & 0xffff) + 1;
>  =

> +	/* add bigjoiner slave as well, if the fb stretches both */
> +	if (crtc_state->bigjoiner) {
> +		enum pipe bigjoiner_pipe =3D crtc_state->bigjoiner_linked_crtc->pipe;
> +
> +		if (fb->width =3D=3D crtc_state->pipe_src_w &&
> +		    (intel_de_read(dev_priv, PLANE_SURF(pipe, plane_id)) & 0xfffff000)=
 =3D=3D plane_config->base) {
> +			val =3D intel_de_read(dev_priv, PLANE_SIZE(bigjoiner_pipe, plane_id));
> +			fb->height +=3D ((val >> 16) & 0xfff) + 1;
> +			fb->width +=3D ((val >> 0) & 0x1fff) + 1;

This looks wrong.

> +		}
> +	}
> +
>  	val =3D intel_de_read(dev_priv, PLANE_STRIDE(pipe, plane_id));
>  	stride_mult =3D skl_plane_stride_mult(fb, 0, DRM_MODE_ROTATE_0);
>  	fb->pitches[0] =3D (val & 0x3ff) * stride_mult;
> @@ -18793,7 +18813,8 @@ static void intel_sanitize_crtc(struct intel_crtc=
 *crtc,
>  =

>  	/* Adjust the state of the output pipe according to whether we
>  	 * have active connectors/encoders. */
> -	if (crtc_state->hw.active && !intel_crtc_has_encoders(crtc))
> +	if (crtc_state->hw.active && !intel_crtc_has_encoders(crtc) &&
> +	    !crtc_state->bigjoiner_slave)
>  		intel_crtc_disable_noatomic(crtc, ctx);
>  =

>  	if (crtc_state->hw.active || HAS_GMCH(dev_priv)) {
> @@ -19072,6 +19093,9 @@ static void intel_modeset_readout_hw_state(struct=
 drm_device *dev)
>  		struct intel_plane *plane;
>  		int min_cdclk =3D 0;
>  =

> +		if (crtc_state->bigjoiner_slave)
> +			continue;
> +
>  		if (crtc_state->hw.active) {
>  			struct drm_display_mode mode;
>  =

> @@ -19096,6 +19120,9 @@ static void intel_modeset_readout_hw_state(struct=
 drm_device *dev)
>  			mode.hdisplay =3D crtc_state->pipe_src_w;
>  			mode.vdisplay =3D crtc_state->pipe_src_h;
>  =

> +			if (crtc_state->bigjoiner)
> +				mode.hdisplay *=3D 2;
> +
>  			intel_crtc_compute_pixel_rate(crtc_state);
>  =

>  			intel_crtc_update_active_timings(crtc_state);
> @@ -19146,6 +19173,39 @@ static void intel_modeset_readout_hw_state(struc=
t drm_device *dev)
>  		intel_bw_crtc_update(bw_state, crtc_state);
>  =

>  		intel_pipe_config_sanity_check(dev_priv, crtc_state);
> +
> +		/* discard our incomplete slave state, copy it from master */

Wasn't expecting this many horrible hacks around readout. So basiclly it
looks like we have very little in terms of useful readout+state
checking.

> +		if (crtc_state->bigjoiner && crtc_state->hw.active) {
> +			struct intel_crtc *slave =3D crtc_state->bigjoiner_linked_crtc;
> +			struct intel_crtc_state *slave_crtc_state =3D
> +				to_intel_crtc_state(slave->base.state);
> +
> +			copy_bigjoiner_crtc_state(slave_crtc_state, crtc_state);
> +			slave->base.mode =3D crtc->base.mode;
> +
> +			cdclk_state->min_cdclk[slave->pipe] =3D min_cdclk;
> +			cdclk_state->min_voltage_level[slave->pipe] =3D
> +				crtc_state->min_voltage_level;
> +
> +			for_each_intel_plane_on_crtc(&dev_priv->drm, slave, plane) {
> +				const struct intel_plane_state *plane_state =3D
> +					to_intel_plane_state(plane->base.state);
> +
> +				/*
> +				 * FIXME don't have the fb yet, so can't
> +				 * use intel_plane_data_rate() :(
> +				 */
> +				if (plane_state->uapi.visible)
> +					crtc_state->data_rate[plane->id] =3D
> +						4 * crtc_state->pixel_rate;
> +				else
> +					crtc_state->data_rate[plane->id] =3D 0;
> +			}
> +
> +			intel_bw_crtc_update(bw_state, slave_crtc_state);
> +			drm_calc_timestamping_constants(&slave->base,
> +							&slave_crtc_state->hw.adjusted_mode);
> +		}
>  	}
>  }
>  =

> -- =

> 2.19.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
