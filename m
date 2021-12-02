Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5655C4662EE
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 12:57:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94B806F993;
	Thu,  2 Dec 2021 11:57:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2579D6F993
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 11:57:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="216708804"
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="216708804"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 03:57:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,282,1631602800"; d="scan'208";a="541205675"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 02 Dec 2021 03:57:14 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Dec 2021 13:57:13 +0200
Date: Thu, 2 Dec 2021 13:57:13 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <Yai0mRI/7qfhGJEi@intel.com>
References: <20211201152552.7821-1-ville.syrjala@linux.intel.com>
 <20211201152552.7821-7-ville.syrjala@linux.intel.com>
 <445772b856d08ae9b5bf92d54159894b0d86cadf.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <445772b856d08ae9b5bf92d54159894b0d86cadf.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 06/14] drm/i915: Use REG_BIT() & co. for
 universal plane bits
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 01, 2021 at 05:26:50PM +0000, Souza, Jose wrote:
> On Wed, 2021-12-01 at 17:25 +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Polish the skl+ universal plane register defines by
> > using REG_BIT() & co.
> > 
> > The defines are also currently spread around in some
> > semi-random fashion. Collect them up into one place.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  .../drm/i915/display/skl_universal_plane.c    |  36 ++--
> >  drivers/gpu/drm/i915/gvt/reg.h                |   1 -
> >  drivers/gpu/drm/i915/i915_reg.h               | 197 ++++++++++--------
> >  drivers/gpu/drm/i915/intel_pm.c               |  12 +-
> >  4 files changed, 135 insertions(+), 111 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 984bb35ecf06..79998eb67280 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -1037,11 +1037,12 @@ skl_program_plane_noarm(struct intel_plane *plane,
> >  	if (plane_state->force_black)
> >  		icl_plane_csc_load_black(plane);
> >  
> > -	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id), stride);
> > +	intel_de_write_fw(dev_priv, PLANE_STRIDE(pipe, plane_id),
> > +			  PLANE_STRIDE_(stride));
> >  	intel_de_write_fw(dev_priv, PLANE_POS(pipe, plane_id),
> > -			  (crtc_y << 16) | crtc_x);
> > +			  PLANE_POS_Y(crtc_y) | PLANE_POS_X(crtc_x));
> >  	intel_de_write_fw(dev_priv, PLANE_SIZE(pipe, plane_id),
> > -			  ((src_h - 1) << 16) | (src_w - 1));
> > +			  PLANE_HEIGHT(src_h - 1) | PLANE_WIDTH(src_w - 1));
> >  
> >  	if (intel_fb_is_rc_ccs_cc_modifier(fb->modifier)) {
> >  		intel_de_write_fw(dev_priv, PLANE_CC_VAL(pipe, plane_id, 0),
> > @@ -1100,7 +1101,7 @@ skl_program_plane_arm(struct intel_plane *plane,
> >  			skl_surf_address(plane_state, color_plane);
> >  
> >  		if (DISPLAY_VER(dev_priv) < 12)
> > -			aux_dist |= skl_plane_stride(plane_state, aux_plane);
> > +			aux_dist |= PLANE_AUX_STRIDE(skl_plane_stride(plane_state, aux_plane));
> >  	}
> >  
> >  	spin_lock_irqsave(&dev_priv->uncore.lock, irqflags);
> > @@ -1111,14 +1112,14 @@ skl_program_plane_arm(struct intel_plane *plane,
> >  	intel_de_write_fw(dev_priv, PLANE_KEYMAX(pipe, plane_id), keymax);
> >  
> >  	intel_de_write_fw(dev_priv, PLANE_OFFSET(pipe, plane_id),
> > -			  (y << 16) | x);
> > +			  PLANE_OFFSET_Y(y) | PLANE_OFFSET_X(x));
> >  
> >  	intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id), aux_dist);
> >  
> >  	if (DISPLAY_VER(dev_priv) < 11)
> >  		intel_de_write_fw(dev_priv, PLANE_AUX_OFFSET(pipe, plane_id),
> > -				  (plane_state->view.color_plane[1].y << 16) |
> > -				   plane_state->view.color_plane[1].x);
> > +				  PLANE_OFFSET_Y(plane_state->view.color_plane[1].y) |
> > +				  PLANE_OFFSET_X(plane_state->view.color_plane[1].x));
> >  
> >  	if (DISPLAY_VER(dev_priv) >= 10)
> >  		intel_de_write_fw(dev_priv, PLANE_COLOR_CTL(pipe, plane_id), plane_color_ctl);
> > @@ -2262,16 +2263,17 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
> >  	val = intel_de_read(dev_priv, PLANE_CTL(pipe, plane_id));
> >  
> >  	if (DISPLAY_VER(dev_priv) >= 11)
> > -		pixel_format = val & ICL_PLANE_CTL_FORMAT_MASK;
> > +		pixel_format = val & PLANE_CTL_FORMAT_MASK_ICL;
> 
> Most of our platform bits definition follows <platform or display ver>_<register name>.

s/most/some/

I want it exactly the other way around so that the namespace for
each register is consistent.

> 
> Other than that the idea looks good to me.
> 
> >  	else
> > -		pixel_format = val & PLANE_CTL_FORMAT_MASK;
> > +		pixel_format = val & PLANE_CTL_FORMAT_MASK_SKL;
> >  
> >  	if (DISPLAY_VER(dev_priv) >= 10) {
> > -		alpha = intel_de_read(dev_priv,
> > -				      PLANE_COLOR_CTL(pipe, plane_id));
> > -		alpha &= PLANE_COLOR_ALPHA_MASK;
> > +		u32 color_ctl;
> > +
> > +		color_ctl = intel_de_read(dev_priv, PLANE_COLOR_CTL(pipe, plane_id));
> > +		alpha = REG_FIELD_GET(PLANE_COLOR_ALPHA_MASK, color_ctl);
> >  	} else {
> > -		alpha = val & PLANE_CTL_ALPHA_MASK;
> > +		alpha = REG_FIELD_GET(PLANE_CTL_ALPHA_MASK, val);
> >  	}
> >  
> >  	fourcc = skl_format_to_fourcc(pixel_format,
> > @@ -2335,19 +2337,19 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
> >  	if (drm_rotation_90_or_270(plane_config->rotation))
> >  		goto error;
> >  
> > -	base = intel_de_read(dev_priv, PLANE_SURF(pipe, plane_id)) & 0xfffff000;
> > +	base = intel_de_read(dev_priv, PLANE_SURF(pipe, plane_id)) & PLANE_SURF_ADDR_MASK;
> >  	plane_config->base = base;
> >  
> >  	offset = intel_de_read(dev_priv, PLANE_OFFSET(pipe, plane_id));
> >  
> >  	val = intel_de_read(dev_priv, PLANE_SIZE(pipe, plane_id));
> > -	fb->height = ((val >> 16) & 0xffff) + 1;
> > -	fb->width = ((val >> 0) & 0xffff) + 1;
> > +	fb->height = REG_FIELD_GET(PLANE_HEIGHT_MASK, val) + 1;
> > +	fb->width = REG_FIELD_GET(PLANE_WIDTH_MASK, val) + 1;
> >  
> >  	val = intel_de_read(dev_priv, PLANE_STRIDE(pipe, plane_id));
> >  	stride_mult = skl_plane_stride_mult(fb, 0, DRM_MODE_ROTATE_0);
> >  
> > -	fb->pitches[0] = (val & PLANE_STRIDE_MASK) * stride_mult;
> > +	fb->pitches[0] = REG_FIELD_GET(PLANE_STRIDE__MASK, val) * stride_mult;
> >  
> >  	aligned_height = intel_fb_align_height(fb, 0, fb->height);
> >  
> > diff --git a/drivers/gpu/drm/i915/gvt/reg.h b/drivers/gpu/drm/i915/gvt/reg.h
> > index 244cc7320b54..7d666d34f9ff 100644
> > --- a/drivers/gpu/drm/i915/gvt/reg.h
> > +++ b/drivers/gpu/drm/i915/gvt/reg.h
> > @@ -62,7 +62,6 @@
> >  
> >  #define SKL_FLIP_EVENT(pipe, plane) (PRIMARY_A_FLIP_DONE + (plane) * 3 + (pipe))
> >  
> > -#define PLANE_CTL_ASYNC_FLIP		(1 << 9)
> >  #define REG50080_FLIP_TYPE_MASK	0x3
> >  #define REG50080_FLIP_TYPE_ASYNC	0x1
> >  
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 4b2bc17d0235..9fffa2392bbf 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -7233,84 +7233,99 @@ enum {
> >  #define _PLANE_CTL_1_A				0x70180
> >  #define _PLANE_CTL_2_A				0x70280
> >  #define _PLANE_CTL_3_A				0x70380
> > -#define   PLANE_CTL_ENABLE			(1 << 31)
> > +#define   PLANE_CTL_ENABLE			REG_BIT(31)
> >  #define   PLANE_CTL_ARB_SLOTS_MASK		REG_GENMASK(30, 28) /* icl+ */
> >  #define   PLANE_CTL_ARB_SLOTS(x)		REG_FIELD_PREP(PLANE_CTL_ARB_SLOTS_MASK, (x)) /* icl+ */
> > -#define   PLANE_CTL_PIPE_GAMMA_ENABLE		(1 << 30)   /* Pre-GLK */
> > -#define   PLANE_CTL_YUV_RANGE_CORRECTION_DISABLE	(1 << 28)
> > +#define   PLANE_CTL_PIPE_GAMMA_ENABLE		REG_BIT(30) /* Pre-GLK */
> > +#define   PLANE_CTL_YUV_RANGE_CORRECTION_DISABLE	REG_BIT(28)
> >  /*
> >   * ICL+ uses the same PLANE_CTL_FORMAT bits, but the field definition
> >   * expanded to include bit 23 as well. However, the shift-24 based values
> >   * correctly map to the same formats in ICL, as long as bit 23 is set to 0
> >   */
> > -#define   PLANE_CTL_FORMAT_MASK			(0xf << 24)
> > -#define   PLANE_CTL_FORMAT_YUV422		(0 << 24)
> > -#define   PLANE_CTL_FORMAT_NV12			(1 << 24)
> > -#define   PLANE_CTL_FORMAT_XRGB_2101010		(2 << 24)
> > -#define   PLANE_CTL_FORMAT_P010			(3 << 24)
> > -#define   PLANE_CTL_FORMAT_XRGB_8888		(4 << 24)
> > -#define   PLANE_CTL_FORMAT_P012			(5 << 24)
> > -#define   PLANE_CTL_FORMAT_XRGB_16161616F	(6 << 24)
> > -#define   PLANE_CTL_FORMAT_P016			(7 << 24)
> > -#define   PLANE_CTL_FORMAT_XYUV			(8 << 24)
> > -#define   PLANE_CTL_FORMAT_INDEXED		(12 << 24)
> > -#define   PLANE_CTL_FORMAT_RGB_565		(14 << 24)
> > -#define   ICL_PLANE_CTL_FORMAT_MASK		(0x1f << 23)
> > -#define   PLANE_CTL_PIPE_CSC_ENABLE		(1 << 23) /* Pre-GLK */
> > -#define   PLANE_CTL_FORMAT_Y210                 (1 << 23)
> > -#define   PLANE_CTL_FORMAT_Y212                 (3 << 23)
> > -#define   PLANE_CTL_FORMAT_Y216                 (5 << 23)
> > -#define   PLANE_CTL_FORMAT_Y410                 (7 << 23)
> > -#define   PLANE_CTL_FORMAT_Y412                 (9 << 23)
> > -#define   PLANE_CTL_FORMAT_Y416                 (0xb << 23)
> > -#define   PLANE_CTL_KEY_ENABLE_MASK		(0x3 << 21)
> > -#define   PLANE_CTL_KEY_ENABLE_SOURCE		(1 << 21)
> > -#define   PLANE_CTL_KEY_ENABLE_DESTINATION	(2 << 21)
> > -#define   PLANE_CTL_ORDER_BGRX			(0 << 20)
> > -#define   PLANE_CTL_ORDER_RGBX			(1 << 20)
> > -#define   PLANE_CTL_YUV420_Y_PLANE		(1 << 19)
> > -#define   PLANE_CTL_YUV_TO_RGB_CSC_FORMAT_BT709	(1 << 18)
> > -#define   PLANE_CTL_YUV422_ORDER_MASK		(0x3 << 16)
> > -#define   PLANE_CTL_YUV422_ORDER_YUYV		(0 << 16)
> > -#define   PLANE_CTL_YUV422_ORDER_UYVY		(1 << 16)
> > -#define   PLANE_CTL_YUV422_ORDER_YVYU		(2 << 16)
> > -#define   PLANE_CTL_YUV422_ORDER_VYUY		(3 << 16)
> > -#define   PLANE_CTL_RENDER_DECOMPRESSION_ENABLE	(1 << 15)
> > -#define   PLANE_CTL_TRICKLE_FEED_DISABLE	(1 << 14)
> > -#define   PLANE_CTL_CLEAR_COLOR_DISABLE		(1 << 13) /* TGL+ */
> > -#define   PLANE_CTL_PLANE_GAMMA_DISABLE		(1 << 13) /* Pre-GLK */
> > -#define   PLANE_CTL_TILED_MASK			(0x7 << 10)
> > -#define   PLANE_CTL_TILED_LINEAR		(0 << 10)
> > -#define   PLANE_CTL_TILED_X			(1 << 10)
> > -#define   PLANE_CTL_TILED_Y			(4 << 10)
> > -#define   PLANE_CTL_TILED_YF			(5 << 10)
> > -#define   PLANE_CTL_ASYNC_FLIP			(1 << 9)
> > -#define   PLANE_CTL_FLIP_HORIZONTAL		(1 << 8)
> > -#define   PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE	(1 << 4) /* TGL+ */
> > -#define   PLANE_CTL_ALPHA_MASK			(0x3 << 4) /* Pre-GLK */
> > -#define   PLANE_CTL_ALPHA_DISABLE		(0 << 4)
> > -#define   PLANE_CTL_ALPHA_SW_PREMULTIPLY	(2 << 4)
> > -#define   PLANE_CTL_ALPHA_HW_PREMULTIPLY	(3 << 4)
> > -#define   PLANE_CTL_ROTATE_MASK			0x3
> > -#define   PLANE_CTL_ROTATE_0			0x0
> > -#define   PLANE_CTL_ROTATE_90			0x1
> > -#define   PLANE_CTL_ROTATE_180			0x2
> > -#define   PLANE_CTL_ROTATE_270			0x3
> > +#define   PLANE_CTL_FORMAT_MASK_SKL		REG_GENMASK(27, 24) /* pre-icl */
> > +#define   PLANE_CTL_FORMAT_MASK_ICL		REG_GENMASK(27, 23) /* icl+ */
> > +#define   PLANE_CTL_FORMAT_YUV422		REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_SKL, 0)
> > +#define   PLANE_CTL_FORMAT_NV12			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_SKL, 1)
> > +#define   PLANE_CTL_FORMAT_XRGB_2101010		REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_SKL, 2)
> > +#define   PLANE_CTL_FORMAT_P010			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_SKL, 3)
> > +#define   PLANE_CTL_FORMAT_XRGB_8888		REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_SKL, 4)
> > +#define   PLANE_CTL_FORMAT_P012			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_SKL, 5)
> > +#define   PLANE_CTL_FORMAT_XRGB_16161616F	REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_SKL, 6)
> > +#define   PLANE_CTL_FORMAT_P016			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_SKL, 7)
> > +#define   PLANE_CTL_FORMAT_XYUV			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_SKL, 8)
> > +#define   PLANE_CTL_FORMAT_INDEXED		REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_SKL, 12)
> > +#define   PLANE_CTL_FORMAT_RGB_565		REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_SKL, 14)
> > +#define   PLANE_CTL_FORMAT_Y210			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 1)
> > +#define   PLANE_CTL_FORMAT_Y212			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 3)
> > +#define   PLANE_CTL_FORMAT_Y216			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 5)
> > +#define   PLANE_CTL_FORMAT_Y410			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 7)
> > +#define   PLANE_CTL_FORMAT_Y412			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 9)
> > +#define   PLANE_CTL_FORMAT_Y416			REG_FIELD_PREP(PLANE_CTL_FORMAT_MASK_ICL, 11)
> > +#define   PLANE_CTL_PIPE_CSC_ENABLE		REG_BIT(23) /* Pre-GLK */
> > +#define   PLANE_CTL_KEY_ENABLE_MASK		REG_GENMASK(22, 21)
> > +#define   PLANE_CTL_KEY_ENABLE_SOURCE		REG_FIELD_PREP(PLANE_CTL_KEY_ENABLE_MASK, 1)
> > +#define   PLANE_CTL_KEY_ENABLE_DESTINATION	REG_FIELD_PREP(PLANE_CTL_KEY_ENABLE_MASK, 2)
> > +#define   PLANE_CTL_ORDER_RGBX			REG_BIT(20)
> > +#define   PLANE_CTL_YUV420_Y_PLANE		REG_BIT(19)
> > +#define   PLANE_CTL_YUV_TO_RGB_CSC_FORMAT_BT709	REG_BIT(18)
> > +#define   PLANE_CTL_YUV422_ORDER_MASK		REG_GENMASK(17, 16)
> > +#define   PLANE_CTL_YUV422_ORDER_YUYV		REG_FIELD_PREP(PLANE_CTL_YUV422_ORDER_MASK, 0)
> > +#define   PLANE_CTL_YUV422_ORDER_UYVY		REG_FIELD_PREP(PLANE_CTL_YUV422_ORDER_MASK, 1)
> > +#define   PLANE_CTL_YUV422_ORDER_YVYU		REG_FIELD_PREP(PLANE_CTL_YUV422_ORDER_MASK, 2)
> > +#define   PLANE_CTL_YUV422_ORDER_VYUY		REG_FIELD_PREP(PLANE_CTL_YUV422_ORDER_MASK, 3)
> > +#define   PLANE_CTL_RENDER_DECOMPRESSION_ENABLE	REG_BIT(15)
> > +#define   PLANE_CTL_TRICKLE_FEED_DISABLE	REG_BIT(14)
> > +#define   PLANE_CTL_CLEAR_COLOR_DISABLE		REG_BIT(13) /* TGL+ */
> > +#define   PLANE_CTL_PLANE_GAMMA_DISABLE		REG_BIT(13) /* Pre-GLK */
> > +#define   PLANE_CTL_TILED_MASK			REG_GENMASK(12, 10)
> > +#define   PLANE_CTL_TILED_LINEAR		REG_FIELD_PREP(PLANE_CTL_TILED_MASK, 0)
> > +#define   PLANE_CTL_TILED_X			REG_FIELD_PREP(PLANE_CTL_TILED_MASK, 1)
> > +#define   PLANE_CTL_TILED_Y			REG_FIELD_PREP(PLANE_CTL_TILED_MASK, 4)
> > +#define   PLANE_CTL_TILED_YF			REG_FIELD_PREP(PLANE_CTL_TILED_MASK, 5)
> > +#define   PLANE_CTL_ASYNC_FLIP			REG_BIT(9)
> > +#define   PLANE_CTL_FLIP_HORIZONTAL		REG_BIT(8)
> > +#define   PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE	REG_BIT(4) /* TGL+ */
> > +#define   PLANE_CTL_ALPHA_MASK			REG_GENMASK(5, 4) /* Pre-GLK */
> > +#define   PLANE_CTL_ALPHA_DISABLE		REG_FIELD_PREP(PLANE_CTL_ALPHA_MASK, 0)
> > +#define   PLANE_CTL_ALPHA_SW_PREMULTIPLY	REG_FIELD_PREP(PLANE_CTL_ALPHA_MASK, 2)
> > +#define   PLANE_CTL_ALPHA_HW_PREMULTIPLY	REG_FIELD_PREP(PLANE_CTL_ALPHA_MASK, 3)
> > +#define   PLANE_CTL_ROTATE_MASK			REG_GENMASK(1, 0)
> > +#define   PLANE_CTL_ROTATE_0			REG_FIELD_PREP(PLANE_CTL_ROTATE_MASK, 0)
> > +#define   PLANE_CTL_ROTATE_90			REG_FIELD_PREP(PLANE_CTL_ROTATE_MASK, 1)
> > +#define   PLANE_CTL_ROTATE_180			REG_FIELD_PREP(PLANE_CTL_ROTATE_MASK, 2)
> > +#define   PLANE_CTL_ROTATE_270			REG_FIELD_PREP(PLANE_CTL_ROTATE_MASK, 3)
> >  #define _PLANE_STRIDE_1_A			0x70188
> >  #define _PLANE_STRIDE_2_A			0x70288
> >  #define _PLANE_STRIDE_3_A			0x70388
> > +#define   PLANE_STRIDE__MASK			REG_GENMASK(11, 0)
> > +#define   PLANE_STRIDE_(stride)			REG_FIELD_PREP(PLANE_STRIDE__MASK, (stride))
> >  #define _PLANE_POS_1_A				0x7018c
> >  #define _PLANE_POS_2_A				0x7028c
> >  #define _PLANE_POS_3_A				0x7038c
> > +#define   PLANE_POS_Y_MASK			REG_GENMASK(31, 16)
> > +#define   PLANE_POS_Y(y)			REG_FIELD_PREP(PLANE_POS_Y_MASK, (y))
> > +#define   PLANE_POS_X_MASK			REG_GENMASK(15, 0)
> > +#define   PLANE_POS_X(x)			REG_FIELD_PREP(PLANE_POS_X_MASK, (x))
> >  #define _PLANE_SIZE_1_A				0x70190
> >  #define _PLANE_SIZE_2_A				0x70290
> >  #define _PLANE_SIZE_3_A				0x70390
> > +#define   PLANE_HEIGHT_MASK			REG_GENMASK(31, 16)
> > +#define   PLANE_HEIGHT(h)			REG_FIELD_PREP(PLANE_HEIGHT_MASK, (h))
> > +#define   PLANE_WIDTH_MASK			REG_GENMASK(15, 0)
> > +#define   PLANE_WIDTH(w)			REG_FIELD_PREP(PLANE_WIDTH_MASK, (w))
> >  #define _PLANE_SURF_1_A				0x7019c
> >  #define _PLANE_SURF_2_A				0x7029c
> >  #define _PLANE_SURF_3_A				0x7039c
> > +#define   PLANE_SURF_ADDR_MASK			REG_GENMASK(31, 12)
> > +#define   PLANE_SURF_DECRYPT			REG_BIT(2)
> >  #define _PLANE_OFFSET_1_A			0x701a4
> >  #define _PLANE_OFFSET_2_A			0x702a4
> >  #define _PLANE_OFFSET_3_A			0x703a4
> > +#define   PLANE_OFFSET_Y_MASK			REG_GENMASK(31, 16)
> > +#define   PLANE_OFFSET_Y(y)			REG_FIELD_PREP(PLANE_OFFSET_Y_MASK, (y))
> > +#define   PLANE_OFFSET_X_MASK			REG_GENMASK(15, 0)
> > +#define   PLANE_OFFSET_X(x)			REG_FIELD_PREP(PLANE_OFFSET_X_MASK, (x))
> >  #define _PLANE_KEYVAL_1_A			0x70194
> >  #define _PLANE_KEYVAL_2_A			0x70294
> >  #define _PLANE_KEYMSK_1_A			0x70198
> > @@ -7322,42 +7337,49 @@ enum {
> >  #define _PLANE_CC_VAL_1_A			0x701b4
> >  #define _PLANE_CC_VAL_2_A			0x702b4
> >  #define _PLANE_AUX_DIST_1_A			0x701c0
> > +#define   PLANE_AUX_DISTANCE_MASK		REG_GENMASK(31, 12)
> > +#define   PLANE_AUX_STRIDE_MASK			REG_GENMASK(11, 0)
> > +#define   PLANE_AUX_STRIDE(stride)		REG_FIELD_PREP(PLANE_AUX_STRIDE_MASK, (stride))
> >  #define _PLANE_AUX_DIST_2_A			0x702c0
> >  #define _PLANE_AUX_OFFSET_1_A			0x701c4
> >  #define _PLANE_AUX_OFFSET_2_A			0x702c4
> >  #define _PLANE_CUS_CTL_1_A			0x701c8
> >  #define _PLANE_CUS_CTL_2_A			0x702c8
> > -#define  PLANE_CUS_ENABLE			(1 << 31)
> > -#define  PLANE_CUS_Y_PLANE_4_RKL		(0 << 30)
> > -#define  PLANE_CUS_Y_PLANE_5_RKL		(1 << 30)
> > -#define  PLANE_CUS_Y_PLANE_6_ICL		(0 << 30)
> > -#define  PLANE_CUS_Y_PLANE_7_ICL		(1 << 30)
> > -#define  PLANE_CUS_HPHASE_SIGN_NEGATIVE		(1 << 19)
> > -#define  PLANE_CUS_HPHASE_0			(0 << 16)
> > -#define  PLANE_CUS_HPHASE_0_25			(1 << 16)
> > -#define  PLANE_CUS_HPHASE_0_5			(2 << 16)
> > -#define  PLANE_CUS_VPHASE_SIGN_NEGATIVE		(1 << 15)
> > -#define  PLANE_CUS_VPHASE_0			(0 << 12)
> > -#define  PLANE_CUS_VPHASE_0_25			(1 << 12)
> > -#define  PLANE_CUS_VPHASE_0_5			(2 << 12)
> > +#define   PLANE_CUS_ENABLE			REG_BIT(31)
> > +#define   PLANE_CUS_Y_PLANE_MASK			REG_BIT(30)
> > +#define   PLANE_CUS_Y_PLANE_4_RKL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK, 0)
> > +#define   PLANE_CUS_Y_PLANE_5_RKL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK, 1)
> > +#define   PLANE_CUS_Y_PLANE_6_ICL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK, 0)
> > +#define   PLANE_CUS_Y_PLANE_7_ICL		REG_FIELD_PREP(PLANE_CUS_Y_PLANE_MASK, 1)
> > +#define   PLANE_CUS_HPHASE_SIGN_NEGATIVE		REG_BIT(19)
> > +#define   PLANE_CUS_HPHASE_MASK			REG_GENMASK(17, 16)
> > +#define   PLANE_CUS_HPHASE_0			REG_FIELD_PREP(PLANE_CUS_HPHASE_MASK, 0)
> > +#define   PLANE_CUS_HPHASE_0_25			REG_FIELD_PREP(PLANE_CUS_HPHASE_MASK, 1)
> > +#define   PLANE_CUS_HPHASE_0_5			REG_FIELD_PREP(PLANE_CUS_HPHASE_MASK, 2)
> > +#define   PLANE_CUS_VPHASE_SIGN_NEGATIVE		REG_BIT(15)
> > +#define   PLANE_CUS_VPHASE_MASK			REG_GENMASK(13, 12)
> > +#define   PLANE_CUS_VPHASE_0			REG_FIELD_PREP(PLANE_CUS_VPHASE_MASK, 0)
> > +#define   PLANE_CUS_VPHASE_0_25			REG_FIELD_PREP(PLANE_CUS_VPHASE_MASK, 1)
> > +#define   PLANE_CUS_VPHASE_0_5			REG_FIELD_PREP(PLANE_CUS_VPHASE_MASK, 2)
> >  #define _PLANE_COLOR_CTL_1_A			0x701CC /* GLK+ */
> >  #define _PLANE_COLOR_CTL_2_A			0x702CC /* GLK+ */
> >  #define _PLANE_COLOR_CTL_3_A			0x703CC /* GLK+ */
> > -#define   PLANE_COLOR_PIPE_GAMMA_ENABLE		(1 << 30) /* Pre-ICL */
> > -#define   PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE	(1 << 28)
> > +#define   PLANE_COLOR_PIPE_GAMMA_ENABLE			REG_BIT(30) /* Pre-ICL */
> > +#define   PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE	REG_BIT(28)
> > +#define   PLANE_COLOR_PIPE_CSC_ENABLE			REG_BIT(23) /* Pre-ICL */
> >  #define   PLANE_COLOR_PLANE_CSC_ENABLE			REG_BIT(21) /* ICL+ */
> > -#define   PLANE_COLOR_INPUT_CSC_ENABLE		(1 << 20) /* ICL+ */
> > -#define   PLANE_COLOR_PIPE_CSC_ENABLE		(1 << 23) /* Pre-ICL */
> > -#define   PLANE_COLOR_CSC_MODE_BYPASS			(0 << 17)
> > -#define   PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601		(1 << 17)
> > -#define   PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709		(2 << 17)
> > -#define   PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020	(3 << 17)
> > -#define   PLANE_COLOR_CSC_MODE_RGB709_TO_RGB2020	(4 << 17)
> > -#define   PLANE_COLOR_PLANE_GAMMA_DISABLE	(1 << 13)
> > -#define   PLANE_COLOR_ALPHA_MASK		(0x3 << 4)
> > -#define   PLANE_COLOR_ALPHA_DISABLE		(0 << 4)
> > -#define   PLANE_COLOR_ALPHA_SW_PREMULTIPLY	(2 << 4)
> > -#define   PLANE_COLOR_ALPHA_HW_PREMULTIPLY	(3 << 4)
> > +#define   PLANE_COLOR_INPUT_CSC_ENABLE			REG_BIT(20) /* ICL+ */
> > +#define   PLANE_COLOR_CSC_MODE_MASK			REG_GENMASK(19, 17)
> > +#define   PLANE_COLOR_CSC_MODE_BYPASS			REG_FIELD_PREP(PLANE_COLOR_CSC_MODE_MASK, 0)
> > +#define   PLANE_COLOR_CSC_MODE_YUV601_TO_RGB601		REG_FIELD_PREP(PLANE_COLOR_CSC_MODE_MASK, 1)
> > +#define   PLANE_COLOR_CSC_MODE_YUV709_TO_RGB709		REG_FIELD_PREP(PLANE_COLOR_CSC_MODE_MASK, 2)
> > +#define   PLANE_COLOR_CSC_MODE_YUV2020_TO_RGB2020	REG_FIELD_PREP(PLANE_COLOR_CSC_MODE_MASK, 3)
> > +#define   PLANE_COLOR_CSC_MODE_RGB709_TO_RGB2020	REG_FIELD_PREP(PLANE_COLOR_CSC_MODE_MASK, 4)
> > +#define   PLANE_COLOR_PLANE_GAMMA_DISABLE		REG_BIT(13)
> > +#define   PLANE_COLOR_ALPHA_MASK			REG_GENMASK(5, 4)
> > +#define   PLANE_COLOR_ALPHA_DISABLE			REG_FIELD_PREP(PLANE_COLOR_ALPHA_MASK, 0)
> > +#define   PLANE_COLOR_ALPHA_SW_PREMULTIPLY		REG_FIELD_PREP(PLANE_COLOR_ALPHA_MASK, 2)
> > +#define   PLANE_COLOR_ALPHA_HW_PREMULTIPLY		REG_FIELD_PREP(PLANE_COLOR_ALPHA_MASK, 3)
> >  #define _PLANE_BUF_CFG_1_A			0x7027c
> >  #define _PLANE_BUF_CFG_2_A			0x7037c
> >  #define _PLANE_NV12_BUF_CFG_1_A		0x70278
> > @@ -7440,7 +7462,6 @@ enum {
> >  	_PIPE(pipe, _PLANE_STRIDE_3_A, _PLANE_STRIDE_3_B)
> >  #define PLANE_STRIDE(pipe, plane)	\
> >  	_MMIO_PLANE(plane, _PLANE_STRIDE_1(pipe), _PLANE_STRIDE_2(pipe))
> > -#define PLANE_STRIDE_MASK		REG_GENMASK(11, 0)
> >  
> >  #define _PLANE_POS_1_B				0x7118c
> >  #define _PLANE_POS_2_B				0x7128c
> > @@ -7468,7 +7489,6 @@ enum {
> >  #define _PLANE_SURF_3(pipe)	_PIPE(pipe, _PLANE_SURF_3_A, _PLANE_SURF_3_B)
> >  #define PLANE_SURF(pipe, plane)	\
> >  	_MMIO_PLANE(plane, _PLANE_SURF_1(pipe), _PLANE_SURF_2(pipe))
> > -#define   PLANE_SURF_DECRYPT			REG_BIT(2)
> >  
> >  #define _PLANE_OFFSET_1_B			0x711a4
> >  #define _PLANE_OFFSET_2_B			0x712a4
> > @@ -7500,8 +7520,11 @@ enum {
> >  
> >  #define _PLANE_BUF_CFG_1_B			0x7127c
> >  #define _PLANE_BUF_CFG_2_B			0x7137c
> > -#define  DDB_ENTRY_MASK				0xFFF /* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
> > -#define  DDB_ENTRY_END_SHIFT			16
> > +/* skl+: 10 bits, icl+ 11 bits, adlp+ 12 bits */
> > +#define   PLANE_BUF_END_MASK		REG_GENMASK(27, 16)
> > +#define   PLANE_BUF_END(end)		REG_FIELD_PREP(PLANE_BUF_END_MASK, (end))
> > +#define   PLANE_BUF_START_MASK		REG_GENMASK(11, 0)
> > +#define   PLANE_BUF_START(start)	REG_FIELD_PREP(PLANE_BUF_START_MASK, (start))
> >  #define _PLANE_BUF_CFG_1(pipe)	\
> >  	_PIPE(pipe, _PLANE_BUF_CFG_1_A, _PLANE_BUF_CFG_1_B)
> >  #define _PLANE_BUF_CFG_2(pipe)	\
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index cff0f32bedc9..7f00fd2f62a0 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -4283,11 +4283,10 @@ skl_cursor_allocation(const struct intel_crtc_state *crtc_state,
> >  static void skl_ddb_entry_init_from_hw(struct drm_i915_private *dev_priv,
> >  				       struct skl_ddb_entry *entry, u32 reg)
> >  {
> > -	entry->start = reg & DDB_ENTRY_MASK;
> > -	entry->end = (reg >> DDB_ENTRY_END_SHIFT) & DDB_ENTRY_MASK;
> > -
> > +	entry->start = REG_FIELD_GET(PLANE_BUF_START_MASK, reg);
> > +	entry->end = REG_FIELD_GET(PLANE_BUF_END_MASK, reg);
> >  	if (entry->end)
> > -		entry->end += 1;
> > +		entry->end++;
> >  }
> >  
> >  static void
> > @@ -4311,7 +4310,7 @@ skl_ddb_get_hw_plane_state(struct drm_i915_private *dev_priv,
> >  
> >  	/* No DDB allocated for disabled planes */
> >  	if (val & PLANE_CTL_ENABLE)
> > -		fourcc = skl_format_to_fourcc(val & PLANE_CTL_FORMAT_MASK,
> > +		fourcc = skl_format_to_fourcc(val & PLANE_CTL_FORMAT_MASK_SKL,
> >  					      val & PLANE_CTL_ORDER_RGBX,
> >  					      val & PLANE_CTL_ALPHA_MASK);
> >  
> > @@ -5882,7 +5881,8 @@ static void skl_ddb_entry_write(struct drm_i915_private *dev_priv,
> >  {
> >  	if (entry->end)
> >  		intel_de_write_fw(dev_priv, reg,
> > -				  (entry->end - 1) << 16 | entry->start);
> > +				  PLANE_BUF_END(entry->end - 1) |
> > +				  PLANE_BUF_START(entry->start));
> >  	else
> >  		intel_de_write_fw(dev_priv, reg, 0);
> >  }
> 

-- 
Ville Syrjälä
Intel
