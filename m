Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DDF33796C
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Mar 2021 17:32:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4FD36E03C;
	Thu, 11 Mar 2021 16:32:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C963A6E03C
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Mar 2021 16:32:18 +0000 (UTC)
IronPort-SDR: H3oMtX9vcs/B1hUYimsGNSvZ1/SomaVRE3P7Rgyda8oXAZj8K7xP5K3fx2I3OINy8ukcMqs1+V
 R5ibi3PhMSEw==
X-IronPort-AV: E=McAfee;i="6000,8403,9920"; a="167968898"
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="167968898"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2021 08:32:18 -0800
IronPort-SDR: K/9UgjDUW3EcdyLkjGVwWXbMvMOqHvWJjQkZxOzV5QBB890dAjfIgwITIo8y60xrRr5opyZco8
 CJqslmz8afDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,241,1610438400"; d="scan'208";a="387061396"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga002.jf.intel.com with SMTP; 11 Mar 2021 08:32:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 Mar 2021 18:32:14 +0200
Date: Thu, 11 Mar 2021 18:32:14 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <YEpGDj7E4KBbPRiO@intel.com>
References: <20210310221736.2963264-1-imre.deak@intel.com>
 <20210310221736.2963264-15-imre.deak@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210310221736.2963264-15-imre.deak@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 14/23] drm/i915/intel_fb: Factor out
 convert_plane_offset_to_xy()
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

On Thu, Mar 11, 2021 at 12:17:27AM +0200, Imre Deak wrote:
> Factor out to a new function the logic to convert the FB plane offset to
> x/y and check the validity of x/y, with the goal to make
> intel_fill_fb_info() more readable.
> =

> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 70 +++++++++++++++----------
>  1 file changed, 42 insertions(+), 28 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i9=
15/display/intel_fb.c
> index b96849ec32df..806341c229f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -400,10 +400,10 @@ static int intel_fb_offset_to_xy(int *x, int *y,
>  	return 0;
>  }
>  =

> -static int intel_fb_check_ccs_xy(struct drm_framebuffer *fb, int ccs_pla=
ne, int x, int y)
> +static int intel_fb_check_ccs_xy(const struct drm_framebuffer *fb, int c=
cs_plane, int x, int y)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(fb->dev);
> -	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> +	const struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
>  	int main_plane;
>  	int hsub, vsub;
>  	int tile_width, tile_height;
> @@ -520,6 +520,45 @@ static bool intel_plane_needs_remap(const struct int=
el_plane_state *plane_state)
>  	return stride > max_stride;
>  }
>  =

> +static int convert_plane_offset_to_xy(const struct intel_framebuffer *fb=
, int color_plane,
> +				      int plane_width, int *x, int *y)
> +{
> +	const struct drm_framebuffer *drm_fb =3D &fb->base;

Not a fan of these aliasing pointers. I know that the fb =

stuff is a bit of a mess when it comes to the drm_ vs. intel_
usage.

We've mostly cleaned up that stuff for plane/crtc/etc. by just
avoiding the aliasing pointers and just using foo->base where
appropriate. Not sure how that sort of approach would look in
the end of fbs?

> +	struct drm_i915_gem_object *obj =3D intel_fb_obj(drm_fb);
> +	int ret;
> +
> +	ret =3D intel_fb_offset_to_xy(x, y, drm_fb, color_plane);
> +	if (ret) {
> +		drm_dbg_kms(drm_fb->dev,
> +			    "bad fb plane %d offset: 0x%x\n",
> +			    color_plane, drm_fb->offsets[color_plane]);
> +		return ret;
> +	}
> +
> +	ret =3D intel_fb_check_ccs_xy(drm_fb, color_plane, *x, *y);
> +	if (ret)
> +		return ret;
> +
> +	/*
> +	 * The fence (if used) is aligned to the start of the object
> +	 * so having the framebuffer wrap around across the edge of the
> +	 * fenced region doesn't really work. We have no API to configure
> +	 * the fence start offset within the object (nor could we probably
> +	 * on gen2/3). So it's just easier if we just require that the
> +	 * fb layout agrees with the fence layout. We already check that the
> +	 * fb stride matches the fence stride elsewhere.
> +	 */
> +	if (color_plane =3D=3D 0 && i915_gem_object_is_tiled(obj) &&
> +	    (*x + plane_width) * drm_fb->format->cpp[color_plane] > drm_fb->pit=
ches[color_plane]) {
> +		drm_dbg_kms(drm_fb->dev,
> +			    "bad fb plane %d offset: 0x%x\n",
> +			    color_plane, drm_fb->offsets[color_plane]);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  /*
>   * Setup the rotated view for an FB plane and return the size the GTT ma=
pping
>   * requires for this view.
> @@ -611,35 +650,10 @@ int intel_fill_fb_info(struct drm_i915_private *i91=
5, struct drm_framebuffer *fb
>  		cpp =3D fb->format->cpp[i];
>  		intel_fb_plane_dims(&width, &height, fb, i);
>  =

> -		ret =3D intel_fb_offset_to_xy(&x, &y, fb, i);
> -		if (ret) {
> -			drm_dbg_kms(&i915->drm,
> -				    "bad fb plane %d offset: 0x%x\n",
> -				    i, fb->offsets[i]);
> -			return ret;
> -		}
> -
> -		ret =3D intel_fb_check_ccs_xy(fb, i, x, y);
> +		ret =3D convert_plane_offset_to_xy(intel_fb, i, width, &x, &y);
>  		if (ret)
>  			return ret;
>  =

> -		/*
> -		 * The fence (if used) is aligned to the start of the object
> -		 * so having the framebuffer wrap around across the edge of the
> -		 * fenced region doesn't really work. We have no API to configure
> -		 * the fence start offset within the object (nor could we probably
> -		 * on gen2/3). So it's just easier if we just require that the
> -		 * fb layout agrees with the fence layout. We already check that the
> -		 * fb stride matches the fence stride elsewhere.
> -		 */
> -		if (i =3D=3D 0 && i915_gem_object_is_tiled(obj) &&
> -		    (x + width) * cpp > fb->pitches[i]) {
> -			drm_dbg_kms(&i915->drm,
> -				    "bad fb plane %d offset: 0x%x\n",
> -				     i, fb->offsets[i]);
> -			return -EINVAL;
> -		}
> -
>  		/*
>  		 * First pixel of the framebuffer from
>  		 * the start of the normal gtt mapping.
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
