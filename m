Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 830E11257EF
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 00:43:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B0846EAA5;
	Wed, 18 Dec 2019 23:43:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2AA76EAA5
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2019 23:43:49 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 15:43:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="298538354"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga001.jf.intel.com with ESMTP; 18 Dec 2019 15:43:46 -0800
Date: Wed, 18 Dec 2019 15:45:20 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20191218234520.GH12192@intel.com>
References: <20191218185910.303540-1-jose.souza@intel.com>
 <20191218185910.303540-5-jose.souza@intel.com>
 <20191218204151.GA5394@intel.com>
 <27ea3fd7b9aeec75cef2475af8895afe91573932.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <27ea3fd7b9aeec75cef2475af8895afe91573932.camel@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 18, 2019 at 12:57:04PM -0800, Souza, Jose wrote:
> On Wed, 2019-12-18 at 12:41 -0800, Manasi Navare wrote:
> > On Wed, Dec 18, 2019 at 10:59:09AM -0800, Jos=E9 Roberto de Souza
> > wrote:
> > > Check if fastset is allowed by external dependencies like other
> > > pipes
> > > and transcoders.
> > > =

> > > Right now this patch only forces a fullmodeset in MST slaves of MST
> > > masters that needs a fullmodeset but it will be needed for port
> > > sync
> > > as well.
> > > =

> > > v3:
> > > - moved handling to intel_atomic_check() this way is guarantee that
> > > all pipes will have its state computed
> > > =

> > > v4:
> > > - added a function to return if MST master neeeds modeset to simply
> > > code in intel_atomic_check()
> > > =

> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 53 +++++++++++++++-
> > > ----
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.c  | 14 ++++++
> > >  drivers/gpu/drm/i915/display/intel_dp_mst.h  |  3 ++
> > >  3 files changed, 57 insertions(+), 13 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index a4f252d05b37..2a406891567b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -13903,19 +13903,6 @@ static void intel_crtc_check_fastset(const
> > > struct intel_crtc_state *old_crtc_sta
> > >  =

> > >  	new_crtc_state->uapi.mode_changed =3D false;
> > >  	new_crtc_state->update_pipe =3D true;
> > > -
> > > -	/*
> > > -	 * If we're not doing the full modeset we want to
> > > -	 * keep the current M/N values as they may be
> > > -	 * sufficiently different to the computed values
> > > -	 * to cause problems.
> > > -	 *
> > > -	 * FIXME: should really copy more fuzzy state here
> > > -	 */
> > > -	new_crtc_state->fdi_m_n =3D old_crtc_state->fdi_m_n;
> > > -	new_crtc_state->dp_m_n =3D old_crtc_state->dp_m_n;
> > > -	new_crtc_state->dp_m2_n2 =3D old_crtc_state->dp_m2_n2;
> > > -	new_crtc_state->has_drrs =3D old_crtc_state->has_drrs;
> > >  }
> > >  =

> > >  static int intel_crtc_add_planes_to_state(struct
> > > intel_atomic_state *state,
> > > @@ -14083,6 +14070,46 @@ static int intel_atomic_check(struct
> > > drm_device *dev,
> > >  			any_ms =3D true;
> > >  	}
> > >  =

> > > +	/**
> > > +	 * Check if fastset is allowed by external dependencies like
> > > other
> > > +	 * pipes and transcoders.
> > > +	 *
> > > +	 * Right now it only forces a fullmodeset when the MST master
> > > +	 * transcoder did not changed but the pipe of the master
> > > transcoder
> > > +	 * needs a fullmodeset so all slaves also needs to do a
> > > fullmodeset.
> > > +	 */
> > > +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state,
> > > i) {
> > > +		enum transcoder master =3D new_crtc_state-
> > > >mst_master_transcoder;
> > > +
> > > +		if (!intel_dp_mst_is_slave_trans(new_crtc_state) ||
> > > +		    needs_modeset(new_crtc_state))
> > > +			continue;
> > > +
> > > +		if (intel_dp_mst_master_trans_needs_modeset(state,
> > > master)) {
> > > +			new_crtc_state->uapi.mode_changed =3D true;
> > > +			new_crtc_state->update_pipe =3D false;
> > > +		}
> > > +	}
> > > +
> > > +	for_each_oldnew_intel_crtc_in_state(state, crtc,
> > > old_crtc_state,
> > > +					    new_crtc_state, i) {
> > > +		if (needs_modeset(new_crtc_state))
> > > +			continue;
> > > +
> > > +		/*
> > > +		 * If we're not doing the full modeset we want to
> > > +		 * keep the current M/N values as they may be
> > > +		 * sufficiently different to the computed values
> > > +		 * to cause problems.
> > > +		 *
> > > +		 * FIXME: should really copy more fuzzy state here
> > > +		 */
> > > +		new_crtc_state->fdi_m_n =3D old_crtc_state->fdi_m_n;
> > > +		new_crtc_state->dp_m_n =3D old_crtc_state->dp_m_n;
> > > +		new_crtc_state->dp_m2_n2 =3D old_crtc_state->dp_m2_n2;
> > > +		new_crtc_state->has_drrs =3D old_crtc_state->has_drrs;
> > > +	}
> > =

> > Jose, Ville, this is exactly how i would need to modeset all port
> > synced crtcs
> > after the fastset check?
> =

> Yes, in the loop that I check if MST master needs a modeset you should
> force modeset to port sync CRTCs when needed.
> =

> > =

> > Ville had suggsted adding mdoeset_synced_crtcs() even before the
> > compute_config or before the call
> > where port sync assignments happen, so in that function, it would
> > look at the modeset_synced_old_crtc_states ?
> =

> Before compute() and intel_crtc_check_fastset() the uapi.mode_changed
> would be override.

You mean before compute() and after intel_crtc_check_fastset() we would ove=
rride
uapi.mode_changed() ?

Manasi

> =

> > =

> > Manasi
> > =

> > =

> > Manasi
> > =

> > > +
> > >  	if (any_ms && !check_digital_port_conflicts(state)) {
> > >  		DRM_DEBUG_KMS("rejecting conflicting digital port
> > > configuration\n");
> > >  		ret =3D EINVAL;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > index efd14b0b507b..4aba1d702a83 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > > @@ -854,3 +854,17 @@ bool intel_dp_mst_is_slave_trans(const struct
> > > intel_crtc_state *crtc_state)
> > >  	return crtc_state->mst_master_transcoder !=3D INVALID_TRANSCODER
> > > &&
> > >  	       crtc_state->mst_master_transcoder !=3D crtc_state-
> > > >cpu_transcoder;
> > >  }
> > > +
> > > +bool intel_dp_mst_master_trans_needs_modeset(struct
> > > intel_atomic_state *state,
> > > +					     enum transcoder master)
> > > +{
> > > +	struct intel_crtc_state *new_crtc_state;
> > > +	struct intel_crtc *crtc;
> > > +	int i;
> > > +
> > > +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state,
> > > i)
> > > +		if (new_crtc_state->mst_master_transcoder =3D=3D master)
> > > +			return
> > > drm_atomic_crtc_needs_modeset(&new_crtc_state->uapi);
> > > +
> > > +	return false;
> > > +}
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h
> > > b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> > > index 854724f68f09..72cb486f32ab 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> > > @@ -8,6 +8,7 @@
> > >  =

> > >  #include <linux/types.h>
> > >  =

> > > +struct intel_atomic_state;
> > >  struct intel_digital_port;
> > >  struct intel_crtc_state;
> > >  =

> > > @@ -16,5 +17,7 @@ void intel_dp_mst_encoder_cleanup(struct
> > > intel_digital_port *intel_dig_port);
> > >  int intel_dp_mst_encoder_active_links(struct intel_digital_port
> > > *intel_dig_port);
> > >  bool intel_dp_mst_is_master_trans(const struct intel_crtc_state
> > > *crtc_state);
> > >  bool intel_dp_mst_is_slave_trans(const struct intel_crtc_state
> > > *crtc_state);
> > > +bool intel_dp_mst_master_trans_needs_modeset(struct
> > > intel_atomic_state *state,
> > > +					     enum transcoder master);
> > >  =

> > >  #endif /* __INTEL_DP_MST_H__ */
> > > -- =

> > > 2.24.1
> > > =

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
