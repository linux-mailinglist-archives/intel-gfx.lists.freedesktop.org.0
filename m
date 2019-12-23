Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AAAF129B80
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 23:47:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE8416E478;
	Mon, 23 Dec 2019 22:47:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AEB56E478
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 22:47:07 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 14:47:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,349,1571727600"; d="scan'208";a="207407334"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga007.jf.intel.com with ESMTP; 23 Dec 2019 14:47:06 -0800
Date: Mon, 23 Dec 2019 14:47:06 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20191223224706.GI2877816@mdroper-desk1.amr.corp.intel.com>
References: <20191221020109.27871-1-manasi.d.navare@intel.com>
 <20191223224006.5081-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223224006.5081-1-manasi.d.navare@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH v4 1/3] drm/i915/dp: Make sure all tiled
 connectors get added to the state with full modeset
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

On Mon, Dec 23, 2019 at 02:40:04PM -0800, Manasi Navare wrote:
> In case of tiled displays, all the tiles are linke dto each other
> for transcoder port sync. So in intel_atomic_check() we need to make
> sure that we add all the tiles to the modeset and if one of the
> tiles needs a full modeset then mark all other tiles for a full modeset.
> =

> We also need to force modeset for all synced crtcs after fastset check.
> =

> v5:
> * Rebase
> v4:
> * Fix logic for modeset_synced_crtcs (Ville)
> v3:
> * Add tile checks only for Gen >11
> v2:
> * Change crtc_state scope, remove tile_grp_id (Ville)
> * Use intel_connector_needs_modeset() (Ville)
> * Add modeset_synced_crtcs (Ville)
> * Make sure synced crtcs are forced full modeset
> after fastset check (Ville)
> =

> Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/5
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 123 +++++++++++++++++++
>  1 file changed, 123 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 94fc4b5bacc0..45a699bac34a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14304,6 +14304,118 @@ static bool intel_cpu_transcoder_needs_modeset(=
struct intel_atomic_state *state,
>  	return false;
>  }
>  =

> +static void
> +intel_modeset_synced_crtcs(struct intel_atomic_state *state,
> +			   u8 transcoders)
> +{
> +	struct intel_crtc_state *new_crtc_state;
> +	struct intel_crtc *crtc;
> +	int i;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc,
> +					 new_crtc_state, i) {
> +		if (transcoders & BIT(new_crtc_state->cpu_transcoder)) {
> +			new_crtc_state->uapi.mode_changed =3D true;
> +			new_crtc_state->update_pipe =3D false;
> +		}
> +	}
> +}
> +
> +static void
> +intel_atomic_check_synced_crtcs(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct intel_crtc_state *new_crtc_state;
> +	struct intel_crtc *crtc;
> +	int i;
> +
> +	if (INTEL_GEN(dev_priv) < 11)
> +		return;
> +
> +	for_each_new_intel_crtc_in_state(state, crtc,
> +					 new_crtc_state, i) {
> +		if (is_trans_port_sync_master(new_crtc_state) &&
> +		    needs_modeset(new_crtc_state)) {
> +			intel_modeset_synced_crtcs(state,
> +						   new_crtc_state->sync_mode_slaves_mask);
> +		} else if (is_trans_port_sync_slave(new_crtc_state) &&
> +			   needs_modeset(new_crtc_state)) {
> +			intel_modeset_synced_crtcs(state,
> +						   BIT(new_crtc_state->master_transcoder));
> +		}
> +	}
> +}
> +
> +static int
> +intel_modeset_all_tiles(struct intel_atomic_state *state, int tile_grp_i=
d)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct drm_connector *connector;
> +	struct drm_connector_list_iter conn_iter;
> +	int ret =3D 0;
> +
> +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_iter);
> +	drm_for_each_connector_iter(connector, &conn_iter) {
> +		struct drm_connector_state *conn_state;
> +		struct drm_crtc_state *crtc_state;
> +
> +		if (!connector->has_tile ||
> +		    connector->tile_group->id !=3D tile_grp_id)
> +			continue;
> +		conn_state =3D drm_atomic_get_connector_state(&state->base,
> +							    connector);
> +		if (IS_ERR(conn_state)) {
> +			ret =3D  PTR_ERR(conn_state);
> +			break;
> +		}
> +
> +		if (!conn_state->crtc)
> +			continue;
> +
> +		crtc_state =3D drm_atomic_get_crtc_state(&state->base,
> +						       conn_state->crtc);
> +		if (IS_ERR(crtc_state)) {
> +			ret =3D PTR_ERR(conn_state);
> +			break;
> +		}
> +		crtc_state->mode_changed =3D true;
> +		ret =3D drm_atomic_add_affected_connectors(&state->base,
> +							 conn_state->crtc);
> +		if (ret)
> +			break;
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +
> +	return ret;
> +}

This feels like it could be pulled out to a DRM-level helper since
there's nothing really Intel-specific here.  I imagine other drivers
with port sync capabilities will need pretty much exactly the same
logic?  But that can wait until a future patch.

> +
> +static int
> +intel_atomic_check_tiled_conns(struct intel_atomic_state *state)
> +{
> +	struct drm_i915_private *dev_priv =3D to_i915(state->base.dev);
> +	struct drm_connector *connector;
> +	struct drm_connector_state *old_conn_state, *new_conn_state;
> +	int i, ret;
> +
> +	if (INTEL_GEN(dev_priv) < 11)
> +		return 0;
> +
> +	/* Is tiled, mark all other tiled CRTCs as needing a modeset */
> +	for_each_oldnew_connector_in_state(&state->base, connector,
> +					   old_conn_state, new_conn_state, i) {
> +		if (!connector->has_tile)
> +			continue;
> +		if (!intel_connector_needs_modeset(state, connector))
> +			continue;
> +
> +		ret =3D intel_modeset_all_tiles(state, connector->tile_group->id);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +
>  /**
>   * intel_atomic_check - validate state object
>   * @dev: drm device
> @@ -14331,6 +14443,10 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  	if (ret)
>  		goto fail;
>  =

> +	ret =3D intel_atomic_check_tiled_conns(state);
> +	if (ret)
> +		goto fail;
> +
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		if (!needs_modeset(new_crtc_state)) {
> @@ -14378,6 +14494,13 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  		}
>  	}
>  =

> +	/*
> +	 * In case of port synced crtcs, if one of the synced crtcs
> +	 * needs a full modeset, all other synced crtcs should be
> +	 * forced a full modeset.
> +	 */
> +	intel_atomic_check_synced_crtcs(state);
> +

I'm still a bit confused why we don't need to add an additional call to
drm_atomic_helper_check_modeset() here since the two new checks in this
function mess with mode_changed.  I.e., it seems that we're basically
doing exactly what the big kerneldoc warning tells us not to do?


Matt

>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		if (needs_modeset(new_crtc_state)) {
> -- =

> 2.19.1
> =


-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
