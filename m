Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5579C147403
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 23:46:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9796E6FE9D;
	Thu, 23 Jan 2020 22:46:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 987136FE93
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 22:46:24 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jan 2020 14:45:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,355,1574150400"; d="scan'208";a="426451556"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga005.fm.intel.com with ESMTP; 23 Jan 2020 14:45:58 -0800
Date: Thu, 23 Jan 2020 14:47:04 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200123224703.GC4379@intel.com>
References: <20200123002415.31478-1-manasi.d.navare@intel.com>
 <20200123002415.31478-2-manasi.d.navare@intel.com>
 <20200123182712.GV13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200123182712.GV13686@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: Modeset only the tiled
 connectors with CRTC
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

On Thu, Jan 23, 2020 at 08:27:12PM +0200, Ville Syrj=E4l=E4 wrote:
> On Wed, Jan 22, 2020 at 04:24:15PM -0800, Manasi Navare wrote:
> =

> Missing commit msg.

Yes will add the commit message

> =

> =

> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Fixes: a603f5bd1691 ("drm/i915/dp: Make sure all tiled connectors get a=
dded to the state with full modeset")
> > Closes: https://gitlab.freedesktop.org/drm/intel/issues/516
> > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 10 +++++++---
> >  1 file changed, 7 insertions(+), 3 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 79f9054078ea..c8d6f6e8fc7f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -13155,11 +13155,12 @@ intel_modeset_pipe_config(struct intel_crtc_s=
tate *pipe_config)
> >  	}
> >  =

> >  	/* Get total number of tiled connectors in state that belong to
> > -	 * this tile group.
> > +	 * this tile group and that have a CRTC
> >  	 */
> >  	for_each_new_connector_in_state(state, connector, connector_state, i)=
 {
> >  		if (connector->has_tile &&
> > -		    connector->tile_group->id =3D=3D tile_group_id)
> > +		    connector->tile_group->id =3D=3D tile_group_id &&
> > +		    connector_state->crtc)
> =

> It might have a crtc, but that crtc might not be active. So feels like
> this fixes things more by luck that by design.

In case of kms_flip test cases, the second connector did not have crtc and =
it was
still getting added to the state trying to do commit on that causing it to =
fail.

So adding this check fixes it. So I think this fix is definitely needed plu=
s I will look at
adding a check for crtc_active using your suggested approach in your branch=
 too.

> =

> The real problem of course is that we can't tell whether other crtcs are
> active or not during intel_modeset_pipe_config(). All pipes must finish
> that stage before we can make an actual decision based on what's active
> and what's inactive. And that requires the two stage approach I proposed
> in my branch before xmas.

Perhaps I was thinking of adding another check after intel_modeset_pipe_con=
fig() but in intel_atomic_check()
something like intel_port_sync_check() where we count the number of conns w=
ith active crtc and if that is
less than the num tiles and if trans_port_sync mode, then reset port sync m=
ode assignments so it commits
in the normal non port sync mode.
What do you think of this approach? I will also take a look at your branch =
and try to understand that.

Manasi

> =

> >  			num_tiled_conns++;
> >  	}
> >  =

> > @@ -14507,13 +14508,14 @@ intel_modeset_all_tiles(struct intel_atomic_s=
tate *state, int tile_grp_id)
> >  			continue;
> >  		conn_state =3D drm_atomic_get_connector_state(&state->base,
> >  							    connector);
> > +
> >  		if (IS_ERR(conn_state)) {
> >  			ret =3D  PTR_ERR(conn_state);
> >  			break;
> >  		}
> >  =

> >  		if (!conn_state->crtc)
> > -			continue;
> > +			break;
> >  =

> >  		crtc_state =3D drm_atomic_get_crtc_state(&state->base,
> >  						       conn_state->crtc);
> > @@ -14550,6 +14552,8 @@ intel_atomic_check_tiled_conns(struct intel_ato=
mic_state *state)
> >  			continue;
> >  		if (!intel_connector_needs_modeset(state, connector))
> >  			continue;
> > +		if (!new_conn_state->crtc)
> > +			continue;
> >  =

> >  		ret =3D intel_modeset_all_tiles(state, connector->tile_group->id);
> >  		if (ret)
> > -- =

> > 2.19.1
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
