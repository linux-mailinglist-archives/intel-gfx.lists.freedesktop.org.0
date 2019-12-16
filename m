Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57653120FB0
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 17:38:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAE716E81C;
	Mon, 16 Dec 2019 16:38:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D57C6E81C
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 16:38:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 08:38:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,322,1571727600"; d="scan'208";a="266299178"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Dec 2019 08:38:55 -0800
Date: Mon, 16 Dec 2019 08:40:24 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20191216164023.GA17177@intel.com>
References: <20191211211425.17821-1-manasi.d.navare@intel.com>
 <20191211211425.17821-2-manasi.d.navare@intel.com>
 <20191213200549.GD1208@intel.com>
 <20191214022836.GH19224@intel.com>
 <20191216120343.GM1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216120343.GM1208@intel.com>
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

On Mon, Dec 16, 2019 at 02:03:43PM +0200, Ville Syrj=E4l=E4 wrote:
> On Fri, Dec 13, 2019 at 06:28:40PM -0800, Manasi Navare wrote:
> > On Fri, Dec 13, 2019 at 10:05:49PM +0200, Ville Syrj=E4l=E4 wrote:
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
> > > 'connector'
> > > > +	struct drm_connector_list_iter conn_list_iter;
> > > > +	struct drm_crtc_state *crtc_state;
> > > =

> > > crtc_state has needlessly wide scope.
> > > =

> > > > +
> > > > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_list_iter);
> > > > +	drm_for_each_connector_iter(conn_iter, &conn_list_iter) {
> > > > +		struct drm_connector_state *conn_iter_state;
> > > =

> > > 'conn_state' is the most popular name.
> > > =

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
> > > =

> > > The tile group check should be part of the same if with the has_tile
> > > check.
> > > =

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
> > > =

> > > Pointless variable. Can be extracted from the atomic state.
> > > =

> > > > +				      struct intel_atomic_state *state)
> > > > +{
> > > > +	struct drm_connector *connector;
> > > > +	struct drm_crtc_state *crtc_state;
> > > > +	struct drm_connector_state *connector_state;
> > > > +	int i, ret, tile_grp_id =3D 0;
> > > =

> > > tile_grp_id is rather pointless. crtc_state and ret can move into
> > > tighter scope. And the next suggestion allows you to kill crtc_state
> > > entirely...
> > =

> > Its not clear why tile_grp_id is pointless, I am using tile_grp_id for =
the first connector with has_tile
> > and I make sure that I dont enter into the loop to check modeset again =
for the connector with
> > same tile_grp_id because we have already set its mode changed to true i=
n intel_dp_modeset_all_tiles()
> > =

> > How can I achieve this instead?
> =

> =

> Instead of =

> foo()
> {
> 	tile_grp_id =3D 0;
> =

> 	for_each() {
> 		tile_grp_id =3D conn->tile_grp_id;
> =

> 		intel_dp_modeset_all_tiles(tile_grp_id);
> 	}
> }
> =

> you just do
> foo()
> {
> 	for_each() {
> 		intel_dp_modeset_all_tiles(conn->tile_grp_id);
> 	}
> }

Yes I understand that we can pass the conn->tile_grp_id directly. But curre=
ntly I am using tile_grp_id in for_each(), to call intel_dp_modeset_all_til=
es()
only if that cnnector is from a differnt tile grp id else continue.

foo()
{
	for_each() {
		if(tile_grp_id !=3D conn->tile_grp_id)
			intel_dpmodeset_all_tiles();
		else
			continue;
	}
}

calling intel_dp_modeset_all_tiles() for all tiles is kind of redundant. Ho=
w can I do this with your suggestion, or do you think
we should call intel_dp_modeset_all_tiles for each connector anyway and it =
shouldnt matter?

Regards
Manasi
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
