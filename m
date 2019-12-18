Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 521011252D6
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 21:11:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7B026EA68;
	Wed, 18 Dec 2019 20:11:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E43FB6EA68
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 20:11:46 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 12:11:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="222089790"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 18 Dec 2019 12:11:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Dec 2019 22:11:42 +0200
Date: Wed, 18 Dec 2019 22:11:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191218201142.GA1208@intel.com>
References: <20191218185910.303540-1-jose.souza@intel.com>
 <20191218185910.303540-5-jose.souza@intel.com>
 <20191218193917.GY1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191218193917.GY1208@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 18, 2019 at 09:39:17PM +0200, Ville Syrj=E4l=E4 wrote:
> On Wed, Dec 18, 2019 at 10:59:09AM -0800, Jos=E9 Roberto de Souza wrote:
> > Check if fastset is allowed by external dependencies like other pipes
> > and transcoders.
> > =

> > Right now this patch only forces a fullmodeset in MST slaves of MST
> > masters that needs a fullmodeset but it will be needed for port sync
> > as well.
> > =

> > v3:
> > - moved handling to intel_atomic_check() this way is guarantee that
> > all pipes will have its state computed
> > =

> > v4:
> > - added a function to return if MST master neeeds modeset to simply
> > code in intel_atomic_check()
> > =

> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 53 +++++++++++++++-----
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c  | 14 ++++++
> >  drivers/gpu/drm/i915/display/intel_dp_mst.h  |  3 ++
> >  3 files changed, 57 insertions(+), 13 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index a4f252d05b37..2a406891567b 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -13903,19 +13903,6 @@ static void intel_crtc_check_fastset(const str=
uct intel_crtc_state *old_crtc_sta
> >  =

> >  	new_crtc_state->uapi.mode_changed =3D false;
> >  	new_crtc_state->update_pipe =3D true;
> > -
> > -	/*
> > -	 * If we're not doing the full modeset we want to
> > -	 * keep the current M/N values as they may be
> > -	 * sufficiently different to the computed values
> > -	 * to cause problems.
> > -	 *
> > -	 * FIXME: should really copy more fuzzy state here
> > -	 */
> > -	new_crtc_state->fdi_m_n =3D old_crtc_state->fdi_m_n;
> > -	new_crtc_state->dp_m_n =3D old_crtc_state->dp_m_n;
> > -	new_crtc_state->dp_m2_n2 =3D old_crtc_state->dp_m2_n2;
> > -	new_crtc_state->has_drrs =3D old_crtc_state->has_drrs;
> >  }
> >  =

> >  static int intel_crtc_add_planes_to_state(struct intel_atomic_state *s=
tate,
> > @@ -14083,6 +14070,46 @@ static int intel_atomic_check(struct drm_devic=
e *dev,
> >  			any_ms =3D true;
> >  	}
> >  =

> > +	/**
> > +	 * Check if fastset is allowed by external dependencies like other
> > +	 * pipes and transcoders.
> > +	 *
> > +	 * Right now it only forces a fullmodeset when the MST master
> > +	 * transcoder did not changed but the pipe of the master transcoder
> > +	 * needs a fullmodeset so all slaves also needs to do a fullmodeset.
> > +	 */
> > +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> > +		enum transcoder master =3D new_crtc_state->mst_master_transcoder;
> > +
> > +		if (!intel_dp_mst_is_slave_trans(new_crtc_state) ||
> > +		    needs_modeset(new_crtc_state))
> > +			continue;
> > +
> > +		if (intel_dp_mst_master_trans_needs_modeset(state, master)) {
> =

> I think this has the loops the opposite way of what I was thinking,
> but should work fine I think... OK. I'm convinced your way is in fact
> better.
> =

> > +			new_crtc_state->uapi.mode_changed =3D true;
> > +			new_crtc_state->update_pipe =3D false;
> > +		}
> > +	}
> > +
> > +	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> > +					    new_crtc_state, i) {
> > +		if (needs_modeset(new_crtc_state))
> > +			continue;
> =

> I suppose there isn't any way we should have crtcs in the state that
> neither have update_pipe or needs_modeset flagged here. Could maybe
> WARN_ON(!update_pipe) here if we're being paranoid.
> =

> > +
> > +		/*
> > +		 * If we're not doing the full modeset we want to
> > +		 * keep the current M/N values as they may be
> > +		 * sufficiently different to the computed values
> > +		 * to cause problems.
> > +		 *
> > +		 * FIXME: should really copy more fuzzy state here
> > +		 */
> > +		new_crtc_state->fdi_m_n =3D old_crtc_state->fdi_m_n;
> > +		new_crtc_state->dp_m_n =3D old_crtc_state->dp_m_n;
> > +		new_crtc_state->dp_m2_n2 =3D old_crtc_state->dp_m2_n2;
> > +		new_crtc_state->has_drrs =3D old_crtc_state->has_drrs;
> =

> Still a bit unhappy having this state copy inlined in intel_atomic_check(=
).
> =

> > +	}
> > +
> >  	if (any_ms && !check_digital_port_conflicts(state)) {
> >  		DRM_DEBUG_KMS("rejecting conflicting digital port configuration\n");
> >  		ret =3D EINVAL;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/=
drm/i915/display/intel_dp_mst.c
> > index efd14b0b507b..4aba1d702a83 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -854,3 +854,17 @@ bool intel_dp_mst_is_slave_trans(const struct inte=
l_crtc_state *crtc_state)
> >  	return crtc_state->mst_master_transcoder !=3D INVALID_TRANSCODER &&
> >  	       crtc_state->mst_master_transcoder !=3D crtc_state->cpu_transco=
der;
> >  }
> > +
> > +bool intel_dp_mst_master_trans_needs_modeset(struct intel_atomic_state=
 *state,
> > +					     enum transcoder master)
> =

> Are we going to need this elsewhere? Or be static in intel_display.c?
> Not that people are 100% happy of stuffing everything in there.
> =

> > +{
> > +	struct intel_crtc_state *new_crtc_state;
> > +	struct intel_crtc *crtc;
> > +	int i;
> > +
> > +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
> > +		if (new_crtc_state->mst_master_transcoder =3D=3D master)
> =

> So we need to modeset everything when either the master or any
> other slave wants to modeset? That is, we can't just modeset slaves
> independently and only force the modesets for all slaves if the master
> needs a modeset?

Hmm. Even if we technically could not sure we should with fastset
potentially making minced meat of the state. Probably best to at
least start with your version here.

I'll leave it to you whether to address any nits I had:
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> > +			return drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi);
> > +
> > +	return false;
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/=
drm/i915/display/intel_dp_mst.h
> > index 854724f68f09..72cb486f32ab 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> > @@ -8,6 +8,7 @@
> >  =

> >  #include <linux/types.h>
> >  =

> > +struct intel_atomic_state;
> >  struct intel_digital_port;
> >  struct intel_crtc_state;
> >  =

> > @@ -16,5 +17,7 @@ void intel_dp_mst_encoder_cleanup(struct intel_digita=
l_port *intel_dig_port);
> >  int intel_dp_mst_encoder_active_links(struct intel_digital_port *intel=
_dig_port);
> >  bool intel_dp_mst_is_master_trans(const struct intel_crtc_state *crtc_=
state);
> >  bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state *crtc_s=
tate);
> > +bool intel_dp_mst_master_trans_needs_modeset(struct intel_atomic_state=
 *state,
> > +					     enum transcoder master);
> >  =

> >  #endif /* __INTEL_DP_MST_H__ */
> > -- =

> > 2.24.1
> =

> -- =

> Ville Syrj=E4l=E4
> Intel

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
