Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 080A0121C13
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 22:41:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C279589DB5;
	Mon, 16 Dec 2019 21:41:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E851E89C46
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 21:41:04 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 13:41:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,323,1571727600"; d="scan'208";a="212181472"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga007.fm.intel.com with ESMTP; 16 Dec 2019 13:41:03 -0800
Date: Mon, 16 Dec 2019 13:42:33 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20191216214232.GI19224@intel.com>
References: <20191211211425.17821-1-manasi.d.navare@intel.com>
 <20191211211425.17821-2-manasi.d.navare@intel.com>
 <20191213200549.GD1208@intel.com>
 <20191214022836.GH19224@intel.com>
 <20191216120343.GM1208@intel.com>
 <20191216164023.GA17177@intel.com>
 <20191216171120.GY1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216171120.GY1208@intel.com>
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

On Mon, Dec 16, 2019 at 07:11:20PM +0200, Ville Syrj=E4l=E4 wrote:
> On Mon, Dec 16, 2019 at 08:40:24AM -0800, Manasi Navare wrote:
> > On Mon, Dec 16, 2019 at 02:03:43PM +0200, Ville Syrj=E4l=E4 wrote:
> > > On Fri, Dec 13, 2019 at 06:28:40PM -0800, Manasi Navare wrote:
> > > > On Fri, Dec 13, 2019 at 10:05:49PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > > On Wed, Dec 11, 2019 at 01:14:23PM -0800, Manasi Navare wrote:
> > > > > > In case of tiled displays, all the tiles are linke dto each oth=
er
> > > > > > for transcoder port sync. So in intel_atomic_check() we need to=
 make
> > > > > > sure that we add all the tiles to the modeset and if one of the
> > > > > > tiles needs a full modeset then mark all other tiles for a full=
 modeset.
> > > > > > =

> > > > > > Suggested-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > > > > Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/5
> > > > > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_display.c | 78 ++++++++++++=
++++++++
> > > > > >  1 file changed, 78 insertions(+)
> > > > > > =

> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/dri=
vers/gpu/drm/i915/display/intel_display.c
> > > > > > index 803993a01ca7..7263eaa66cda 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > @@ -14066,6 +14066,80 @@ static int intel_atomic_check_crtcs(st=
ruct intel_atomic_state *state)
> > > > > >  	return 0;
> > > > > >  }
> > > > > >  =

> > > > > > +static int
> > > > > > +intel_dp_modeset_all_tiles(struct drm_i915_private *dev_priv,
> > > > > > +			   struct intel_atomic_state *state, int tile_grp_id)
> > > > > > +{
> > > > > > +	struct drm_connector *conn_iter;
> > > > > 'connector'
> > > > > > +	struct drm_connector_list_iter conn_list_iter;
> > > > > > +	struct drm_crtc_state *crtc_state;
> > > > > =

> > > > > crtc_state has needlessly wide scope.
> > > > > =

> > > > > > +
> > > > > > +	drm_connector_list_iter_begin(&dev_priv->drm, &conn_list_iter=
);
> > > > > > +	drm_for_each_connector_iter(conn_iter, &conn_list_iter) {
> > > > > > +		struct drm_connector_state *conn_iter_state;
> > > > > =

> > > > > 'conn_state' is the most popular name.
> > > > > =

> > > > > > +
> > > > > > +		if (!conn_iter->has_tile)
> > > > > > +			continue;
> > > > > > +		conn_iter_state =3D drm_atomic_get_connector_state(&state->b=
ase,
> > > > > > +								 conn_iter);
> > > > > > +		if (IS_ERR(conn_iter_state)) {
> > > > > > +			drm_connector_list_iter_end(&conn_list_iter);
> > > > > > +			return PTR_ERR(conn_iter_state);
> > > > > > +		}
> > > > > > +
> > > > > > +		if (!conn_iter_state->crtc)
> > > > > > +			continue;
> > > > > > +
> > > > > > +		if (conn_iter->tile_group->id !=3D tile_grp_id)
> > > > > > +			continue;
> > > > > =

> > > > > The tile group check should be part of the same if with the has_t=
ile
> > > > > check.
> > > > > =

> > > > > > +
> > > > > > +		crtc_state =3D drm_atomic_get_crtc_state(&state->base, conn_=
iter_state->crtc);
> > > > > > +		if (IS_ERR(crtc_state)) {
> > > > > > +			drm_connector_list_iter_end(&conn_list_iter);
> > > > > > +			return PTR_ERR(conn_iter_state);
> > > > > > +		}
> > > > > > +		crtc_state->mode_changed =3D true;
> > > > > > +	}
> > > > > > +	drm_connector_list_iter_end(&conn_list_iter);
> > > > > > +
> > > > > > +	return 0;
> > > > > > +}
> > > > > > +
> > > > > > +static int
> > > > > > +intel_dp_atomic_trans_port_sync_check(struct drm_i915_private =
*dev_priv,
> > > > > =

> > > > > Pointless variable. Can be extracted from the atomic state.
> > > > > =

> > > > > > +				      struct intel_atomic_state *state)
> > > > > > +{
> > > > > > +	struct drm_connector *connector;
> > > > > > +	struct drm_crtc_state *crtc_state;
> > > > > > +	struct drm_connector_state *connector_state;
> > > > > > +	int i, ret, tile_grp_id =3D 0;
> > > > > =

> > > > > tile_grp_id is rather pointless. crtc_state and ret can move into
> > > > > tighter scope. And the next suggestion allows you to kill crtc_st=
ate
> > > > > entirely...
> > > > =

> > > > Its not clear why tile_grp_id is pointless, I am using tile_grp_id =
for the first connector with has_tile
> > > > and I make sure that I dont enter into the loop to check modeset ag=
ain for the connector with
> > > > same tile_grp_id because we have already set its mode changed to tr=
ue in intel_dp_modeset_all_tiles()
> > > > =

> > > > How can I achieve this instead?
> > > =

> > > =

> > > Instead of =

> > > foo()
> > > {
> > > 	tile_grp_id =3D 0;
> > > =

> > > 	for_each() {
> > > 		tile_grp_id =3D conn->tile_grp_id;
> > > =

> > > 		intel_dp_modeset_all_tiles(tile_grp_id);
> > > 	}
> > > }
> > > =

> > > you just do
> > > foo()
> > > {
> > > 	for_each() {
> > > 		intel_dp_modeset_all_tiles(conn->tile_grp_id);
> > > 	}
> > > }
> > =

> > Yes I understand that we can pass the conn->tile_grp_id directly. But c=
urrently I am using tile_grp_id in for_each(), to call intel_dp_modeset_all=
_tiles()
> > only if that cnnector is from a differnt tile grp id else continue.
> > =

> > foo()
> > {
> > 	for_each() {
> > 		if(tile_grp_id !=3D conn->tile_grp_id)
> > 			intel_dpmodeset_all_tiles();
> > 		else
> > 			continue;
> > 	}
> > }
> > =

> > calling intel_dp_modeset_all_tiles() for all tiles is kind of redundant=
. How can I do this with your suggestion, or do you think
> > we should call intel_dp_modeset_all_tiles for each connector anyway and=
 it shouldnt matter?
> =

> Yes if that connector is tiled.
> =

> Eg. if you have something like
> connector A: tile group 1
> connector B: tile group 2
> connector C: tile group 3
> connector D: tile group 2
> =

> then your single tile_grp_id variable doesn't work anyway. You'd need
> track which tile groups you've already handled and skip those. But
> much easier to just blindly plow ahead.

Okay so in our case :
Conn A: tile gro 1
Conn B: tile grp 1

Now foo {

	for_each_conn {
		//connA
		intel_modeset_all_tiles() // this will set mode to true for conn B in ite=
ration 1
	}
}
Now in the second iteration
 	for_each_conn {
		// conn B iter 2
		intel_modeset_all_tiles() // this will set mode to true for conn A =

	}
redundant second iteration since both are in same tile grp

Manasi

> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
