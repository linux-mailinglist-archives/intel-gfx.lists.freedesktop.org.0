Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 884AC33958C
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 18:51:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 374FD6EC88;
	Fri, 12 Mar 2021 17:51:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFF656EC11
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 17:51:39 +0000 (UTC)
IronPort-SDR: 0L3SYknVhX7Vfg11minf1se03+uj/czEDEdKZuQ40rz5D/6x74BWEytLz77TjsI0w81+gDXMlt
 RS7k+zaA5evg==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="208712195"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="208712195"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 09:51:39 -0800
IronPort-SDR: 63Fbj324Pkjri7mOANN1q1UYTuHXOcHchupQblLFj055xa4k2wi8r6evd8/eWXL3Pms/vX98Mg
 RJNWAbrlcLow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="448691383"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 12 Mar 2021 09:51:36 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Mar 2021 19:51:35 +0200
Date: Fri, 12 Mar 2021 19:51:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YEuqJ0t+6gzW3Tcp@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-21-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310221736.2963264-21-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 20/23] drm/i915: s/stride/src_stride/ in the
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 11, 2021 at 12:17:33AM +0200, Imre Deak wrote:
> An upcoming patch adds a new dst_stride field to the
> intel_remapped_plane_info struct, so for clarity rename the current
> stride field to src_stride.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c   | 12 ++---
>  drivers/gpu/drm/i915/gt/intel_ggtt.c      |  4 +-
>  drivers/gpu/drm/i915/i915_debugfs.c       |  8 +--
>  drivers/gpu/drm/i915/i915_vma_types.h     |  2 +-
>  drivers/gpu/drm/i915/selftests/i915_vma.c | 60 +++++++++++------------
>  5 files changed, 43 insertions(+), 43 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 51c56f0a4a99..6cf0820e3177 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -591,8 +591,8 @@ static void init_plane_view_dims(const struct intel_f=
ramebuffer *fb, int color_p
>  	intel_tile_dims(&fb->base, color_plane, &dims->tile_width, &dims->tile_=
height);
>  }
>  =

> -static unsigned int plane_view_stride_tiles(const struct intel_framebuff=
er *fb, int color_plane,
> -					    const struct fb_plane_view_dims *dims)
> +static unsigned int plane_view_src_stride_tiles(const struct intel_frame=
buffer *fb, int color_plane,
> +						const struct fb_plane_view_dims *dims)
>  {
>  	const struct drm_framebuffer *drm_fb =3D &fb->base;
>  =

> @@ -619,7 +619,7 @@ static u32 calc_plane_remap_info(const struct intel_f=
ramebuffer *fb, int color_p
>  	unsigned int tile_width =3D dims->tile_width;
>  	unsigned int tile_height =3D dims->tile_height;
>  	unsigned int tile_size =3D intel_tile_size(i915);
> -	unsigned int stride_tiles =3D plane_view_stride_tiles(fb, color_plane, =
dims);
> +	unsigned int src_stride_tiles =3D plane_view_src_stride_tiles(fb, color=
_plane, dims);
>  	unsigned int width_tiles =3D DIV_ROUND_UP(x + dims->width, dims->tile_w=
idth);
>  	unsigned int height_tiles =3D plane_view_tile_rows(fb, color_plane, dim=
s, y);
>  	unsigned int pitch_tiles;
> @@ -627,12 +627,12 @@ static u32 calc_plane_remap_info(const struct intel=
_framebuffer *fb, int color_p
>  =

>  	drm_WARN_ON(&i915->drm,
>  		    overflows_type(obj_offset, gtt_remap_info->offset) ||
> -		    overflows_type(stride_tiles, gtt_remap_info->stride) ||
> +		    overflows_type(src_stride_tiles, gtt_remap_info->src_stride) ||
>  		    overflows_type(width_tiles, gtt_remap_info->width) ||
>  		    overflows_type(height_tiles, gtt_remap_info->height));
>  =

>  	gtt_remap_info->offset =3D obj_offset;
> -	gtt_remap_info->stride =3D stride_tiles;
> +	gtt_remap_info->src_stride =3D src_stride_tiles;
>  	gtt_remap_info->width =3D width_tiles;
>  	gtt_remap_info->height =3D height_tiles;
>  =

> @@ -691,7 +691,7 @@ static int calc_plane_normal_size(const struct intel_=
framebuffer *fb, int color_
>  		       x * drm_fb->format->cpp[color_plane];
>  		pages =3D DIV_ROUND_UP(size, intel_tile_size(i915));
>  	} else {
> -		pages =3D plane_view_stride_tiles(fb, color_plane, dims) *
> +		pages =3D plane_view_src_stride_tiles(fb, color_plane, dims) *
>  			plane_view_tile_rows(fb, color_plane, dims, y);
>  	}
>  =

> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/=
gt/intel_ggtt.c
> index b0b8ded834f0..9a5b038e1ea3 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
> @@ -1314,7 +1314,7 @@ intel_rotate_pages(struct intel_rotation_info *rot_=
info,
>  	for (i =3D 0 ; i < ARRAY_SIZE(rot_info->plane); i++) {
>  		sg =3D rotate_pages(obj, rot_info->plane[i].offset,
>  				  rot_info->plane[i].width, rot_info->plane[i].height,
> -				  rot_info->plane[i].stride, st, sg);
> +				  rot_info->plane[i].src_stride, st, sg);
>  	}
>  =

>  	return st;
> @@ -1398,7 +1398,7 @@ intel_remap_pages(struct intel_remapped_info *rem_i=
nfo,
>  	for (i =3D 0 ; i < ARRAY_SIZE(rem_info->plane); i++) {
>  		sg =3D remap_pages(obj, rem_info->plane[i].offset,
>  				 rem_info->plane[i].width, rem_info->plane[i].height,
> -				 rem_info->plane[i].stride, st, sg);
> +				 rem_info->plane[i].src_stride, st, sg);
>  	}
>  =

>  	i915_sg_trim(st);
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i=
915_debugfs.c
> index 51133b8fabb4..48032c0288ee 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -176,11 +176,11 @@ i915_debugfs_describe_obj(struct seq_file *m, struc=
t drm_i915_gem_object *obj)
>  				seq_printf(m, ", rotated [(%ux%u, stride=3D%u, offset=3D%u), (%ux%u,=
 stride=3D%u, offset=3D%u)]",
>  					   vma->ggtt_view.rotated.plane[0].width,
>  					   vma->ggtt_view.rotated.plane[0].height,
> -					   vma->ggtt_view.rotated.plane[0].stride,
> +					   vma->ggtt_view.rotated.plane[0].src_stride,
>  					   vma->ggtt_view.rotated.plane[0].offset,
>  					   vma->ggtt_view.rotated.plane[1].width,
>  					   vma->ggtt_view.rotated.plane[1].height,
> -					   vma->ggtt_view.rotated.plane[1].stride,
> +					   vma->ggtt_view.rotated.plane[1].src_stride,
>  					   vma->ggtt_view.rotated.plane[1].offset);
>  				break;
>  =

> @@ -188,11 +188,11 @@ i915_debugfs_describe_obj(struct seq_file *m, struc=
t drm_i915_gem_object *obj)
>  				seq_printf(m, ", remapped [(%ux%u, stride=3D%u, offset=3D%u), (%ux%u=
, stride=3D%u, offset=3D%u)]",
>  					   vma->ggtt_view.remapped.plane[0].width,
>  					   vma->ggtt_view.remapped.plane[0].height,
> -					   vma->ggtt_view.remapped.plane[0].stride,
> +					   vma->ggtt_view.remapped.plane[0].src_stride,
>  					   vma->ggtt_view.remapped.plane[0].offset,
>  					   vma->ggtt_view.remapped.plane[1].width,
>  					   vma->ggtt_view.remapped.plane[1].height,
> -					   vma->ggtt_view.remapped.plane[1].stride,
> +					   vma->ggtt_view.remapped.plane[1].src_stride,
>  					   vma->ggtt_view.remapped.plane[1].offset);
>  				break;
>  =

> diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915=
/i915_vma_types.h
> index 358b4306fc00..f7f2aa168c9e 100644
> --- a/drivers/gpu/drm/i915/i915_vma_types.h
> +++ b/drivers/gpu/drm/i915/i915_vma_types.h
> @@ -100,7 +100,7 @@ struct intel_remapped_plane_info {
>  	u32 offset;
>  	u16 width;
>  	u16 height;
> -	u16 stride;
> +	u16 src_stride;
>  	u16 unused_mbz;
>  } __packed;
>  =

> diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/=
i915/selftests/i915_vma.c
> index 86c590b4522c..06f1827329d0 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_vma.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
> @@ -361,7 +361,7 @@ static unsigned long rotated_index(const struct intel=
_rotation_info *r,
>  				   unsigned int x,
>  				   unsigned int y)
>  {
> -	return (r->plane[n].stride * (r->plane[n].height - y - 1) +
> +	return (r->plane[n].src_stride * (r->plane[n].height - y - 1) +
>  		r->plane[n].offset + x);
>  }
>  =

> @@ -411,7 +411,7 @@ static unsigned long remapped_index(const struct inte=
l_remapped_info *r,
>  				    unsigned int x,
>  				    unsigned int y)
>  {
> -	return (r->plane[n].stride * y +
> +	return (r->plane[n].src_stride * y +
>  		r->plane[n].offset + x);
>  }
>  =

> @@ -479,21 +479,21 @@ static int igt_vma_rotate_remap(void *arg)
>  	struct i915_address_space *vm =3D &ggtt->vm;
>  	struct drm_i915_gem_object *obj;
>  	const struct intel_remapped_plane_info planes[] =3D {
> -		{ .width =3D 1, .height =3D 1, .stride =3D 1 },
> -		{ .width =3D 2, .height =3D 2, .stride =3D 2 },
> -		{ .width =3D 4, .height =3D 4, .stride =3D 4 },
> -		{ .width =3D 8, .height =3D 8, .stride =3D 8 },
> +		{ .width =3D 1, .height =3D 1, .src_stride =3D 1 },
> +		{ .width =3D 2, .height =3D 2, .src_stride =3D 2 },
> +		{ .width =3D 4, .height =3D 4, .src_stride =3D 4 },
> +		{ .width =3D 8, .height =3D 8, .src_stride =3D 8 },
>  =

> -		{ .width =3D 3, .height =3D 5, .stride =3D 3 },
> -		{ .width =3D 3, .height =3D 5, .stride =3D 4 },
> -		{ .width =3D 3, .height =3D 5, .stride =3D 5 },
> +		{ .width =3D 3, .height =3D 5, .src_stride =3D 3 },
> +		{ .width =3D 3, .height =3D 5, .src_stride =3D 4 },
> +		{ .width =3D 3, .height =3D 5, .src_stride =3D 5 },
>  =

> -		{ .width =3D 5, .height =3D 3, .stride =3D 5 },
> -		{ .width =3D 5, .height =3D 3, .stride =3D 7 },
> -		{ .width =3D 5, .height =3D 3, .stride =3D 9 },
> +		{ .width =3D 5, .height =3D 3, .src_stride =3D 5 },
> +		{ .width =3D 5, .height =3D 3, .src_stride =3D 7 },
> +		{ .width =3D 5, .height =3D 3, .src_stride =3D 9 },
>  =

> -		{ .width =3D 4, .height =3D 6, .stride =3D 6 },
> -		{ .width =3D 6, .height =3D 4, .stride =3D 6 },
> +		{ .width =3D 4, .height =3D 6, .src_stride =3D 6 },
> +		{ .width =3D 6, .height =3D 4, .src_stride =3D 6 },
>  		{ }
>  	}, *a, *b;
>  	enum i915_ggtt_view_type types[] =3D {
> @@ -523,8 +523,8 @@ static int igt_vma_rotate_remap(void *arg)
>  			plane_info[0] =3D *a;
>  			plane_info[1] =3D *b;
>  =

> -			max_offset =3D max(plane_info[0].stride * plane_info[0].height,
> -					 plane_info[1].stride * plane_info[1].height);
> +			max_offset =3D max(plane_info[0].src_stride * plane_info[0].height,
> +					 plane_info[1].src_stride * plane_info[1].height);
>  			GEM_BUG_ON(max_offset > max_pages);
>  			max_offset =3D max_pages - max_offset;
>  =

> @@ -596,11 +596,11 @@ static int igt_vma_rotate_remap(void *arg)
>  							       "rotated" : "remapped", n,
>  							       plane_info[0].width,
>  							       plane_info[0].height,
> -							       plane_info[0].stride,
> +							       plane_info[0].src_stride,
>  							       plane_info[0].offset,
>  							       plane_info[1].width,
>  							       plane_info[1].height,
> -							       plane_info[1].stride,
> +							       plane_info[1].src_stride,
>  							       plane_info[1].offset);
>  							err =3D -EINVAL;
>  							goto out_object;
> @@ -853,21 +853,21 @@ static int igt_vma_remapped_gtt(void *arg)
>  {
>  	struct drm_i915_private *i915 =3D arg;
>  	const struct intel_remapped_plane_info planes[] =3D {
> -		{ .width =3D 1, .height =3D 1, .stride =3D 1 },
> -		{ .width =3D 2, .height =3D 2, .stride =3D 2 },
> -		{ .width =3D 4, .height =3D 4, .stride =3D 4 },
> -		{ .width =3D 8, .height =3D 8, .stride =3D 8 },
> +		{ .width =3D 1, .height =3D 1, .src_stride =3D 1 },
> +		{ .width =3D 2, .height =3D 2, .src_stride =3D 2 },
> +		{ .width =3D 4, .height =3D 4, .src_stride =3D 4 },
> +		{ .width =3D 8, .height =3D 8, .src_stride =3D 8 },
>  =

> -		{ .width =3D 3, .height =3D 5, .stride =3D 3 },
> -		{ .width =3D 3, .height =3D 5, .stride =3D 4 },
> -		{ .width =3D 3, .height =3D 5, .stride =3D 5 },
> +		{ .width =3D 3, .height =3D 5, .src_stride =3D 3 },
> +		{ .width =3D 3, .height =3D 5, .src_stride =3D 4 },
> +		{ .width =3D 3, .height =3D 5, .src_stride =3D 5 },
>  =

> -		{ .width =3D 5, .height =3D 3, .stride =3D 5 },
> -		{ .width =3D 5, .height =3D 3, .stride =3D 7 },
> -		{ .width =3D 5, .height =3D 3, .stride =3D 9 },
> +		{ .width =3D 5, .height =3D 3, .src_stride =3D 5 },
> +		{ .width =3D 5, .height =3D 3, .src_stride =3D 7 },
> +		{ .width =3D 5, .height =3D 3, .src_stride =3D 9 },
>  =

> -		{ .width =3D 4, .height =3D 6, .stride =3D 6 },
> -		{ .width =3D 6, .height =3D 4, .stride =3D 6 },
> +		{ .width =3D 4, .height =3D 6, .src_stride =3D 6 },
> +		{ .width =3D 6, .height =3D 4, .src_stride =3D 6 },
>  		{ }
>  	}, *p;
>  	enum i915_ggtt_view_type types[] =3D {
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
