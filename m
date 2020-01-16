Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 639C913D86B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 11:56:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43AF46EC98;
	Thu, 16 Jan 2020 10:56:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 122A26EC98
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 10:56:38 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 02:56:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,325,1574150400"; d="scan'208";a="273943444"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 16 Jan 2020 02:56:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Jan 2020 12:56:34 +0200
Date: Thu, 16 Jan 2020 12:56:34 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200116105634.GD13686@intel.com>
References: <20200115190813.17971-1-ville.syrjala@linux.intel.com>
 <85ebbf8ae15490c4f4d90ae9fbdc147975649323.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <85ebbf8ae15490c4f4d90ae9fbdc147975649323.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Fix post-fastset modeset
 check for port sync
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 16, 2020 at 12:05:43AM +0000, Souza, Jose wrote:
> On Wed, 2020-01-15 at 21:08 +0200, Ville Syrjala wrote:
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > The post-fastset "does anyone still need a full modeset?" for
> > port sync looks busted. The outer loop bails out of a full modeset
> > is still needed by the current crtc which, and then we skip forcing
> > a full modeset on the related crtcs. That's totally the opposite
> > of what we want.
> =

> Ops yeah, it is always doing a full modeset.
> =

> > =

> > The MST path has the logic mostly the other way around so it
> > looks correct. To fix the port sync case let's follow the MST
> > logic for both. So, if the current crtc already needs a modeset
> > we do nothing. otherwise we check if any of the related crtcs
> > needs a modeset, and if so we force a full modeset for the
> > current crtc.
> > =

> > And while at let's change the else if to a plain if to so
> > we don't have needless coupling between the MST and port sync
> > checks.
> > =

> > Cc: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > Fixes: 05a8e45136ca ("drm/i915/display: Use external dependency loop
> > for port sync")
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 43 ++++++++--------
> > ----
> >  1 file changed, 17 insertions(+), 26 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index dd03987cc24f..b397816ce253 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -14469,37 +14469,23 @@ static int intel_atomic_check_crtcs(struct
> > intel_atomic_state *state)
> >  	return 0;
> >  }
> >  =

> > -static bool intel_cpu_transcoder_needs_modeset(struct
> > intel_atomic_state *state,
> > -					       enum transcoder
> > transcoder)
> > +static bool intel_cpu_transcoders_need_modeset(struct
> > intel_atomic_state *state,
> > +					       u8 transcoders)
> >  {
> > -	struct intel_crtc_state *new_crtc_state;
> > +	const struct intel_crtc_state *new_crtc_state;
> >  	struct intel_crtc *crtc;
> >  	int i;
> >  =

> > -	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state,
> > i)
> > -		if (new_crtc_state->cpu_transcoder =3D=3D transcoder)
> > -			return needs_modeset(new_crtc_state);
> > +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state,
> > i) {
> > +		if (new_crtc_state->hw.enable &&
> =

> The intel_pipe_config_compare() will force a modeset for MST and port
> sync but this hw.enable could skip modeset in future features when one
> of the pipes are going from enabled to disabled.

We can't trust what's in .cpu_transcoder when enable=3D=3Dfalse. It can
be some stale junk left over from the previous state. Well, until
the next patch at least.

If the disabled pipe was the master then the mst/port sync master
transcoder will change and the fastset check won't pass on any of the
slaves. So the enable check is fine for that case.

If the disabled pipe was one of the port sync slaves the relevant
bitmask will change for the master, again making the fastset check
fail. And thus this code here will force a modeset for all the
other slaves.

So can't see how having the check could be a problem.

> =

> Removing it:
> =

> Reviewed-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> =

> > +		    transcoders & BIT(new_crtc_state->cpu_transcoder)
> > &&
> > +		    needs_modeset(new_crtc_state))
> > +			return true;
> > +	}
> >  =

> >  	return false;
> >  }
> >  =

> > -static void
> > -intel_modeset_synced_crtcs(struct intel_atomic_state *state,
> > -			   u8 transcoders)
> > -{
> > -	struct intel_crtc_state *new_crtc_state;
> > -	struct intel_crtc *crtc;
> > -	int i;
> > -
> > -	for_each_new_intel_crtc_in_state(state, crtc,
> > -					 new_crtc_state, i) {
> > -		if (transcoders & BIT(new_crtc_state->cpu_transcoder))
> > {
> > -			new_crtc_state->uapi.mode_changed =3D true;
> > -			new_crtc_state->update_pipe =3D false;
> > -		}
> > -	}
> > -}
> > -
> >  static int
> >  intel_modeset_all_tiles(struct intel_atomic_state *state, int
> > tile_grp_id)
> >  {
> > @@ -14655,15 +14641,20 @@ static int intel_atomic_check(struct
> > drm_device *dev,
> >  		if (intel_dp_mst_is_slave_trans(new_crtc_state)) {
> >  			enum transcoder master =3D new_crtc_state-
> > >mst_master_transcoder;
> >  =

> > -			if (intel_cpu_transcoder_needs_modeset(state,
> > master)) {
> > +			if (intel_cpu_transcoders_need_modeset(state,
> > BIT(master))) {
> >  				new_crtc_state->uapi.mode_changed =3D
> > true;
> >  				new_crtc_state->update_pipe =3D false;
> >  			}
> > -		} else if (is_trans_port_sync_mode(new_crtc_state)) {
> > +		}
> > +
> > +		if (is_trans_port_sync_mode(new_crtc_state)) {
> >  			u8 trans =3D new_crtc_state-
> > >sync_mode_slaves_mask |
> >  				   BIT(new_crtc_state-
> > >master_transcoder);
> >  =

> > -			intel_modeset_synced_crtcs(state, trans);
> > +			if (intel_cpu_transcoders_need_modeset(state,
> > trans)) {
> > +				new_crtc_state->uapi.mode_changed =3D
> > true;
> > +				new_crtc_state->update_pipe =3D false;
> > +			}
> >  		}
> >  	}
> >  =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
