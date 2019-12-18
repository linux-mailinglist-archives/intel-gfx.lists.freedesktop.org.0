Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A6712505F
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 19:12:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 559D789C99;
	Wed, 18 Dec 2019 18:12:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5470389C99
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 18:12:11 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 10:12:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="222061658"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 18 Dec 2019 10:12:08 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Dec 2019 20:12:07 +0200
Date: Wed, 18 Dec 2019 20:12:07 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20191218181207.GT1208@intel.com>
References: <20191213130228.29509-1-stanislav.lisovskiy@intel.com>
 <20191213130228.29509-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213130228.29509-3-stanislav.lisovskiy@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v8 2/4] drm/i915: Move dbuf slice update to
 proper place
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

On Fri, Dec 13, 2019 at 03:02:26PM +0200, Stanislav Lisovskiy wrote:
> Current DBuf slices update wasn't done in proper
> plane, especially its "post" part, which should
> disable those only once vblank had passed and
> all other changes are committed.
> =

> v2: Fix to use dev_priv and intel_atomic_state
>     instead of skl_ddb_values
>     (to be nuked in Villes patch)
> =

> v3: Renamed "enabled_slices" to "enabled_dbuf_slices_num"
>     (Matt Roper)
> =

> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 38 ++++++++++++++------
>  1 file changed, 28 insertions(+), 10 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 62e33bca7014..0e09d0c23b1d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14546,13 +14546,33 @@ static void intel_update_trans_port_sync_crtcs(=
struct intel_crtc *crtc,
>  				       state);
>  }
>  =

> +static void icl_dbuf_slice_pre_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_num;
> +	u8 required_slices =3D state->enabled_dbuf_slices_num;
> +
> +	/* If 2nd DBuf slice required, enable it here */
> +	if (INTEL_GEN(dev_priv) >=3D 11 && required_slices > hw_enabled_slices)
> +		icl_dbuf_slices_update(dev_priv, required_slices);
> +}
> +
> +static void icl_dbuf_slice_post_update(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_num;
> +	u8 required_slices =3D state->enabled_dbuf_slices_num;
> +
> +	/* If 2nd DBuf slice is no more required disable it */
> +	if (INTEL_GEN(dev_priv) >=3D 11 && required_slices < hw_enabled_slices)
> +		icl_dbuf_slices_update(dev_priv, required_slices);
> +}
> +
>  static void skl_commit_modeset_enables(struct intel_atomic_state *state)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
>  	struct intel_crtc *crtc;
>  	struct intel_crtc_state *old_crtc_state, *new_crtc_state;
> -	u8 hw_enabled_slices =3D dev_priv->enabled_dbuf_slices_num;
> -	u8 required_slices =3D state->enabled_dbuf_slices_num;
>  	struct skl_ddb_entry entries[I915_MAX_PIPES] =3D {};
>  	u8 dirty_pipes =3D 0;
>  	int i;
> @@ -14565,10 +14585,6 @@ static void skl_commit_modeset_enables(struct in=
tel_atomic_state *state)
>  			dirty_pipes |=3D BIT(crtc->pipe);
>  	}
>  =

> -	/* If 2nd DBuf slice required, enable it here */
> -	if (INTEL_GEN(dev_priv) >=3D 11 && required_slices > hw_enabled_slices)
> -		icl_dbuf_slices_update(dev_priv, required_slices);
> -
>  	/*
>  	 * Whenever the number of active pipes changes, we need to make sure we
>  	 * update the pipes in the right order so that their ddb allocations
> @@ -14617,10 +14633,6 @@ static void skl_commit_modeset_enables(struct in=
tel_atomic_state *state)
>  				intel_wait_for_vblank(dev_priv, pipe);
>  		}
>  	}
> -
> -	/* If 2nd DBuf slice is no more required disable it */
> -	if (INTEL_GEN(dev_priv) >=3D 11 && required_slices < hw_enabled_slices)
> -		icl_dbuf_slices_update(dev_priv, required_slices);
>  }
>  =

>  static void intel_atomic_helper_free_state(struct drm_i915_private *dev_=
priv)
> @@ -14750,6 +14762,9 @@ static void intel_atomic_commit_tail(struct intel=
_atomic_state *state)
>  	if (state->modeset)
>  		intel_encoders_update_prepare(state);
>  =

> +	/* Enable all new slices, we might need */
> +	icl_dbuf_slice_pre_update(state);
> +
>  	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
>  	dev_priv->display.commit_modeset_enables(state);
>  =

> @@ -14825,6 +14840,9 @@ static void intel_atomic_commit_tail(struct intel=
_atomic_state *state)
>  	if (state->modeset && intel_can_enable_sagv(state))
>  		intel_enable_sagv(dev_priv);
>  =

> +	/* Disable all slices, we don't need */
> +	icl_dbuf_slice_post_update(state);

I would put that just before or after the .optimize_watermarks() loop.
That's kinda the equivalent spot where we do other FIFO related things
on older platforms. And crucially it's before we do the extra underrun
checks and state verification. Not sure why the state verification isn't
blowing up for you with this actually?

Otherwise looks good
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>


> +
>  	drm_atomic_helper_commit_hw_done(&state->base);
>  =

>  	if (state->modeset) {
> -- =

> 2.17.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
