Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF6C16810E
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 16:03:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9D126E359;
	Fri, 21 Feb 2020 15:03:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 039F96E359
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 15:03:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 Feb 2020 07:03:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,468,1574150400"; d="scan'208";a="229872295"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 21 Feb 2020 07:02:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Feb 2020 17:02:57 +0200
Date: Fri, 21 Feb 2020 17:02:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200221150257.GP13686@intel.com>
References: <20200220160856.19888-1-stanislav.lisovskiy@intel.com>
 <20200221140419.GO13686@intel.com>
 <9a666aaf72f047cac0a34681e490693a09e17f4c.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a666aaf72f047cac0a34681e490693a09e17f4c.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Use intel_plane_data_rate for
 min_cdclk calculation
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 21, 2020 at 02:38:01PM +0000, Lisovskiy, Stanislav wrote:
> On Fri, 2020-02-21 at 16:04 +0200, Ville Syrj=E4l=E4 wrote:
> > On Thu, Feb 20, 2020 at 06:08:56PM +0200, Stanislav Lisovskiy wrote:
> > > There seems to be a bit of confusing redundancy in a way, how
> > > plane data rate/min cdclk are calculated.
> > > In fact both min cdclk, pixel rate and plane data rate are all
> > > part of the same formula as per BSpec.
> > > =

> > > However currently we have intel_plane_data_rate, which is used
> > > to calculate plane data rate and which is also used in bandwidth
> > > calculations. However for calculating min_cdclk we have another
> > > piece of code, doing almost same calculation, but a bit differently
> > > and in a different place. However as both are actually part of same
> > > formula, probably would be wise to use plane data rate calculations
> > > as a basis anyway, thus avoiding code duplication and possible bugs
> > > related to this.
> > > =

> > > Another thing is that I've noticed that during min_cdclk
> > > calculations
> > > we account for plane scaling, while for plane data rate, we don't.
> > > crtc->pixel_rate seems to account only for pipe ratio, however it
> > > is
> > > clearly stated in BSpec that plane data rate also need to account
> > > plane ratio as well.
> > > =

> > > So what this commit does is:
> > > - Adds a plane ratio calculation to intel_plane_data_rate
> > > - Removes redundant calculations from skl_plane_min_cdclk which is
> > >   used for gen9+ and now uses intel_plane_data_rate as a basis from
> > >   there as well.
> > > =

> > > v2: - Don't use 64 division if not needed(Ville Syrj=E4l=E4)
> > >     - Now use intel_plane_pixel_rate as a basis for calculations
> > > both
> > >       at intel_plane_data_rate and skl_plane_min_cdclk(Ville
> > > Syrj=E4l=E4)
> > > =

> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  .../gpu/drm/i915/display/intel_atomic_plane.c | 22
> > > +++++++++++++++-
> > >  .../gpu/drm/i915/display/intel_atomic_plane.h |  3 +++
> > >  drivers/gpu/drm/i915/display/intel_sprite.c   | 26 +++++++------
> > > ------
> > >  3 files changed, 33 insertions(+), 18 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > index c86d7a35c816..3bd7ea9bf1b4 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > @@ -133,11 +133,31 @@ intel_plane_destroy_state(struct drm_plane
> > > *plane,
> > >  	kfree(plane_state);
> > >  }
> > >  =

> > > +unsigned int intel_plane_pixel_rate(const struct intel_crtc_state
> > > *crtc_state,
> > > +				    const struct intel_plane_state
> > > *plane_state)
> > > +{
> > > +	unsigned int src_w, src_h, dst_w, dst_h;
> > > +
> > > +	src_w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> > > +	src_h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> > > +	dst_w =3D drm_rect_width(&plane_state->uapi.dst);
> > > +	dst_h =3D drm_rect_height(&plane_state->uapi.dst);
> > > +
> > > +	/* Downscaling limits the maximum pixel rate */
> > > +	dst_w =3D min(src_w, dst_w);
> > > +	dst_h =3D min(src_h, dst_h);
> > > +
> > > +	return DIV_ROUND_UP(mul_u32_u32(crtc_state->pixel_rate,
> > =

> > Wrong macro for 64/32->32 division.
> =

> Yes, in fact we should use 64 macro here still. =

> As I understand pixel rate is stored in kHz so for instance
> for pixel rate 172800 * 4K * 4K we already overflowing u32.
> Was just a bit confused with prev comment :)
> =

> > =

> > > +			    src_w * src_h),
> > > +			    mul_u32_u32(dst_w, dst_h));
> > =

> > And the divisor shouldn't be a u64.
> =

> Agree divisor is not, however divident is 64.
> > =

> > > +}
> > > +
> > >  unsigned int intel_plane_data_rate(const struct intel_crtc_state
> > > *crtc_state,
> > >  				   const struct intel_plane_state
> > > *plane_state)
> > >  {
> > >  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> > >  	unsigned int cpp;
> > > +	unsigned int plane_pixel_rate =3D
> > > intel_plane_pixel_rate(crtc_state, plane_state);
> > =

> > Just 'pixel_rate' should do. We know the rest from the fact that this
> > is a plane function. Also I'd put this first so the declaration block
> > looks at least a bit less messy.
> > =

> > >  =

> > >  	if (!plane_state->uapi.visible)
> > >  		return 0;
> > > @@ -153,7 +173,7 @@ unsigned int intel_plane_data_rate(const struct
> > > intel_crtc_state *crtc_state,
> > >  	if (fb->format->is_yuv && fb->format->num_planes > 1)
> > >  		cpp *=3D 4;
> > >  =

> > > -	return cpp * crtc_state->pixel_rate;
> > > +	return mul_u32_u32(plane_pixel_rate, cpp);
> > =

> > We're not returning a u64.
> > =

> > >  }
> > >  =

> > >  int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > > b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > > index 2bcf15e34728..a6bbf42bae1f 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
> > > @@ -18,6 +18,9 @@ struct intel_plane_state;
> > >  =

> > >  extern const struct drm_plane_helper_funcs
> > > intel_plane_helper_funcs;
> > >  =

> > > +unsigned int intel_plane_pixel_rate(const struct intel_crtc_state
> > > *crtc_state,
> > > +				    const struct intel_plane_state
> > > *plane_state);
> > > +
> > >  unsigned int intel_plane_data_rate(const struct intel_crtc_state
> > > *crtc_state,
> > >  				   const struct intel_plane_state
> > > *plane_state);
> > >  void intel_plane_copy_uapi_to_hw_state(struct intel_plane_state
> > > *plane_state,
> > > diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > index 7abeefe8dce5..4fa3081e2074 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> > > @@ -330,9 +330,9 @@ bool icl_is_hdr_plane(struct drm_i915_private
> > > *dev_priv, enum plane_id plane_id)
> > >  }
> > >  =

> > >  static void
> > > -skl_plane_ratio(const struct intel_crtc_state *crtc_state,
> > > -		const struct intel_plane_state *plane_state,
> > > -		unsigned int *num, unsigned int *den)
> > > +skl_plane_bpp_constraints(const struct intel_crtc_state
> > > *crtc_state,
> > > +			  const struct intel_plane_state *plane_state,
> > > +			  unsigned int *num, unsigned int *den)
> > =

> > Bogus rename.
> =

> Well, I guess you agree, that this function is not returning
> plane_ratio either :) Was just wondering if it has to be named somewhat
> differently.

It returns the plane ratio excluding the downscaling component.
So seems good enough to me. Or at least I can't immediately
think of anything particularly better.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
