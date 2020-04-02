Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E64F19C749
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Apr 2020 18:44:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD5456EACA;
	Thu,  2 Apr 2020 16:44:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 786826EACA
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Apr 2020 16:44:09 +0000 (UTC)
IronPort-SDR: cJ7X/noOtUPEclynaEwFlrVyxMOlLVvx7L2fHs8O28hKK6HRCGyJMrNXtsEI5gt4z0NeDahzhR
 aBoBMHHPXQDw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2020 09:44:09 -0700
IronPort-SDR: 8IAwP1ATGnT1B8duAmEGXYzQI4Ce+YPvyB8ZRzE0LeA2DIejcqKDoeVi/cjC3fnUQnshquTEtT
 WmxysepywAow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,336,1580803200"; d="scan'208";a="328879085"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2020 09:44:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Apr 2020 19:44:05 +0300
Date: Thu, 2 Apr 2020 19:44:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200402164405.GB13686@intel.com>
References: <20200326181005.11775-1-stanislav.lisovskiy@intel.com>
 <20200326181005.11775-6-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200326181005.11775-6-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v20 05/10] drm/i915: Extract gen specific
 functions from intel_can_enable_sagv
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 26, 2020 at 08:10:00PM +0200, Stanislav Lisovskiy wrote:
> Addressing one of the comments, recommending to extract platform
> specific code from intel_can_enable_sagv as a preparation, before
> we are going to add support for tgl+.
> =

> Current code in intel_can_enable_sagv is valid only for skl,
> so this patch adds also proper support for icl, subsequent
> patches will add support for tgl+, combined with other required
> changes.
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 89 ++++++++++++++++++++++-----------
>  1 file changed, 61 insertions(+), 28 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index f8d62d1977ac..64193b098175 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3757,41 +3757,24 @@ intel_disable_sagv(struct drm_i915_private *dev_p=
riv)
>  	return 0;
>  }
>  =

> -bool intel_can_enable_sagv(struct intel_atomic_state *state)
> +static bool icl_can_enable_sagv_on_pipe(struct intel_crtc_state *crtc_st=
ate)

icl_crtc_can_enable_sagv()/etc. would be more consistent with existing
practices. crtc_state can be const.

>  {
> -	struct drm_device *dev =3D state->base.dev;
> +	struct drm_device *dev =3D crtc_state->uapi.crtc->dev;

IMO just remove this 'dev' variable.

>  	struct drm_i915_private *dev_priv =3D to_i915(dev);
>  	struct intel_crtc *crtc;
>  	struct intel_plane *plane;
> -	struct intel_crtc_state *crtc_state;
> -	enum pipe pipe;
> +	struct intel_plane_state *plane_state;

const

>  	int level, latency;
>  =

> -	if (!intel_has_sagv(dev_priv))
> -		return false;
> +	crtc =3D to_intel_crtc(crtc_state->uapi.crtc);

Initialize when declaring.

>  =

> -	/*
> -	 * If there are no active CRTCs, no additional checks need be performed
> -	 */
> -	if (hweight8(state->active_pipes) =3D=3D 0)
> -		return true;
> -
> -	/*
> -	 * SKL+ workaround: bspec recommends we disable SAGV when we have
> -	 * more then one pipe enabled
> -	 */
> -	if (hweight8(state->active_pipes) > 1)
> -		return false;
> -
> -	/* Since we're now guaranteed to only have one active CRTC... */
> -	pipe =3D ffs(state->active_pipes) - 1;
> -	crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> -	crtc_state =3D to_intel_crtc_state(crtc->base.state);

We seem to be missing a hw.active check.

> -
> -	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> +	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE) {
> +		DRM_DEBUG_KMS("No SAGV for interlaced mode on pipe %c\n",
> +			      pipe_name(crtc->pipe));
>  		return false;
> +	}
>  =

> -	for_each_intel_plane_on_crtc(dev, crtc, plane) {
> +	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, crtc_s=
tate) {
>  		struct skl_plane_wm *wm =3D
>  			&crtc_state->wm.skl.optimal.planes[plane->id];
>  =

> @@ -3807,7 +3790,7 @@ bool intel_can_enable_sagv(struct intel_atomic_stat=
e *state)
>  		latency =3D dev_priv->wm.skl_latency[level];
>  =

>  		if (skl_needs_memory_bw_wa(dev_priv) &&
> -		    plane->base.state->fb->modifier =3D=3D
> +		    plane_state->uapi.fb->modifier =3D=3D
>  		    I915_FORMAT_MOD_X_TILED)
>  			latency +=3D 15;
>  =

> @@ -3816,8 +3799,58 @@ bool intel_can_enable_sagv(struct intel_atomic_sta=
te *state)
>  		 * incur memory latencies higher than sagv_block_time_us we
>  		 * can't enable SAGV.
>  		 */
> -		if (latency < dev_priv->sagv_block_time_us)
> +		if (latency < dev_priv->sagv_block_time_us) {
> +			DRM_DEBUG_KMS("Latency %d < sagv block time %d, no SAGV for pipe %c\n=
",
> +				      latency, dev_priv->sagv_block_time_us, pipe_name(crtc->pipe));
>  			return false;

How much noise will these debugs generate?

> +		}
> +	}
> +
> +	return true;
> +}
> +
> +static bool skl_can_enable_sagv_on_pipe(struct intel_crtc_state *crtc_st=
ate)
> +{
> +	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_state->=
uapi.state);
> +
> +	/*
> +	 * It has been recommended that for Gen 9 we switch SAGV off when
> +	 * multiple pipes are used.
> +	 */
> +	if (hweight8(state->active_pipes) > 1)
> +		return false;
> +
> +	/*
> +	 * Besides active pipe limitation, rest of checks pretty much match ICL
> +	 * so no need to duplicate code
> +	 */
> +	return icl_can_enable_sagv_on_pipe(crtc_state);
> +}
> +
> +bool intel_can_enable_sagv(struct intel_atomic_state *state)
> +{
> +	struct drm_device *dev =3D state->base.dev;

Pls don't add needless 'dev' variables.

> +	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct intel_crtc *crtc;
> +	struct intel_crtc_state *crtc_state;

const

> +	int i;
> +
> +	if (!intel_has_sagv(dev_priv))
> +		return false;
> +
> +	/*
> +	 * If there are no active CRTCs, no additional checks need be performed
> +	 */
> +	if (hweight8(state->active_pipes) =3D=3D 0)
> +		return true;

Seems pointless.

> +
> +	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {

Hmm. I think this is now temporarily busted since we only consider
the crtcs in the state. Would seem like we need to introduce the
sagv bitmaks first/at the same time as we do this.

> +		if (INTEL_GEN(dev_priv) <=3D 9) {
> +			if (!skl_can_enable_sagv_on_pipe(crtc_state))
> +				return false;
> +		} else if (!icl_can_enable_sagv_on_pipe(crtc_state)) {
> +			return false;
> +		}

Very hard to read if-else construct. Plase make it consistent for both
branches, and put the icl+ case first.

>  	}
>  =

>  	return true;
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
