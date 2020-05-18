Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B681D7BAE
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 16:46:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2F2E6E33D;
	Mon, 18 May 2020 14:46:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C671E6E33D
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 14:46:31 +0000 (UTC)
IronPort-SDR: 4DObdi2MoEb2tUBx3QJGZlXq8gV920yNW1MSXke+dN8L9MnAjpSXEy9Yb4UWo+Uly1sCcVeAad
 26kkl3GexTTw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 07:46:31 -0700
IronPort-SDR: 2+dkAPgumXmYiNnaDR3/mWTFMxX8XQ+TzIxru6MfuZXbx0ze6XFcwepoZgQLVH9uCb5GkUm4V6
 nnEYTw5CIkbw==
X-IronPort-AV: E=Sophos;i="5.73,407,1583222400"; d="scan'208";a="411280462"
Received: from unknown (HELO intel.com) ([10.237.72.89])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 07:46:29 -0700
Date: Mon, 18 May 2020 17:42:26 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200518144226.GA13077@intel.com>
References: <20200518122303.28083-1-ville.syrjala@linux.intel.com>
 <20200518122303.28083-2-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518122303.28083-2-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 2/4] Revert "drm/i915: Move the dbuf
 pre/post plane update"
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

On Mon, May 18, 2020 at 03:23:01PM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Dbuf slice tracking busted across runtime PM. Back to the
> drawing board.
> =

> This reverts commit c7c0e7ebe4d9963573f81399374e4e95f37fd8e3.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 41 +++++++++++++++++++-
>  drivers/gpu/drm/i915/intel_pm.c              | 37 ------------------
>  drivers/gpu/drm/i915/intel_pm.h              |  2 -
>  3 files changed, 39 insertions(+), 41 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index e1407dc28ddc..49577f19ff9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -15207,6 +15207,43 @@ static void intel_commit_modeset_enables(struct =
intel_atomic_state *state)
>  	}
>  }
>  =


Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> +static void icl_dbuf_slice_pre_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	const struct intel_dbuf_state *new_dbuf_state =3D
> +		intel_atomic_get_new_dbuf_state(state);
> +	const struct intel_dbuf_state *old_dbuf_state =3D
> +		intel_atomic_get_old_dbuf_state(state);
> +
> +	if (!new_dbuf_state ||
> +	    new_dbuf_state->enabled_slices =3D=3D old_dbuf_state->enabled_slice=
s)
> +		return;
> +
> +	WARN_ON(!new_dbuf_state->base.changed);
> +
> +	gen9_dbuf_slices_update(dev_priv,
> +				old_dbuf_state->enabled_slices |
> +				new_dbuf_state->enabled_slices);
> +}
> +
> +static void icl_dbuf_slice_post_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	const struct intel_dbuf_state *new_dbuf_state =3D
> +		intel_atomic_get_new_dbuf_state(state);
> +	const struct intel_dbuf_state *old_dbuf_state =3D
> +		intel_atomic_get_old_dbuf_state(state);
> +
> +	if (!new_dbuf_state ||
> +	    new_dbuf_state->enabled_slices =3D=3D old_dbuf_state->enabled_slice=
s)
> +		return;
> +
> +	WARN_ON(!new_dbuf_state->base.changed);
> +
> +	gen9_dbuf_slices_update(dev_priv,
> +				new_dbuf_state->enabled_slices);
> +}
> +
>  static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> @@ -15447,7 +15484,7 @@ static void intel_atomic_commit_tail(struct intel=
_atomic_state *state)
>  	if (state->modeset)
>  		intel_encoders_update_prepare(state);
>  =

> -	intel_dbuf_pre_plane_update(state);
> +	icl_dbuf_slice_pre_update(state);
>  =

>  	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
>  	dev_priv->display.commit_modeset_enables(state);
> @@ -15502,7 +15539,7 @@ static void intel_atomic_commit_tail(struct intel=
_atomic_state *state)
>  			dev_priv->display.optimize_watermarks(state, crtc);
>  	}
>  =

> -	intel_dbuf_post_plane_update(state);
> +	icl_dbuf_slice_post_update(state);
>  =

>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state, new_cr=
tc_state, i) {
>  		intel_post_plane_update(state, crtc);
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index d40d22eb65da..a92d57d9b759 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -7806,40 +7806,3 @@ int intel_dbuf_init(struct drm_i915_private *dev_p=
riv)
>  =

>  	return 0;
>  }
> -
> -void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	const struct intel_dbuf_state *new_dbuf_state =3D
> -		intel_atomic_get_new_dbuf_state(state);
> -	const struct intel_dbuf_state *old_dbuf_state =3D
> -		intel_atomic_get_old_dbuf_state(state);
> -
> -	if (!new_dbuf_state ||
> -	    new_dbuf_state->enabled_slices =3D=3D old_dbuf_state->enabled_slice=
s)
> -		return;
> -
> -	WARN_ON(!new_dbuf_state->base.changed);
> -
> -	gen9_dbuf_slices_update(dev_priv,
> -				old_dbuf_state->enabled_slices |
> -				new_dbuf_state->enabled_slices);
> -}
> -
> -void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	const struct intel_dbuf_state *new_dbuf_state =3D
> -		intel_atomic_get_new_dbuf_state(state);
> -	const struct intel_dbuf_state *old_dbuf_state =3D
> -		intel_atomic_get_old_dbuf_state(state);
> -
> -	if (!new_dbuf_state ||
> -	    new_dbuf_state->enabled_slices =3D=3D old_dbuf_state->enabled_slice=
s)
> -		return;
> -
> -	WARN_ON(!new_dbuf_state->base.changed);
> -
> -	gen9_dbuf_slices_update(dev_priv,
> -				new_dbuf_state->enabled_slices);
> -}
> diff --git a/drivers/gpu/drm/i915/intel_pm.h b/drivers/gpu/drm/i915/intel=
_pm.h
> index 6636d2a057cd..3fcc9b6e2cbf 100644
> --- a/drivers/gpu/drm/i915/intel_pm.h
> +++ b/drivers/gpu/drm/i915/intel_pm.h
> @@ -83,7 +83,5 @@ intel_atomic_get_dbuf_state(struct intel_atomic_state *=
state);
>  	to_intel_dbuf_state(intel_atomic_get_new_global_obj_state(state, &to_i9=
15(state->base.dev)->dbuf.obj))
>  =

>  int intel_dbuf_init(struct drm_i915_private *dev_priv);
> -void intel_dbuf_pre_plane_update(struct intel_atomic_state *state);
> -void intel_dbuf_post_plane_update(struct intel_atomic_state *state);
>  =

>  #endif /* __INTEL_PM_H__ */
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
