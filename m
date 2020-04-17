Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA85F1AE417
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 19:52:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D97B6E0F8;
	Fri, 17 Apr 2020 17:52:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 680126E0F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 17:52:08 +0000 (UTC)
IronPort-SDR: AxT22IrigYfTyuLBdGnSutfx36FXDxoTzPOWW2SEJtHhQr0280FMHWsr8A8fm9L9qT0QILvhGx
 PzYyiUhqd9fw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2020 10:52:07 -0700
IronPort-SDR: A8H9QDqG7ysiA2tVqLG5hFPnkF9as/HORSPZvkVEZ9Kf4hFcpfTfPjSuYs8TnAosLmQm2MMj4W
 CMPPmBuQNxNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; d="scan'208";a="243079089"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 17 Apr 2020 10:52:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Apr 2020 20:52:04 +0300
Date: Fri, 17 Apr 2020 20:52:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200417175204.GQ6112@intel.com>
References: <20200415143911.10244-6-stanislav.lisovskiy@intel.com>
 <20200415150016.28363-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200415150016.28363-1-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v24 05/11] drm/i915: Use bw state for per
 crtc SAGV evaluation
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

On Wed, Apr 15, 2020 at 06:00:16PM +0300, Stanislav Lisovskiy wrote:
> Future platforms require per-crtc SAGV evaluation
> and serializing global state when those are changed
> from different commits.
> =

> v2: - Add has_sagv check to intel_crtc_can_enable_sagv
>       so that it sets bit in reject mask.
>     - Use bw_state in intel_pre/post_plane_enable_sagv
>       instead of atomic state
> =

> v3: - Fixed rebase conflict, now using
>       intel_atomic_crtc_state_for_each_plane_state in
>       order to call it from atomic check
> v4: - Use fb modifier from plane state
> =

> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@intel.com>
> Cc: James Ausmus <james.ausmus@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.h |   6 ++
>  drivers/gpu/drm/i915/intel_pm.c         | 118 ++++++++++++++++++------
>  drivers/gpu/drm/i915/intel_pm.h         |   4 +-
>  3 files changed, 97 insertions(+), 31 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i9=
15/display/intel_bw.h
> index ac004d6f4276..d6df91058223 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -18,6 +18,12 @@ struct intel_crtc_state;
>  struct intel_bw_state {
>  	struct intel_global_state base;
>  =

> +	/*
> +	 * Contains a bit mask, used to determine, whether correspondent
> +	 * pipe allows SAGV or not.
> +	 */
> +	u8 pipe_sagv_reject;
> +
>  	unsigned int data_rate[I915_MAX_PIPES];
>  	u8 num_active_planes[I915_MAX_PIPES];
>  };
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index b0810d76ad47..65fd5a3571e4 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -43,6 +43,7 @@
>  #include "i915_fixed.h"
>  #include "i915_irq.h"
>  #include "i915_trace.h"
> +#include "display/intel_bw.h"
>  #include "intel_pm.h"
>  #include "intel_sideband.h"
>  #include "../../../platform/x86/intel_ips.h"
> @@ -3634,7 +3635,7 @@ static bool skl_needs_memory_bw_wa(struct drm_i915_=
private *dev_priv)
>  	return IS_GEN9_BC(dev_priv) || IS_BROXTON(dev_priv);
>  }
>  =

> -static bool
> +bool

Can't see where that's needed.

>  intel_has_sagv(struct drm_i915_private *dev_priv)
>  {
>  	/* HACK! */
> @@ -3760,34 +3761,78 @@ intel_disable_sagv(struct drm_i915_private *dev_p=
riv)
>  void intel_sagv_pre_plane_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	const struct intel_bw_state *new_bw_state =3D NULL;

Pointless =3DNULL

>  =

> -	if (!intel_can_enable_sagv(state))
> +	/*
> +	 * Just return if we can't control SAGV or don't have it.
> +	 * This is different from situation when we have SAGV but just can't
> +	 * afford it due to DBuf limitation - in case if SAGV is completely
> +	 * disabled in a BIOS, we are not even allowed to send a PCode request,
> +	 * as it will throw an error. So have to check it here.
> +	 */
> +	if (!intel_has_sagv(dev_priv))
> +		return;

Feels a bit wrong to have this here. I'm thinking if we change the check
further down to be something like:

if (can_sagv(old_bw_state) && !can_sagv(new_bw_state))
	disable_sagv();

(+ the similar for the enable) then we wouldn't need this extra
has_sagv() check at all I believe. In fact that would also avoid poking
the pcode when nothing changes. Now we seem to poke it every time?

Anyways since it looks like we're already poking the pcode a bit too
much I guess it's fine for now. Could do this stuff as a followup.

> +
> +	new_bw_state =3D intel_atomic_get_new_bw_state(state);
> +	if (!new_bw_state)
> +		return;
> +
> +	if (!intel_can_enable_sagv(new_bw_state))
>  		intel_disable_sagv(dev_priv);
>  }
>  =

>  void intel_sagv_post_plane_update(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	const struct intel_bw_state *new_bw_state =3D NULL;

Pointless =3DNULL

>  =

> -	if (intel_can_enable_sagv(state))
> +	/*
> +	 * Just return if we can't control SAGV or don't have it.
> +	 * This is different from situation when we have SAGV but just can't
> +	 * afford it due to DBuf limitation - in case if SAGV is completely
> +	 * disabled in a BIOS, we are not even allowed to send a PCode request,
> +	 * as it will throw an error. So have to check it here.
> +	 */
> +	if (!intel_has_sagv(dev_priv))
> +		return;
> +
> +	new_bw_state =3D intel_atomic_get_new_bw_state(state);
> +	if (!new_bw_state)
> +		return;
> +
> +	if (intel_can_enable_sagv(new_bw_state))
>  		intel_enable_sagv(dev_priv);
>  }
>  =

>  static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *cr=
tc_state)
>  {
> -	struct drm_device *dev =3D crtc_state->uapi.crtc->dev;
> -	struct drm_i915_private *dev_priv =3D to_i915(dev);
> +	struct intel_atomic_state *state =3D to_intel_atomic_state(crtc_state->=
uapi.state);
> +	struct drm_i915_private *dev_priv =3D to_i915(crtc_state->uapi.crtc->de=
v);

I'd use either state->base.dev or crtc->base.dev here to make it a bit
shorter.

>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct intel_plane *plane;
> +	const struct intel_plane_state *plane_state;
>  	int level, latency;
>  =

> +	if (!intel_has_sagv(dev_priv))
> +		return false;
> +
>  	if (!crtc_state->hw.active)
>  		return true;
>  =

> -	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
> +	/*
> +	 * SKL+ workaround: bspec recommends we disable SAGV when we have
> +	 * more then one pipe enabled
> +	 */
> +	if (hweight8(state->active_pipes) > 1)
>  		return false;
>  =

> -	for_each_intel_plane_on_crtc(dev, crtc, plane) {
> +	if (crtc_state->hw.adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE) {
> +		DRM_DEBUG_KMS("No SAGV for interlaced mode on pipe %c\n",
> +			      pipe_name(crtc->pipe));

Why does this deserve a special debug when the other paths don't? I'd
just drop this.

> +		return false;
> +	}
> +
> +	intel_atomic_crtc_state_for_each_plane_state(plane, plane_state, crtc_s=
tate) {
>  		const struct skl_plane_wm *wm =3D
>  			&crtc_state->wm.skl.optimal.planes[plane->id];
>  =

> @@ -3803,7 +3848,7 @@ static bool intel_crtc_can_enable_sagv(const struct=
 intel_crtc_state *crtc_state
>  		latency =3D dev_priv->wm.skl_latency[level];
>  =

>  		if (skl_needs_memory_bw_wa(dev_priv) &&
> -		    plane->base.state->fb->modifier =3D=3D
> +		    plane_state->uapi.fb->modifier =3D=3D
>  		    I915_FORMAT_MOD_X_TILED)
>  			latency +=3D 15;
>  =

> @@ -3819,35 +3864,44 @@ static bool intel_crtc_can_enable_sagv(const stru=
ct intel_crtc_state *crtc_state
>  	return true;
>  }
>  =

> -bool intel_can_enable_sagv(struct intel_atomic_state *state)
> +bool intel_can_enable_sagv(const struct intel_bw_state *bw_state)
>  {
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	return bw_state->pipe_sagv_reject =3D=3D 0;
> +}
> +
> +static int intel_compute_sagv_mask(struct intel_atomic_state *state)
> +{
> +	int ret;
>  	struct intel_crtc *crtc;
> -	const struct intel_crtc_state *crtc_state;
> -	enum pipe pipe;
> +	struct intel_crtc_state *new_crtc_state;
> +	struct intel_bw_state *new_bw_state =3D NULL;
> +	const struct intel_bw_state *old_bw_state =3D NULL;
> +	int i;
>  =

> -	if (!intel_has_sagv(dev_priv))
> -		return false;
> +	for_each_new_intel_crtc_in_state(state, crtc,
> +					 new_crtc_state, i) {
> +		new_bw_state =3D intel_atomic_get_bw_state(state);
> +		if (IS_ERR(new_bw_state))
> +			return PTR_ERR(new_bw_state);
>  =

> -	/*
> -	 * If there are no active CRTCs, no additional checks need be performed
> -	 */
> -	if (hweight8(state->active_pipes) =3D=3D 0)
> -		return true;
> +		old_bw_state =3D intel_atomic_get_old_bw_state(state);
>  =

> -	/*
> -	 * SKL+ workaround: bspec recommends we disable SAGV when we have
> -	 * more then one pipe enabled
> -	 */
> -	if (hweight8(state->active_pipes) > 1)
> -		return false;
> +		if (intel_crtc_can_enable_sagv(new_crtc_state))
> +			new_bw_state->pipe_sagv_reject &=3D ~BIT(crtc->pipe);
> +		else
> +			new_bw_state->pipe_sagv_reject |=3D BIT(crtc->pipe);
> +	}
>  =

> -	/* Since we're now guaranteed to only have one active CRTC... */
> -	pipe =3D ffs(state->active_pipes) - 1;
> -	crtc =3D intel_get_crtc_for_pipe(dev_priv, pipe);
> -	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> +	if (!old_bw_state)

nit: I'd probably check for !new_bw_state since it's the one we operate
on.

> +		return 0;
>  =

> -	return intel_crtc_can_enable_sagv(crtc_state);
> +	if (new_bw_state->pipe_sagv_reject !=3D old_bw_state->pipe_sagv_reject)=
 {
> +		ret =3D intel_atomic_serialize_global_state(&new_bw_state->base);

We should only need to serialize if can_sagv(old) !=3D new_sagv(old),
otherwise if old_mask!=3Dnew_mask then just grabbing the write
lock should be sufficient.

This is looking pretty good overall. The one problem I still see is that
we only do the sagv_enable/disable when state->modeset=3D=3Dtrue. Looks like
a pre-existing issue with the current code though.

Hmm. You did keep the single pipe restriction in
intel_crtc_can_enable_sagv(), but I don't think state->active_pipes
will be populated correctly for non-modesets.

I guess what we could do as a start is only do intel_compute_sagv_mask()
when state->modeset=3D=3Dtrue. That is clearly wrong, but looks like it's
how the current code works atm. So in theory shouldn't break anything
that's not already broken.

The proper fix (which can be a separate patch it seems) I think would
be to track the active_pipes bitmask in bw_state (like we do for
cdclk_state) + pull the sagv stuff from under state->modeset.
I think we need to do that before we continue onto icl/tgl since
otherwise we can't trust the sagv mask when doing the qgv mask
decisions.

> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
>  }
>  =

>  /*
> @@ -5860,6 +5914,10 @@ skl_compute_wm(struct intel_atomic_state *state)
>  	if (ret)
>  		return ret;
>  =

> +	ret =3D intel_compute_sagv_mask(state);
> +	if (ret)
> +		return ret;
> +
>  	/*
>  	 * skl_compute_ddb() will have adjusted the final watermarks
>  	 * based on how much ddb is available. Now we can actually
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index 9a6036ab0f90..abefc4205d0b 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -9,6 +9,7 @@
>  #include <linux/types.h>
>  =

>  #include "i915_reg.h"
> +#include "display/intel_bw.h"
>  =

>  struct drm_device;
>  struct drm_i915_private;
> @@ -41,7 +42,8 @@ void skl_pipe_wm_get_hw_state(struct intel_crtc *crtc,
>  			      struct skl_pipe_wm *out);
>  void g4x_wm_sanitize(struct drm_i915_private *dev_priv);
>  void vlv_wm_sanitize(struct drm_i915_private *dev_priv);
> -bool intel_can_enable_sagv(struct intel_atomic_state *state);
> +bool intel_has_sagv(struct drm_i915_private *dev_priv);
> +bool intel_can_enable_sagv(const struct intel_bw_state *bw_state);
>  int intel_enable_sagv(struct drm_i915_private *dev_priv);
>  int intel_disable_sagv(struct drm_i915_private *dev_priv);
>  void intel_sagv_pre_plane_update(struct intel_atomic_state *state);
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
