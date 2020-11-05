Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBBC2A830B
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 17:07:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5DD86EDAA;
	Thu,  5 Nov 2020 16:07:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7305D6EDAA
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 16:07:46 +0000 (UTC)
IronPort-SDR: DZEBgsl82ISS86TDgAuhQgn1aCtfTELWL+T0OUfFo82G0y9FScdXrUK+EGIFmpRrYMoBUUlmkm
 rNYRNqx0q13A==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="168626959"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="168626959"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 08:07:29 -0800
IronPort-SDR: Izd5dUE9wxmGSnHDVIl1/yjUWS9UVaV9bKDhKlp292M1xAzMybyjeWDsBaJSXz92Rev0if9tep
 dG+P54VAmg9Q==
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; d="scan'208";a="363861238"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2020 08:07:29 -0800
Date: Thu, 5 Nov 2020 08:09:38 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20201105160938.GA10935@labuser-Z97X-UD5H>
References: <20201102211906.4893-1-manasi.d.navare@intel.com>
 <20201102211906.4893-5-manasi.d.navare@intel.com>
 <20201105152131.GW6112@intel.com> <20201105152333.GX6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201105152333.GX6112@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH v5 5/6] drm/i915/dp: Prep for bigjoiner
 atomic check
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

On Thu, Nov 05, 2020 at 05:23:33PM +0200, Ville Syrj=E4l=E4 wrote:
> On Thu, Nov 05, 2020 at 05:21:31PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Mon, Nov 02, 2020 at 01:19:05PM -0800, Manasi Navare wrote:
> > > No functional changes here. Just pass intel_atomic_state
> > > along with crtc_state to certain atomic_check functions.
> > > This will lay the foundation for adding bigjoiner master/slave
> > > states in atomic check.
> > > =

> > > v2:
> > > * More prep with intel_atomic_state (Ville)
> > > =

> > > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_atomic.c  |  9 +++++----
> > >  drivers/gpu/drm/i915/display/intel_atomic.h  |  3 ++-
> > >  drivers/gpu/drm/i915/display/intel_display.c | 21 ++++++++++++------=
--
> > >  3 files changed, 20 insertions(+), 13 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gp=
u/drm/i915/display/intel_atomic.c
> > > index 86be032bcf96..e243ce97b534 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
> > > @@ -270,14 +270,15 @@ void intel_crtc_free_hw_state(struct intel_crtc=
_state *crtc_state)
> > >  	intel_crtc_put_color_blobs(crtc_state);
> > >  }
> > >  =

> > > -void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state)
> > > +void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state,
> > > +				 const struct intel_crtc_state *from_crtc_state)
> > >  {
> > >  	drm_property_replace_blob(&crtc_state->hw.degamma_lut,
> > > -				  crtc_state->uapi.degamma_lut);
> > > +				  from_crtc_state->uapi.degamma_lut);
> > >  	drm_property_replace_blob(&crtc_state->hw.gamma_lut,
> > > -				  crtc_state->uapi.gamma_lut);
> > > +				  from_crtc_state->uapi.gamma_lut);
> > >  	drm_property_replace_blob(&crtc_state->hw.ctm,
> > > -				  crtc_state->uapi.ctm);
> > > +				  from_crtc_state->uapi.ctm);
> > =

> > This patch still seems to do two totally separate things:
> > 1) pass intel_atomic_State all over (for which there was another
> >    patch in the series as well?)
> =

> Looks like it was patch 4. So I would just squash all those changes from
> here into patch 4.

Okay so all the changes where I am sending the intel_atomic_state to functi=
ons
move those to Patch 4 and then just keep the
color blobs change here?

Manasi

> =

> > 2) this intel_crtc_copy_color_blobs() change
> > =

> > I would split these up because the commit message doesn't
> > even mention the second change.
> > =

> > Each part looks fine on its own so with a proper split they are
> > Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > >  }
> > >  =

> > >  /**
> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic.h b/drivers/gp=
u/drm/i915/display/intel_atomic.h
> > > index 285de07011dc..62a3365ed5e6 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic.h
> > > @@ -43,7 +43,8 @@ struct drm_crtc_state *intel_crtc_duplicate_state(s=
truct drm_crtc *crtc);
> > >  void intel_crtc_destroy_state(struct drm_crtc *crtc,
> > >  			       struct drm_crtc_state *state);
> > >  void intel_crtc_free_hw_state(struct intel_crtc_state *crtc_state);
> > > -void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state=
);
> > > +void intel_crtc_copy_color_blobs(struct intel_crtc_state *crtc_state,
> > > +				 const struct intel_crtc_state *from_crtc_state);
> > >  struct drm_atomic_state *intel_atomic_state_alloc(struct drm_device =
*dev);
> > >  void intel_atomic_state_free(struct drm_atomic_state *state);
> > >  void intel_atomic_state_clear(struct drm_atomic_state *state);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/g=
pu/drm/i915/display/intel_display.c
> > > index 0bea90cdf242..ab10dfe705e4 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -13459,13 +13459,17 @@ static bool check_digital_port_conflicts(st=
ruct intel_atomic_state *state)
> > >  }
> > >  =

> > >  static void
> > > -intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_crtc_state *=
crtc_state)
> > > +intel_crtc_copy_uapi_to_hw_state_nomodeset(struct intel_atomic_state=
 *state,
> > > +					   struct intel_crtc_state *crtc_state)
> > >  {
> > > -	intel_crtc_copy_color_blobs(crtc_state);
> > > +	const struct intel_crtc_state *from_crtc_state =3D crtc_state;
> > > +
> > > +	intel_crtc_copy_color_blobs(crtc_state, from_crtc_state);
> > >  }
> > >  =

> > >  static void
> > > -intel_crtc_copy_uapi_to_hw_state(struct intel_crtc_state *crtc_state)
> > > +intel_crtc_copy_uapi_to_hw_state(struct intel_atomic_state *state,
> > > +				 struct intel_crtc_state *crtc_state)
> > >  {
> > >  	crtc_state->hw.enable =3D crtc_state->uapi.enable;
> > >  	crtc_state->hw.active =3D crtc_state->uapi.active;
> > > @@ -13473,7 +13477,7 @@ intel_crtc_copy_uapi_to_hw_state(struct intel=
_crtc_state *crtc_state)
> > >  	crtc_state->hw.pipe_mode =3D crtc_state->hw.adjusted_mode =3D crtc_=
state->uapi.adjusted_mode;
> > >  	crtc_state->hw.scaling_filter =3D crtc_state->uapi.scaling_filter;
> > >  =

> > > -	intel_crtc_copy_uapi_to_hw_state_nomodeset(crtc_state);
> > > +	intel_crtc_copy_uapi_to_hw_state_nomodeset(state, crtc_state);
> > >  }
> > >  =

> > >  static void intel_crtc_copy_hw_to_uapi_state(struct intel_crtc_state=
 *crtc_state)
> > > @@ -13496,7 +13500,8 @@ static void intel_crtc_copy_hw_to_uapi_state(=
struct intel_crtc_state *crtc_state
> > >  }
> > >  =

> > >  static int
> > > -intel_crtc_prepare_cleared_state(struct intel_crtc_state *crtc_state)
> > > +intel_crtc_prepare_cleared_state(struct intel_atomic_state *state,
> > > +				 struct intel_crtc_state *crtc_state)
> > >  {
> > >  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
> > >  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> > > @@ -13528,7 +13533,7 @@ intel_crtc_prepare_cleared_state(struct intel=
_crtc_state *crtc_state)
> > >  	memcpy(crtc_state, saved_state, sizeof(*crtc_state));
> > >  	kfree(saved_state);
> > >  =

> > > -	intel_crtc_copy_uapi_to_hw_state(crtc_state);
> > > +	intel_crtc_copy_uapi_to_hw_state(state, crtc_state);
> > >  =

> > >  	return 0;
> > >  }
> > > @@ -15233,12 +15238,12 @@ static int intel_atomic_check(struct drm_de=
vice *dev,
> > >  					    new_crtc_state, i) {
> > >  		if (!needs_modeset(new_crtc_state)) {
> > >  			/* Light copy */
> > > -			intel_crtc_copy_uapi_to_hw_state_nomodeset(new_crtc_state);
> > > +			intel_crtc_copy_uapi_to_hw_state_nomodeset(state, new_crtc_state);
> > >  =

> > >  			continue;
> > >  		}
> > >  =

> > > -		ret =3D intel_crtc_prepare_cleared_state(new_crtc_state);
> > > +		ret =3D intel_crtc_prepare_cleared_state(state, new_crtc_state);
> > >  		if (ret)
> > >  			goto fail;
> > >  =

> > > -- =

> > > 2.19.1
> > =

> > -- =

> > Ville Syrj=E4l=E4
> > Intel
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
