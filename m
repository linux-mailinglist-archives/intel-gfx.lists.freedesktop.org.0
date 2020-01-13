Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BEFC139491
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 16:16:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECCA16E0D8;
	Mon, 13 Jan 2020 15:16:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 654B36E0D8
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 15:16:53 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 07:16:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,429,1571727600"; d="scan'208";a="273052616"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 13 Jan 2020 07:16:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Jan 2020 17:16:49 +0200
Date: Mon, 13 Jan 2020 17:16:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Message-ID: <20200113151649.GR13686@intel.com>
References: <20191223154522.9797-1-stanislav.lisovskiy@intel.com>
 <20191223154522.9797-3-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223154522.9797-3-stanislav.lisovskiy@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v10 2/4] drm/i915: Move dbuf slice update to
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

On Mon, Dec 23, 2019 at 05:45:20PM +0200, Stanislav Lisovskiy wrote:
> Current DBuf slices update wasn't done in proper
> place, especially its "post" part, which should
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
> index d009466cf444..bba7897d05d8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14515,13 +14515,33 @@ static void intel_update_trans_port_sync_crtcs(=
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
> @@ -14534,10 +14554,6 @@ static void skl_commit_modeset_enables(struct in=
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
> @@ -14586,10 +14602,6 @@ static void skl_commit_modeset_enables(struct in=
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
> @@ -14719,6 +14731,9 @@ static void intel_atomic_commit_tail(struct intel=
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

> @@ -14794,6 +14809,9 @@ static void intel_atomic_commit_tail(struct intel=
_atomic_state *state)
>  	if (state->modeset && intel_can_enable_sagv(state))
>  		intel_enable_sagv(dev_priv);
>  =

> +	/* Disable all slices, we don't need */
> +	icl_dbuf_slice_post_update(state);
> +

IIRC I previously suggested a bit better place for this.

>  	drm_atomic_helper_commit_hw_done(&state->base);
>  =

>  	if (state->modeset) {
> -- =

> 2.24.1.485.gad05a3d8e5

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
