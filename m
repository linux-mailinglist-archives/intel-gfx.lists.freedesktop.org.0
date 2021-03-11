Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1121A338019
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 23:19:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C22AE6E072;
	Thu, 11 Mar 2021 22:19:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 516B76E072
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 22:19:49 +0000 (UTC)
IronPort-SDR: v81Wb6GnN3tCR1BlATNyz/rtrjfDfw7itkSCc7blcnvjBDFEi0R/tZnydfayncOoGPXfRu8Oey
 qQ/WlC7BXscw==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="252765734"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="252765734"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:19:47 -0800
IronPort-SDR: cK++S3j4yFky2/FGm43DdMYHKIeIIoukxldkgO3KWvKKWBV/l8kC18iCTG4Pz0SFpnfRmkKuuS
 o17Qb8/fKgRA==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="404217299"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 14:19:45 -0800
Date: Fri, 12 Mar 2021 00:19:42 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20210311221942.GA3107177@ideak-desk.fi.intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-19-imre.deak@intel.com>
 <YEpzSj9TVv1wFrSr@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YEpzSj9TVv1wFrSr@intel.com>
Subject: Re: [Intel-gfx] [PATCH 18/23] drm/i915: Shrink the size of
 intel_remapped_plane_info struct
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

On Thu, Mar 11, 2021 at 09:45:14PM +0200, Ville Syrj=E4l=E4 wrote:
> On Thu, Mar 11, 2021 at 12:17:31AM +0200, Imre Deak wrote:
> > Save some place in the GTT VMAs by using a u16 instead of unsigned int
> > to store the view dimensions. The maximum FB stride is 256kB which is
> > 4096 tiles in the worst case (yf-tiles), the maximum FB height is 16k
> > pixels, which is 2048 tiles in the worst case (x-tiles).
> =

> Actually I think the worst case for height is remapping linear fbs
> since we more or less treat it as 4kx1 tiles. But 16k is still< 64k
> so should be all good.

Yes, thanks for catching that. Will fix the commit message.

> Integer promotion stuff/etc. is what worried me the most here, but
> looks like rotate_pages()/remap_pages() at least gets everything
> passed in as unsigned int, so we're not in danger of sign bit
> shenanigans there at least.

Yes. Fwiw I can think only of the following kind of sign-extension
problem scenario with u16:

u16 v1=3D-1;
int i=3Dv1;

So if u16 stored a negative result, we'd miss the expected
sign-extension, but I can't see a way we wanted to store a negative
value to these fields. So for instance in remap_pages() the

	offset +=3D src_stride - width;

would be still correct even if src_stride/width would be u16 and
src_stride was less than width.

> Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> > =

> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fb.c | 15 ++++++++++++---
> >  drivers/gpu/drm/i915/i915_vma_types.h   | 12 ++++++++----
> >  2 files changed, 20 insertions(+), 7 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/=
i915/display/intel_fb.c
> > index 16a1b5c922bb..51c56f0a4a99 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > @@ -619,13 +619,22 @@ static u32 calc_plane_remap_info(const struct int=
el_framebuffer *fb, int color_p
> >  	unsigned int tile_width =3D dims->tile_width;
> >  	unsigned int tile_height =3D dims->tile_height;
> >  	unsigned int tile_size =3D intel_tile_size(i915);
> > +	unsigned int stride_tiles =3D plane_view_stride_tiles(fb, color_plane=
, dims);
> > +	unsigned int width_tiles =3D DIV_ROUND_UP(x + dims->width, dims->tile=
_width);
> > +	unsigned int height_tiles =3D plane_view_tile_rows(fb, color_plane, d=
ims, y);
> >  	unsigned int pitch_tiles;
> >  	struct drm_rect r;
> >  =

> > +	drm_WARN_ON(&i915->drm,
> > +		    overflows_type(obj_offset, gtt_remap_info->offset) ||
> > +		    overflows_type(stride_tiles, gtt_remap_info->stride) ||
> > +		    overflows_type(width_tiles, gtt_remap_info->width) ||
> > +		    overflows_type(height_tiles, gtt_remap_info->height));
> > +
> >  	gtt_remap_info->offset =3D obj_offset;
> > -	gtt_remap_info->width =3D DIV_ROUND_UP(x + dims->width, dims->tile_wi=
dth);
> > -	gtt_remap_info->height =3D plane_view_tile_rows(fb, color_plane, dims=
, y);
> > -	gtt_remap_info->stride =3D plane_view_stride_tiles(fb, color_plane, d=
ims);
> > +	gtt_remap_info->stride =3D stride_tiles;
> > +	gtt_remap_info->width =3D width_tiles;
> > +	gtt_remap_info->height =3D height_tiles;
> >  =

> >  	if (view_type =3D=3D I915_GGTT_VIEW_ROTATED) {
> >  		/* rotate the x/y offsets to match the GTT view */
> > diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i9=
15/i915_vma_types.h
> > index f5cb848b7a7e..358b4306fc00 100644
> > --- a/drivers/gpu/drm/i915/i915_vma_types.h
> > +++ b/drivers/gpu/drm/i915/i915_vma_types.h
> > @@ -97,12 +97,16 @@ enum i915_cache_level;
> >  =

> >  struct intel_remapped_plane_info {
> >  	/* in gtt pages */
> > -	unsigned int width, height, stride, offset;
> > +	u32 offset;
> > +	u16 width;
> > +	u16 height;
> > +	u16 stride;
> > +	u16 unused_mbz;
> >  } __packed;
> >  =

> >  struct intel_remapped_info {
> >  	struct intel_remapped_plane_info plane[2];
> > -	unsigned int unused_mbz;
> > +	u32 unused_mbz;
> >  } __packed;
> >  =

> >  struct intel_rotation_info {
> > @@ -123,9 +127,9 @@ enum i915_ggtt_view_type {
> >  =

> >  static inline void assert_i915_gem_gtt_types(void)
> >  {
> > -	BUILD_BUG_ON(sizeof(struct intel_rotation_info) !=3D 8*sizeof(unsigne=
d int));
> > +	BUILD_BUG_ON(sizeof(struct intel_rotation_info) !=3D 2 * sizeof(u32) =
+ 8 * sizeof(u16));
> >  	BUILD_BUG_ON(sizeof(struct intel_partial_info) !=3D sizeof(u64) + siz=
eof(unsigned int));
> > -	BUILD_BUG_ON(sizeof(struct intel_remapped_info) !=3D 9*sizeof(unsigne=
d int));
> > +	BUILD_BUG_ON(sizeof(struct intel_remapped_info) !=3D 3 * sizeof(u32) =
+ 8 * sizeof(u16));
> >  =

> >  	/* Check that rotation/remapped shares offsets for simplicity */
> >  	BUILD_BUG_ON(offsetof(struct intel_remapped_info, plane[0]) !=3D
> > -- =

> > 2.25.1
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
