Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5EC212E714
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jan 2020 15:12:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2572B6E0FB;
	Thu,  2 Jan 2020 14:12:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8E526E0FB
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jan 2020 14:12:33 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Jan 2020 06:12:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,387,1571727600"; d="scan'208";a="421146212"
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by fmsmga006.fm.intel.com with ESMTP; 02 Jan 2020 06:12:32 -0800
Received: from irsmsx102.ger.corp.intel.com ([169.254.2.130]) by
 IRSMSX151.ger.corp.intel.com ([169.254.4.139]) with mapi id 14.03.0439.000;
 Thu, 2 Jan 2020 14:12:31 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH 2/7] drm/i915/tgl: Make sure a semiplanar
 UV plane is tile row size aligned
Thread-Index: AQHVwDN00dN7LOPQI0+5erUJSo17QqfXbPCA
Date: Thu, 2 Jan 2020 14:12:31 +0000
Message-ID: <6d0a3a89d423fc5c3154b6f32d8cbc6043c07f21.camel@intel.com>
References: <20191231233756.18753-1-imre.deak@intel.com>
 <20191231233756.18753-3-imre.deak@intel.com>
In-Reply-To: <20191231233756.18753-3-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.159]
Content-ID: <14FECF68BC87C042B5098FA79D14BCB2@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/tgl: Make sure a semiplanar UV
 plane is tile row size aligned
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 2020-01-01 at 01:37 +0200, Imre Deak wrote:
> Currently the GGTT offset of a UV plane in a semiplanar YUV FB is
> tile
> size (4kB) aligned. I noticed, that enforcing only this alignment
> leads
> oddly to random memory corruptions on TGL while scanning out Y-tiled
> FBs. This issue can be easily reproduced with a UV plane offset that
> is
> not aligned to the plane's tile row size.
> =

> Some experiments showed the correct alignment to be tile row size
> indeed. This also makes sense, since the de-tiling fence created for
> the
> object - with its own stride and so "left" and "right" edge - applies
> to
> all the planes in the FB, so each tile row of all planes should be
> tile
> row aligned.
> =

> In fact BSpec requires this alignment since SKL. On SKL we may
> enforce
> this due to the AUX plane x,y coords check, but on ICL and TGL we
> don't.
> For now enforce this only on TGL; I can follow up with any necessary
> change for ICL after more tests.
> =

> BSpec requires a stricter alignment for linear UV planes too (kind of
> a
> tile row alignment), but it's unclear whether that's really needed
> (couldn't be explained with the de-tiling fence as above) and
> enforcing
> that could break existing user space; so avoid that too for now until
> more tests.
> =

> v2:
> - Clarify the commit log wrt. the address space the alignment applies
> to.
>   (Chris)
> =

> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Acked-by: Chris Wilson <chris@chris-wilson.co.uk>

Reviewed-by: Mika Kahola <mika.kahola@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 36
> ++++++++++++++++++--
>  1 file changed, 33 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 6e4152770c15..bbc9cf288067 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1995,6 +1995,13 @@ intel_format_info_is_yuv_semiplanar(const
> struct drm_format_info *info,
>  	       info->num_planes =3D=3D (is_ccs_modifier(modifier) ? 4 : 2);
>  }
>  =

> +static bool is_semiplanar_uv_plane(const struct drm_framebuffer *fb,
> +				   int color_plane)
> +{
> +	return intel_format_info_is_yuv_semiplanar(fb->format, fb-
> >modifier) &&
> +	       color_plane =3D=3D 1;
> +}
> +
>  static unsigned int
>  intel_tile_width_bytes(const struct drm_framebuffer *fb, int
> color_plane)
>  {
> @@ -2069,6 +2076,16 @@ static void intel_tile_dims(const struct
> drm_framebuffer *fb, int color_plane,
>  	*tile_height =3D intel_tile_height(fb, color_plane);
>  }
>  =

> +static unsigned int intel_tile_row_size(const struct drm_framebuffer
> *fb,
> +					int color_plane)
> +{
> +	unsigned int tile_width, tile_height;
> +
> +	intel_tile_dims(fb, color_plane, &tile_width, &tile_height);
> +
> +	return fb->pitches[color_plane] * tile_height;
> +}
> +
>  unsigned int
>  intel_fb_align_height(const struct drm_framebuffer *fb,
>  		      int color_plane, unsigned int height)
> @@ -2143,7 +2160,8 @@ static unsigned int intel_surf_alignment(const
> struct drm_framebuffer *fb,
>  	struct drm_i915_private *dev_priv =3D to_i915(fb->dev);
>  =

>  	/* AUX_DIST needs only 4K alignment */
> -	if (is_aux_plane(fb, color_plane))
> +	if ((INTEL_GEN(dev_priv) < 12 && is_aux_plane(fb, color_plane))
> ||
> +	    is_ccs_plane(fb, color_plane))
>  		return 4096;
>  =

>  	switch (fb->modifier) {
> @@ -2158,6 +2176,10 @@ static unsigned int intel_surf_alignment(const
> struct drm_framebuffer *fb,
>  	case I915_FORMAT_MOD_Y_TILED_CCS:
>  	case I915_FORMAT_MOD_Yf_TILED_CCS:
>  	case I915_FORMAT_MOD_Y_TILED:
> +		if (INTEL_GEN(dev_priv) >=3D 12 &&
> +		    is_semiplanar_uv_plane(fb, color_plane))
> +			return intel_tile_row_size(fb, color_plane);
> +		/* Fall-through */
>  	case I915_FORMAT_MOD_Yf_TILED:
>  		return 1 * 1024 * 1024;
>  	default:
> @@ -2505,9 +2527,17 @@ static int intel_fb_offset_to_xy(int *x, int
> *y,
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(fb->dev);
>  	unsigned int height;
> +	u32 alignment;
> +
> +	if (INTEL_GEN(dev_priv) >=3D 12 &&
> +	    is_semiplanar_uv_plane(fb, color_plane))
> +		alignment =3D intel_tile_row_size(fb, color_plane);
> +	else if (fb->modifier !=3D DRM_FORMAT_MOD_LINEAR)
> +		alignment =3D intel_tile_size(dev_priv);
> +	else
> +		alignment =3D 0;
>  =

> -	if (fb->modifier !=3D DRM_FORMAT_MOD_LINEAR &&
> -	    fb->offsets[color_plane] % intel_tile_size(dev_priv)) {
> +	if (alignment !=3D 0 && fb->offsets[color_plane] % alignment) {
>  		DRM_DEBUG_KMS("Misaligned offset 0x%08x for color plane
> %d\n",
>  			      fb->offsets[color_plane], color_plane);
>  		return -EINVAL;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
