Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D95A54F8085
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Apr 2022 15:29:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9EE810EA0E;
	Thu,  7 Apr 2022 13:29:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55C2910EA0E
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Apr 2022 13:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649338160; x=1680874160;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=BwxCdcNPLHpkzQ2q1Z4rCz3Pqj8tM7rx3RotlATp+N0=;
 b=PjlnU6okcRwTkdZ/jmTw+3elieYv+wRx2fVYzYFe4Us28BRhJ+rsINWh
 56xs+0TCrjK1UCbbCE5KsTvMSlDAbYMswFLjfSt2CNwRjYQpKCeK2ltiT
 f7+F9reSHu6UCfHCGxFnMgF3CZ+lvmB7uFyGi8j3DFlWT+4KXNKKUYDrB
 32V8kOKaS3KPJAer+IK5UnYErtYzWXblsOuf2PVLtzN3dir7/hE2cLxos
 vTT40yDRNFCyrAD2WgSDkd4svKtTmwt/W8lkpfDUmAKhys4dveddxcG5R
 hwsX2n25G9zMEVErlQEB1EK8BzdCabP33BMhPyLdQgRGtWlxAznBK/Xw3 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10309"; a="241913895"
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="241913895"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 06:29:06 -0700
X-IronPort-AV: E=Sophos;i="5.90,242,1643702400"; d="scan'208";a="550058115"
Received: from ideak-desk.fi.intel.com ([10.237.72.175])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2022 06:29:04 -0700
Date: Thu, 7 Apr 2022 16:29:00 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
Message-ID: <Yk7nHNRBPmMh/GPk@ideak-desk.fi.intel.com>
References: <20220404133846.131401-1-imre.deak@intel.com>
 <20220404133846.131401-5-imre.deak@intel.com>
 <ddee94f605e54ac39b815360e6d8fc2f@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ddee94f605e54ac39b815360e6d8fc2f@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/dg2: Add support for DG2 clear
 color compression
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
Reply-To: imre.deak@intel.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 07, 2022 at 08:47:13AM +0300, Gupta, Anshuman wrote:
> > -----Original Message-----
> > From: Deak, Imre <imre.deak@intel.com>
> > Sent: Monday, April 4, 2022 7:09 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Gupta, Anshuman <anshuman.gupta@intel.com>; Kahola, Mika
> > <mika.kahola@intel.com>; Heikkila, Juha-pekka <juha-
> > pekka.heikkila@intel.com>; C, Ramalingam <ramalingam.c@intel.com>
> > Subject: [PATCH 4/4] drm/i915/dg2: Add support for DG2 clear color
> > compression
> > 
> > From: Anshuman Gupta <anshuman.gupta@intel.com>
> > 
> > DG2 onwards discrete gfx has support for new flat CCS mapping, which
> > brings in display feature in to avoid Aux walk for compressed
> > surface. This support build on top of Flat CCS support added in
> > XEHPSDV.  FLAT CCS surface base address should be 64k aligned,
> > Compressed displayable surfaces must use tile4 format.
> 
> IMHO commit log should also describe a bit of description for DG2
> Clear color. Original patch was meant to add FLAT_CCS support, commit
> log not fully aligns with commit header.
>
> May be it would be good if patch authorship changes to the DG2
> original clear color author for any required follow-up later ? 

I kept your authorship based on
https://patchwork.freedesktop.org/patch/471775/?series=95686&rev=5

and then an Ack from you. But yes, there's been some changes since the
support for DG2 CCS was originally added, with multiple people involved,
so the authorship may be not accurate. I can update that along with the
commit message.

> > HAS: 1407880786
> > B.Spec : 7655
> > B.Spec : 53902
> > 
> > v2: Merge all bits required for the support of functionality into this
> >     patch from the patch adding the corresponding modifier.
> > 
> > Cc: Mika Kahola <mika.kahola@intel.com>
> > Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> > Signed-off-by: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
> > Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  4 +-
> >  drivers/gpu/drm/i915/display/intel_fb.c       | 40 ++++++++++++++-----
> >  .../drm/i915/display/skl_universal_plane.c    | 25 ++++++++----
> >  3 files changed, 52 insertions(+), 17 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index eee185ed41c3e..ca997a0a05174 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -8477,7 +8477,9 @@ static void
> > intel_atomic_prepare_plane_clear_colors(struct intel_atomic_state *s
> > 
> >  		/*
> >  		 * The layout of the fast clear color value expected by HW
> > -		 * (the DRM ABI requiring this value to be located in fb at offset
> > 0 of plane#2):
> > +		 * (the DRM ABI requiring this value to be located in fb at
> > +		 * offset 0 of cc plane, plane #2 previous generations or
> > +		 * plane #1 for flat ccs):
> >  		 * - 4 x 4 bytes per-channel value
> >  		 *   (in surface type specific float/int format provided by the fb
> > user)
> >  		 * - 8 bytes native color value used by the display diff --git
> > a/drivers/gpu/drm/i915/display/intel_fb.c
> > b/drivers/gpu/drm/i915/display/intel_fb.c
> > index 447003a91160e..9f5a6b79e95b5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > @@ -107,6 +107,21 @@ static const struct drm_format_info
> > gen12_ccs_cc_formats[] = {
> >  	  .hsub = 1, .vsub = 1, .has_alpha = true },  };
> > 
> > +static const struct drm_format_info gen12_flat_ccs_cc_formats[] = {
> > +	{ .format = DRM_FORMAT_XRGB8888, .depth = 24, .num_planes = 2,
> > +	  .char_per_block = { 4, 0 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> > +	  .hsub = 1, .vsub = 1, },
> > +	{ .format = DRM_FORMAT_XBGR8888, .depth = 24, .num_planes = 2,
> > +	  .char_per_block = { 4, 0 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> > +	  .hsub = 1, .vsub = 1, },
> > +	{ .format = DRM_FORMAT_ARGB8888, .depth = 32, .num_planes = 2,
> > +	  .char_per_block = { 4, 0 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> > +	  .hsub = 1, .vsub = 1, .has_alpha = true },
> > +	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
> > +	  .char_per_block = { 4, 0 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
> > +	  .hsub = 1, .vsub = 1, .has_alpha = true }, };
> > +
> >  struct intel_modifier_desc {
> >  	u64 modifier;
> >  	struct {
> > @@ -144,6 +159,14 @@ static const struct intel_modifier_desc
> > intel_modifiers[] = {
> >  		.modifier = I915_FORMAT_MOD_4_TILED_DG2_MC_CCS,
> >  		.display_ver = { 13, 13 },
> >  		.plane_caps = INTEL_PLANE_CAP_TILING_4 |
> > INTEL_PLANE_CAP_CCS_MC,
> > +	}, {
> > +		.modifier = I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC,
> > +		.display_ver = { 13, 13 },
> > +		.plane_caps = INTEL_PLANE_CAP_TILING_4 |
> > INTEL_PLANE_CAP_CCS_RC_CC,
> > +
> > +		.ccs.cc_planes = BIT(1),
> > +
> > +		FORMAT_OVERRIDE(gen12_flat_ccs_cc_formats),
> >  	}, {
> >  		.modifier = I915_FORMAT_MOD_4_TILED_DG2_RC_CCS,
> >  		.display_ver = { 13, 13 },
> > @@ -393,17 +416,13 @@ bool intel_fb_plane_supports_modifier(struct
> > intel_plane *plane, u64 modifier)  static bool format_is_yuv_semiplanar(const
> > struct intel_modifier_desc *md,
> >  				     const struct drm_format_info *info)  {
> > -	int yuv_planes;
> > -
> >  	if (!info->is_yuv)
> >  		return false;
> > 
> > -	if (plane_caps_contain_any(md->plane_caps,
> > INTEL_PLANE_CAP_CCS_MASK))
> > -		yuv_planes = 4;
> > +	if (hweight8(md->ccs.planar_aux_planes) == 2)
> > +		return info->num_planes == 4;
> >  	else
> > -		yuv_planes = 2;
> > -
> > -	return info->num_planes == yuv_planes;
> > +		return info->num_planes == 2;
> >  }
> > 
> >  /**
> > @@ -528,12 +547,13 @@ static unsigned int gen12_ccs_aux_stride(struct
> > intel_framebuffer *fb, int ccs_p
> > 
> >  int skl_main_to_aux_plane(const struct drm_framebuffer *fb, int main_plane)  {
> > +	const struct intel_modifier_desc *md = lookup_modifier(fb->modifier);
> >  	struct drm_i915_private *i915 = to_i915(fb->dev);
> > 
> > -	if (intel_fb_is_ccs_modifier(fb->modifier))
> > +	if (md->ccs.packed_aux_planes | md->ccs.planar_aux_planes)
> >  		return main_to_ccs_plane(fb, main_plane);
> >  	else if (DISPLAY_VER(i915) < 11 &&
> > -		 intel_format_info_is_yuv_semiplanar(fb->format, fb-
> > >modifier))
> > +		 format_is_yuv_semiplanar(md, fb->format))
> >  		return 1;
> >  	else
> >  		return 0;
> > @@ -559,6 +579,7 @@ intel_tile_width_bytes(const struct drm_framebuffer
> > *fb, int color_plane)
> >  		else
> >  			return 512;
> >  	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
> > +	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
> >  	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
> >  	case I915_FORMAT_MOD_4_TILED:
> >  		/*
> > @@ -763,6 +784,7 @@ unsigned int intel_surf_alignment(const struct
> > drm_framebuffer *fb,
> >  	case I915_FORMAT_MOD_Yf_TILED:
> >  		return 1 * 1024 * 1024;
> >  	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS:
> > +	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
> >  	case I915_FORMAT_MOD_4_TILED_DG2_MC_CCS:
> >  		return 16 * 1024;
> >  	default:
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index b939c503bc6ff..caa03324a733a 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -781,6 +781,8 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
> >  		return PLANE_CTL_TILED_4 |
> >  			PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE |
> >  			PLANE_CTL_CLEAR_COLOR_DISABLE;
> > +	case I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC:
> > +		return PLANE_CTL_TILED_4 |
> > PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
> >  	case I915_FORMAT_MOD_Y_TILED_CCS:
> >  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
> >  		return PLANE_CTL_TILED_Y |
> > PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
> > @@ -1228,8 +1230,10 @@ icl_plane_update_noarm(struct intel_plane *plane,
> >  				  upper_32_bits(plane_state->ccval));
> >  	}
> > 
> > -	intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id),
> > -			  skl_plane_aux_dist(plane_state, color_plane));
> > +	/* FLAT CCS doesn't need to program AUX_DIST */
> > +	if (!HAS_FLAT_CCS(dev_priv))
> > +		intel_de_write_fw(dev_priv, PLANE_AUX_DIST(pipe, plane_id),
> > +				  skl_plane_aux_dist(plane_state, color_plane));
> > 
> >  	if (icl_is_hdr_plane(dev_priv, plane_id))
> >  		intel_de_write_fw(dev_priv, PLANE_CUS_CTL(pipe, plane_id),
> > @@ -1629,9 +1633,10 @@ static int skl_check_main_surface(struct
> > intel_plane_state *plane_state)
> > 
> >  	/*
> >  	 * CCS AUX surface doesn't have its own x/y offsets, we must make sure
> > -	 * they match with the main surface x/y offsets.
> > +	 * they match with the main surface x/y offsets. On DG2
> > +	 * there's no aux plane on fb so skip this checking.
> >  	 */
> > -	if (intel_fb_is_ccs_modifier(fb->modifier)) {
> > +	if (intel_fb_is_ccs_modifier(fb->modifier) && aux_plane) {
> >  		while (!skl_check_main_ccs_coordinates(plane_state, x, y,
> >  						       offset, aux_plane)) {
> >  			if (offset == 0)
> > @@ -1675,6 +1680,8 @@ static int skl_check_nv12_aux_surface(struct
> > intel_plane_state *plane_state)
> >  	const struct drm_framebuffer *fb = plane_state->hw.fb;
> >  	unsigned int rotation = plane_state->hw.rotation;
> >  	int uv_plane = 1;
> > +	int ccs_plane = intel_fb_is_ccs_modifier(fb->modifier) ?
> > +			skl_main_to_aux_plane(fb, uv_plane) : 0;
> >  	int max_width = intel_plane_max_width(plane, fb, uv_plane, rotation);
> >  	int max_height = intel_plane_max_height(plane, fb, uv_plane, rotation);
> >  	int x = plane_state->uapi.src.x1 >> 17; @@ -1695,8 +1702,7 @@ static
> > int skl_check_nv12_aux_surface(struct intel_plane_state *plane_state)
> >  	offset = intel_plane_compute_aligned_offset(&x, &y,
> >  						    plane_state, uv_plane);
> > 
> > -	if (intel_fb_is_ccs_modifier(fb->modifier)) {
> > -		int ccs_plane = main_to_ccs_plane(fb, uv_plane);
> > +	if (ccs_plane) {
> >  		u32 aux_offset = plane_state-
> > >view.color_plane[ccs_plane].offset;
> >  		u32 alignment = intel_surf_alignment(fb, uv_plane);
> > 
> > @@ -2438,10 +2444,15 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
> >  		break;
> >  	case PLANE_CTL_TILED_YF: /* aka PLANE_CTL_TILED_4 on XE_LPD+ */
> >  		if (HAS_4TILE(dev_priv)) {
> > -			if (val &
> > PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> > +			u32 rc_mask =
> > PLANE_CTL_RENDER_DECOMPRESSION_ENABLE |
> > +				      PLANE_CTL_CLEAR_COLOR_DISABLE;
> > +
> > +			if ((val & rc_mask) == rc_mask)
> >  				fb->modifier =
> > I915_FORMAT_MOD_4_TILED_DG2_RC_CCS;
> >  			else if (val &
> > PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE)
> >  				fb->modifier =
> > I915_FORMAT_MOD_4_TILED_DG2_MC_CCS;
> > +			else if (val &
> > PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> > +				fb->modifier =
> > I915_FORMAT_MOD_4_TILED_DG2_RC_CCS_CC;
> >  			else
> >  				fb->modifier = I915_FORMAT_MOD_4_TILED;
> >  		} else {
> > --
> > 2.30.2
> 
