Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C7F123557
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 20:03:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 357CB6E187;
	Tue, 17 Dec 2019 19:03:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B20BA6E187
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 19:03:23 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 11:03:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,326,1571727600"; d="scan'208";a="217900947"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga003.jf.intel.com with ESMTP; 17 Dec 2019 11:03:22 -0800
Date: Tue, 17 Dec 2019 11:04:53 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20191217190453.GA24363@intel.com>
References: <20191211211425.17821-1-manasi.d.navare@intel.com>
 <20191211211425.17821-2-manasi.d.navare@intel.com>
 <20191216143738.GV1208@intel.com>
 <20191216191309.GA18010@intel.com>
 <20191216213738.GD1208@intel.com>
 <20191216223310.GJ19224@intel.com>
 <20191216225813.GK19224@intel.com>
 <20191217105031.GE1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191217105031.GE1208@intel.com>
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

On Tue, Dec 17, 2019 at 12:50:31PM +0200, Ville Syrj=E4l=E4 wrote:
> On Mon, Dec 16, 2019 at 02:58:13PM -0800, Manasi Navare wrote:
> > On Mon, Dec 16, 2019 at 02:33:10PM -0800, Manasi Navare wrote:
> > > On Mon, Dec 16, 2019 at 11:37:38PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > On Mon, Dec 16, 2019 at 11:13:09AM -0800, Manasi Navare wrote:
> > > > > On Mon, Dec 16, 2019 at 04:37:38PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > > > On Wed, Dec 11, 2019 at 01:14:23PM -0800, Manasi Navare wrote:
> > > > > > > In case of tiled displays, all the tiles are linke dto each o=
ther
> > > > > > > for transcoder port sync. So in intel_atomic_check() we need =
to make
> > > > > > > sure that we add all the tiles to the modeset and if one of t=
he
> > > > > > > tiles needs a full modeset then mark all other tiles for a fu=
ll modeset.
> > > > > > > =

> > > > > > > Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.co=
m>
> > > > > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > > > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > > > > > Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/5
> > > > > > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > > > > > ---
> > > > > > >  drivers/gpu/drm/i915/display/intel_display.c | 78 ++++++++++=
++++++++++
> > > > > > >  1 file changed, 78 insertions(+)
> > > > > > > =

> > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/d=
rivers/gpu/drm/i915/display/intel_display.c
> > > > > > > index 803993a01ca7..7263eaa66cda 100644
> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > @@ -14066,6 +14066,80 @@ static int intel_atomic_check_crtcs(=
struct intel_atomic_state *state)
> > > > > > >  	return 0;
> > > > > > >  }
> > > > > > >  =

> > > > > > > +static int
> > > > > > > +intel_dp_modeset_all_tiles(struct drm_i915_private *dev_priv,
> > > > > > > +			   struct intel_atomic_state *state, int tile_grp_id)
> > > > > > > +{
> > > > > > > +	struct drm_connector *conn_iter;
> > > > > > > +	struct drm_connector_list_iter conn_list_iter;
> > > > > > > +	struct drm_crtc_state *crtc_state;
> > > > > > > +
> > > > > > > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_list_it=
er);
> > > > > > > +	drm_for_each_connector_iter(conn_iter, &conn_list_iter) {
> > > > > > > +		struct drm_connector_state *conn_iter_state;
> > > > > > > +
> > > > > > > +		if (!conn_iter->has_tile)
> > > > > > > +			continue;
> > > > > > > +		conn_iter_state =3D drm_atomic_get_connector_state(&state-=
>base,
> > > > > > > +								 conn_iter);
> > > > > > > +		if (IS_ERR(conn_iter_state)) {
> > > > > > > +			drm_connector_list_iter_end(&conn_list_iter);
> > > > > > > +			return PTR_ERR(conn_iter_state);
> > > > > > > +		}
> > > > > > > +
> > > > > > > +		if (!conn_iter_state->crtc)
> > > > > > > +			continue;
> > > > > > > +
> > > > > > > +		if (conn_iter->tile_group->id !=3D tile_grp_id)
> > > > > > > +			continue;
> > > > > > > +
> > > > > > > +		crtc_state =3D drm_atomic_get_crtc_state(&state->base, con=
n_iter_state->crtc);
> > > > > > > +		if (IS_ERR(crtc_state)) {
> > > > > > > +			drm_connector_list_iter_end(&conn_list_iter);
> > > > > > > +			return PTR_ERR(conn_iter_state);
> > > > > > > +		}
> > > > > > > +		crtc_state->mode_changed =3D true;
> > > > > > > +	}
> > > > > > > +	drm_connector_list_iter_end(&conn_list_iter);
> > > > > > > +
> > > > > > > +	return 0;
> > > > > > > +}
> > > > > > > +
> > > > > > > +static int
> > > > > > > +intel_dp_atomic_trans_port_sync_check(struct drm_i915_privat=
e *dev_priv,
> > > > > > > +				      struct intel_atomic_state *state)
> > > > > > > +{
> > > > > > > +	struct drm_connector *connector;
> > > > > > > +	struct drm_crtc_state *crtc_state;
> > > > > > > +	struct drm_connector_state *connector_state;
> > > > > > > +	int i, ret, tile_grp_id =3D 0;
> > > > > > > +
> > > > > > > +	if (INTEL_GEN(dev_priv) < 11)
> > > > > > > +		return 0;
> > > > > > > +
> > > > > > > +	/* Is tiled, mark all other tiled CRTCs as needing a modese=
t */
> > > > > > > +	for_each_new_connector_in_state(&state->base, connector, co=
nnector_state, i) {
> > > > > > > +		if (!connector->has_tile)
> > > > > > > +			continue;
> > > > > > > +		if (connector_state->crtc &&
> > > > > > > +		    tile_grp_id !=3D connector->tile_group->id) {
> > > > > > > +			crtc_state =3D drm_atomic_get_new_crtc_state(&state->base,
> > > > > > > +								   connector_state->crtc);
> > > > > > > +			if (!drm_atomic_crtc_needs_modeset(crtc_state))
> > > > > > > +				continue;
> > > > > > > +
> > > > > > > +			tile_grp_id =3D connector->tile_group->id;
> > > > > > > +		} else
> > > > > > > +			continue;
> > > > > > > +
> > > > > > > +		ret =3D intel_dp_modeset_all_tiles(dev_priv, state, tile_g=
rp_id);
> > > > > > > +		if (ret)
> > > > > > > +			return ret;
> > > > > > > +	}
> > > > > > > +
> > > > > > > +	return 0;
> > > > > > > +}
> > > > > > =

> > > > > > BTW after some more pondering I don't think this alone is suffi=
cient.
> > > > > > The tile information may have already disppeared so I believe w=
e also
> > > > > > need to make sure we mark all currently synced crtcs as needing=
 a
> > > > > > modeset if any of them need a modeset. And I guess that's prett=
y much
> > > > > > the same function we'll need to handle fastset correctly.
> > > > > >
> > > > > =

> > > > > The crtcs in the current state get synced and master/slave assign=
ments happen in icl_add_sync_mode_crtcs before compute_config call
> > > > > So are you suggesting basically moving this function after the cr=
tcs are synced and then just setting modeset
> > > > > to true for all synced crtcs if one of them needs modeset?
> > > > =

> > > > I think it should look something like:
> > > > =

> > > > modeset_tiled_things();
> > > > modeset_synced_things();
> > > =

> > > but modeset_synced_things() should be called after icl_add_sync_crtcs=
() which as per your review should be called
> > > from within modeset_pipe_config just before compute_config() call.
> > > =

> > > > =

> > > > for_each() {
> > > =

> > > This is the for_each_crtc loop in intel_atomic_check() right?
> > > =

> > > > 	modeset_pipes_config();
> > > =

> > > So have icl_add_sync_crtcs outside of modeset_pipe_config()?
> > > =

> > > > 	if (can_fastset()) {
> > > > 		modeset=3Dfalse;
> > > > 		fastset=3Dtrue;
> > > > 	}
> > > > }
> > > > =

> > > > modeset_synced_things();
> > > > =

> > > > for_each() {
> > > > 	if (!modeset && fastset)
> > > > 		copy_state();
> > > > }
> > > We already do this in the code right?
> > > =

> > > Manasi
> > > =

> > > > =

> > > > > =

> > > > > And why would the tile information be disappeared?  =

> > > > =

> > > > It'll get updated whenever someone does a getconnector() or whateve=
r.
> > > > =

> > > > Example:
> > > > 1. sync pipe A and B, pipe A is master
> > > > 2. swap pipe B display for something else
> > =

> > If we disconnect and connect other display for pipe B, port sync mode i=
s off and
> > Pipe A no longer a master and we would reset the master_slave assignmen=
ts and conn on pipe B would not have tile
> =

> Port sync will stay enabled until we do a modeset to disable it. In this
> example there is never any modeset on pipe B until we add soemthing to
> force one in step 4.

seems to be working with the current intel_dp_add_modeset_tiles() since the=
 moment
we unplug, it goes through the disable sequence where all the associated ti=
les get disabled
and port sync mode gets disabled. This happens because the Pipe A which is =
still connected now indicates
a mode change since it fallsback to a lower non tiled mode.

But to be on safer side, i can check if say Pipe A is a master or slave (in=
 port sync mode) , check its crtc_state which is
still showing the old master slave links since we havent cleared those yet =
and then add all other synced crtcs
to the modeset?

So the order of calls can still be :
intel_atomic_check() {

intel_dp_atomic_tiled_check() { modeset_all_tiles modeset_synced_crtcs}
intel_modeset_pipe_Config()
icl_add_sync_crtcs
compute_config
fastsetcheck()
modeset_synced_things (here it looks at the new master slave assignments)

Does this look correct, I want send this patch out today

Manasi

> =

> > =

> > so why we wold need to add both pipes to modeset in this case at all
> > =

> > Manasi
> > =

> > > > 3. getconnector() -> tile info goes poof
> > > > 4. do something on pipe A that needs a modeset
> > > >    no tile info so we miss that pipe B also needs a modeset
> > > > =

> > > > -- =

> > > > Ville Syrj=E4l=E4
> > > > Intel
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
