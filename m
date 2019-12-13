Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7EF11EC47
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 21:56:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E64186EDBF;
	Fri, 13 Dec 2019 20:56:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 524416EDBF
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 20:56:44 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 12:56:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,311,1571727600"; d="scan'208";a="414413688"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga005.fm.intel.com with ESMTP; 13 Dec 2019 12:56:43 -0800
Date: Fri, 13 Dec 2019 12:58:06 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20191213205806.GF19224@intel.com>
References: <20191211211425.17821-1-manasi.d.navare@intel.com>
 <20191211211425.17821-3-manasi.d.navare@intel.com>
 <20191213202849.GF1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213202849.GF1208@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/dp: Make port sync mode
 assignments only if all tiles present
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

On Fri, Dec 13, 2019 at 10:28:49PM +0200, Ville Syrj=E4l=E4 wrote:
> On Wed, Dec 11, 2019 at 01:14:24PM -0800, Manasi Navare wrote:
> > Add an extra check before making master slave assignments for tiled
> > displays to make sure we make these assignments only if all tiled
> > connectors are present. If not then initialize the state to defaults
> > so it does a normal non tiled modeset without transcoder port sync.
> > =

> > Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/5
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 28 ++++++++++++++++++--
> >  1 file changed, 26 insertions(+), 2 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 7263eaa66cda..c0a2dab3fe67 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -12048,6 +12048,12 @@ static bool c8_planes_changed(const struct int=
el_crtc_state *new_crtc_state)
> >  	return !old_crtc_state->c8_planes !=3D !new_crtc_state->c8_planes;
> >  }
> >  =

> > +static void initialize_trans_port_sync_mode_state(struct intel_crtc_st=
ate *crtc_state)
> > +{
> > +	crtc_state->master_transcoder =3D INVALID_TRANSCODER;
> > +	crtc_state->sync_mode_slaves_mask =3D 0;
> > +}
> > +
> >  static int icl_add_sync_mode_crtcs(struct intel_crtc_state *crtc_state)
> >  {
> >  	struct drm_crtc *crtc =3D crtc_state->uapi.crtc;
> > @@ -12059,11 +12065,22 @@ static int icl_add_sync_mode_crtcs(struct int=
el_crtc_state *crtc_state)
> >  	struct drm_crtc *master_crtc =3D NULL;
> >  	struct drm_crtc_state *master_crtc_state;
> >  	struct intel_crtc_state *master_pipe_config;
> > -	int i, tile_group_id;
> > +	int i, tile_group_id =3D 0, num_tiled_conns =3D 0;
> >  =

> >  	if (INTEL_GEN(dev_priv) < 11)
> >  		return 0;
> >  =

> > +	/* If all tiles not present do not make master slave assignments
> > +	 * Here we assume all tiles belong to the same tile group for now.
> > +	 */
> > +	for_each_new_connector_in_state(&state->base, connector, connector_st=
ate, i) {
> > +		if (connector->has_tile) {
> > +			if (!tile_group_id)
> > +				tile_group_id =3D connector->tile_group->id;
> =

> Isn't 0 a valid tile group id?
> =

> > +			num_tiled_conns++;
> > +		}
> =

> This whole thing looks confused. Should it not just look for the same
> tile group as what the current connector belongs to?

I was making sure that we dont count the connectors that dont belong to the=
 same tile grp id.
But yes I agree that the tile grp id can be assigned by current connector's=
 tile grp id
and add num_conns only if they are of the same tile grp id.

> =

> > +	}
> > +
> >  	/*
> >  	 * In case of tiled displays there could be one or more slaves but th=
ere is
> >  	 * only one master. Lets make the CRTC used by the connector correspo=
nding
> > @@ -12077,8 +12094,15 @@ static int icl_add_sync_mode_crtcs(struct inte=
l_crtc_state *crtc_state)
> >  		if (!connector->has_tile)
> >  			continue;
> >  		if (crtc_state->hw.mode.hdisplay !=3D connector->tile_h_size ||
> > -		    crtc_state->hw.mode.vdisplay !=3D connector->tile_v_size)
> > +		    crtc_state->hw.mode.vdisplay !=3D connector->tile_v_size) {
> > +			initialize_trans_port_sync_mode_state(crtc_state);
> >  			return 0;
> > +		}
> > +		if (connector->tile_group->id =3D=3D tile_group_id &&
> > +		    num_tiled_conns < connector->num_h_tile * connector->num_v_tile)=
 {
> > +			initialize_trans_port_sync_mode_state(crtc_state);
> > +			return 0;
> > +		}
> >  		if (connector->tile_h_loc =3D=3D connector->num_h_tile - 1 &&
> >  		    connector->tile_v_loc =3D=3D connector->num_v_tile - 1)
> >  			continue;
> =

> This whole thing seems kinda overly complicated. I suggest it should
> just blindly go through all connectors of the same tile group and pick
> the lowest transcoder as the master, which is the logic Jose is using
> for MST. Except I guess we have to special case the EDP transcoder
> for port sync since it can't be a slave. So a simple numeric comparison
> won't quite do like used for MST.
> =

> And then we should probably move this thing to the encoder
> .compute_config(). I suppose it should look in the end something like:
> =

> compute_config() {
> 	...
> 	crtc_state->master =3D compute_master_transcoder();
> 	crtc_state->slaves =3D 0;
> 	if (master_transcoder =3D=3D cpu_transcoder)
> 		crtc_state->master =3D INVALID;
> 		crtc_state->slave =3D compute_slave_transcoders();
> 	}
> }
> =

> That keeps it very readable and avoids the confusing stuff of
> comptue_config() for one pipe randomly mutating the states of
> the other pipes.

But the logic that we are using is always make the connector corresponding =
to the
last tile the master and all other connectors as slaves since only 1 master=
 (last tile)
and multiple slaves.
This was agreed upon with discussions with you and Danvet and Maarten almos=
t 6 months back
and the entire enable/disable sequence is based on this.
I would rather keep the logic same for now since the master slave asisgnmen=
ts which was
designed based on consensus during the initial patches and since its workin=
g well now.

The only thing that I wanted to add in this patch is reset the master_trans=
 and slave_bitmask
properly if all tiles not present in order to handle the hotplug case corre=
ctly.

I will make changes for the tile grp id that you suggested for now and we c=
an simplify the logic later
as enhncements/optimizations.

Sounds good?

Manasi

> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
