Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3FEE31529A
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Feb 2021 16:21:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF8116EB60;
	Tue,  9 Feb 2021 15:21:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68CEA6EB60
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Feb 2021 15:21:05 +0000 (UTC)
IronPort-SDR: 8hQOF8u18d7Tu2OFQDAiaSO35c9Hcc/lwmn4/uFGH7pgPn5++JGm4m9bfHVYSaDr4XetdQIeIE
 CtvbZ4TR43ZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9889"; a="200971954"
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; d="scan'208";a="200971954"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Feb 2021 07:21:04 -0800
IronPort-SDR: SICVdLqoNueKttCTZAaHqpeMTyru6SOzSkOfddSOLSYQQODe+mCPoFc+ZJSFUOeFJ+GxG2Exk+
 I+s7aSwOR6zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,165,1610438400"; d="scan'208";a="436196501"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 09 Feb 2021 07:21:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 09 Feb 2021 17:21:01 +0200
Date: Tue, 9 Feb 2021 17:21:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <YCKoXYRnFrxgQ+TA@intel.com>
References: <20210209021918.16234-1-ville.syrjala@linux.intel.com>
 <161286252973.7943.3574089157194446990@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <161286252973.7943.3574089157194446990@build.alporthouse.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Disallow plane x+w>stride on
 ilk+ with X-tiling
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

On Tue, Feb 09, 2021 at 09:22:09AM +0000, Chris Wilson wrote:
> Quoting Ville Syrjala (2021-02-09 02:19:16)
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > ilk+ planes get notably unhappy when the plane x+w exceeds
> > the stride. This wasn't a problem previously because we
> > always aligned SURF to the closest tile boundary so the
> > x offset never got particularly large. But now with async
> > flips we have to align to 256KiB instead and thus this
> > becomes a real issue.
> > =

> > On ilk/snb/ivb it looks like the accesses just just wrap
> > early to the next tile row when scanout goes past the
> > SURF+n*stride boundary, hsw/bdw suffer more heavily and
> > start to underrun constantly. i965/g4x appear to be immune.
> > vlv/chv I've not yet checked.
> > =

> > Let's borrow another trick from the skl+ code and search
> > backwards for a better SURF offset in the hopes of getting the
> > x offset below the limit. IIRC when I ran into a similar issue
> > on skl years ago it was causing the hardware to fall over
> > pretty hard as well.
> > =

> > And let's be consistent and include i965/g4x in the check
> > as well, just in case I just got super lucky somehow when
> > I wasn't able to reproduce the issue. Not that it really
> > matters since we still use 4k SURF alignment for i965/g4x
> > anyway.
> > =

> > Fixes: 6ede6b0616b2 ("drm/i915: Implement async flips for vlv/chv")
> > Fixes: 4bb18054adc4 ("drm/i915: Implement async flip for ilk/snb")
> > Fixes: 2a636e240c77 ("drm/i915: Implement async flip for ivb/hsw")
> > Fixes: cda195f13abd ("drm/i915: Implement async flips for bdw")
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/i9xx_plane.c | 27 +++++++++++++++++++++++
> >  1 file changed, 27 insertions(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/dr=
m/i915/display/i9xx_plane.c
> > index 0523e2c79d16..8a52beaed2da 100644
> > --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> > +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > @@ -255,6 +255,33 @@ int i9xx_check_plane_surface(struct intel_plane_st=
ate *plane_state)
> >         else
> >                 offset =3D 0;
> >  =

> > +       /*
> > +        * When using an X-tiled surface the plane starts to
> > +        * misbehave if the x offset + width exceeds the stride.
> > +        * hsw/bdw: underrun galore
> > +        * ilk/snb/ivb: wrap to the next tile row mid scanout
> > +        * i965/g4x: so far appear immune to this
> > +        * vlv/chv: TODO check
> > +        *
> > +        * Linear surfaces seem to work just fine, even on hsw/bdw
> > +        * despite them not using the linear offset anymore.
> > +        */
> > +       if (INTEL_GEN(dev_priv) >=3D 4 && fb->modifier =3D=3D I915_FORM=
AT_MOD_X_TILED) {
> > +               u32 alignment =3D intel_surf_alignment(fb, 0);
> > +               int cpp =3D fb->format->cpp[0];
> > +
> > +               while ((src_x + src_w) * cpp > plane_state->color_plane=
[0].stride) {
> > +                       if (offset =3D=3D 0) {
> > +                               drm_dbg_kms(&dev_priv->drm,
> > +                                           "Unable to find suitable di=
splay surface offset due to X-tiling\n");
> > +                               return -EINVAL;
> > +                       }
> > +
> > +                       offset =3D intel_plane_adjust_aligned_offset(&s=
rc_x, &src_y, plane_state, 0,
> > +                                                                  offs=
et, offset - alignment);
> =

> As offset decreases, src_x goes up; but modulus the pitch. So long as
> the alignment is not a multiple of the pitch, src_x will change on each
> iteration. And after the adjustment, the offset is stored in
> plane_state.
> =

> So this loop would fail for any power-of-two stride, but at the same
> time that would put the src_x + src_w out-of-bounds in the supplied
> coordinates. The only way src_x + src_w would exceed stride legally is
> if we have chosen an aligned offset that causes that, thus there should
> exist an offset where src_x + src_w does not exceed the stride.
> =

> The reason for choosing a nearby tile offset was to reduce src_x/src_y
> to fit within the crtc limits. While remapping could be used to solve
> that, the aligned_offset computation allows reuse of a single view.
> =

> Since offset, src_x are a function of the plane input parameters, this
> should be possible to exercise with carefully selected framebuffers and
> modesetting. Right? Is there a test case for this?

My idea was to extend kms_big_fb for these sort of things.
While I originally made it purely to test remapping it should
be possible to extend it for non-remapped fbs as well. IIRC =

J-P did at least some work towards that goal, but I guess
it's only in the internal copy for whatever reason.

> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>

Ta.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
