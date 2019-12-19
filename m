Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3B012638A
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 14:31:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 386EB6EB78;
	Thu, 19 Dec 2019 13:31:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C30B6EB78
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 13:31:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 05:31:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,332,1571727600"; d="scan'208";a="213257019"
Received: from irsmsx109.ger.corp.intel.com ([163.33.3.23])
 by fmsmga008.fm.intel.com with ESMTP; 19 Dec 2019 05:31:51 -0800
Received: from irsmsx111.ger.corp.intel.com (10.108.20.4) by
 IRSMSX109.ger.corp.intel.com (163.33.3.23) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Dec 2019 13:31:50 +0000
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.130]) by
 irsmsx111.ger.corp.intel.com ([169.254.2.126]) with mapi id 14.03.0439.000;
 Thu, 19 Dec 2019 13:31:50 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 08/15] drm/i915: Skip rotated offset
 adjustment for unsupported modifiers
Thread-Index: AQHVtfu0/kzG8VO5iUSOWotmMZQzyKfBdV2A
Date: Thu, 19 Dec 2019 13:31:49 +0000
Message-ID: <f9c85076c1e356e566334f4cf1b0b84ca11a29d7.camel@intel.com>
References: <20191218161105.30638-9-imre.deak@intel.com>
 <20191218233400.9888-1-imre.deak@intel.com>
In-Reply-To: <20191218233400.9888-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <FB8FF8573F502C49952425DD0E466E47@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 08/15] drm/i915: Skip rotated offset
 adjustment for unsupported modifiers
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
Cc: "Pandiyan, Dhinakaran" <dhinakaran.pandiyan@intel.com>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 2019-12-19 at 01:34 +0200, Imre Deak wrote:
> From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> =

> During framebuffer creation, we pre-compute offsets for 90/270 plane
> rotation. However, only Y and Yf modifiers support 90/270 rotation.
> So,
> skip the calculations for other modifiers.
> =

> To keep the gem buffer size check still working for tiled planes,
> factor
> out the logic needed for rotation setup and skip only this part for
> tiled planes other than Y/Yf.
> =

> v2: Add a bounds check WARN for the rotation info array.
> v3: Keep the gem buffer size check working for tiled planes.
> =

> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Mika Kahola <mika.kahola@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 117 ++++++++++++-----
> --
>  1 file changed, 76 insertions(+), 41 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 3180c1817b60..9c0f22410c4a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2863,12 +2863,71 @@ intel_fb_check_ccs_xy(struct drm_framebuffer
> *fb, int x, int y)
>  	return 0;
>  }
>  =

> +/*
> + * Setup the rotated view for an FB plane and return the size the
> GTT mapping
> + * requires for this view.
> + */
> +static u32
> +setup_fb_rotation(int plane, const struct intel_remapped_plane_info
> *plane_info,
> +		  u32 gtt_offset_rotated, int x, int y,
> +		  unsigned int width, unsigned int height,
> +		  unsigned int tile_size,
> +		  unsigned int tile_width, unsigned int tile_height,
> +		  struct drm_framebuffer *fb)
> +{
> +	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> +	struct intel_rotation_info *rot_info =3D &intel_fb->rot_info;
> +	unsigned int pitch_tiles;
> +	struct drm_rect r;
> +
> +	if (fb->modifier !=3D I915_FORMAT_MOD_Y_TILED &&
> +	    fb->modifier !=3D I915_FORMAT_MOD_Yf_TILED)
> +		return 0;
> +
> +	if (WARN_ON(plane >=3D ARRAY_SIZE(rot_info->plane)))
> +		return 0;
> +
> +	rot_info->plane[plane] =3D *plane_info;
> +
> +	intel_fb->rotated[plane].pitch =3D plane_info->height *
> tile_height;
> +
> +	/* rotate the x/y offsets to match the GTT view */
> +	drm_rect_init(&r, x, y, width, height);
> +	drm_rect_rotate(&r,
> +			plane_info->width * tile_width,
> +			plane_info->height * tile_height,
> +			DRM_MODE_ROTATE_270);
> +	x =3D r.x1;
> +	y =3D r.y1;
> +
> +	/* rotate the tile dimensions to match the GTT view */
> +	pitch_tiles =3D intel_fb->rotated[plane].pitch / tile_height;
> +	swap(tile_width, tile_height);
> +
> +	/*
> +	 * We only keep the x/y offsets, so push all of the
> +	 * gtt offset into the x/y offsets.
> +	 */
> +	intel_adjust_tile_offset(&x, &y,
> +				 tile_width, tile_height,
> +				 tile_size, pitch_tiles,
> +				 gtt_offset_rotated * tile_size, 0);
> +
> +	/*
> +	 * First pixel of the framebuffer from
> +	 * the start of the rotated gtt mapping.
> +	 */
> +	intel_fb->rotated[plane].x =3D x;
> +	intel_fb->rotated[plane].y =3D y;
> +
> +	return plane_info->width * plane_info->height;
> +}
> +
>  static int
>  intel_fill_fb_info(struct drm_i915_private *dev_priv,
>  		   struct drm_framebuffer *fb)
>  {
>  	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> -	struct intel_rotation_info *rot_info =3D &intel_fb->rot_info;
>  	struct drm_i915_gem_object *obj =3D intel_fb_obj(fb);
>  	u32 gtt_offset_rotated =3D 0;
>  	unsigned int max_size =3D 0;
> @@ -2926,23 +2985,21 @@ intel_fill_fb_info(struct drm_i915_private
> *dev_priv,
>  						      tile_size);
>  		offset /=3D tile_size;
>  =

> +		/* Y or Yf modifiers required for 90/270 rotation */
>  		if (!is_surface_linear(fb, i)) {
> +			struct intel_remapped_plane_info plane_info;
>  			unsigned int tile_width, tile_height;
> -			unsigned int pitch_tiles;
> -			struct drm_rect r;
>  =

>  			intel_tile_dims(fb, i, &tile_width,
> &tile_height);
>  =

> -			rot_info->plane[i].offset =3D offset;
> -			rot_info->plane[i].stride =3D DIV_ROUND_UP(fb-
> >pitches[i], tile_width * cpp);
> -			rot_info->plane[i].width =3D DIV_ROUND_UP(x +
> width, tile_width);
> -			rot_info->plane[i].height =3D DIV_ROUND_UP(y +
> height, tile_height);
> -
> -			intel_fb->rotated[i].pitch =3D
> -				rot_info->plane[i].height *
> tile_height;
> +			plane_info.offset =3D offset;
> +			plane_info.stride =3D DIV_ROUND_UP(fb-
> >pitches[i],
> +							 tile_width *
> cpp);
> +			plane_info.width =3D DIV_ROUND_UP(x + width,
> tile_width);
> +			plane_info.height =3D DIV_ROUND_UP(y + height,
> tile_height);
>  =

>  			/* how many tiles does this plane need */
> -			size =3D rot_info->plane[i].stride * rot_info-
> >plane[i].height;
> +			size =3D plane_info.stride * plane_info.height;
>  			/*
>  			 * If the plane isn't horizontally tile
> aligned,
>  			 * we need one more tile.
> @@ -2950,36 +3007,13 @@ intel_fill_fb_info(struct drm_i915_private
> *dev_priv,
>  			if (x !=3D 0)
>  				size++;
>  =

> -			/* rotate the x/y offsets to match the GTT view
> */
> -			drm_rect_init(&r, x, y, width, height);
> -			drm_rect_rotate(&r,
> -					rot_info->plane[i].width *
> tile_width,
> -					rot_info->plane[i].height *
> tile_height,
> -					DRM_MODE_ROTATE_270);
> -			x =3D r.x1;
> -			y =3D r.y1;
> -
> -			/* rotate the tile dimensions to match the GTT
> view */
> -			pitch_tiles =3D intel_fb->rotated[i].pitch /
> tile_height;
> -			swap(tile_width, tile_height);
> -
> -			/*
> -			 * We only keep the x/y offsets, so push all of
> the
> -			 * gtt offset into the x/y offsets.
> -			 */
> -			intel_adjust_tile_offset(&x, &y,
> -						 tile_width,
> tile_height,
> -						 tile_size,
> pitch_tiles,
> -						 gtt_offset_rotated *
> tile_size, 0);
> -
> -			gtt_offset_rotated +=3D rot_info->plane[i].width
> * rot_info->plane[i].height;
> -
> -			/*
> -			 * First pixel of the framebuffer from
> -			 * the start of the rotated gtt mapping.
> -			 */
> -			intel_fb->rotated[i].x =3D x;
> -			intel_fb->rotated[i].y =3D y;
> +			gtt_offset_rotated +=3D
> +				setup_fb_rotation(i, &plane_info,
> +						  gtt_offset_rotated,
> +						  x, y, width, height,
> +						  tile_size,
> +						  tile_width,
> tile_height,
> +						  fb);
>  		} else {
>  			size =3D DIV_ROUND_UP((y + height) * fb-
> >pitches[i] +
>  					    x * cpp, tile_size);
> @@ -3063,6 +3097,7 @@ intel_plane_remap_gtt(struct intel_plane_state
> *plane_state)
>  						      DRM_MODE_ROTATE_0
> , tile_size);
>  		offset /=3D tile_size;
>  =

> +		WARN_ON(i >=3D ARRAY_SIZE(info->plane));
>  		info->plane[i].offset =3D offset;
>  		info->plane[i].stride =3D DIV_ROUND_UP(fb->pitches[i],
>  						     tile_width * cpp);
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
