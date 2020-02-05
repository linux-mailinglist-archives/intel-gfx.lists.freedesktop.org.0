Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E447C153311
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 15:32:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53A806E9AD;
	Wed,  5 Feb 2020 14:32:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 792646E9AD
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Feb 2020 14:32:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Feb 2020 06:32:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,405,1574150400"; d="scan'208";a="264240777"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 05 Feb 2020 06:32:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Feb 2020 16:32:48 +0200
Date: Wed, 5 Feb 2020 16:32:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200205143248.GI13686@intel.com>
References: <20200203074756.10549-1-manasi.d.navare@intel.com>
 <20200203074756.10549-3-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200203074756.10549-3-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/dp: Add all tiled and port
 sync conns to modeset
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

On Sun, Feb 02, 2020 at 11:47:56PM -0800, Manasi Navare wrote:
> If one of the synced crtcs needs a full modeset, we need
> to make sure all the synced crtcs are forced a full
> modeset.
> =

> v2:
> * Add tiles based on cpu_trans check (Ville)
> =

> Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |  85 -----------
>  drivers/gpu/drm/i915/display/intel_dp.c      | 142 ++++++++++++++++++-
>  2 files changed, 141 insertions(+), 86 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index a943787167de..6383d1287472 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14669,76 +14669,6 @@ static bool intel_cpu_transcoders_need_modeset(s=
truct intel_atomic_state *state,
>  	return false;
>  }
>  =

> -static int
> -intel_modeset_all_tiles(struct intel_atomic_state *state, int tile_grp_i=
d)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct drm_connector *connector;
> -	struct drm_connector_list_iter conn_iter;
> -	int ret =3D 0;
> -
> -	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> -	drm_for_each_connector_iter(connector, &conn_iter) {
> -		struct drm_connector_state *conn_state;
> -		struct drm_crtc_state *crtc_state;
> -
> -		if (!connector->has_tile ||
> -		    connector->tile_group->id !=3D tile_grp_id)
> -			continue;
> -		conn_state =3D drm_atomic_get_connector_state(&state->base,
> -							    connector);
> -		if (IS_ERR(conn_state)) {
> -			ret =3D  PTR_ERR(conn_state);
> -			break;
> -		}
> -
> -		if (!conn_state->crtc)
> -			continue;
> -
> -		crtc_state =3D drm_atomic_get_crtc_state(&state->base,
> -						       conn_state->crtc);
> -		if (IS_ERR(crtc_state)) {
> -			ret =3D PTR_ERR(crtc_state);
> -			break;
> -		}
> -		crtc_state->mode_changed =3D true;
> -		ret =3D drm_atomic_add_affected_connectors(&state->base,
> -							 conn_state->crtc);
> -		if (ret)
> -			break;
> -	}
> -	drm_connector_list_iter_end(&conn_iter);
> -
> -	return ret;
> -}
> -
> -static int
> -intel_atomic_check_tiled_conns(struct intel_atomic_state *state)
> -{
> -	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> -	struct drm_connector *connector;
> -	struct drm_connector_state *old_conn_state, *new_conn_state;
> -	int i, ret;
> -
> -	if (INTEL_GEN(dev_priv) < 11)
> -		return 0;
> -
> -	/* Is tiled, mark all other tiled CRTCs as needing a modeset */
> -	for_each_oldnew_connector_in_state(&state->base, connector,
> -					   old_conn_state, new_conn_state, i) {
> -		if (!connector->has_tile)
> -			continue;
> -		if (!intel_connector_needs_modeset(state, connector))
> -			continue;
> -
> -		ret =3D intel_modeset_all_tiles(state, connector->tile_group->id);
> -		if (ret)
> -			return ret;
> -	}
> -
> -	return 0;
> -}
> -
>  /**
>   * intel_atomic_check - validate state object
>   * @dev: drm device
> @@ -14767,21 +14697,6 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  	if (ret)
>  		goto fail;
>  =

> -	/**
> -	 * This check adds all the connectors in current state that belong to
> -	 * the same tile group to a full modeset.
> -	 * This function directly sets the mode_changed to true and we also call
> -	 * drm_atomic_add_affected_connectors(). Hence we are not explicitly
> -	 * calling drm_atomic_helper_check_modeset() after this.
> -	 *
> -	 * Fixme: Handle some corner cases where one of the
> -	 * tiled connectors gets disconnected and tile info is lost but since it
> -	 * was previously synced to other conn, we need to add that to the mode=
set.
> -	 */
> -	ret =3D intel_atomic_check_tiled_conns(state);
> -	if (ret)
> -		goto fail;
> -
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		if (!needs_modeset(new_crtc_state)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index f4dede6253f8..07f0374d4409 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6582,6 +6582,146 @@ void intel_dp_encoder_reset(struct drm_encoder *e=
ncoder)
>  	}
>  }
>  =

> +static int intel_modeset_tile_group(struct intel_atomic_state *state,
> +				    int tile_group_id)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct drm_connector_list_iter conn_iter;
> +	struct drm_connector *connector;
> +	int ret =3D 0;
> +
> +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> +	drm_for_each_connector_iter(connector, &conn_iter) {
> +		struct drm_connector_state *conn_state;
> +		struct intel_crtc_state *crtc_state;
> +		struct intel_crtc *crtc;
> +
> +		if (!connector->has_tile ||
> +		    connector->tile_group->id !=3D tile_group_id)
> +			continue;
> +
> +		conn_state =3D drm_atomic_get_connector_state(&state->base,
> +							    connector);
> +		if (IS_ERR(conn_state)) {
> +			ret =3D PTR_ERR(conn_state);
> +			break;
> +		}
> +
> +		crtc =3D to_intel_crtc(conn_state->crtc);
> +
> +		if (!crtc)
> +			continue;
> +
> +		crtc_state =3D intel_atomic_get_crtc_state(&state->base, crtc);

I think this could just be get_new_crtc_state() since
drm_atomic_get_connector_state() should have added the
connector's crtc already to the state. Which would let us
get rid of the error handling here.

> +		if (IS_ERR(crtc_state)) {
> +			ret =3D PTR_ERR(crtc_state);
> +			break;
> +		}
> +
> +		crtc_state->uapi.mode_changed =3D true;
> +
> +		ret =3D drm_atomic_add_affected_planes(&state->base, &crtc->base);
> +		if (ret)
> +			break;
> +	}
> +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> +
> +	return ret;
> +}
> +
> +static int intel_modeset_affected_transcoders(struct intel_atomic_state =
*state, u8 transcoders)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_crtc *crtc;
> +
> +	if (transcoders =3D=3D 0)
> +		return 0;
> +
> +	for_each_intel_crtc(&dev_priv->drm, crtc) {
> +		struct intel_crtc_state *crtc_state;
> +		int ret;
> +
> +		crtc_state =3D intel_atomic_get_crtc_state(&state->base, crtc);
> +		if (IS_ERR(crtc_state))
> +			return PTR_ERR(crtc_state);
> +
> +		if (!crtc_state->hw.enable)
> +			continue;
> +
> +		if (!(transcoders & BIT(crtc_state->cpu_transcoder)))
> +			continue;
> +
> +		crtc_state->uapi.mode_changed =3D true;
> +
> +		ret =3D drm_atomic_add_affected_connectors(&state->base, &crtc->base);
> +		if (ret)
> +			return ret;
> +
> +		ret =3D drm_atomic_add_affected_planes(&state->base, &crtc->base);
> +		if (ret)
> +			return ret;
> +
> +		transcoders &=3D ~BIT(crtc_state->cpu_transcoder);
> +	}
> +
> +	WARN_ON(transcoders !=3D 0);
> +
> +	return 0;
> +}
> +
> +static int intel_modeset_synced_crtcs(struct intel_atomic_state *state,
> +				      struct drm_connector *connector)
> +{
> +	const struct drm_connector_state *old_conn_state =3D
> +		drm_atomic_get_old_connector_state(&state->base, connector);
> +	const struct intel_crtc_state *old_crtc_state;
> +	struct intel_crtc *crtc;
> +	u8 transcoders;
> +
> +	crtc =3D to_intel_crtc(old_conn_state->crtc);
> +	if (!crtc)
> +		return 0;
> +
> +	old_crtc_state =3D intel_atomic_get_old_crtc_state(state, crtc);
> +
> +	if (!old_crtc_state->hw.active)
> +		return 0;
> +
> +	transcoders =3D old_crtc_state->sync_mode_slaves_mask;
> +	if (old_crtc_state->master_transcoder !=3D INVALID_TRANSCODER)
> +		transcoders |=3D BIT(old_crtc_state->master_transcoder);
> +
> +	return intel_modeset_affected_transcoders(state,
> +						  transcoders &
> +						  ~BIT(old_crtc_state->cpu_transcoder));

As I said in the previous review cycle the '&~BIT(cpu_trans)' should
be a nop. So can just drop it.

Otherwise
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +}
> +
> +static int intel_dp_connector_atomic_check(struct drm_connector *conn,
> +					   struct drm_atomic_state *_state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(conn->dev);
> +	struct intel_atomic_state *state =3D to_intel_atomic_state(_state);
> +	int ret;
> +
> +	ret =3D intel_digital_connector_atomic_check(conn, &state->base);
> +	if (ret)
> +		return ret;
> +
> +	if (INTEL_GEN(dev_priv) < 11)
> +		return 0;
> +
> +	if (!intel_connector_needs_modeset(state, conn))
> +		return 0;
> +
> +	if (conn->has_tile) {
> +		ret =3D intel_modeset_tile_group(state, conn->tile_group->id);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return intel_modeset_synced_crtcs(state, conn);
> +}
> +
>  static const struct drm_connector_funcs intel_dp_connector_funcs =3D {
>  	.force =3D intel_dp_force,
>  	.fill_modes =3D drm_helper_probe_single_connector_modes,
> @@ -6598,7 +6738,7 @@ static const struct drm_connector_helper_funcs inte=
l_dp_connector_helper_funcs =3D
>  	.detect_ctx =3D intel_dp_detect,
>  	.get_modes =3D intel_dp_get_modes,
>  	.mode_valid =3D intel_dp_mode_valid,
> -	.atomic_check =3D intel_digital_connector_atomic_check,
> +	.atomic_check =3D intel_dp_connector_atomic_check,
>  };
>  =

>  static const struct drm_encoder_funcs intel_dp_enc_funcs =3D {
> -- =

> 2.19.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
