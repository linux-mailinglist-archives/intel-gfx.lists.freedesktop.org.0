Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 764DD121E08
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 23:31:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B24F46E8E2;
	Mon, 16 Dec 2019 22:31:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2204E6E8E2
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 22:31:42 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 14:31:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,323,1571727600"; d="scan'208";a="416610410"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga006.fm.intel.com with ESMTP; 16 Dec 2019 14:31:40 -0800
Date: Mon, 16 Dec 2019 14:33:10 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20191216223310.GJ19224@intel.com>
References: <20191211211425.17821-1-manasi.d.navare@intel.com>
 <20191211211425.17821-2-manasi.d.navare@intel.com>
 <20191216143738.GV1208@intel.com>
 <20191216191309.GA18010@intel.com>
 <20191216213738.GD1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216213738.GD1208@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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

On Mon, Dec 16, 2019 at 11:37:38PM +0200, Ville Syrj=E4l=E4 wrote:
> On Mon, Dec 16, 2019 at 11:13:09AM -0800, Manasi Navare wrote:
> > On Mon, Dec 16, 2019 at 04:37:38PM +0200, Ville Syrj=E4l=E4 wrote:
> > > On Wed, Dec 11, 2019 at 01:14:23PM -0800, Manasi Navare wrote:
> > > > In case of tiled displays, all the tiles are linke dto each other
> > > > for transcoder port sync. So in intel_atomic_check() we need to make
> > > > sure that we add all the tiles to the modeset and if one of the
> > > > tiles needs a full modeset then mark all other tiles for a full mod=
eset.
> > > > =

> > > > Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > > Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/5
> > > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_display.c | 78 ++++++++++++++++=
++++
> > > >  1 file changed, 78 insertions(+)
> > > > =

> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers=
/gpu/drm/i915/display/intel_display.c
> > > > index 803993a01ca7..7263eaa66cda 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > @@ -14066,6 +14066,80 @@ static int intel_atomic_check_crtcs(struct=
 intel_atomic_state *state)
> > > >  	return 0;
> > > >  }
> > > >  =

> > > > +static int
> > > > +intel_dp_modeset_all_tiles(struct drm_i915_private *dev_priv,
> > > > +			   struct intel_atomic_state *state, int tile_grp_id)
> > > > +{
> > > > +	struct drm_connector *conn_iter;
> > > > +	struct drm_connector_list_iter conn_list_iter;
> > > > +	struct drm_crtc_state *crtc_state;
> > > > +
> > > > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_list_iter);
> > > > +	drm_for_each_connector_iter(conn_iter, &conn_list_iter) {
> > > > +		struct drm_connector_state *conn_iter_state;
> > > > +
> > > > +		if (!conn_iter->has_tile)
> > > > +			continue;
> > > > +		conn_iter_state =3D drm_atomic_get_connector_state(&state->base,
> > > > +								 conn_iter);
> > > > +		if (IS_ERR(conn_iter_state)) {
> > > > +			drm_connector_list_iter_end(&conn_list_iter);
> > > > +			return PTR_ERR(conn_iter_state);
> > > > +		}
> > > > +
> > > > +		if (!conn_iter_state->crtc)
> > > > +			continue;
> > > > +
> > > > +		if (conn_iter->tile_group->id !=3D tile_grp_id)
> > > > +			continue;
> > > > +
> > > > +		crtc_state =3D drm_atomic_get_crtc_state(&state->base, conn_iter=
_state->crtc);
> > > > +		if (IS_ERR(crtc_state)) {
> > > > +			drm_connector_list_iter_end(&conn_list_iter);
> > > > +			return PTR_ERR(conn_iter_state);
> > > > +		}
> > > > +		crtc_state->mode_changed =3D true;
> > > > +	}
> > > > +	drm_connector_list_iter_end(&conn_list_iter);
> > > > +
> > > > +	return 0;
> > > > +}
> > > > +
> > > > +static int
> > > > +intel_dp_atomic_trans_port_sync_check(struct drm_i915_private *dev=
_priv,
> > > > +				      struct intel_atomic_state *state)
> > > > +{
> > > > +	struct drm_connector *connector;
> > > > +	struct drm_crtc_state *crtc_state;
> > > > +	struct drm_connector_state *connector_state;
> > > > +	int i, ret, tile_grp_id =3D 0;
> > > > +
> > > > +	if (INTEL_GEN(dev_priv) < 11)
> > > > +		return 0;
> > > > +
> > > > +	/* Is tiled, mark all other tiled CRTCs as needing a modeset */
> > > > +	for_each_new_connector_in_state(&state->base, connector, connecto=
r_state, i) {
> > > > +		if (!connector->has_tile)
> > > > +			continue;
> > > > +		if (connector_state->crtc &&
> > > > +		    tile_grp_id !=3D connector->tile_group->id) {
> > > > +			crtc_state =3D drm_atomic_get_new_crtc_state(&state->base,
> > > > +								   connector_state->crtc);
> > > > +			if (!drm_atomic_crtc_needs_modeset(crtc_state))
> > > > +				continue;
> > > > +
> > > > +			tile_grp_id =3D connector->tile_group->id;
> > > > +		} else
> > > > +			continue;
> > > > +
> > > > +		ret =3D intel_dp_modeset_all_tiles(dev_priv, state, tile_grp_id);
> > > > +		if (ret)
> > > > +			return ret;
> > > > +	}
> > > > +
> > > > +	return 0;
> > > > +}
> > > =

> > > BTW after some more pondering I don't think this alone is sufficient.
> > > The tile information may have already disppeared so I believe we also
> > > need to make sure we mark all currently synced crtcs as needing a
> > > modeset if any of them need a modeset. And I guess that's pretty much
> > > the same function we'll need to handle fastset correctly.
> > >
> > =

> > The crtcs in the current state get synced and master/slave assignments =
happen in icl_add_sync_mode_crtcs before compute_config call
> > So are you suggesting basically moving this function after the crtcs ar=
e synced and then just setting modeset
> > to true for all synced crtcs if one of them needs modeset?
> =

> I think it should look something like:
> =

> modeset_tiled_things();
> modeset_synced_things();

but modeset_synced_things() should be called after icl_add_sync_crtcs() whi=
ch as per your review should be called
from within modeset_pipe_config just before compute_config() call.

> =

> for_each() {

This is the for_each_crtc loop in intel_atomic_check() right?

> 	modeset_pipes_config();

So have icl_add_sync_crtcs outside of modeset_pipe_config()?

> 	if (can_fastset()) {
> 		modeset=3Dfalse;
> 		fastset=3Dtrue;
> 	}
> }
> =

> modeset_synced_things();
> =

> for_each() {
> 	if (!modeset && fastset)
> 		copy_state();
> }
We already do this in the code right?

Manasi

> =

> > =

> > And why would the tile information be disappeared?  =

> =

> It'll get updated whenever someone does a getconnector() or whatever.
> =

> Example:
> 1. sync pipe A and B, pipe A is master
> 2. swap pipe B display for something else
> 3. getconnector() -> tile info goes poof
> 4. do something on pipe A that needs a modeset
>    no tile info so we miss that pipe B also needs a modeset
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
