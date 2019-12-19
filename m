Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC11F12608B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 12:10:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBB7C6EB4E;
	Thu, 19 Dec 2019 11:10:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1EC956EB48
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 11:10:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 03:10:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,331,1571727600"; d="scan'208";a="222266754"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by fmsmga001.fm.intel.com with ESMTP; 19 Dec 2019 03:10:53 -0800
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.130]) by
 IRSMSX151.ger.corp.intel.com ([169.254.4.139]) with mapi id 14.03.0439.000;
 Thu, 19 Dec 2019 11:10:52 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 04/15] drm/i915: Extract framebufer CCS
 offset checks into a function
Thread-Index: AQHVtb4d4zdUmqLukEKL1goQ/yrnBKfBTnaA
Date: Thu, 19 Dec 2019 11:10:52 +0000
Message-ID: <181d0db3354ecc5fbeb7b2124c04526930c23fb5.camel@intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
 <20191218161105.30638-5-imre.deak@intel.com>
In-Reply-To: <20191218161105.30638-5-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <E037D690B28CEC4BAADE5075A7DD2C9F@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 04/15] drm/i915: Extract framebufer CCS
 offset checks into a function
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

On Wed, 2019-12-18 at 18:10 +0200, Imre Deak wrote:
> From: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> =

> intel_fill_fb_info() has grown quite large and wrapping the offset
> checks
> into a separate function makes the loop a bit easier to follow.
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 70 +++++++++++-------
> --
>  1 file changed, 40 insertions(+), 30 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 9c27cf651e08..4b8b44c39724 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2676,6 +2676,43 @@ static bool intel_plane_needs_remap(const
> struct intel_plane_state *plane_state)
>  	return stride > max_stride;
>  }
>  =

> +static int
> +intel_fb_check_ccs_xy(struct drm_framebuffer *fb, int x, int y)
> +{
> +	struct intel_framebuffer *intel_fb =3D to_intel_framebuffer(fb);
> +	int hsub =3D fb->format->hsub;
> +	int vsub =3D fb->format->vsub;
> +	int tile_width, tile_height;
> +	int ccs_x, ccs_y;
> +	int main_x, main_y;
> +
> +	intel_tile_dims(fb, 1, &tile_width, &tile_height);
> +
> +	tile_width *=3D hsub;
> +	tile_height *=3D vsub;
> +
> +	ccs_x =3D (x * hsub) % tile_width;
> +	ccs_y =3D (y * vsub) % tile_height;
> +	main_x =3D intel_fb->normal[0].x % tile_width;
> +	main_y =3D intel_fb->normal[0].y % tile_height;
> +
> +	/*
> +	 * CCS doesn't have its own x/y offset register, so the intra
> CCS tile
> +	 * x/y offsets must match between CCS and the main surface.
> +	 */
> +	if (main_x !=3D ccs_x || main_y !=3D ccs_y) {
> +		DRM_DEBUG_KMS("Bad CCS x/y (main %d,%d ccs %d,%d) full
> (main %d,%d ccs %d,%d)\n",
> +			      main_x, main_y,
> +			      ccs_x, ccs_y,
> +			      intel_fb->normal[0].x,
> +			      intel_fb->normal[0].y,
> +			      x, y);
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  static int
>  intel_fill_fb_info(struct drm_i915_private *dev_priv,
>  		   struct drm_framebuffer *fb)
> @@ -2706,36 +2743,9 @@ intel_fill_fb_info(struct drm_i915_private
> *dev_priv,
>  			return ret;
>  		}
>  =

> -		if (is_ccs_modifier(fb->modifier) && i =3D=3D 1) {
> -			int hsub =3D fb->format->hsub;
> -			int vsub =3D fb->format->vsub;
> -			int tile_width, tile_height;
> -			int main_x, main_y;
> -			int ccs_x, ccs_y;
> -
> -			intel_tile_dims(fb, i, &tile_width,
> &tile_height);
> -			tile_width *=3D hsub;
> -			tile_height *=3D vsub;
> -
> -			ccs_x =3D (x * hsub) % tile_width;
> -			ccs_y =3D (y * vsub) % tile_height;
> -			main_x =3D intel_fb->normal[0].x % tile_width;
> -			main_y =3D intel_fb->normal[0].y % tile_height;
> -
> -			/*
> -			 * CCS doesn't have its own x/y offset
> register, so the intra CCS tile
> -			 * x/y offsets must match between CCS and the
> main surface.
> -			 */
> -			if (main_x !=3D ccs_x || main_y !=3D ccs_y) {
> -				DRM_DEBUG_KMS("Bad CCS x/y (main %d,%d
> ccs %d,%d) full (main %d,%d ccs %d,%d)\n",
> -					      main_x, main_y,
> -					      ccs_x, ccs_y,
> -					      intel_fb->normal[0].x,
> -					      intel_fb->normal[0].y,
> -					      x, y);
> -				return -EINVAL;
> -			}
> -		}
> +		ret =3D intel_fb_check_ccs_xy(fb, x, y);
We should check the ccs offsets only when we have ccs modifier in
question.  =


+		if (ret)
> +			return ret;
>  =

>  		/*
>  		 * The fence (if used) is aligned to the start of the
> object
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
