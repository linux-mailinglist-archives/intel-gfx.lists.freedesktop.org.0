Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4DB112615A
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 12:56:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75BD86E2E0;
	Thu, 19 Dec 2019 11:56:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEA1D6E2E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 11:56:18 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 03:56:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,331,1571727600"; d="scan'208";a="210438733"
Received: from irsmsx110.ger.corp.intel.com ([163.33.3.25])
 by orsmga008.jf.intel.com with ESMTP; 19 Dec 2019 03:56:15 -0800
Received: from irsmsx111.ger.corp.intel.com (10.108.20.4) by
 irsmsx110.ger.corp.intel.com (163.33.3.25) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Dec 2019 11:56:02 +0000
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.130]) by
 irsmsx111.ger.corp.intel.com ([169.254.2.126]) with mapi id 14.03.0439.000;
 Thu, 19 Dec 2019 11:56:02 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 05/15] drm/i915: Add helpers to select
 correct ccs/aux planes
Thread-Index: AQHVtb3Zfgmg3N3Bm0qs7QzGMrDD/6fBWxWA
Date: Thu, 19 Dec 2019 11:56:02 +0000
Message-ID: <b462494831c8fd8f4b147e04234bbb676b949f32.camel@intel.com>
References: <20191218161105.30638-1-imre.deak@intel.com>
 <20191218161105.30638-6-imre.deak@intel.com>
In-Reply-To: <20191218161105.30638-6-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <C6494AC44971A04BB00F1E0209AC094F@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 05/15] drm/i915: Add helpers to select
 correct ccs/aux planes
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
> Using helpers instead of open coding this to select a CCS plane for a
> main plane makes the code cleaner and less error-prone when the
> location
> of CCS plane can be different based on the format (packed vs. YUV
> semiplanar). The same applies to selecting an AUX plane which can be
> a
> UV plane (for an uncompressed YUV semiplanar format), or a CCS plane.
> =

> Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Mika Kahola <mika.kahola@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 63 ++++++++++++++++
> ----
>  1 file changed, 50 insertions(+), 13 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 4b8b44c39724..6bda397ae677 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1933,6 +1933,40 @@ static unsigned int intel_tile_size(const
> struct drm_i915_private *dev_priv)
>  	return IS_GEN(dev_priv, 2) ? 2048 : 4096;
>  }
>  =

> +static bool is_ccs_plane(const struct drm_framebuffer *fb, int
> plane)
> +{
> +	if (!is_ccs_modifier(fb->modifier))
> +		return false;
> +
> +	return plane >=3D fb->format->num_planes / 2;
> +}
> +
> +static bool is_aux_plane(const struct drm_framebuffer *fb, int
> plane)
> +{
> +	if (is_ccs_modifier(fb->modifier))
> +		return is_ccs_plane(fb, plane);
> +
> +	return plane =3D=3D 1;
> +}
> +
> +static int main_to_ccs_plane(const struct drm_framebuffer *fb, int
> main_plane)
> +{
> +	WARN_ON(!is_ccs_modifier(fb->modifier) ||
> +		(main_plane && main_plane >=3D fb->format->num_planes /
> 2));
> +
> +	return fb->format->num_planes / 2 + main_plane;
> +}
> +
> +/* Return either the main plane's CCS or - if not a CCS FB - UV
> plane */
> +static int
> +intel_main_to_aux_plane(const struct drm_framebuffer *fb, int
> main_plane)
> +{
> +	if (is_ccs_modifier(fb->modifier))
> +		return main_to_ccs_plane(fb, main_plane);
> +
> +	return 1;
> +}
> +
>  static unsigned int
>  intel_tile_width_bytes(const struct drm_framebuffer *fb, int
> color_plane)
>  {
> @@ -1948,7 +1982,7 @@ intel_tile_width_bytes(const struct
> drm_framebuffer *fb, int color_plane)
>  		else
>  			return 512;
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
> -		if (color_plane =3D=3D 1)
> +		if (is_ccs_plane(fb, color_plane))
>  			return 128;
>  		/* fall through */
>  	case I915_FORMAT_MOD_Y_TILED:
> @@ -1957,7 +1991,7 @@ intel_tile_width_bytes(const struct
> drm_framebuffer *fb, int color_plane)
>  		else
>  			return 512;
>  	case I915_FORMAT_MOD_Yf_TILED_CCS:
> -		if (color_plane =3D=3D 1)
> +		if (is_ccs_plane(fb, color_plane))
>  			return 128;
>  		/* fall through */
>  	case I915_FORMAT_MOD_Yf_TILED:
> @@ -2074,7 +2108,7 @@ static unsigned int intel_surf_alignment(const
> struct drm_framebuffer *fb,
>  	struct drm_i915_private *dev_priv =3D to_i915(fb->dev);
>  =

>  	/* AUX_DIST needs only 4K alignment */
> -	if (color_plane =3D=3D 1)
> +	if (is_aux_plane(fb, color_plane))
>  		return 4096;
>  =

>  	switch (fb->modifier) {
> @@ -3457,10 +3491,11 @@ static bool
> skl_check_main_ccs_coordinates(struct intel_plane_state *plane_state
>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
>  	int hsub =3D fb->format->hsub;
>  	int vsub =3D fb->format->vsub;
> -	int aux_x =3D plane_state->color_plane[1].x;
> -	int aux_y =3D plane_state->color_plane[1].y;
> -	u32 aux_offset =3D plane_state->color_plane[1].offset;
> -	u32 alignment =3D intel_surf_alignment(fb, 1);
> +	int ccs_plane =3D main_to_ccs_plane(fb, 0);
> +	int aux_x =3D plane_state->color_plane[ccs_plane].x;
> +	int aux_y =3D plane_state->color_plane[ccs_plane].y;
> +	u32 aux_offset =3D plane_state->color_plane[ccs_plane].offset;
> +	u32 alignment =3D intel_surf_alignment(fb, ccs_plane);
>  =

>  	while (aux_offset >=3D main_offset && aux_y <=3D main_y) {
>  		int x, y;
> @@ -3473,7 +3508,7 @@ static bool
> skl_check_main_ccs_coordinates(struct intel_plane_state *plane_state
>  =

>  		x =3D aux_x / hsub;
>  		y =3D aux_y / vsub;
> -		aux_offset =3D intel_plane_adjust_aligned_offset(&x, &y,
> plane_state, 1,
> +		aux_offset =3D intel_plane_adjust_aligned_offset(&x, &y,
> plane_state, ccs_plane,
>  							       aux_offs
> et, aux_offset - alignment);
>  		aux_x =3D x * hsub + aux_x % hsub;
>  		aux_y =3D y * vsub + aux_y % vsub;
> @@ -3482,9 +3517,9 @@ static bool
> skl_check_main_ccs_coordinates(struct intel_plane_state *plane_state
>  	if (aux_x !=3D main_x || aux_y !=3D main_y)
>  		return false;
>  =

> -	plane_state->color_plane[1].offset =3D aux_offset;
> -	plane_state->color_plane[1].x =3D aux_x;
> -	plane_state->color_plane[1].y =3D aux_y;
> +	plane_state->color_plane[ccs_plane].offset =3D aux_offset;
> +	plane_state->color_plane[ccs_plane].x =3D aux_x;
> +	plane_state->color_plane[ccs_plane].y =3D aux_y;
>  =

>  	return true;
>  }
> @@ -3500,7 +3535,8 @@ static int skl_check_main_surface(struct
> intel_plane_state *plane_state)
>  	int h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
>  	int max_width;
>  	int max_height;
> -	u32 alignment, offset, aux_offset =3D plane_state-
> >color_plane[1].offset;
> +	int aux_plane =3D intel_main_to_aux_plane(fb, 0);
> +	u32 alignment, offset, aux_offset =3D plane_state-
> >color_plane[aux_plane].offset;
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 11)
>  		max_width =3D icl_max_plane_width(fb, 0, rotation);
> @@ -3566,7 +3602,8 @@ static int skl_check_main_surface(struct
> intel_plane_state *plane_state)
>  								   offs
> et, offset - alignment);
>  		}
>  =

> -		if (x !=3D plane_state->color_plane[1].x || y !=3D
> plane_state->color_plane[1].y) {
> +		if (x !=3D plane_state->color_plane[aux_plane].x ||
> +		    y !=3D plane_state->color_plane[aux_plane].y) {
>  			DRM_DEBUG_KMS("Unable to find suitable display
> surface offset due to CCS\n");
>  			return -EINVAL;
>  		}
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
