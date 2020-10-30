Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E730D2A058A
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 13:38:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43A7E6E12A;
	Fri, 30 Oct 2020 12:38:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DABAC6E12A
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 12:38:00 +0000 (UTC)
IronPort-SDR: 7z40HCBfHAtQJW9wpM0pAaCgRB9JflJRoCA8bzAmXo/9tWI5H1h9vgdpXOkEqCRwCW6Rzq7s4S
 t1sfyKpeJdaQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9789"; a="232777327"
X-IronPort-AV: E=Sophos;i="5.77,433,1596524400"; d="scan'208";a="232777327"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 05:38:00 -0700
IronPort-SDR: M/k1X6rArqFMgd7brh27Yil2gnfXhG1KaAzE9D1vSTDec3ucFQeZF9DIiooSThn493lCHjKGWr
 FrxKiMuj2wmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,433,1596524400"; d="scan'208";a="351284362"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 30 Oct 2020 05:37:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Oct 2020 14:37:57 +0200
Date: Fri, 30 Oct 2020 14:37:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20201030123757.GG6112@intel.com>
References: <20200924185113.30849-1-ville.syrjala@linux.intel.com>
 <0e874c19-0212-ac38-11d9-268914134832@intel.com>
 <81af199a-c768-e48b-6138-c1a5dfdfda3e@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <81af199a-c768-e48b-6138-c1a5dfdfda3e@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add plane .{min,
 max}_width() and .max_height() vfuncs
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

On Thu, Oct 22, 2020 at 05:17:00PM -0700, Aditya Swarup wrote:
> On 10/16/20 4:40 PM, Aditya Swarup wrote:
> > On 9/24/20 11:51 AM, Ville Syrjala wrote:
> >> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >>
> >> Reduce this maintenance nightmare a bit by converting the plane
> >> min/max width/height stuff into vfuncs.
> >>
> >> Now, if I could just think of a nice way to also use this for
> >> intel_mode_valid_max_plane_size()...
> >>
> >> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > LGTM..
> > Reviewed-by: Aditya Swarup <aditya.swarup@intel.com>
> Hi Ville
> =

> Are you going to push this patch to drm-tip or are you planning to rework=
 this patch?
> This patch simplifies the max/min plane width plane assignment and fixes =
the NV12 aux surface bug
> and is good enough to push.

Didn't you have a related fix you wanted to get in first?

> =

> Regards,
> Aditya Swarup
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_display.c  | 194 +++++-------------
> >>  .../drm/i915/display/intel_display_types.h    |   9 +
> >>  drivers/gpu/drm/i915/display/intel_sprite.c   | 140 +++++++++++++
> >>  3 files changed, 196 insertions(+), 147 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gp=
u/drm/i915/display/intel_display.c
> >> index 5a9d933e425a..a823d406f0ee 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -3696,127 +3696,6 @@ intel_find_initial_plane_obj(struct intel_crtc=
 *intel_crtc,
> >>  		  &to_intel_frontbuffer(fb)->bits);
> >>  }
> >>  =

> >> -static int skl_max_plane_width(const struct drm_framebuffer *fb,
> >> -			       int color_plane,
> >> -			       unsigned int rotation)
> >> -{
> >> -	int cpp =3D fb->format->cpp[color_plane];
> >> -
> >> -	switch (fb->modifier) {
> >> -	case DRM_FORMAT_MOD_LINEAR:
> >> -	case I915_FORMAT_MOD_X_TILED:
> >> -		/*
> >> -		 * Validated limit is 4k, but has 5k should
> >> -		 * work apart from the following features:
> >> -		 * - Ytile (already limited to 4k)
> >> -		 * - FP16 (already limited to 4k)
> >> -		 * - render compression (already limited to 4k)
> >> -		 * - KVMR sprite and cursor (don't care)
> >> -		 * - horizontal panning (TODO verify this)
> >> -		 * - pipe and plane scaling (TODO verify this)
> >> -		 */
> >> -		if (cpp =3D=3D 8)
> >> -			return 4096;
> >> -		else
> >> -			return 5120;
> >> -	case I915_FORMAT_MOD_Y_TILED_CCS:
> >> -	case I915_FORMAT_MOD_Yf_TILED_CCS:
> >> -	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> >> -		/* FIXME AUX plane? */
> >> -	case I915_FORMAT_MOD_Y_TILED:
> >> -	case I915_FORMAT_MOD_Yf_TILED:
> >> -		if (cpp =3D=3D 8)
> >> -			return 2048;
> >> -		else
> >> -			return 4096;
> >> -	default:
> >> -		MISSING_CASE(fb->modifier);
> >> -		return 2048;
> >> -	}
> >> -}
> >> -
> >> -static int glk_max_plane_width(const struct drm_framebuffer *fb,
> >> -			       int color_plane,
> >> -			       unsigned int rotation)
> >> -{
> >> -	int cpp =3D fb->format->cpp[color_plane];
> >> -
> >> -	switch (fb->modifier) {
> >> -	case DRM_FORMAT_MOD_LINEAR:
> >> -	case I915_FORMAT_MOD_X_TILED:
> >> -		if (cpp =3D=3D 8)
> >> -			return 4096;
> >> -		else
> >> -			return 5120;
> >> -	case I915_FORMAT_MOD_Y_TILED_CCS:
> >> -	case I915_FORMAT_MOD_Yf_TILED_CCS:
> >> -		/* FIXME AUX plane? */
> >> -	case I915_FORMAT_MOD_Y_TILED:
> >> -	case I915_FORMAT_MOD_Yf_TILED:
> >> -		if (cpp =3D=3D 8)
> >> -			return 2048;
> >> -		else
> >> -			return 5120;
> >> -	default:
> >> -		MISSING_CASE(fb->modifier);
> >> -		return 2048;
> >> -	}
> >> -}
> >> -
> >> -static int icl_min_plane_width(const struct drm_framebuffer *fb)
> >> -{
> >> -	/* Wa_14011264657, Wa_14011050563: gen11+ */
> >> -	switch (fb->format->format) {
> >> -	case DRM_FORMAT_C8:
> >> -		return 18;
> >> -	case DRM_FORMAT_RGB565:
> >> -		return 10;
> >> -	case DRM_FORMAT_XRGB8888:
> >> -	case DRM_FORMAT_XBGR8888:
> >> -	case DRM_FORMAT_ARGB8888:
> >> -	case DRM_FORMAT_ABGR8888:
> >> -	case DRM_FORMAT_XRGB2101010:
> >> -	case DRM_FORMAT_XBGR2101010:
> >> -	case DRM_FORMAT_ARGB2101010:
> >> -	case DRM_FORMAT_ABGR2101010:
> >> -	case DRM_FORMAT_XVYU2101010:
> >> -	case DRM_FORMAT_Y212:
> >> -	case DRM_FORMAT_Y216:
> >> -		return 6;
> >> -	case DRM_FORMAT_NV12:
> >> -		return 20;
> >> -	case DRM_FORMAT_P010:
> >> -	case DRM_FORMAT_P012:
> >> -	case DRM_FORMAT_P016:
> >> -		return 12;
> >> -	case DRM_FORMAT_XRGB16161616F:
> >> -	case DRM_FORMAT_XBGR16161616F:
> >> -	case DRM_FORMAT_ARGB16161616F:
> >> -	case DRM_FORMAT_ABGR16161616F:
> >> -	case DRM_FORMAT_XVYU12_16161616:
> >> -	case DRM_FORMAT_XVYU16161616:
> >> -		return 4;
> >> -	default:
> >> -		return 1;
> >> -	}
> >> -}
> >> -
> >> -static int icl_max_plane_width(const struct drm_framebuffer *fb,
> >> -			       int color_plane,
> >> -			       unsigned int rotation)
> >> -{
> >> -	return 5120;
> >> -}
> >> -
> >> -static int skl_max_plane_height(void)
> >> -{
> >> -	return 4096;
> >> -}
> >> -
> >> -static int icl_max_plane_height(void)
> >> -{
> >> -	return 4320;
> >> -}
> >>  =

> >>  static bool
> >>  skl_check_main_ccs_coordinates(struct intel_plane_state *plane_state,
> >> @@ -3874,35 +3753,55 @@ intel_plane_fence_y_offset(const struct intel_=
plane_state *plane_state)
> >>  	return y;
> >>  }
> >>  =

> >> +static int intel_plane_min_width(struct intel_plane *plane,
> >> +				 const struct drm_framebuffer *fb,
> >> +				 int color_plane,
> >> +				 unsigned int rotation)
> >> +{
> >> +	if (plane->min_width)
> >> +		return plane->min_width(fb, color_plane, rotation);
> >> +	else
> >> +		return 1;
> >> +}
> >> +
> >> +static int intel_plane_max_width(struct intel_plane *plane,
> >> +				 const struct drm_framebuffer *fb,
> >> +				 int color_plane,
> >> +				 unsigned int rotation)
> >> +{
> >> +	if (plane->max_width)
> >> +		return plane->max_width(fb, color_plane, rotation);
> >> +	else
> >> +		return INT_MAX;
> >> +}
> >> +
> >> +static int intel_plane_max_height(struct intel_plane *plane,
> >> +				  const struct drm_framebuffer *fb,
> >> +				  int color_plane,
> >> +				  unsigned int rotation)
> >> +{
> >> +	if (plane->max_height)
> >> +		return plane->max_height(fb, color_plane, rotation);
> >> +	else
> >> +		return INT_MAX;
> >> +}
> >> +
> >>  static int skl_check_main_surface(struct intel_plane_state *plane_sta=
te)
> >>  {
> >> -	struct drm_i915_private *dev_priv =3D to_i915(plane_state->uapi.plan=
e->dev);
> >> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane=
);
> >> +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> >>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> >>  	unsigned int rotation =3D plane_state->hw.rotation;
> >>  	int x =3D plane_state->uapi.src.x1 >> 16;
> >>  	int y =3D plane_state->uapi.src.y1 >> 16;
> >>  	int w =3D drm_rect_width(&plane_state->uapi.src) >> 16;
> >>  	int h =3D drm_rect_height(&plane_state->uapi.src) >> 16;
> >> -	int max_width, min_width, max_height;
> >> -	u32 alignment, offset;
> >> +	int min_width =3D intel_plane_min_width(plane, fb, 0, rotation);
> >> +	int max_width =3D intel_plane_max_width(plane, fb, 0, rotation);
> >> +	int max_height =3D intel_plane_max_height(plane, fb, 0, rotation);
> >>  	int aux_plane =3D intel_main_to_aux_plane(fb, 0);
> >>  	u32 aux_offset =3D plane_state->color_plane[aux_plane].offset;
> >> -
> >> -	if (INTEL_GEN(dev_priv) >=3D 11) {
> >> -		max_width =3D icl_max_plane_width(fb, 0, rotation);
> >> -		min_width =3D icl_min_plane_width(fb);
> >> -	} else if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)) {
> >> -		max_width =3D glk_max_plane_width(fb, 0, rotation);
> >> -		min_width =3D 1;
> >> -	} else {
> >> -		max_width =3D skl_max_plane_width(fb, 0, rotation);
> >> -		min_width =3D 1;
> >> -	}
> >> -
> >> -	if (INTEL_GEN(dev_priv) >=3D 11)
> >> -		max_height =3D icl_max_plane_height();
> >> -	else
> >> -		max_height =3D skl_max_plane_height();
> >> +	u32 alignment, offset;
> >>  =

> >>  	if (w > max_width || w < min_width || h > max_height) {
> >>  		drm_dbg_kms(&dev_priv->drm,
> >> @@ -3985,22 +3884,19 @@ static int skl_check_main_surface(struct intel=
_plane_state *plane_state)
> >>  =

> >>  static int skl_check_nv12_aux_surface(struct intel_plane_state *plane=
_state)
> >>  {
> >> -	struct drm_i915_private *i915 =3D to_i915(plane_state->uapi.plane->d=
ev);
> >> +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane=
);
> >> +	struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
> >>  	const struct drm_framebuffer *fb =3D plane_state->hw.fb;
> >>  	unsigned int rotation =3D plane_state->hw.rotation;
> >>  	int uv_plane =3D 1;
> >> -	int max_width =3D skl_max_plane_width(fb, uv_plane, rotation);
> >> -	int max_height =3D 4096;
> >> +	int max_width =3D intel_plane_max_width(plane, fb, uv_plane, rotatio=
n);
> >> +	int max_height =3D intel_plane_max_height(plane, fb, uv_plane, rotat=
ion);
> >>  	int x =3D plane_state->uapi.src.x1 >> 17;
> >>  	int y =3D plane_state->uapi.src.y1 >> 17;
> >>  	int w =3D drm_rect_width(&plane_state->uapi.src) >> 17;
> >>  	int h =3D drm_rect_height(&plane_state->uapi.src) >> 17;
> >>  	u32 offset;
> >>  =

> >> -	intel_add_fb_offsets(&x, &y, plane_state, uv_plane);
> >> -	offset =3D intel_plane_compute_aligned_offset(&x, &y,
> >> -						    plane_state, uv_plane);
> >> -
> >>  	/* FIXME not quite sure how/if these apply to the chroma plane */
> >>  	if (w > max_width || h > max_height) {
> >>  		drm_dbg_kms(&i915->drm,
> >> @@ -4009,6 +3905,10 @@ static int skl_check_nv12_aux_surface(struct in=
tel_plane_state *plane_state)
> >>  		return -EINVAL;
> >>  	}
> >>  =

> >> +	intel_add_fb_offsets(&x, &y, plane_state, uv_plane);
> >> +	offset =3D intel_plane_compute_aligned_offset(&x, &y,
> >> +						    plane_state, uv_plane);
> >> +
> >>  	if (is_ccs_modifier(fb->modifier)) {
> >>  		int ccs_plane =3D main_to_ccs_plane(fb, uv_plane);
> >>  		int aux_offset =3D plane_state->color_plane[ccs_plane].offset;
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/driv=
ers/gpu/drm/i915/display/intel_display_types.h
> >> index 3d4bf9b6a0a2..a16120508318 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> >> @@ -1170,6 +1170,15 @@ struct intel_plane {
> >>  	 * the intel_plane_state structure and accessed via plane_state.
> >>  	 */
> >>  =

> >> +	int (*min_width)(const struct drm_framebuffer *fb,
> >> +			 int color_plane,
> >> +			 unsigned int rotation);
> >> +	int (*max_width)(const struct drm_framebuffer *fb,
> >> +			 int color_plane,
> >> +			 unsigned int rotation);
> >> +	int (*max_height)(const struct drm_framebuffer *fb,
> >> +			  int color_plane,
> >> +			  unsigned int rotation);
> >>  	unsigned int (*max_stride)(struct intel_plane *plane,
> >>  				   u32 pixel_format, u64 modifier,
> >>  				   unsigned int rotation);
> >> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu=
/drm/i915/display/intel_sprite.c
> >> index 63040cb0d4e1..d682ab1c0f70 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> >> @@ -393,6 +393,134 @@ static int skl_plane_min_cdclk(const struct inte=
l_crtc_state *crtc_state,
> >>  	return DIV_ROUND_UP(pixel_rate * num, den);
> >>  }
> >>  =

> >> +static int skl_plane_max_width(const struct drm_framebuffer *fb,
> >> +			       int color_plane,
> >> +			       unsigned int rotation)
> >> +{
> >> +	int cpp =3D fb->format->cpp[color_plane];
> >> +
> >> +	switch (fb->modifier) {
> >> +	case DRM_FORMAT_MOD_LINEAR:
> >> +	case I915_FORMAT_MOD_X_TILED:
> >> +		/*
> >> +		 * Validated limit is 4k, but has 5k should
> >> +		 * work apart from the following features:
> >> +		 * - Ytile (already limited to 4k)
> >> +		 * - FP16 (already limited to 4k)
> >> +		 * - render compression (already limited to 4k)
> >> +		 * - KVMR sprite and cursor (don't care)
> >> +		 * - horizontal panning (TODO verify this)
> >> +		 * - pipe and plane scaling (TODO verify this)
> >> +		 */
> >> +		if (cpp =3D=3D 8)
> >> +			return 4096;
> >> +		else
> >> +			return 5120;
> >> +	case I915_FORMAT_MOD_Y_TILED_CCS:
> >> +	case I915_FORMAT_MOD_Yf_TILED_CCS:
> >> +	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
> >> +		/* FIXME AUX plane? */
> >> +	case I915_FORMAT_MOD_Y_TILED:
> >> +	case I915_FORMAT_MOD_Yf_TILED:
> >> +		if (cpp =3D=3D 8)
> >> +			return 2048;
> >> +		else
> >> +			return 4096;
> >> +	default:
> >> +		MISSING_CASE(fb->modifier);
> >> +		return 2048;
> >> +	}
> >> +}
> >> +
> >> +static int glk_plane_max_width(const struct drm_framebuffer *fb,
> >> +			       int color_plane,
> >> +			       unsigned int rotation)
> >> +{
> >> +	int cpp =3D fb->format->cpp[color_plane];
> >> +
> >> +	switch (fb->modifier) {
> >> +	case DRM_FORMAT_MOD_LINEAR:
> >> +	case I915_FORMAT_MOD_X_TILED:
> >> +		if (cpp =3D=3D 8)
> >> +			return 4096;
> >> +		else
> >> +			return 5120;
> >> +	case I915_FORMAT_MOD_Y_TILED_CCS:
> >> +	case I915_FORMAT_MOD_Yf_TILED_CCS:
> >> +		/* FIXME AUX plane? */
> >> +	case I915_FORMAT_MOD_Y_TILED:
> >> +	case I915_FORMAT_MOD_Yf_TILED:
> >> +		if (cpp =3D=3D 8)
> >> +			return 2048;
> >> +		else
> >> +			return 5120;
> >> +	default:
> >> +		MISSING_CASE(fb->modifier);
> >> +		return 2048;
> >> +	}
> >> +}
> >> +
> >> +static int icl_plane_min_width(const struct drm_framebuffer *fb,
> >> +			       int color_plane,
> >> +			       unsigned int rotation)
> >> +{
> >> +	/* Wa_14011264657, Wa_14011050563: gen11+ */
> >> +	switch (fb->format->format) {
> >> +	case DRM_FORMAT_C8:
> >> +		return 18;
> >> +	case DRM_FORMAT_RGB565:
> >> +		return 10;
> >> +	case DRM_FORMAT_XRGB8888:
> >> +	case DRM_FORMAT_XBGR8888:
> >> +	case DRM_FORMAT_ARGB8888:
> >> +	case DRM_FORMAT_ABGR8888:
> >> +	case DRM_FORMAT_XRGB2101010:
> >> +	case DRM_FORMAT_XBGR2101010:
> >> +	case DRM_FORMAT_ARGB2101010:
> >> +	case DRM_FORMAT_ABGR2101010:
> >> +	case DRM_FORMAT_XVYU2101010:
> >> +	case DRM_FORMAT_Y212:
> >> +	case DRM_FORMAT_Y216:
> >> +		return 6;
> >> +	case DRM_FORMAT_NV12:
> >> +		return 20;
> >> +	case DRM_FORMAT_P010:
> >> +	case DRM_FORMAT_P012:
> >> +	case DRM_FORMAT_P016:
> >> +		return 12;
> >> +	case DRM_FORMAT_XRGB16161616F:
> >> +	case DRM_FORMAT_XBGR16161616F:
> >> +	case DRM_FORMAT_ARGB16161616F:
> >> +	case DRM_FORMAT_ABGR16161616F:
> >> +	case DRM_FORMAT_XVYU12_16161616:
> >> +	case DRM_FORMAT_XVYU16161616:
> >> +		return 4;
> >> +	default:
> >> +		return 1;
> >> +	}
> >> +}
> >> +
> >> +static int icl_plane_max_width(const struct drm_framebuffer *fb,
> >> +			       int color_plane,
> >> +			       unsigned int rotation)
> >> +{
> >> +	return 5120;
> >> +}
> >> +
> >> +static int skl_plane_max_height(const struct drm_framebuffer *fb,
> >> +				int color_plane,
> >> +				unsigned int rotation)
> >> +{
> >> +	return 4096;
> >> +}
> >> +
> >> +static int icl_plane_max_height(const struct drm_framebuffer *fb,
> >> +				int color_plane,
> >> +				unsigned int rotation)
> >> +{
> >> +	return 4320;
> >> +}
> >> +
> >>  static unsigned int
> >>  skl_plane_max_stride(struct intel_plane *plane,
> >>  		     u32 pixel_format, u64 modifier,
> >> @@ -3083,6 +3211,18 @@ skl_universal_plane_create(struct drm_i915_priv=
ate *dev_priv,
> >>  		fbc->possible_framebuffer_bits |=3D plane->frontbuffer_bit;
> >>  	}
> >>  =

> >> +	if (INTEL_GEN(dev_priv) >=3D 11) {
> >> +		plane->min_width =3D icl_plane_min_width;
> >> +		plane->max_width =3D icl_plane_max_width;
> >> +		plane->max_height =3D icl_plane_max_height;
> >> +	} else if (INTEL_GEN(dev_priv) >=3D 10 || IS_GEMINILAKE(dev_priv)) {
> >> +		plane->max_width =3D glk_plane_max_width;
> >> +		plane->max_height =3D skl_plane_max_height;
> >> +	} else {
> >> +		plane->max_width =3D skl_plane_max_width;
> >> +		plane->max_height =3D skl_plane_max_height;
> >> +	}
> >> +
> >>  	plane->max_stride =3D skl_plane_max_stride;
> >>  	plane->update_plane =3D skl_update_plane;
> >>  	plane->disable_plane =3D skl_disable_plane;
> >>
> > =

> > _______________________________________________
> > Intel-gfx mailing list
> > Intel-gfx@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
