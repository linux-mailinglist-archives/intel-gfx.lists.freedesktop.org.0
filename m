Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A435D11D8AE
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 22:40:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D64CC6E209;
	Thu, 12 Dec 2019 21:40:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3988289893
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 21:40:26 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 13:40:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,307,1571727600"; d="scan'208";a="388454195"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by orsmga005.jf.intel.com with ESMTP; 12 Dec 2019 13:40:25 -0800
Date: Thu, 12 Dec 2019 13:41:47 -0800
From: Manasi Navare <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20191212214147.GB24342@intel.com>
References: <20191211184526.142413-1-jose.souza@intel.com>
 <20191211184526.142413-10-jose.souza@intel.com>
 <20191212212830.GW1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212212830.GW1208@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v2 rebased 10/11] drm/i915/display: Check if
 pipe fastset is allowed by external dependencies
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

On Thu, Dec 12, 2019 at 11:28:30PM +0200, Ville Syrj=E4l=E4 wrote:
> On Wed, Dec 11, 2019 at 10:45:25AM -0800, Jos=E9 Roberto de Souza wrote:
> > Check if fastset is allowed by external dependencies like other pipes
> > and transcoders.
> > =

> > Right now it only forces a fullmodeset when the MST master transcoder
> > did not changed but the pipe of the master transcoder needs a
> > fullmodeset so all slaves also needs to do a fullmodeset.
> > But it will probably be need for port sync as well.

But in case of port sync, now I have this function in intel_atomic_check()
that will force a full modeset on all the connectors with has_tile if one of
the tiled connectors needs a full modeset.
So we wouldnt need to worry about fastset happening for one of the tiles in=
 port sync.

This patch:
https://patchwork.freedesktop.org/patch/344766/?series=3D70788&rev=3D1

Manasi

> > =

> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Cc: Manasi Navare <manasi.d.navare@intel.com>
> > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 41 ++++++++++++++++++++
> >  1 file changed, 41 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 092412b10d7c..0c24d7dfa152 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -13930,11 +13930,52 @@ static int calc_watermark_data(struct intel_a=
tomic_state *state)
> >  	return 0;
> >  }
> >  =

> > +/**
> > + * Check if fastset is allowed by external dependencies like other pip=
es and
> > + * transcoders.
> > + *
> > + * Right now it only forces a fullmodeset when the MST master transcod=
er did
> > + * not changed but the pipe of the master transcoder needs a fullmodes=
et so
> > + * all slaves also needs to do a fullmodeset.
> > + */
> > +static bool
> > +intel_crtc_check_external_dependencies_fastset(const struct intel_crtc=
_state *old_crtc_state,
> > +					       struct intel_crtc_state *new_crtc_state)
> > +{
> > +	struct intel_atomic_state *state =3D to_intel_atomic_state(new_crtc_s=
tate->uapi.state);
> > +	struct drm_i915_private *dev_priv =3D to_i915(new_crtc_state->uapi.cr=
tc->dev);
> > +	struct intel_crtc_state *new_crtc_state_iter;
> > +	struct intel_crtc *crtc_iter;
> > +	int i;
> > +
> > +	if (INTEL_GEN(dev_priv) < 12)
> > +		return true;
> > +
> > +	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST) ||
> > +	    intel_dp_mst_is_master_trans(new_crtc_state))
> > +		return true;
> > +
> > +	for_each_new_intel_crtc_in_state(state, crtc_iter, new_crtc_state_ite=
r, i) {
> > +		if (new_crtc_state_iter->cpu_transcoder !=3D
> > +		    new_crtc_state->mst_master_transcoder)
> > +			continue;
> > +
> > +		return !needs_modeset(new_crtc_state_iter);
> > +	}
> > +
> > +	DRM_ERROR("Master MST transcoder of pipe not found\n");
> > +	return false;
> > +}
> > +
> >  static void intel_crtc_check_fastset(const struct intel_crtc_state *ol=
d_crtc_state,
> >  				     struct intel_crtc_state *new_crtc_state)
> >  {
> >  	if (!intel_pipe_config_compare(old_crtc_state, new_crtc_state, true))
> >  		return;
> > +	if (!intel_crtc_check_external_dependencies_fastset(old_crtc_state,
> > +							    new_crtc_state))
> > +		return;
> =

> I don't think this will work. We've not yet .compute_config()'d
> everything so the master assignments are still up in the air.
> =

> I think we need the logic higher up in intel_atomic_check():
> =

> for_each_crtc()
> 	compute_config()
> 	if (can_fastset())
> 		needs_modeset=3Dfalse
> 		update_pipe=3Dtrue;
> 	}
> }
> =

> for_each_crtc()
> 	if (mst_slave && master.needs_modeset() {
> 		needs_modeset=3Dtrue;
> 		update_pipe=3Dfalse;
> 	}
> =

> for_each_crtc()
> 	if (update_pipe)
> 		copy_over_old_state();
> =

> 	=

> + we should probably rename/split update_pipes or add some
> lkind of needs_fastset() wrapper to make this less confusing.
> =

> =

> > +
> >  =

> >  	new_crtc_state->uapi.mode_changed =3D false;
> >  	new_crtc_state->update_pipe =3D true;
> > -- =

> > 2.24.1
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
