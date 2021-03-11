Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C05BF337E5E
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 20:45:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A9D16E060;
	Thu, 11 Mar 2021 19:45:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7F2C6E060
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 19:45:22 +0000 (UTC)
IronPort-SDR: KpM8blYG0uN4HMxnLbME5igPkpNDbn4T5JI8iLm3efHsO+ksXOLsGAnwkx5o4xb5I9NCtSvvtC
 jRmfecf4IZ1g==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="168646547"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="168646547"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 11:45:17 -0800
IronPort-SDR: cr/Ph53W0jB4v/cgjntJrNt4s3eDGxi+Eohmen2xV7rc2kLsYbxCdfgQZWFhhjdJvdaS8B/H69
 WbU/cVEN1t/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="372442943"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 11 Mar 2021 11:45:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Mar 2021 21:45:14 +0200
Date: Thu, 11 Mar 2021 21:45:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YEpzSj9TVv1wFrSr@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-19-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310221736.2963264-19-imre.deak@intel.com>
X-Patchwork-Hint: comment
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 11, 2021 at 12:17:31AM +0200, Imre Deak wrote:
> Save some place in the GTT VMAs by using a u16 instead of unsigned int
> to store the view dimensions. The maximum FB stride is 256kB which is
> 4096 tiles in the worst case (yf-tiles), the maximum FB height is 16k
> pixels, which is 2048 tiles in the worst case (x-tiles).

Actually I think the worst case for height is remapping linear fbs
since we more or less treat it as 4kx1 tiles. But 16k is still< 64k
so should be all good.

Integer promotion stuff/etc. is what worried me the most here, but
looks like rotate_pages()/remap_pages() at least gets everything
passed in as unsigned int, so we're not in danger of sign bit
shenanigans there at least.

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 15 ++++++++++++---
>  drivers/gpu/drm/i915/i915_vma_types.h   | 12 ++++++++----
>  2 files changed, 20 insertions(+), 7 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index 16a1b5c922bb..51c56f0a4a99 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -619,13 +619,22 @@ static u32 calc_plane_remap_info(const struct intel=
_framebuffer *fb, int color_p
>  	unsigned int tile_width =3D dims->tile_width;
>  	unsigned int tile_height =3D dims->tile_height;
>  	unsigned int tile_size =3D intel_tile_size(i915);
> +	unsigned int stride_tiles =3D plane_view_stride_tiles(fb, color_plane, =
dims);
> +	unsigned int width_tiles =3D DIV_ROUND_UP(x + dims->width, dims->tile_w=
idth);
> +	unsigned int height_tiles =3D plane_view_tile_rows(fb, color_plane, dim=
s, y);
>  	unsigned int pitch_tiles;
>  	struct drm_rect r;
>  =

> +	drm_WARN_ON(&i915->drm,
> +		    overflows_type(obj_offset, gtt_remap_info->offset) ||
> +		    overflows_type(stride_tiles, gtt_remap_info->stride) ||
> +		    overflows_type(width_tiles, gtt_remap_info->width) ||
> +		    overflows_type(height_tiles, gtt_remap_info->height));
> +
>  	gtt_remap_info->offset =3D obj_offset;
> -	gtt_remap_info->width =3D DIV_ROUND_UP(x + dims->width, dims->tile_widt=
h);
> -	gtt_remap_info->height =3D plane_view_tile_rows(fb, color_plane, dims, =
y);
> -	gtt_remap_info->stride =3D plane_view_stride_tiles(fb, color_plane, dim=
s);
> +	gtt_remap_info->stride =3D stride_tiles;
> +	gtt_remap_info->width =3D width_tiles;
> +	gtt_remap_info->height =3D height_tiles;
>  =

>  	if (view_type =3D=3D I915_GGTT_VIEW_ROTATED) {
>  		/* rotate the x/y offsets to match the GTT view */
> diff --git a/drivers/gpu/drm/i915/i915_vma_types.h b/drivers/gpu/drm/i915=
/i915_vma_types.h
> index f5cb848b7a7e..358b4306fc00 100644
> --- a/drivers/gpu/drm/i915/i915_vma_types.h
> +++ b/drivers/gpu/drm/i915/i915_vma_types.h
> @@ -97,12 +97,16 @@ enum i915_cache_level;
>  =

>  struct intel_remapped_plane_info {
>  	/* in gtt pages */
> -	unsigned int width, height, stride, offset;
> +	u32 offset;
> +	u16 width;
> +	u16 height;
> +	u16 stride;
> +	u16 unused_mbz;
>  } __packed;
>  =

>  struct intel_remapped_info {
>  	struct intel_remapped_plane_info plane[2];
> -	unsigned int unused_mbz;
> +	u32 unused_mbz;
>  } __packed;
>  =

>  struct intel_rotation_info {
> @@ -123,9 +127,9 @@ enum i915_ggtt_view_type {
>  =

>  static inline void assert_i915_gem_gtt_types(void)
>  {
> -	BUILD_BUG_ON(sizeof(struct intel_rotation_info) !=3D 8*sizeof(unsigned =
int));
> +	BUILD_BUG_ON(sizeof(struct intel_rotation_info) !=3D 2 * sizeof(u32) + =
8 * sizeof(u16));
>  	BUILD_BUG_ON(sizeof(struct intel_partial_info) !=3D sizeof(u64) + sizeo=
f(unsigned int));
> -	BUILD_BUG_ON(sizeof(struct intel_remapped_info) !=3D 9*sizeof(unsigned =
int));
> +	BUILD_BUG_ON(sizeof(struct intel_remapped_info) !=3D 3 * sizeof(u32) + =
8 * sizeof(u16));
>  =

>  	/* Check that rotation/remapped shares offsets for simplicity */
>  	BUILD_BUG_ON(offsetof(struct intel_remapped_info, plane[0]) !=3D
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
