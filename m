Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92BE83395CB
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Mar 2021 19:04:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E79486ECBE;
	Fri, 12 Mar 2021 18:04:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A528E6ECBE
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 18:04:00 +0000 (UTC)
IronPort-SDR: xPzHlKS63d1ZxX/pz8LnmWlOX9Rvj7mL9fasFo9iwCFZefwDJPn9a9uSgd10pPmPAUR1ClhP35
 WMIyO6j3snVQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="185512851"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="185512851"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 10:04:00 -0800
IronPort-SDR: v1GPY0LVeSk+WA76jDF/XNa3kxEEnlHmOyI7fkB0C2a5+0d63Y7AqWhzbizetRDG35J/9U7EY1
 cZ6VVVxHYNPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="404500003"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 12 Mar 2021 10:03:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Mar 2021 20:03:55 +0200
Date: Fri, 12 Mar 2021 20:03:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YEutCvl4JdfZ73d7@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-23-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310221736.2963264-23-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 22/23] drm/i915/selftest: Add remap/rotate
 vma subtests when dst_stride!=width/height
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

On Thu, Mar 11, 2021 at 12:17:35AM +0200, Imre Deak wrote:
> Add selftests to test the POT stride padding functionality added in the
> previous patch.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>

Looks sensible.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/selftests/i915_vma.c | 93 +++++++++++++++++++++--
>  1 file changed, 86 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/=
i915/selftests/i915_vma.c
> index 4631db0cdfe5..b88de1257ee9 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_vma.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
> @@ -373,6 +373,8 @@ assert_rotated(struct drm_i915_gem_object *obj,
>  	unsigned int x, y;
>  =

>  	for (x =3D 0; x < r->plane[n].width; x++) {
> +		unsigned int left;
> +
>  		for (y =3D 0; y < r->plane[n].height; y++) {
>  			unsigned long src_idx;
>  			dma_addr_t src;
> @@ -401,6 +403,31 @@ assert_rotated(struct drm_i915_gem_object *obj,
>  =

>  			sg =3D sg_next(sg);
>  		}
> +
> +		left =3D (r->plane[n].dst_stride - y) * PAGE_SIZE;
> +
> +		if (!left)
> +			continue;
> +
> +		if (!sg) {
> +			pr_err("Invalid sg table: too short at plane %d, (%d, %d)!\n",
> +			       n, x, y);
> +			return ERR_PTR(-EINVAL);
> +		}
> +
> +		if (sg_dma_len(sg) !=3D left) {
> +			pr_err("Invalid sg.length, found %d, expected %u for rotated page (%d=
, %d)\n",
> +			       sg_dma_len(sg), left, x, y);
> +			return ERR_PTR(-EINVAL);
> +		}
> +
> +		if (sg_dma_address(sg) !=3D 0) {
> +			pr_err("Invalid address, found %pad, expected 0 for remapped page (%d=
, %d)\n",
> +			       &sg_dma_address(sg), x, y);
> +			return ERR_PTR(-EINVAL);
> +		}
> +
> +		sg =3D sg_next(sg);
>  	}
>  =

>  	return sg;
> @@ -462,15 +489,55 @@ assert_remapped(struct drm_i915_gem_object *obj,
>  			if (!left)
>  				sg =3D sg_next(sg);
>  		}
> +
> +		if (left) {
> +			pr_err("Unexpected sg tail with %d size for remapped page (%d, %d)\n",
> +			       left,
> +			       x, y);
> +			return ERR_PTR(-EINVAL);
> +		}
> +
> +		left =3D (r->plane[n].dst_stride - r->plane[n].width) * PAGE_SIZE;
> +
> +		if (!left)
> +			continue;
> +
> +		if (!sg) {
> +			pr_err("Invalid sg table: too short at plane %d, (%d, %d)!\n",
> +			       n, x, y);
> +			return ERR_PTR(-EINVAL);
> +		}
> +
> +		if (sg_dma_len(sg) !=3D left) {
> +			pr_err("Invalid sg.length, found %u, expected %u for remapped page (%=
d, %d)\n",
> +			       sg_dma_len(sg), left,
> +			       x, y);
> +			return ERR_PTR(-EINVAL);
> +		}
> +
> +		if (sg_dma_address(sg) !=3D 0) {
> +			pr_err("Invalid address, found %pad, expected 0 for remapped page (%d=
, %d)\n",
> +			       &sg_dma_address(sg),
> +			       x, y);
> +			return ERR_PTR(-EINVAL);
> +		}
> +
> +		sg =3D sg_next(sg);
> +		left =3D 0;
>  	}
>  =

>  	return sg;
>  }
>  =

> -static unsigned int rotated_size(const struct intel_remapped_plane_info =
*a,
> -				 const struct intel_remapped_plane_info *b)
> +static unsigned int remapped_size(enum i915_ggtt_view_type view_type,
> +				  const struct intel_remapped_plane_info *a,
> +				  const struct intel_remapped_plane_info *b)
>  {
> -	return a->width * a->height + b->width * b->height;
> +
> +	if (view_type =3D=3D I915_GGTT_VIEW_ROTATED)
> +		return a->dst_stride * a->width + b->dst_stride * b->width;
> +	else
> +		return a->dst_stride * a->height + b->dst_stride * b->height;
>  }
>  =

>  static int igt_vma_rotate_remap(void *arg)
> @@ -494,6 +561,11 @@ static int igt_vma_rotate_remap(void *arg)
>  =

>  		{ .width =3D 4, .height =3D 6, .src_stride =3D 6 },
>  		{ .width =3D 6, .height =3D 4, .src_stride =3D 6 },
> +
> +		{ .width =3D 2, .height =3D 2, .src_stride =3D 2, .dst_stride =3D 2 },
> +		{ .width =3D 3, .height =3D 3, .src_stride =3D 3, .dst_stride =3D 4 },
> +		{ .width =3D 5, .height =3D 6, .src_stride =3D 7, .dst_stride =3D 8 },
> +
>  		{ }
>  	}, *a, *b;
>  	enum i915_ggtt_view_type types[] =3D {
> @@ -555,7 +627,7 @@ static int igt_vma_rotate_remap(void *arg)
>  						goto out_object;
>  					}
>  =

> -					expected_pages =3D rotated_size(&plane_info[0], &plane_info[1]);
> +					expected_pages =3D remapped_size(view.type, &plane_info[0], &plane_=
info[1]);
>  =

>  					if (view.type =3D=3D I915_GGTT_VIEW_ROTATED &&
>  					    vma->size !=3D expected_pages * PAGE_SIZE) {
> @@ -600,16 +672,18 @@ static int igt_vma_rotate_remap(void *arg)
>  						else
>  							sg =3D assert_remapped(obj, &view.remapped, n, sg);
>  						if (IS_ERR(sg)) {
> -							pr_err("Inconsistent %s VMA pages for plane %d: [(%d, %d, %d, %d)=
, (%d, %d, %d, %d)]\n",
> +							pr_err("Inconsistent %s VMA pages for plane %d: [(%d, %d, %d, %d,=
 %d), (%d, %d, %d, %d, %d)]\n",
>  							       view.type =3D=3D I915_GGTT_VIEW_ROTATED ?
>  							       "rotated" : "remapped", n,
>  							       plane_info[0].width,
>  							       plane_info[0].height,
>  							       plane_info[0].src_stride,
> +							       plane_info[0].dst_stride,
>  							       plane_info[0].offset,
>  							       plane_info[1].width,
>  							       plane_info[1].height,
>  							       plane_info[1].src_stride,
> +							       plane_info[1].dst_stride,
>  							       plane_info[1].offset);
>  							err =3D -EINVAL;
>  							goto out_object;
> @@ -877,6 +951,11 @@ static int igt_vma_remapped_gtt(void *arg)
>  =

>  		{ .width =3D 4, .height =3D 6, .src_stride =3D 6 },
>  		{ .width =3D 6, .height =3D 4, .src_stride =3D 6 },
> +
> +		{ .width =3D 2, .height =3D 2, .src_stride =3D 2, .dst_stride =3D 2 },
> +		{ .width =3D 3, .height =3D 3, .src_stride =3D 3, .dst_stride =3D 4 },
> +		{ .width =3D 5, .height =3D 6, .src_stride =3D 7, .dst_stride =3D 8 },
> +
>  		{ }
>  	}, *p;
>  	enum i915_ggtt_view_type types[] =3D {
> @@ -930,9 +1009,9 @@ static int igt_vma_remapped_gtt(void *arg)
>  					u32 val =3D y << 16 | x;
>  =

>  					if (*t =3D=3D I915_GGTT_VIEW_ROTATED)
> -						offset =3D (x * plane_info[0].height + y) * PAGE_SIZE;
> +						offset =3D (x * plane_info[0].dst_stride + y) * PAGE_SIZE;
>  					else
> -						offset =3D (y * plane_info[0].width + x) * PAGE_SIZE;
> +						offset =3D (y * plane_info[0].dst_stride + x) * PAGE_SIZE;
>  =

>  					iowrite32(val, &map[offset / sizeof(*map)]);
>  				}
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
