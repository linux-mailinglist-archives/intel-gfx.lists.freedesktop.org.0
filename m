Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3C0337F81
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 22:17:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C23C86EDB0;
	Thu, 11 Mar 2021 21:17:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31FBF6EDB0
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 21:17:38 +0000 (UTC)
IronPort-SDR: mLGwOs9ZpdWv49XBRp2raO1oB9b/aIylziiL1UTsW2u0UYRouhaJPno+mWPKSUXc4KNTlqTKEz
 RA5tww38e1Tw==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="176334832"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="176334832"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 13:17:37 -0800
IronPort-SDR: zkVBv2KNJXtwBF/Zt4dbD2l7tANzyz299AKSEhqMuVgyAS7Eer0MLHDpz194z9PrXjdznYP0k6
 d1o5WAnogMBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="438835216"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 11 Mar 2021 13:17:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Mar 2021 23:17:34 +0200
Date: Thu, 11 Mar 2021 23:17:34 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YEqI7v9IDmC2vbT2@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-20-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310221736.2963264-20-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 19/23] drm/i915/selftest: Unify use of
 intel_remapped_plane_info in igt_vma_rotate_remap()
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

On Thu, Mar 11, 2021 at 12:17:32AM +0200, Imre Deak wrote:
> Always use the modified copy of the intel_remapped_plane_info variables.
> An upcoming patch updates the dst_stride field in these copies after
> which we can't use the original versions.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/selftests/i915_vma.c | 61 ++++++++++++-----------
>  1 file changed, 33 insertions(+), 28 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/selftests/i915_vma.c b/drivers/gpu/drm/=
i915/selftests/i915_vma.c
> index 3d557b8a2098..86c590b4522c 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_vma.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_vma.c
> @@ -516,21 +516,23 @@ static int igt_vma_rotate_remap(void *arg)
>  	for (a =3D planes; a->width; a++) {
>  		for (b =3D planes + ARRAY_SIZE(planes); b-- !=3D planes; ) {
>  			struct i915_ggtt_view view =3D { };
> +			struct intel_remapped_plane_info *plane_info =3D view.rotated.plane;
>  			unsigned int n, max_offset;
>  =

> -			max_offset =3D max(a->stride * a->height,
> -					 b->stride * b->height);
> +			view.type =3D *t;
> +			plane_info[0] =3D *a;
> +			plane_info[1] =3D *b;

Could do this stuff when declaring the view I guess? Looks like the
other test does it that way.

Anyways
Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> +
> +			max_offset =3D max(plane_info[0].stride * plane_info[0].height,
> +					 plane_info[1].stride * plane_info[1].height);
>  			GEM_BUG_ON(max_offset > max_pages);
>  			max_offset =3D max_pages - max_offset;
>  =

> -			view.type =3D *t;
> -			view.rotated.plane[0] =3D *a;
> -			view.rotated.plane[1] =3D *b;
> -
> -			for_each_prime_number_from(view.rotated.plane[0].offset, 0, max_offse=
t) {
> -				for_each_prime_number_from(view.rotated.plane[1].offset, 0, max_offs=
et) {
> +			for_each_prime_number_from(plane_info[0].offset, 0, max_offset) {
> +				for_each_prime_number_from(plane_info[1].offset, 0, max_offset) {
>  					struct scatterlist *sg;
>  					struct i915_vma *vma;
> +					unsigned int expected_pages;
>  =

>  					vma =3D checked_vma_instance(obj, vm, &view);
>  					if (IS_ERR(vma)) {
> @@ -544,25 +546,27 @@ static int igt_vma_rotate_remap(void *arg)
>  						goto out_object;
>  					}
>  =

> +					expected_pages =3D rotated_size(&plane_info[0], &plane_info[1]);
> +
>  					if (view.type =3D=3D I915_GGTT_VIEW_ROTATED &&
> -					    vma->size !=3D rotated_size(a, b) * PAGE_SIZE) {
> +					    vma->size !=3D expected_pages * PAGE_SIZE) {
>  						pr_err("VMA is wrong size, expected %lu, found %llu\n",
> -						       PAGE_SIZE * rotated_size(a, b), vma->size);
> +						       PAGE_SIZE * expected_pages, vma->size);
>  						err =3D -EINVAL;
>  						goto out_object;
>  					}
>  =

>  					if (view.type =3D=3D I915_GGTT_VIEW_REMAPPED &&
> -					    vma->size > rotated_size(a, b) * PAGE_SIZE) {
> +					    vma->size > expected_pages * PAGE_SIZE) {
>  						pr_err("VMA is wrong size, expected %lu, found %llu\n",
> -						       PAGE_SIZE * rotated_size(a, b), vma->size);
> +						       PAGE_SIZE * expected_pages, vma->size);
>  						err =3D -EINVAL;
>  						goto out_object;
>  					}
>  =

> -					if (vma->pages->nents > rotated_size(a, b)) {
> +					if (vma->pages->nents > expected_pages) {
>  						pr_err("sg table is wrong sizeo, expected %u, found %u nents\n",
> -						       rotated_size(a, b), vma->pages->nents);
> +						       expected_pages, vma->pages->nents);
>  						err =3D -EINVAL;
>  						goto out_object;
>  					}
> @@ -590,14 +594,14 @@ static int igt_vma_rotate_remap(void *arg)
>  							pr_err("Inconsistent %s VMA pages for plane %d: [(%d, %d, %d, %d)=
, (%d, %d, %d, %d)]\n",
>  							       view.type =3D=3D I915_GGTT_VIEW_ROTATED ?
>  							       "rotated" : "remapped", n,
> -							       view.rotated.plane[0].width,
> -							       view.rotated.plane[0].height,
> -							       view.rotated.plane[0].stride,
> -							       view.rotated.plane[0].offset,
> -							       view.rotated.plane[1].width,
> -							       view.rotated.plane[1].height,
> -							       view.rotated.plane[1].stride,
> -							       view.rotated.plane[1].offset);
> +							       plane_info[0].width,
> +							       plane_info[0].height,
> +							       plane_info[0].stride,
> +							       plane_info[0].offset,
> +							       plane_info[1].width,
> +							       plane_info[1].height,
> +							       plane_info[1].stride,
> +							       plane_info[1].offset);
>  							err =3D -EINVAL;
>  							goto out_object;
>  						}
> @@ -887,6 +891,7 @@ static int igt_vma_remapped_gtt(void *arg)
>  				.type =3D *t,
>  				.rotated.plane[0] =3D *p,
>  			};
> +			struct intel_remapped_plane_info *plane_info =3D view.rotated.plane;
>  			struct i915_vma *vma;
>  			u32 __iomem *map;
>  			unsigned int x, y;
> @@ -906,15 +911,15 @@ static int igt_vma_remapped_gtt(void *arg)
>  				goto out;
>  			}
>  =

> -			for (y =3D 0 ; y < p->height; y++) {
> -				for (x =3D 0 ; x < p->width; x++) {
> +			for (y =3D 0 ; y < plane_info[0].height; y++) {
> +				for (x =3D 0 ; x < plane_info[0].width; x++) {
>  					unsigned int offset;
>  					u32 val =3D y << 16 | x;
>  =

>  					if (*t =3D=3D I915_GGTT_VIEW_ROTATED)
> -						offset =3D (x * p->height + y) * PAGE_SIZE;
> +						offset =3D (x * plane_info[0].height + y) * PAGE_SIZE;
>  					else
> -						offset =3D (y * p->width + x) * PAGE_SIZE;
> +						offset =3D (y * plane_info[0].width + x) * PAGE_SIZE;
>  =

>  					iowrite32(val, &map[offset / sizeof(*map)]);
>  				}
> @@ -937,8 +942,8 @@ static int igt_vma_remapped_gtt(void *arg)
>  				goto out;
>  			}
>  =

> -			for (y =3D 0 ; y < p->height; y++) {
> -				for (x =3D 0 ; x < p->width; x++) {
> +			for (y =3D 0 ; y < plane_info[0].height; y++) {
> +				for (x =3D 0 ; x < plane_info[0].width; x++) {
>  					unsigned int offset, src_idx;
>  					u32 exp =3D y << 16 | x;
>  					u32 val;
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
