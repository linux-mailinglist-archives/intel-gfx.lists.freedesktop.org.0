Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A09411EB81
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 21:05:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A25BC6ECE6;
	Fri, 13 Dec 2019 20:05:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 085396ECE6
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 20:05:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 12:05:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,311,1571727600"; d="scan'208";a="220982428"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 13 Dec 2019 12:05:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Dec 2019 22:05:49 +0200
Date: Fri, 13 Dec 2019 22:05:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20191213200549.GD1208@intel.com>
References: <20191211211425.17821-1-manasi.d.navare@intel.com>
 <20191211211425.17821-2-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211211425.17821-2-manasi.d.navare@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/dp: Make sure all tiled
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

On Wed, Dec 11, 2019 at 01:14:23PM -0800, Manasi Navare wrote:
> In case of tiled displays, all the tiles are linke dto each other
> for transcoder port sync. So in intel_atomic_check() we need to make
> sure that we add all the tiles to the modeset and if one of the
> tiles needs a full modeset then mark all other tiles for a full modeset.
> =

> Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/5
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 78 ++++++++++++++++++++
>  1 file changed, 78 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 803993a01ca7..7263eaa66cda 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -14066,6 +14066,80 @@ static int intel_atomic_check_crtcs(struct intel=
_atomic_state *state)
>  	return 0;
>  }
>  =

> +static int
> +intel_dp_modeset_all_tiles(struct drm_i915_private *dev_priv,
> +			   struct intel_atomic_state *state, int tile_grp_id)
> +{
> +	struct drm_connector *conn_iter;
'connector'
> +	struct drm_connector_list_iter conn_list_iter;
> +	struct drm_crtc_state *crtc_state;

crtc_state has needlessly wide scope.

> +
> +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_list_iter);
> +	drm_for_each_connector_iter(conn_iter, &conn_list_iter) {
> +		struct drm_connector_state *conn_iter_state;

'conn_state' is the most popular name.

> +
> +		if (!conn_iter->has_tile)
> +			continue;
> +		conn_iter_state =3D drm_atomic_get_connector_state(&state->base,
> +								 conn_iter);
> +		if (IS_ERR(conn_iter_state)) {
> +			drm_connector_list_iter_end(&conn_list_iter);
> +			return PTR_ERR(conn_iter_state);
> +		}
> +
> +		if (!conn_iter_state->crtc)
> +			continue;
> +
> +		if (conn_iter->tile_group->id !=3D tile_grp_id)
> +			continue;

The tile group check should be part of the same if with the has_tile
check.

> +
> +		crtc_state =3D drm_atomic_get_crtc_state(&state->base, conn_iter_state=
->crtc);
> +		if (IS_ERR(crtc_state)) {
> +			drm_connector_list_iter_end(&conn_list_iter);
> +			return PTR_ERR(conn_iter_state);
> +		}
> +		crtc_state->mode_changed =3D true;
> +	}
> +	drm_connector_list_iter_end(&conn_list_iter);
> +
> +	return 0;
> +}
> +
> +static int
> +intel_dp_atomic_trans_port_sync_check(struct drm_i915_private *dev_priv,

Pointless variable. Can be extracted from the atomic state.

> +				      struct intel_atomic_state *state)
> +{
> +	struct drm_connector *connector;
> +	struct drm_crtc_state *crtc_state;
> +	struct drm_connector_state *connector_state;
> +	int i, ret, tile_grp_id =3D 0;

tile_grp_id is rather pointless. crtc_state and ret can move into
tighter scope. And the next suggestion allows you to kill crtc_state
entirely...

> +
> +	if (INTEL_GEN(dev_priv) < 11)
> +		return 0;
> +
> +	/* Is tiled, mark all other tiled CRTCs as needing a modeset */
> +	for_each_new_connector_in_state(&state->base, connector, connector_stat=
e, i) {
> +		if (!connector->has_tile)
> +			continue;
> +		if (connector_state->crtc &&
> +		    tile_grp_id !=3D connector->tile_group->id) {
> +			crtc_state =3D drm_atomic_get_new_crtc_state(&state->base,
> +								   connector_state->crtc);
> +			if (!drm_atomic_crtc_needs_modeset(crtc_state))
> +				continue;

This should to be able to be shortened to just intel_connector_needs_modese=
t().

> +
> +			tile_grp_id =3D connector->tile_group->id;
> +		} else
> +			continue;
> +
> +		ret =3D intel_dp_modeset_all_tiles(dev_priv, state, tile_grp_id);
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
> @@ -14093,6 +14167,10 @@ static int intel_atomic_check(struct drm_device =
*dev,
>  	if (ret)
>  		goto fail;
>  =

> +	ret =3D intel_dp_atomic_trans_port_sync_check(dev_priv, state);
> +	if (ret)
> +		goto fail;

We should probably do this from the connector .atomic_check() hook if
Jose is going to do the MST thing that way. But no real problem doing
here I think.

> +
>  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>  					    new_crtc_state, i) {
>  		if (!needs_modeset(new_crtc_state)) {
> -- =

> 2.19.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
