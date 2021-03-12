Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5606B3395C6
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 19:02:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B657E6ECAB;
	Fri, 12 Mar 2021 18:02:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EA856ECAB
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 18:02:41 +0000 (UTC)
IronPort-SDR: giIaQDLXWiKBVPKTPAws1ks2OSJ2fMcyhaaeMCsNqADmPu9NB5iGillRpIOZM5qayOC3VITuei
 XY3WF0SLX/QA==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="208713822"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="208713822"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 10:02:40 -0800
IronPort-SDR: u74KYiYqlraaMypRVFUMbS3oIL++AqJLiRFngAhQPqagWH1+0h+shEGXwxNsRZtO4fFl89K5SR
 +BOOSOyQfdDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="411087309"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 12 Mar 2021 10:02:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Mar 2021 20:02:36 +0200
Date: Fri, 12 Mar 2021 20:02:36 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YEusvH7rdjn24Hnr@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-22-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310221736.2963264-22-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 21/23] drm/i915: Add support for FBs
 requiring a POT stride alignment
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

On Thu, Mar 11, 2021 at 12:17:34AM +0200, Imre Deak wrote:
> An upcoming platform has a restriction that the FB stride must be
> power-of-two aligned. To support framebuffer layouts that are not in
> this layout add a logic that pads the tile rows to the POT aligned size.
> =

> The HW won't read the padding PTEs, so these don't have to point to an
> allocated address, or even have their valid flag set. So use a NULL PTE
> instead for instance the scratch page, which is simple and keeps the SG
> table compact.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
>  .../drm/i915/display/intel_display_types.h    |  3 +
>  drivers/gpu/drm/i915/display/intel_fb.c       | 89 ++++++++++++++++---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c          | 58 +++++++++---
>  drivers/gpu/drm/i915/i915_debugfs.c           |  8 +-
>  drivers/gpu/drm/i915/i915_vma_types.h         |  2 +-
>  drivers/gpu/drm/i915/selftests/i915_vma.c     | 13 +++
>  7 files changed, 149 insertions(+), 28 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 6117d43a4e49..f615a5d1a62f 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -931,7 +931,7 @@ unsigned int intel_rotation_info_size(const struct in=
tel_rotation_info *rot_info
>  	int i;
>  =

>  	for (i =3D 0 ; i < ARRAY_SIZE(rot_info->plane); i++)
> -		size +=3D rot_info->plane[i].width * rot_info->plane[i].height;
> +		size +=3D rot_info->plane[i].dst_stride * rot_info->plane[i].width;
>  =

>  	return size;
>  }
> @@ -942,7 +942,7 @@ unsigned int intel_remapped_info_size(const struct in=
tel_remapped_info *rem_info
>  	int i;
>  =

>  	for (i =3D 0 ; i < ARRAY_SIZE(rem_info->plane); i++)
> -		size +=3D rem_info->plane[i].width * rem_info->plane[i].height;
> +		size +=3D rem_info->plane[i].dst_stride * rem_info->plane[i].height;
>  =

>  	return size;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index fc02eca45e4d..08b348c9e3e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -94,6 +94,7 @@ struct intel_framebuffer {
>  	struct drm_framebuffer base;
>  	struct intel_frontbuffer *frontbuffer;
>  	struct intel_rotation_info rot_info;
> +	struct intel_remapped_info rem_info;
>  =

>  	/* for each plane in the normal GTT view */
>  	struct {
> @@ -101,6 +102,8 @@ struct intel_framebuffer {
>  	} normal[4];
>  	/* for each plane in the rotated GTT view for no-CCS formats */
>  	struct intel_fb_plane_remap_info rotated[2];
> +	/* for each plane in the remapped GTT view. TODO: CCS formats */
> +	struct intel_fb_plane_remap_info remapped[2];

We might want to look into restructuring this a it as a followup.
Maybe we can collect all the rotation vs. remapping stuff into
separate sub-structures. Not sure.

>  };
>  =

>  struct intel_fbdev {
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 6cf0820e3177..3e278fe77040 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -486,12 +486,21 @@ static bool intel_plane_can_remap(const struct inte=
l_plane_state *plane_state)
>  	return true;
>  }
>  =

> -int intel_fb_pitch(const struct drm_framebuffer *fb, int color_plane, un=
signed int rotation)
> +static bool intel_fb_needs_pot_stride_remap(const struct intel_framebuff=
er *fb)
>  {
> +	return false;
> +}
> +
> +int intel_fb_pitch(const struct drm_framebuffer *drm_fb, int color_plane=
, unsigned int rotation)
> +{
> +	const struct intel_framebuffer *fb =3D to_intel_framebuffer(drm_fb);
> +
>  	if (drm_rotation_90_or_270(rotation))
> -		return to_intel_framebuffer(fb)->rotated[color_plane].pitch;
> +		return fb->rotated[color_plane].pitch;
> +	else if (intel_fb_needs_pot_stride_remap(fb))
> +		return fb->remapped[color_plane].pitch;
>  	else
> -		return fb->pitches[color_plane];
> +		return drm_fb->pitches[color_plane];
>  }
>  =

>  static bool intel_plane_needs_remap(const struct intel_plane_state *plan=
e_state)
> @@ -600,6 +609,21 @@ static unsigned int plane_view_src_stride_tiles(cons=
t struct intel_framebuffer *
>  			    dims->tile_width * drm_fb->format->cpp[color_plane]);
>  }
>  =

> +static unsigned int plane_view_dst_stride(const struct intel_framebuffer=
 *fb, int color_plane,
> +					  int pitch_tiles)
> +{
> +	unsigned int dst_stride;
> +
> +	if (!intel_fb_needs_pot_stride_remap(fb)) {
> +		dst_stride =3D pitch_tiles;
> +	} else {
> +		dst_stride =3D roundup_pow_of_two(pitch_tiles);
> +		drm_WARN_ON(fb->base.dev, dst_stride < pitch_tiles);

Dunno if that WARN is particularly useful. We're talking in tiles here
so seems extremely unlikely it could overflow.

So I'd probably just make this as simple as possible, like:
if (needs_pot)
	return roundup(x);
else
	return x;

> +	};
> +
> +	return dst_stride;
> +}
> +
>  static unsigned int plane_view_tile_rows(const struct intel_framebuffer =
*fb, int color_plane,
>  					 const struct fb_plane_view_dims *dims,
>  					 int y)
> @@ -622,8 +646,8 @@ static u32 calc_plane_remap_info(const struct intel_f=
ramebuffer *fb, int color_p
>  	unsigned int src_stride_tiles =3D plane_view_src_stride_tiles(fb, color=
_plane, dims);
>  	unsigned int width_tiles =3D DIV_ROUND_UP(x + dims->width, dims->tile_w=
idth);
>  	unsigned int height_tiles =3D plane_view_tile_rows(fb, color_plane, dim=
s, y);
> -	unsigned int pitch_tiles;
>  	struct drm_rect r;
> +	u32 size;
>  =

>  	drm_WARN_ON(&i915->drm,
>  		    overflows_type(obj_offset, gtt_remap_info->offset) ||
> @@ -637,6 +661,13 @@ static u32 calc_plane_remap_info(const struct intel_=
framebuffer *fb, int color_p
>  	gtt_remap_info->height =3D height_tiles;
>  =

>  	if (view_type =3D=3D I915_GGTT_VIEW_ROTATED) {
> +		unsigned int dst_stride_tiles =3D plane_view_dst_stride(fb, color_plan=
e,
> +								      gtt_remap_info->height);
> +
> +		drm_WARN_ON(&i915->drm,
> +			    overflows_type(dst_stride_tiles, gtt_remap_info->dst_stride));
> +		gtt_remap_info->dst_stride =3D dst_stride_tiles;
> +
>  		/* rotate the x/y offsets to match the GTT view */
>  		drm_rect_init(&r, x, y, dims->width, dims->height);
>  		drm_rect_rotate(&r,
> @@ -647,18 +678,29 @@ static u32 calc_plane_remap_info(const struct intel=
_framebuffer *fb, int color_p
>  		plane_remap_info->x =3D r.x1;
>  		plane_remap_info->y =3D r.y1;
>  =

> -		pitch_tiles =3D gtt_remap_info->height;
> -		plane_remap_info->pitch =3D pitch_tiles * tile_height;
> +		plane_remap_info->pitch =3D gtt_remap_info->dst_stride * tile_height;
> +
> +		size =3D gtt_remap_info->dst_stride * gtt_remap_info->width;
> +
>  		/* rotate the tile dimensions to match the GTT view */
>  		swap(tile_width, tile_height);
>  	} else {
> +		unsigned int dst_stride_tiles =3D plane_view_dst_stride(fb, color_plan=
e,
> +								      gtt_remap_info->width);
> +
>  		drm_WARN_ON(&i915->drm, view_type !=3D I915_GGTT_VIEW_REMAPPED);
>  =

> +		drm_WARN_ON(&i915->drm,
> +			    overflows_type(dst_stride_tiles, gtt_remap_info->dst_stride));
> +		gtt_remap_info->dst_stride =3D dst_stride_tiles;
> +
>  		plane_remap_info->x =3D x;
>  		plane_remap_info->y =3D y;
>  =

> -		pitch_tiles =3D gtt_remap_info->width;
> -		plane_remap_info->pitch =3D pitch_tiles * tile_width * drm_fb->format-=
>cpp[color_plane];
> +		plane_remap_info->pitch =3D gtt_remap_info->dst_stride * tile_width *
> +					  drm_fb->format->cpp[color_plane];
> +
> +		size =3D gtt_remap_info->dst_stride * gtt_remap_info->height;
>  	}
>  =

>  	/*
> @@ -670,10 +712,10 @@ static u32 calc_plane_remap_info(const struct intel=
_framebuffer *fb, int color_p
>  	 */
>  	intel_adjust_tile_offset(&plane_remap_info->x, &plane_remap_info->y,
>  				 tile_width, tile_height,
> -				 tile_size, pitch_tiles,
> +				 tile_size, gtt_remap_info->dst_stride,
>  				 gtt_offset * tile_size, 0);
>  =

> -	return gtt_remap_info->width * gtt_remap_info->height;
> +	return size;
>  }
>  =

>  static int calc_plane_normal_size(const struct intel_framebuffer *fb, in=
t color_plane,
> @@ -703,6 +745,7 @@ int intel_fill_fb_info(struct drm_i915_private *i915,=
 struct drm_framebuffer *fb
>  	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
>  	struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
>  	u32 gtt_offset_rotated =3D 0;
> +	u32 gtt_offset_remapped =3D 0;
>  	unsigned int max_size =3D 0;
>  	int i, num_planes =3D fb->format->num_planes;
>  	unsigned int tile_size =3D intel_tile_size(i915);
> @@ -758,6 +801,17 @@ int intel_fill_fb_info(struct drm_i915_private *i915=
, struct drm_framebuffer *fb
>  								    &intel_fb->rotated[i]);
>  		}
>  =

> +		if (intel_fb_needs_pot_stride_remap(intel_fb)) {
> +			check_array_bounds(i915, intel_fb->rem_info.plane, i);
> +			check_array_bounds(i915, intel_fb->remapped, i);
> +
> +			gtt_offset_remapped +=3D calc_plane_remap_info(intel_fb, i, &view_dim=
s,
> +								     I915_GGTT_VIEW_REMAPPED,
> +								     offset, gtt_offset_remapped, x, y,
> +								     &intel_fb->rem_info.plane[i],
> +								     &intel_fb->remapped[i]);
> +		}
> +
>  		size =3D calc_plane_normal_size(intel_fb, i, &view_dims, x, y);
>  		/* how many tiles in total needed in the bo */
>  		max_size =3D max(max_size, offset + size);
> @@ -847,15 +901,21 @@ static void intel_plane_remap_gtt(struct intel_plan=
e_state *plane_state)
>  }
>  =

>  void intel_fill_fb_ggtt_view(struct i915_ggtt_view *view,
> -			     const struct drm_framebuffer *fb,
> +			     const struct drm_framebuffer *drm_fb,
>  			     unsigned int rotation)
>  {
> +	const struct intel_framebuffer *fb =3D to_intel_framebuffer(drm_fb);
> +
>  	memset(view, 0, sizeof(*view));
>  =

> -	view->type =3D I915_GGTT_VIEW_NORMAL;
>  	if (drm_rotation_90_or_270(rotation)) {
>  		view->type =3D I915_GGTT_VIEW_ROTATED;
> -		view->rotated =3D to_intel_framebuffer(fb)->rot_info;
> +		view->rotated =3D fb->rot_info;
> +	} else if (intel_fb_needs_pot_stride_remap(fb)) {
> +		view->type =3D I915_GGTT_VIEW_REMAPPED;
> +		view->remapped =3D fb->rem_info;
> +	} else {
> +		view->type =3D I915_GGTT_VIEW_NORMAL;
>  	}
>  }
>  =

> @@ -924,6 +984,9 @@ int intel_plane_compute_gtt(struct intel_plane_state =
*plane_state)
>  		if (drm_rotation_90_or_270(rotation)) {
>  			plane_state->color_plane[i].x =3D fb->rotated[i].x;
>  			plane_state->color_plane[i].y =3D fb->rotated[i].y;
> +		} else if (intel_fb_needs_pot_stride_remap(fb)) {
> +			plane_state->color_plane[i].x =3D fb->remapped[i].x;
> +			plane_state->color_plane[i].y =3D fb->remapped[i].y;
>  		} else {
>  			plane_state->color_plane[i].x =3D fb->normal[i].x;
>  			plane_state->color_plane[i].y =3D fb->normal[i].y;
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/=
gt/intel_ggtt.c
> index 9a5b038e1ea3..1ef7ebdff23a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -1261,14 +1261,16 @@ void i915_ggtt_resume(struct i915_ggtt *ggtt)
>  static struct scatterlist *
>  rotate_pages(struct drm_i915_gem_object *obj, unsigned int offset,
>  	     unsigned int width, unsigned int height,
> -	     unsigned int stride,
> +	     unsigned int src_stride, unsigned int dst_stride,
>  	     struct sg_table *st, struct scatterlist *sg)
>  {
>  	unsigned int column, row;
>  	unsigned int src_idx;
>  =

>  	for (column =3D 0; column < width; column++) {
> -		src_idx =3D stride * (height - 1) + column + offset;
> +		unsigned int left;
> +
> +		src_idx =3D src_stride * (height - 1) + column + offset;
>  		for (row =3D 0; row < height; row++) {
>  			st->nents++;
>  			/*
> @@ -1280,9 +1282,27 @@ rotate_pages(struct drm_i915_gem_object *obj, unsi=
gned int offset,
>  			sg_dma_address(sg) =3D
>  				i915_gem_object_get_dma_address(obj, src_idx);
>  			sg_dma_len(sg) =3D I915_GTT_PAGE_SIZE;
> +
>  			sg =3D sg_next(sg);
> -			src_idx -=3D stride;
> +			src_idx -=3D src_stride;
>  		}
> +
> +		left =3D (dst_stride - height) * I915_GTT_PAGE_SIZE;
> +
> +		if (!left)
> +			continue;
> +
> +		st->nents++;
> +
> +		/*
> +		 * The DE ignores the PTEs for the padding tiles, the sg entry
> +		 * here is just a conenience to indicate how many padding PTEs
> +		 * to insert at this spot.
> +		 */

OK. That certainly makes this nice and simple.

> +		sg_set_page(sg, NULL, left, 0);
> +		sg_dma_address(sg) =3D 0;
> +		sg_dma_len(sg) =3D left;
> +		sg =3D sg_next(sg);

Do we have enough sg entries for these extras? Ah, yeah we allocate
based on the worst case where each vma page needs its own entry.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

>  	}
>  =

>  	return sg;
> @@ -1311,11 +1331,12 @@ intel_rotate_pages(struct intel_rotation_info *ro=
t_info,
>  	st->nents =3D 0;
>  	sg =3D st->sgl;
>  =

> -	for (i =3D 0 ; i < ARRAY_SIZE(rot_info->plane); i++) {
> +	for (i =3D 0 ; i < ARRAY_SIZE(rot_info->plane); i++)
>  		sg =3D rotate_pages(obj, rot_info->plane[i].offset,
>  				  rot_info->plane[i].width, rot_info->plane[i].height,
> -				  rot_info->plane[i].src_stride, st, sg);
> -	}
> +				  rot_info->plane[i].src_stride,
> +				  rot_info->plane[i].dst_stride,
> +				  st, sg);
>  =

>  	return st;
>  =

> @@ -1333,7 +1354,7 @@ intel_rotate_pages(struct intel_rotation_info *rot_=
info,
>  static struct scatterlist *
>  remap_pages(struct drm_i915_gem_object *obj, unsigned int offset,
>  	    unsigned int width, unsigned int height,
> -	    unsigned int stride,
> +	    unsigned int src_stride, unsigned int dst_stride,
>  	    struct sg_table *st, struct scatterlist *sg)
>  {
>  	unsigned int row;
> @@ -1350,7 +1371,6 @@ remap_pages(struct drm_i915_gem_object *obj, unsign=
ed int offset,
>  			 * the entries so the sg list can be happily traversed.
>  			 * The only thing we need are DMA addresses.
>  			 */
> -
>  			addr =3D i915_gem_object_get_dma_address_len(obj, offset, &length);
>  =

>  			length =3D min(left, length);
> @@ -1366,7 +1386,24 @@ remap_pages(struct drm_i915_gem_object *obj, unsig=
ned int offset,
>  			left -=3D length;
>  		}
>  =

> -		offset +=3D stride - width;
> +		offset +=3D src_stride - width;
> +
> +		left =3D (dst_stride - width) * I915_GTT_PAGE_SIZE;
> +
> +		if (!left)
> +			continue;
> +
> +		st->nents++;
> +
> +		/*
> +		 * The DE ignores the PTEs for the padding tiles, the sg entry
> +		 * here is just a conenience to indicate how many padding PTEs
> +		 * to insert at this spot.
> +		 */
> +		sg_set_page(sg, NULL, left, 0);
> +		sg_dma_address(sg) =3D 0;
> +		sg_dma_len(sg) =3D left;
> +		sg =3D sg_next(sg);
>  	}
>  =

>  	return sg;
> @@ -1398,7 +1435,8 @@ intel_remap_pages(struct intel_remapped_info *rem_i=
nfo,
>  	for (i =3D 0 ; i < ARRAY_SIZE(rem_info->plane); i++) {
>  		sg =3D remap_pages(obj, rem_info->plane[i].offset,
>  				 rem_info->plane[i].width, rem_info->plane[i].height,
> -				 rem_info->plane[i].src_stride, st, sg);
> +				 rem_info->plane[i].src_stride, rem_info->plane[i].dst_stride,
> +				 st, sg);
>  	}
>  =

>  	i915_sg_trim(st);
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i=
915_debugfs.c
> index 48032c0288ee..4cf975b7504f 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -173,26 +173,30 @@ i915_debugfs_describe_obj(struct seq_file *m, struc=
t drm_i915_gem_object *obj)
>  				break;
>  =

>  			case I915_GGTT_VIEW_ROTATED:
> -				seq_printf(m, ", rotated [(%ux%u, stride=3D%u, offset=3D%u), (%ux%u,=
 stride=3D%u, offset=3D%u)]",
> +				seq_printf(m, ", rotated [(%ux%u, src_stride=3D%u, dst_stride=3D%u, =
offset=3D%u), (%ux%u, src_stride=3D%u, dst_stride=3D%u, offset=3D%u)]",
>  					   vma->ggtt_view.rotated.plane[0].width,
>  					   vma->ggtt_view.rotated.plane[0].height,
>  					   vma->ggtt_view.rotated.plane[0].src_stride,
> +					   vma->ggtt_view.rotated.plane[0].dst_stride,
>  					   vma->ggtt_view.rotated.plane[0].offset,
>  					   vma->ggtt_view.rotated.plane[1].width,
>  					   vma->ggtt_view.rotated.plane[1].height,
>  					   vma->ggtt_view.rotated.plane[1].src_stride,
> +					   vma->ggtt_view.rotated.plane[1].dst_stride,
>  					   vma->ggtt_view.rotated.plane[1].offset);
>  				break;
>  =

>  			case I915_GGTT_VIEW_REMAPPED:
> -				seq_printf(m, ", remapped [(%ux%u, stride=3D%u, offset=3D%u), (%ux%u=
, stride=3D%u, offset=3D%u)]",
> +				seq_printf(m, ", remapped [(%ux%u, src_stride=3D%u, dst_stride=3D%u,=
 offset=3D%u), (%ux%u, src_stride=3D%u, dst_stride=3D%u, offset=3D%u)]",
>  					   vma->ggtt_view.remapped.plane[0].width,
>  					   vma->ggtt_view.remapped.plane[0].height,
>  					   vma->ggtt_view.remapped.plane[0].src_stride,
> +					   vma->ggtt_view.remapped.plane[0].dst_stride,
>  					   vma->ggtt_view.remapped.plane[0].offset,
>  					   vma->ggtt_view.remapped.plane[1].width,
>  					   vma->ggtt_view.remapped.plane[1].height,
>  					   vma->ggtt_view.remapped.plane[1].src_stride,
> +					   vma->ggtt_view.remapped.plane[1].dst_stride,
>  					   vma->ggtt_view.remapped.plane[1].offset);
>  				break;
>  =

> diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915=
/i915_vma_types.h
> index f7f2aa168c9e..6b1bfa230b82 100644
> --- a/drivers/gpu/drm/i915/i915_vma_types.h
> +++ b/drivers/gpu/drm/i915/i915_vma_types.h
> @@ -101,7 +101,7 @@ struct intel_remapped_plane_info {
>  	u16 width;
>  	u16 height;
>  	u16 src_stride;
> -	u16 unused_mbz;
> +	u16 dst_stride;
>  } __packed;
>  =

>  struct intel_remapped_info {
> diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/=
i915/selftests/i915_vma.c
> index 06f1827329d0..4631db0cdfe5 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_vma.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
> @@ -528,6 +528,15 @@ static int igt_vma_rotate_remap(void *arg)
>  			GEM_BUG_ON(max_offset > max_pages);
>  			max_offset =3D max_pages - max_offset;
>  =

> +			if (!plane_info[0].dst_stride)
> +				plane_info[0].dst_stride =3D view.type =3D=3D I915_GGTT_VIEW_ROTATED=
 ?
> +									plane_info[0].height :
> +									plane_info[0].width;
> +			if (!plane_info[1].dst_stride)
> +				plane_info[1].dst_stride =3D view.type =3D=3D I915_GGTT_VIEW_ROTATED=
 ?
> +									plane_info[1].height :
> +									plane_info[1].width;
> +
>  			for_each_prime_number_from(plane_info[0].offset, 0, max_offset) {
>  				for_each_prime_number_from(plane_info[1].offset, 0, max_offset) {
>  					struct scatterlist *sg;
> @@ -896,6 +905,10 @@ static int igt_vma_remapped_gtt(void *arg)
>  			u32 __iomem *map;
>  			unsigned int x, y;
>  =

> +			if (!plane_info[0].dst_stride)
> +				plane_info[0].dst_stride =3D *t =3D=3D I915_GGTT_VIEW_ROTATED ?
> +								 p->height : p->width;
> +
>  			vma =3D i915_gem_object_ggtt_pin(obj, &view, 0, 0, PIN_MAPPABLE);
>  			if (IS_ERR(vma)) {
>  				err =3D PTR_ERR(vma);
> -- =

> 2.25.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
