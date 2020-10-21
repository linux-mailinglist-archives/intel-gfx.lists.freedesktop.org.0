Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD4C3294D65
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Oct 2020 15:22:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4884F6EB17;
	Wed, 21 Oct 2020 13:22:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6531B6EB17
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Oct 2020 13:22:06 +0000 (UTC)
IronPort-SDR: c4w7iiDbLztTB+kuc5iE0Pt55VYmyFTcS76pPfvxRz47lVLtD5fOwN/NR9zVzjmwh96hOsCOA0
 CBp/VqGCupqQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="147221727"
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="147221727"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2020 06:22:05 -0700
IronPort-SDR: AK3QywgDVKqM1Z7Hg7ZM+XQnPlE8S8pfzn5c7dCtoPYXXIzmJwJdJnaCOnOjQgbgLvcX6fIxdf
 nMG1DXWJeTDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,401,1596524400"; d="scan'208";a="353672848"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 21 Oct 2020 06:22:03 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Oct 2020 16:22:03 +0300
Date: Wed, 21 Oct 2020 16:22:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20201021132203.GE6112@intel.com>
References: <20201020194330.28568-1-ville.syrjala@linux.intel.com>
 <20201020194330.28568-2-ville.syrjala@linux.intel.com>
 <160322834765.17091.12161104416937615559@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <160322834765.17091.12161104416937615559@build.alporthouse.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Try to handle 90/270 degree
 rotated initial fb
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

On Tue, Oct 20, 2020 at 10:12:27PM +0100, Chris Wilson wrote:
> Quoting Ville Syrjala (2020-10-20 20:43:30)
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > Do the fb size readout correctly for the 90/270 degree rotated
> > cases. Not sure if we're missing something else as well.
> > =

> > Also no idea whether the BIOS would ever do this.
> > =

> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 22 ++++++++++++--------
> >  1 file changed, 13 insertions(+), 9 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index fd0103f6cc95..183f5d3cd106 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -10604,7 +10604,7 @@ skl_get_initial_plane_config(struct intel_crtc =
*crtc,
> >         enum pipe pipe;
> >         u32 val, base, offset, stride_mult, tiling, alpha;
> >         int fourcc, pixel_format;
> > -       unsigned int aligned_height;
> > +       unsigned int aligned_height, stride;
> >         struct drm_framebuffer *fb;
> >         struct intel_framebuffer *intel_fb;
> >  =

> > @@ -10696,10 +10696,6 @@ skl_get_initial_plane_config(struct intel_crtc=
 *crtc,
> >             val & PLANE_CTL_FLIP_HORIZONTAL)
> >                 plane_config->rotation |=3D DRM_MODE_REFLECT_X;
> >  =

> > -       /* 90/270 degree rotation would require extra work */
> > -       if (drm_rotation_90_or_270(plane_config->rotation))
> > -               goto error;
> > -
> >         base =3D intel_de_read(dev_priv, PLANE_SURF(pipe, plane_id)) & =
0xfffff000;
> >         plane_config->base =3D base;
> >  =

> > @@ -10710,10 +10706,18 @@ skl_get_initial_plane_config(struct intel_crt=
c *crtc,
> >         fb->width =3D ((val >> 0) & 0xffff) + 1;
> >  =

> >         val =3D intel_de_read(dev_priv, PLANE_STRIDE(pipe, plane_id));
> > -       stride_mult =3D skl_plane_stride_mult(fb, 0, DRM_MODE_ROTATE_0);
> > -       fb->pitches[0] =3D (val & 0x3ff) * stride_mult;
> > -
> > -       aligned_height =3D intel_fb_align_height(fb, 0, fb->height);
> > +       stride_mult =3D skl_plane_stride_mult(fb, 0, plane_config->rota=
tion);
> > +       stride =3D (val & 0x3ff) * stride_mult;
> > +
> > +       if (drm_rotation_90_or_270(plane_config->rotation)) {
> > +               swap(fb->width, fb->height);
> > +               fb->pitches[0] =3D ALIGN(fb->width * fb->format->cpp[0],
> > +                                      intel_fb_stride_alignment(fb, 0)=
);
> > +               aligned_height =3D stride;
> > +       } else {
> > +               fb->pitches[0] =3D stride;
> > +               aligned_height =3D intel_fb_align_height(fb, 0, fb->hei=
ght);
> > +       }
> =

> Cross check with tiling-y to rule out garbage?

I guess we could do that. Hmm, and we should probably reject Yf because
it has no fence and so seems like it should not even be possible.

> =

> We could also check the stride is suitable for tiling. How much do you
> trust that the registers light up a plane?

The hw stride is specified in tile units (hence the stride_mult).

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
