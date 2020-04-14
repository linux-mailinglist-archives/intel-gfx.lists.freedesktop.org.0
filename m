Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C73C71A8741
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Apr 2020 19:16:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B967C89A8B;
	Tue, 14 Apr 2020 17:16:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88D8F89A8B
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Apr 2020 17:16:46 +0000 (UTC)
IronPort-SDR: b/hiSDTnizLO0JD2Dsk83U2geJ+2BKNTNWitFDGYyaBvXQ5L2YuhUpNURVmC+9RSA69leS1amJ
 PFtgbZRoG06Q==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 10:16:44 -0700
IronPort-SDR: KFqwgNqqibJOuSAckgTnW9+6zeWdlF9c5DmeWNypqMAOkCn3KAIGiEFLACthtaF/VaZBXmG1+4
 k3nr6saucONg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,383,1580803200"; d="scan'208";a="288280901"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 14 Apr 2020 10:16:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 14 Apr 2020 20:16:41 +0300
Date: Tue, 14 Apr 2020 20:16:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200414171641.GD6112@intel.com>
References: <20200409154730.18568-6-stanislav.lisovskiy@intel.com>
 <20200410122432.9001-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410122432.9001-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v23 05/13] drm/i915: Prepare to extract gen
 specific functions from intel_can_enable_sagv
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

On Fri, Apr 10, 2020 at 03:24:32PM +0300, Stanislav Lisovskiy wrote:
> Addressing one of the comments, recommending to extract platform
> specific code from intel_can_enable_sagv as a preparation, before
> we are going to add support for tgl+.
> =

> v2: - Removed whitespace
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 66 ++++++++++++++++++---------------
>  1 file changed, 37 insertions(+), 29 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index 15ad6a73e0bd..a90cd235954d 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3757,42 +3757,25 @@ intel_disable_sagv(struct drm_i915_private *dev_p=
riv)
>  	return 0;
>  }
>  =

> -bool intel_can_enable_sagv(struct intel_atomic_state *state)
> +static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *cr=
tc_state)
>  {
> -	struct drm_device *dev =3D state->base.dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> -	struct intel_crtc *crtc;
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct intel_plane *plane;
> -	struct intel_crtc_state *crtc_state;
> -	enum pipe pipe;
> +	const struct intel_plane_state *plane_state;
>  	int level, latency;
>  =

> -	if (!intel_has_sagv(dev_priv))
> -		return false;
> -
> -	/*
> -	 * If there are no active CRTCs, no additional checks need be performed
> -	 */
> -	if (hweight8(state->active_pipes) =3D=3D 0)
> +	if (!crtc_state->hw.active)
>  		return true;
>  =

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
> -
> -	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> +	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE) {
> +		DRM_DEBUG_KMS("No SAGV for interlaced mode on pipe %c\n",
> +			      pipe_name(crtc->pipe));

Why are we adding new debugs in this patch? Please stick to pure
refactoring.

>  		return false;
> +	}
>  =

> -	for_each_intel_plane_on_crtc(dev, crtc, plane) {
> -		struct skl_plane_wm *wm =3D
> +	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, crtc_s=
tate) {

Too early for this change. Again, pure refactoring please.

> +		const struct skl_plane_wm *wm =3D
>  			&crtc_state->wm.skl.optimal.planes[plane->id];
>  =

>  		/* Skip this plane if it's not enabled */
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

> @@ -3823,6 +3806,31 @@ bool intel_can_enable_sagv(struct intel_atomic_sta=
te *state)
>  	return true;
>  }
>  =

> +bool intel_can_enable_sagv(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_crtc *crtc;
> +	const struct intel_crtc_state *crtc_state;
> +	enum pipe pipe;
> +
> +	if (!intel_has_sagv(dev_priv))
> +		return false;
> +
> +	/*
> +	 * SKL+ workaround: bspec recommends we disable SAGV when we have
> +	 * more then one pipe enabled
> +	 */
> +	if (hweight8(state->active_pipes) > 1)
> +		return false;
> +

Lost the active_pipes=3D=3D0 check here, which means pipe=3D-1 below.

> +	/* Since we're now guaranteed to only have one active CRTC... */
> +	pipe =3D ffs(state->active_pipes) - 1;
> +	crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> +	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> +
> +	return intel_crtc_can_enable_sagv(crtc_state);
> +}
> +
>  /*
>   * Calculate initial DBuf slice offset, based on slice size
>   * and mask(i.e if slice size is 1024 and second slice is enabled
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
