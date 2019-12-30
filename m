Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D2B12D371
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 19:40:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BC9E6E071;
	Mon, 30 Dec 2019 18:39:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 882DC6E071
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 18:39:56 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Dec 2019 10:39:55 -0800
X-IronPort-AV: E=Sophos;i="5.69,376,1571727600"; d="scan'208";a="213399371"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Dec 2019 10:39:54 -0800
Date: Mon, 30 Dec 2019 20:39:18 +0200
From: Imre Deak <imre.deak@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191230183918.GA6221@ideak-desk.fi.intel.com>
References: <20191227235147.32366-1-imre.deak@intel.com>
 <157770291183.2392.13453391973135570968@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157770291183.2392.13453391973135570968@skylake-alporthouse-com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Add support for
 non-power-of-2 FB plane alignment
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 30, 2019 at 10:48:31AM +0000, Chris Wilson wrote:
> Quoting Imre Deak (2019-12-27 23:51:45)
> > At least one framebuffer plane on TGL - the UV plane of YUV semiplanar
> > FBs - requires a non-power-of-2 alignment, so add support for this. This
> > new alignment restriction applies only to an offset within an FB, so the
> > GEM buffer itself containing the FB must still be power-of-2 aligned.
> =

> It's worth talking about virtual memory alignment (in the GGTT) here and
> not the physical alignment of the backing store. The buffer itself plays
> no part here.

Yes, this new restriction is about the GGTT mapping and display
specific. In fact other engines have other restrictions when
reading/writing the same YUV surfaces - for instance via a PPGTT map.
And yes, the page physical addresses can be anything.

Will improve the commit log.

> > Add a check for this (in practice plane 0, since the plane 0 offset must
> > be 0).
> > =

> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 22 +++++++++++++-------
> >  1 file changed, 14 insertions(+), 8 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 624ba9be7293..d8970198c77e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2194,6 +2194,7 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer=
 *fb,
> >                 return ERR_PTR(-EINVAL);
> >  =

> >         alignment =3D intel_surf_alignment(fb, 0);
> > +       WARN_ON(!is_power_of_2(alignment));
> =

> Handle the error, if you are going to the trouble to warn, add the
> return as well.

Ok.

> >  =

> >         /* Note that the w/a also requires 64 PTE of padding following =
the
> >          * bo. We currently fill all unused PTE with the shadow page an=
d so
> > @@ -2432,9 +2433,6 @@ static u32 intel_compute_aligned_offset(struct dr=
m_i915_private *dev_priv,
> >         unsigned int cpp =3D fb->format->cpp[color_plane];
> >         u32 offset, offset_aligned;
> >  =

> > -       if (alignment)
> > -               alignment--;
> > -
> >         if (!is_surface_linear(fb, color_plane)) {
> >                 unsigned int tile_size, tile_width, tile_height;
> >                 unsigned int tile_rows, tiles, pitch_tiles;
> > @@ -2456,17 +2454,24 @@ static u32 intel_compute_aligned_offset(struct =
drm_i915_private *dev_priv,
> >                 *x %=3D tile_width;
> >  =

> >                 offset =3D (tile_rows * pitch_tiles + tiles) * tile_siz=
e;
> > -               offset_aligned =3D offset & ~alignment;
> > +
> > +               offset_aligned =3D offset;
> > +               if (alignment)
> > +                       offset_aligned =3D rounddown(offset_aligned, al=
ignment);
> >  =

> >                 intel_adjust_tile_offset(x, y, tile_width, tile_height,
> >                                          tile_size, pitch_tiles,
> >                                          offset, offset_aligned);
> >         } else {
> >                 offset =3D *y * pitch + *x * cpp;
> > -               offset_aligned =3D offset & ~alignment;
> > -
> > -               *y =3D (offset & alignment) / pitch;
> > -               *x =3D ((offset & alignment) - *y * pitch) / cpp;
> > +               offset_aligned =3D offset;
> > +               if (alignment) {
> > +                       offset_aligned =3D rounddown(offset_aligned, al=
ignment);
> > +                       *y =3D (offset % alignment) / pitch;
> > +                       *x =3D ((offset % alignment) - *y * pitch) / cp=
p;
> > +               } else {
> > +                       *y =3D *x =3D 0;
> > +               }
> >         }
> >  =

> >         return offset_aligned;
> > @@ -3738,6 +3743,7 @@ static int skl_check_main_surface(struct intel_pl=
ane_state *plane_state)
> >         intel_add_fb_offsets(&x, &y, plane_state, 0);
> >         offset =3D intel_plane_compute_aligned_offset(&x, &y, plane_sta=
te, 0);
> >         alignment =3D intel_surf_alignment(fb, 0);
> > +       WARN_ON(!is_power_of_2(alignment));
> =

> The other two are expected to handle !is_pot...

Not sure what the alignment of the address we write to the main surface
address register should be, the spec doesn't say anything about that. I
assume now that not wrapping around the right edge of the detiler fence
we add is enough (which is also checked in intel_fill_fb_info()).

> I would strongly suggest handling the WARNs, or else you may as well bug
> out for the programming error.

Ok, will change those.

> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> -Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
