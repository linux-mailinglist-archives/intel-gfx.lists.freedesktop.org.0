Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5127D127B64
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2019 13:59:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 658E96E027;
	Fri, 20 Dec 2019 12:58:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF02F6E027
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2019 12:58:56 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Dec 2019 04:58:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,335,1571727600"; d="scan'208";a="228597540"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 20 Dec 2019 04:58:53 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Dec 2019 14:58:53 +0200
Date: Fri, 20 Dec 2019 14:58:53 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191220125853.GI1208@intel.com>
References: <20191218185910.303540-1-jose.souza@intel.com>
 <20191218185910.303540-5-jose.souza@intel.com>
 <20191218193917.GY1208@intel.com>
 <26caae27943611264d8b3a112e8089eab203083a.camel@intel.com>
 <20191218202653.GC1208@intel.com>
 <d7b02559a0c8e996dd190cbf1b588ad12c397316.camel@intel.com>
 <e7beb2ca3c2aef85e22876671860ca51584d29ee.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e7beb2ca3c2aef85e22876671860ca51584d29ee.camel@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v4 5/6] drm/i915/display: Check if pipe
 fastset is allowed by external dependencies
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 19, 2019 at 08:39:26PM +0000, Souza, Jose wrote:
> On Wed, 2019-12-18 at 20:33 +0000, Souza, Jose wrote:
> > On Wed, 2019-12-18 at 22:26 +0200, Ville Syrj=E4l=E4 wrote:
> > > On Wed, Dec 18, 2019 at 08:19:15PM +0000, Souza, Jose wrote:
> > > > On Wed, 2019-12-18 at 21:39 +0200, Ville Syrj=E4l=E4 wrote:
> > > > > On Wed, Dec 18, 2019 at 10:59:09AM -0800, Jos=E9 Roberto de Souza
> > > > > wrote:
> > > > > > Check if fastset is allowed by external dependencies like
> > > > > > other
> > > > > > pipes
> > > > > > and transcoders.
> > > > > > =

> > > > > > Right now this patch only forces a fullmodeset in MST slaves
> > > > > > of
> > > > > > MST
> > > > > > masters that needs a fullmodeset but it will be needed for
> > > > > > port
> > > > > > sync
> > > > > > as well.
> > > > > > =

> > > > > > v3:
> > > > > > - moved handling to intel_atomic_check() this way is
> > > > > > guarantee
> > > > > > that
> > > > > > all pipes will have its state computed
> > > > > > =

> > > > > > v4:
> > > > > > - added a function to return if MST master neeeds modeset to
> > > > > > simply
> > > > > > code in intel_atomic_check()
> > > > > > =

> > > > > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > > > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > > > > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > > > > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > > > > ---
> > > > > >  drivers/gpu/drm/i915/display/intel_display.c | 53
> > > > > > +++++++++++++++-
> > > > > > ----
> > > > > >  drivers/gpu/drm/i915/display/intel_dp_mst.c  | 14 ++++++
> > > > > >  drivers/gpu/drm/i915/display/intel_dp_mst.h  |  3 ++
> > > > > >  3 files changed, 57 insertions(+), 13 deletions(-)
> > > > > > =

> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > index a4f252d05b37..2a406891567b 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > @@ -13903,19 +13903,6 @@ static void
> > > > > > intel_crtc_check_fastset(const
> > > > > > struct intel_crtc_state *old_crtc_sta
> > > > > >  =

> > > > > >  	new_crtc_state->uapi.mode_changed =3D false;
> > > > > >  	new_crtc_state->update_pipe =3D true;
> > > > > > -
> > > > > > -	/*
> > > > > > -	 * If we're not doing the full modeset we want to
> > > > > > -	 * keep the current M/N values as they may be
> > > > > > -	 * sufficiently different to the computed values
> > > > > > -	 * to cause problems.
> > > > > > -	 *
> > > > > > -	 * FIXME: should really copy more fuzzy state here
> > > > > > -	 */
> > > > > > -	new_crtc_state->fdi_m_n =3D old_crtc_state->fdi_m_n;
> > > > > > -	new_crtc_state->dp_m_n =3D old_crtc_state->dp_m_n;
> > > > > > -	new_crtc_state->dp_m2_n2 =3D old_crtc_state->dp_m2_n2;
> > > > > > -	new_crtc_state->has_drrs =3D old_crtc_state->has_drrs;
> > > > > >  }
> > > > > >  =

> > > > > >  static int intel_crtc_add_planes_to_state(struct
> > > > > > intel_atomic_state *state,
> > > > > > @@ -14083,6 +14070,46 @@ static int intel_atomic_check(struct
> > > > > > drm_device *dev,
> > > > > >  			any_ms =3D true;
> > > > > >  	}
> > > > > >  =

> > > > > > +	/**
> > > > > > +	 * Check if fastset is allowed by external dependencies
> > > > > > like
> > > > > > other
> > > > > > +	 * pipes and transcoders.
> > > > > > +	 *
> > > > > > +	 * Right now it only forces a fullmodeset when the MST
> > > > > > master
> > > > > > +	 * transcoder did not changed but the pipe of the
> > > > > > master
> > > > > > transcoder
> > > > > > +	 * needs a fullmodeset so all slaves also needs to do a
> > > > > > fullmodeset.
> > > > > > +	 */
> > > > > > +	for_each_new_intel_crtc_in_state(state, crtc,
> > > > > > new_crtc_state,
> > > > > > i) {
> > > > > > +		enum transcoder master =3D new_crtc_state-
> > > > > > > mst_master_transcoder;
> > > > > > +
> > > > > > +		if
> > > > > > (!intel_dp_mst_is_slave_trans(new_crtc_state) ||
> > > > > > +		    needs_modeset(new_crtc_state))
> > > > > > +			continue;
> > > > > > +
> > > > > > +		if
> > > > > > (intel_dp_mst_master_trans_needs_modeset(state,
> > > > > > master)) {
> > > > > =

> > > > > I think this has the loops the opposite way of what I was
> > > > > thinking,
> > > > > but should work fine I think... OK. I'm convinced your way is
> > > > > in
> > > > > fact
> > > > > better.
> > > > > =

> > > > > > +			new_crtc_state->uapi.mode_changed =3D
> > > > > > true;
> > > > > > +			new_crtc_state->update_pipe =3D false;
> > > > > > +		}
> > > > > > +	}
> > > > > > +
> > > > > > +	for_each_oldnew_intel_crtc_in_state(state, crtc,
> > > > > > old_crtc_state,
> > > > > > +					    new_crtc_state, i)
> > > > > > {
> > > > > > +		if (needs_modeset(new_crtc_state))
> > > > > > +			continue;
> > > > > =

> > > > > I suppose there isn't any way we should have crtcs in the state
> > > > > that
> > > > > neither have update_pipe or needs_modeset flagged here. Could
> > > > > maybe
> > > > > WARN_ON(!update_pipe) here if we're being paranoid.
> > > > =

> > > > Adding the WARN_ON
> =

> Ah we can't add this WARN_ON(), is most atomic states the previous CRTC
> states is added even if it dont need any modification.
> =

> Those are handled here:
> =

> 	for_each_oldnew_intel_crtc_in_state(state, crtc,
> old_crtc_state,
> 					    new_crtc_state, i) {
> 		if (!needs_modeset(new_crtc_state)) {
> 			/* Light copy */
> 			intel_crtc_copy_uapi_to_hw_state_nomodeset(new_
> crtc_state);
> =

> 			continue;
> 		}

After further consideration we only want the copy for fastset crtcs
(ie. ones with update_pipe=3D=3Dtrue). Crtcs added for pure plane updates
should not do the copy (well, in that case the old and new states
really should match, but I still think it's a bit dubious). So
I guess we should check for '!needs_modeset() && update_pipe'.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
