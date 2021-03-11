Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68F69337D25
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 20:04:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 957066EB6C;
	Thu, 11 Mar 2021 19:04:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C844F6EB67
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 19:04:19 +0000 (UTC)
IronPort-SDR: VHvUeuXZsD7lRtIg4lTsk4q3fm+sUBiwisXEaFmuHaweGSk11WSsNQAPFK6/Zr7DY6pDT8slgw
 fgezxBEgvwFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="186345548"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="186345548"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 11:04:17 -0800
IronPort-SDR: wTNEeFREiFYGfikbAFyY8bijKW306m3yZj5c9626fEykzpjwRU18lQ2GvZBLkeiPI43EWuumGV
 G2mze6CbMaQA==
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="410717880"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 11:04:16 -0800
Date: Thu, 11 Mar 2021 21:04:13 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20210311190413.GH2970909@ideak-desk.fi.intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-18-imre.deak@intel.com>
 <YEpRmUdd5NNdxxrL@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YEpRmUdd5NNdxxrL@intel.com>
Subject: Re: [Intel-gfx] [PATCH 17/23] drm/i915/intel_fb: Factor out
 plane_calc_remap_info()
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

On Thu, Mar 11, 2021 at 07:21:29PM +0200, Ville Syrj=E4l=E4 wrote:
> On Thu, Mar 11, 2021 at 12:17:30AM +0200, Imre Deak wrote:
> > Factor out to a new function the logic to calculate the FB remapping
> > parameters both during creating the FB and when flipping to it.
> > =

> > Add a new intel_fb_plane_remap_info() that can be used by a new remapped
> > view set up when creating the FB in a follow up patch.
> > =

> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_types.h    |  10 +-
> >  drivers/gpu/drm/i915/display/intel_fb.c       | 210 ++++++++----------
> >  2 files changed, 93 insertions(+), 127 deletions(-)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drive=
rs/gpu/drm/i915/display/intel_display_types.h
> > index 65159a1ea7dd..fc02eca45e4d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -85,6 +85,11 @@ enum intel_broadcast_rgb {
> >  	INTEL_BROADCAST_RGB_LIMITED,
> >  };
> >  =

> > +struct intel_fb_plane_remap_info {
> > +	unsigned int x, y;
> > +	unsigned int pitch; /* pixels */
> > +};
> > +
> >  struct intel_framebuffer {
> >  	struct drm_framebuffer base;
> >  	struct intel_frontbuffer *frontbuffer;
> > @@ -95,10 +100,7 @@ struct intel_framebuffer {
> >  		unsigned int x, y;
> >  	} normal[4];
> >  	/* for each plane in the rotated GTT view for no-CCS formats */
> > -	struct {
> > -		unsigned int x, y;
> > -		unsigned int pitch; /* pixels */
> > -	} rotated[2];
> > +	struct intel_fb_plane_remap_info rotated[2];
> >  };
> >  =

> >  struct intel_fbdev {
> > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/=
i915/display/intel_fb.c
> > index f661b21b119d..16a1b5c922bb 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > @@ -9,6 +9,8 @@
> >  #include "display/intel_display_types.h"
> >  #include "display/intel_fb.h"
> >  =

> > +#define check_array_bounds(i915, a, i) drm_WARN_ON(&i915->drm, i >=3D =
ARRAY_SIZE(a))
> > +
> >  bool is_ccs_plane(const struct drm_framebuffer *fb, int plane)
> >  {
> >  	if (!is_ccs_modifier(fb->modifier))
> > @@ -574,66 +576,6 @@ static u32 calc_plane_aligned_offset(const struct =
intel_framebuffer *fb, int col
> >  	return offset / tile_size;
> >  }
> >  =

> > -/*
> > - * Setup the rotated view for an FB plane and return the size the GTT =
mapping
> > - * requires for this view.
> > - */
> > -static u32 setup_fb_rotation(int plane, const struct intel_remapped_pl=
ane_info *plane_info,
> > -			     u32 gtt_offset_rotated, int x, int y,
> > -			     unsigned int width, unsigned int height,
> > -			     unsigned int tile_size,
> > -			     unsigned int tile_width, unsigned int tile_height,
> > -			     struct drm_framebuffer *fb)
> > -{
> > -	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> > -	struct intel_rotation_info *rot_info =3D &intel_fb->rot_info;
> > -	unsigned int pitch_tiles;
> > -	struct drm_rect r;
> > -
> > -	/* Y or Yf modifiers required for 90/270 rotation */
> > -	if (fb->modifier !=3D I915_FORMAT_MOD_Y_TILED &&
> > -	    fb->modifier !=3D I915_FORMAT_MOD_Yf_TILED)
> > -		return 0;
> > -
> > -	if (drm_WARN_ON(fb->dev, plane >=3D ARRAY_SIZE(rot_info->plane)))
> > -		return 0;
> > -
> > -	rot_info->plane[plane] =3D *plane_info;
> > -
> > -	intel_fb->rotated[plane].pitch =3D plane_info->height * tile_height;
> > -
> > -	/* rotate the x/y offsets to match the GTT view */
> > -	drm_rect_init(&r, x, y, width, height);
> > -	drm_rect_rotate(&r,
> > -			plane_info->width * tile_width,
> > -			plane_info->height * tile_height,
> > -			DRM_MODE_ROTATE_270);
> > -	x =3D r.x1;
> > -	y =3D r.y1;
> > -
> > -	/* rotate the tile dimensions to match the GTT view */
> > -	pitch_tiles =3D intel_fb->rotated[plane].pitch / tile_height;
> > -	swap(tile_width, tile_height);
> > -
> > -	/*
> > -	 * We only keep the x/y offsets, so push all of the
> > -	 * gtt offset into the x/y offsets.
> > -	 */
> > -	intel_adjust_tile_offset(&x, &y,
> > -				 tile_width, tile_height,
> > -				 tile_size, pitch_tiles,
> > -				 gtt_offset_rotated * tile_size, 0);
> > -
> > -	/*
> > -	 * First pixel of the framebuffer from
> > -	 * the start of the rotated gtt mapping.
> > -	 */
> > -	intel_fb->rotated[plane].x =3D x;
> > -	intel_fb->rotated[plane].y =3D y;
> > -
> > -	return plane_info->width * plane_info->height;
> > -}
> > -
> >  struct fb_plane_view_dims {
> >  	unsigned int width, height;
> >  	unsigned int tile_width, tile_height;
> > @@ -665,6 +607,66 @@ static unsigned int plane_view_tile_rows(const str=
uct intel_framebuffer *fb, int
> >  	return DIV_ROUND_UP(y + dims->height, dims->tile_height);
> >  }
> >  =

> > +static u32 calc_plane_remap_info(const struct intel_framebuffer *fb, i=
nt color_plane,
> > +				 const struct fb_plane_view_dims *dims,
> > +				 enum i915_ggtt_view_type view_type,
> > +				 u32 obj_offset, u32 gtt_offset, int x, int y,
> > +				 struct intel_remapped_plane_info *gtt_remap_info,
> > +				 struct intel_fb_plane_remap_info *plane_remap_info)
> > +{
> > +	const struct drm_framebuffer *drm_fb =3D &fb->base;
> > +	struct drm_i915_private *i915 =3D to_i915(drm_fb->dev);
> > +	unsigned int tile_width =3D dims->tile_width;
> > +	unsigned int tile_height =3D dims->tile_height;
> > +	unsigned int tile_size =3D intel_tile_size(i915);
> > +	unsigned int pitch_tiles;
> > +	struct drm_rect r;
> > +
> > +	gtt_remap_info->offset =3D obj_offset;
> > +	gtt_remap_info->width =3D DIV_ROUND_UP(x + dims->width, dims->tile_wi=
dth);
> > +	gtt_remap_info->height =3D plane_view_tile_rows(fb, color_plane, dims=
, y);
> > +	gtt_remap_info->stride =3D plane_view_stride_tiles(fb, color_plane, d=
ims);
> =

> I would keep offset and stride next to each other like in the other place
> since they are both related to the actual backing memory, whereas
> width+height are the size of the view.

Ok, will change that.

> > +
> > +	if (view_type =3D=3D I915_GGTT_VIEW_ROTATED) {
> > +		/* rotate the x/y offsets to match the GTT view */
> > +		drm_rect_init(&r, x, y, dims->width, dims->height);
> > +		drm_rect_rotate(&r,
> > +				gtt_remap_info->width * tile_width,
> > +				gtt_remap_info->height * tile_height,
> > +				DRM_MODE_ROTATE_270);
> > +
> > +		plane_remap_info->x =3D r.x1;
> > +		plane_remap_info->y =3D r.y1;
> > +
> > +		pitch_tiles =3D gtt_remap_info->height;
> > +		plane_remap_info->pitch =3D pitch_tiles * tile_height;
> > +		/* rotate the tile dimensions to match the GTT view */
> > +		swap(tile_width, tile_height);
> > +	} else {
> > +		drm_WARN_ON(&i915->drm, view_type !=3D I915_GGTT_VIEW_REMAPPED);
> > +
> > +		plane_remap_info->x =3D x;
> > +		plane_remap_info->y =3D y;
> > +
> > +		pitch_tiles =3D gtt_remap_info->width;
> > +		plane_remap_info->pitch =3D pitch_tiles * tile_width * drm_fb->forma=
t->cpp[color_plane];
> > +	}
> > +
> > +	/*
> > +	 * We only keep the x/y offsets, so push all of the
> > +	 * gtt offset into the x/y offsets.
> > +	 * x,y will hold the first pixel of the framebuffer
> > +	 * plane from the start of the remapped/rotated gtt
> > +	 * mapping.
> > +	 */
> > +	intel_adjust_tile_offset(&plane_remap_info->x, &plane_remap_info->y,
> > +				 tile_width, tile_height,
> > +				 tile_size, pitch_tiles,
> > +				 gtt_offset * tile_size, 0);
> > +
> > +	return gtt_remap_info->width * gtt_remap_info->height;
> > +}
> > +
> >  static int calc_plane_normal_size(const struct intel_framebuffer *fb, =
int color_plane,
> >  				  const struct fb_plane_view_dims *dims,
> >  				  int x, int y)
> > @@ -734,21 +736,17 @@ int intel_fill_fb_info(struct drm_i915_private *i=
915, struct drm_framebuffer *fb
> >  =

> >  		offset =3D calc_plane_aligned_offset(intel_fb, i, &x, &y);
> >  =

> > -		if (!is_surface_linear(fb, i)) {
> > -			struct intel_remapped_plane_info plane_info;
> > +		/* Y or Yf modifiers required for 90/270 rotation */
> > +		if (fb->modifier =3D=3D I915_FORMAT_MOD_Y_TILED ||
> > +		    fb->modifier =3D=3D I915_FORMAT_MOD_Yf_TILED) {
> =

> Was confused for a bit that we'd now go into this stuff with
> tgl+ ccs, but then remembered that those have a dedicated modifier.
> =

> > +			check_array_bounds(i915, intel_fb->rot_info.plane, i);
> > +			check_array_bounds(i915, intel_fb->rotated, i);
> >  =

> > -			plane_info.offset =3D offset;
> > -			plane_info.stride =3D plane_view_stride_tiles(intel_fb, i, &view_di=
ms);
> > -			plane_info.width =3D DIV_ROUND_UP(x + width, view_dims.tile_width);
> > -			plane_info.height =3D plane_view_tile_rows(intel_fb, i, &view_dims,=
 y);
> > -
> > -			gtt_offset_rotated +=3D
> > -				setup_fb_rotation(i, &plane_info,
> > -						  gtt_offset_rotated,
> > -						  x, y, width, height,
> > -						  tile_size,
> > -						  view_dims.tile_width, view_dims.tile_height,
> > -						  fb);
> > +			gtt_offset_rotated +=3D calc_plane_remap_info(intel_fb, i, &view_di=
ms,
> > +								    I915_GGTT_VIEW_ROTATED,
> > +								    offset, gtt_offset_rotated, x, y,
> > +								    &intel_fb->rot_info.plane[i],
> > +								    &intel_fb->rotated[i]);
> >  		}
> >  =

> >  		size =3D calc_plane_normal_size(intel_fb, i, &view_dims, x, y);
> > @@ -772,10 +770,8 @@ static void intel_plane_remap_gtt(struct intel_pla=
ne_state *plane_state)
> >  		to_i915(plane_state->uapi.plane->dev);
> >  	struct drm_framebuffer *fb =3D plane_state->hw.fb;
> >  	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> > -	struct intel_rotation_info *info =3D &plane_state->view.rotated;
> >  	unsigned int rotation =3D plane_state->hw.rotation;
> >  	int i, num_planes =3D fb->format->num_planes;
> > -	unsigned int tile_size =3D intel_tile_size(i915);
> >  	unsigned int src_x, src_y;
> >  	unsigned int src_w, src_h;
> >  	u32 gtt_offset =3D 0;
> > @@ -804,20 +800,19 @@ static void intel_plane_remap_gtt(struct intel_pl=
ane_state *plane_state)
> >  	for (i =3D 0; i < num_planes; i++) {
> >  		unsigned int hsub =3D i ? fb->format->hsub : 1;
> >  		unsigned int vsub =3D i ? fb->format->vsub : 1;
> > -		unsigned int cpp =3D fb->format->cpp[i];
> > -		unsigned int tile_width, tile_height;
> > +		struct intel_fb_plane_remap_info plane_remap_info;
> > +		struct fb_plane_view_dims view_dims;
> >  		unsigned int width, height;
> > -		unsigned int pitch_tiles;
> >  		unsigned int x, y;
> >  		u32 offset;
> >  =

> > -		intel_tile_dims(fb, i, &tile_width, &tile_height);
> > -
> >  		x =3D src_x / hsub;
> >  		y =3D src_y / vsub;
> >  		width =3D src_w / hsub;
> >  		height =3D src_h / vsub;
> >  =

> > +		init_plane_view_dims(intel_fb, i, width, height, &view_dims);
> > +
> >  		/*
> >  		 * First pixel of the src viewport from the
> >  		 * start of the normal gtt mapping.
> > @@ -827,49 +822,18 @@ static void intel_plane_remap_gtt(struct intel_pl=
ane_state *plane_state)
> >  =

> >  		offset =3D calc_plane_aligned_offset(intel_fb, i, &x, &y);
> >  =

> > -		drm_WARN_ON(&i915->drm, i >=3D ARRAY_SIZE(info->plane));
> > -		info->plane[i].offset =3D offset;
> > -		info->plane[i].stride =3D DIV_ROUND_UP(fb->pitches[i],
> > -						     tile_width * cpp);
> > -		info->plane[i].width =3D DIV_ROUND_UP(x + width, tile_width);
> > -		info->plane[i].height =3D DIV_ROUND_UP(y + height, tile_height);
> > -
> > -		if (drm_rotation_90_or_270(rotation)) {
> > -			struct drm_rect r;
> > -
> > -			/* rotate the x/y offsets to match the GTT view */
> > -			drm_rect_init(&r, x, y, width, height);
> > -			drm_rect_rotate(&r,
> > -					info->plane[i].width * tile_width,
> > -					info->plane[i].height * tile_height,
> > -					DRM_MODE_ROTATE_270);
> > -			x =3D r.x1;
> > -			y =3D r.y1;
> > -
> > -			pitch_tiles =3D info->plane[i].height;
> > -			plane_state->color_plane[i].stride =3D pitch_tiles * tile_height;
> > -
> > -			/* rotate the tile dimensions to match the GTT view */
> > -			swap(tile_width, tile_height);
> > -		} else {
> > -			pitch_tiles =3D info->plane[i].width;
> > -			plane_state->color_plane[i].stride =3D pitch_tiles * tile_width * c=
pp;
> > -		}
> > -
> > -		/*
> > -		 * We only keep the x/y offsets, so push all of the
> > -		 * gtt offset into the x/y offsets.
> > -		 */
> > -		intel_adjust_tile_offset(&x, &y,
> > -					 tile_width, tile_height,
> > -					 tile_size, pitch_tiles,
> > -					 gtt_offset * tile_size, 0);
> > -
> > -		gtt_offset +=3D info->plane[i].width * info->plane[i].height;
> > -
> > +		check_array_bounds(i915, plane_state->view.remapped.plane, i);
> > +		gtt_offset +=3D calc_plane_remap_info(intel_fb, i, &view_dims,
> > +						    plane_state->view.type,
> > +						    offset, gtt_offset, x, y,
> > +						    &plane_state->view.remapped.plane[i],
> =

> I guess we had some kind of magic aliasing going on here?

Yes, between the rotated and remapped state, there's an assert for that
in i915_vma_compare().

> =

> > +						    &plane_remap_info);
> > +
> > +		check_array_bounds(i915, plane_state->color_plane, i);
> >  		plane_state->color_plane[i].offset =3D 0;
> > -		plane_state->color_plane[i].x =3D x;
> > -		plane_state->color_plane[i].y =3D y;
> > +		plane_state->color_plane[i].x =3D plane_remap_info.x;
> > +		plane_state->color_plane[i].y =3D plane_remap_info.y;
> > +		plane_state->color_plane[i].stride =3D plane_remap_info.pitch;
> >  	}
> >  }
> >  =

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
