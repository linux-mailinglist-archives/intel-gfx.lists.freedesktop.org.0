Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DB343DC41
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Oct 2021 09:39:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B55696E075;
	Thu, 28 Oct 2021 07:39:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4B866E075
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Oct 2021 07:39:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10150"; a="211118825"
X-IronPort-AV: E=Sophos;i="5.87,189,1631602800"; d="scan'208";a="211118825"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 00:39:49 -0700
X-IronPort-AV: E=Sophos;i="5.87,189,1631602800"; d="scan'208";a="665307497"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2021 00:39:46 -0700
Date: Thu, 28 Oct 2021 10:39:42 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com,
 matthew.d.roper@intel.com, ramalingam.c@intel.com,
 ville.syrjala@linux.intel.com
Message-ID: <20211028073942.GA3067726@ideak-desk.fi.intel.com>
References: <20211027154653.5899-1-stanislav.lisovskiy@intel.com>
 <20211027165625.GA3045392@ideak-desk.fi.intel.com>
 <20211028065852.GA8320@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211028065852.GA8320@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Tile 4 plane format support
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 28, 2021 at 09:58:52AM +0300, Lisovskiy, Stanislav wrote:
> On Wed, Oct 27, 2021 at 07:56:25PM +0300, Imre Deak wrote:
> > On Wed, Oct 27, 2021 at 06:46:53PM +0300, Stanislav Lisovskiy wrote:
> > > TileF(Tile4 in bspec) format is 4K tile organized into
> > > 64B subtiles with same basic shape as for legacy TileY
> > > which will be supported by Display13.
> > 
> > Is it supported on all D13 or only on DG2? Could you point to the bspec
> > page describing this?
> 
> Yes, it is supported on all D13 to my undertanding.
> Check with BSpec 44917

Thanks.

Based on that page it's only supported on DG2 (and that's how the driver
worked so far in the internal tree).

> Stan
> 
> > 
> > > 
> > > v2: - Fixed wrong case condition(Jani Nikula)
> > >     - Increased I915_FORMAT_MOD_F_TILED up to 12(Imre Deak)
> > > 
> > > v3: - s/I915_TILING_F/TILING_4/g
> > >     - s/I915_FORMAT_MOD_F_TILED/I915_FORMAT_MOD_4_TILED/g
> > >     - Removed unneeded fencing code
> > > 
> > > v4: - Rebased, fixed merge conflict with new table-oriented
> > >       format modifier checking(Stan)
> > >     - Replaced the rest of "Tile F" mentions to "Tile 4"(Stan)
> > > 
> > > Cc: Imre Deak <imre.deak@intel.com>
> > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > > Signed-off-by: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c  |  1 +
> > >  drivers/gpu/drm/i915/display/intel_fb.c       | 11 ++++++++++
> > >  drivers/gpu/drm/i915/display/intel_fbc.c      |  1 +
> > >  .../drm/i915/display/intel_plane_initial.c    |  1 +
> > >  .../drm/i915/display/skl_universal_plane.c    | 20 +++++++++++--------
> > >  drivers/gpu/drm/i915/i915_drv.h               |  1 +
> > >  drivers/gpu/drm/i915/i915_pci.c               |  1 +
> > >  drivers/gpu/drm/i915/i915_reg.h               |  1 +
> > >  drivers/gpu/drm/i915/intel_device_info.h      |  1 +
> > >  drivers/gpu/drm/i915/intel_pm.c               |  1 +
> > >  include/uapi/drm/drm_fourcc.h                 |  8 ++++++++
> > >  11 files changed, 39 insertions(+), 8 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 79cd158503b3..9b3913d73213 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -7755,6 +7755,7 @@ static int intel_atomic_check_async(struct intel_atomic_state *state)
> > >  		case I915_FORMAT_MOD_X_TILED:
> > >  		case I915_FORMAT_MOD_Y_TILED:
> > >  		case I915_FORMAT_MOD_Yf_TILED:
> > > +		case I915_FORMAT_MOD_4_TILED:
> > >  			break;
> > >  		default:
> > >  			drm_dbg_kms(&i915->drm,
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> > > index 9ce1d273dc7e..d3dec51285f7 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > > @@ -188,6 +188,10 @@ static const struct intel_modifier_desc intel_modifiers[] = {
> > >  		.modifier = I915_FORMAT_MOD_Yf_TILED,
> > >  		.display_ver = { 9, 11 },
> > >  		.tiling = I915_TILING_NONE,
> > > +	}, {
> > > +		.modifier = I915_FORMAT_MOD_4_TILED,
> > > +		.display_ver = { 12, 13 },
> > 
> > From display_ver 13.
> > 
> > > +		.tiling = I915_TILING_NONE,
> > >  	}, {
> > >  		.modifier = I915_FORMAT_MOD_Y_TILED,
> > >  		.display_ver = { 9, 13 },
> > > @@ -575,6 +579,12 @@ intel_tile_width_bytes(const struct drm_framebuffer *fb, int color_plane)
> > >  			return 128;
> > >  		else
> > >  			return 512;
> > > +	case I915_FORMAT_MOD_4_TILED:
> > > +		/*
> > > +		 * Each 4K tile consists of 64B(8*8) subtiles, with
> > > +		 * same shape as Y Tile(i.e 4*16B OWords)
> > > +		 */
> > > +		return 128;
> > >  	case I915_FORMAT_MOD_Y_TILED_CCS:
> > >  		if (intel_fb_is_ccs_aux_plane(fb, color_plane))
> > >  			return 128;
> > > @@ -743,6 +753,7 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
> > >  	case I915_FORMAT_MOD_Y_TILED_CCS:
> > >  	case I915_FORMAT_MOD_Yf_TILED_CCS:
> > >  	case I915_FORMAT_MOD_Y_TILED:
> > > +	case I915_FORMAT_MOD_4_TILED:
> > >  	case I915_FORMAT_MOD_Yf_TILED:
> > >  		return 1 * 1024 * 1024;
> > >  	default:
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > index 1f66de77a6b1..f079a771f802 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > @@ -747,6 +747,7 @@ static bool tiling_is_valid(struct drm_i915_private *dev_priv,
> > >  	case DRM_FORMAT_MOD_LINEAR:
> > >  	case I915_FORMAT_MOD_Y_TILED:
> > >  	case I915_FORMAT_MOD_Yf_TILED:
> > > +	case I915_FORMAT_MOD_4_TILED:
> > >  		return DISPLAY_VER(dev_priv) >= 9;
> > >  	case I915_FORMAT_MOD_X_TILED:
> > >  		return true;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > > index dcd698a02da2..d80855ee9b96 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> > > @@ -125,6 +125,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
> > >  	case DRM_FORMAT_MOD_LINEAR:
> > >  	case I915_FORMAT_MOD_X_TILED:
> > >  	case I915_FORMAT_MOD_Y_TILED:
> > > +	case I915_FORMAT_MOD_4_TILED:
> > >  		break;
> > >  	default:
> > >  		drm_dbg(&dev_priv->drm,
> > > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > index 69fd56de83a7..aeca96925feb 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > @@ -751,6 +751,8 @@ static u32 skl_plane_ctl_tiling(u64 fb_modifier)
> > >  		return PLANE_CTL_TILED_X;
> > >  	case I915_FORMAT_MOD_Y_TILED:
> > >  		return PLANE_CTL_TILED_Y;
> > > +	case I915_FORMAT_MOD_4_TILED:
> > > +		return PLANE_CTL_TILED_4;
> > >  	case I915_FORMAT_MOD_Y_TILED_CCS:
> > >  	case I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC:
> > >  		return PLANE_CTL_TILED_Y | PLANE_CTL_RENDER_DECOMPRESSION_ENABLE;
> > > @@ -1930,9 +1932,7 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
> > >  	case DRM_FORMAT_Y216:
> > >  	case DRM_FORMAT_XVYU12_16161616:
> > >  	case DRM_FORMAT_XVYU16161616:
> > > -		if (modifier == DRM_FORMAT_MOD_LINEAR ||
> > > -		    modifier == I915_FORMAT_MOD_X_TILED ||
> > > -		    modifier == I915_FORMAT_MOD_Y_TILED)
> > > +		if (!intel_fb_is_ccs_modifier(modifier))
> > >  			return true;
> > >  		fallthrough;
> > >  	default:
> > > @@ -2241,11 +2241,15 @@ skl_get_initial_plane_config(struct intel_crtc *crtc,
> > >  		else
> > >  			fb->modifier = I915_FORMAT_MOD_Y_TILED;
> > >  		break;
> > > -	case PLANE_CTL_TILED_YF:
> > > -		if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> > > -			fb->modifier = I915_FORMAT_MOD_Yf_TILED_CCS;
> > > -		else
> > > -			fb->modifier = I915_FORMAT_MOD_Yf_TILED;
> > > +	case PLANE_CTL_TILED_YF: /* aka PLANE_CTL_TILED_4 on XE_LPD+ */
> > > +		if (DISPLAY_VER(dev_priv) >= 13) {
> > > +			fb->modifier = I915_FORMAT_MOD_4_TILED;
> > > +		} else {
> > > +			if (val & PLANE_CTL_RENDER_DECOMPRESSION_ENABLE)
> > > +				fb->modifier = I915_FORMAT_MOD_Yf_TILED_CCS;
> > > +			else
> > > +				fb->modifier = I915_FORMAT_MOD_Yf_TILED;
> > > +		}
> > >  		break;
> > >  	default:
> > >  		MISSING_CASE(tiling);
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > > index 19e6700a4315..0a32ce800677 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -1627,6 +1627,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> > >  #define CMDPARSER_USES_GGTT(dev_priv) (GRAPHICS_VER(dev_priv) == 7)
> > >  
> > >  #define HAS_LLC(dev_priv)	(INTEL_INFO(dev_priv)->has_llc)
> > > +#define HAS_FTILE(dev_priv)    (INTEL_INFO(dev_priv)->has_4tile)
> > >  #define HAS_SNOOP(dev_priv)	(INTEL_INFO(dev_priv)->has_snoop)
> > >  #define HAS_EDRAM(dev_priv)	((dev_priv)->edram_size_mb)
> > >  #define HAS_SECURE_BATCHES(dev_priv) (GRAPHICS_VER(dev_priv) < 6)
> > > diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> > > index 169837de395d..8831b1885934 100644
> > > --- a/drivers/gpu/drm/i915/i915_pci.c
> > > +++ b/drivers/gpu/drm/i915/i915_pci.c
> > > @@ -972,6 +972,7 @@ static const struct intel_device_info adl_p_info = {
> > >  	.display.has_cdclk_crawl = 1,
> > >  	.display.has_modular_fia = 1,
> > >  	.display.has_psr_hw_tracking = 0,
> > > +	.has_4tile = 1, \
> > 
> > If it's only on DG2 then it should be added there.
> > 
> > >  	.platform_engine_mask =
> > >  		BIT(RCS0) | BIT(BCS0) | BIT(VECS0) | BIT(VCS0) | BIT(VCS2),
> > >  	.ppgtt_size = 48,
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > > index 7c97bc352497..b70b72b032ef 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -7195,6 +7195,7 @@ enum {
> > >  #define   PLANE_CTL_TILED_X			(1 << 10)
> > >  #define   PLANE_CTL_TILED_Y			(4 << 10)
> > >  #define   PLANE_CTL_TILED_YF			(5 << 10)
> > > +#define   PLANE_CTL_TILED_4			(5 << 10)
> > >  #define   PLANE_CTL_ASYNC_FLIP			(1 << 9)
> > >  #define   PLANE_CTL_FLIP_HORIZONTAL		(1 << 8)
> > >  #define   PLANE_CTL_MEDIA_DECOMPRESSION_ENABLE	(1 << 4) /* TGL+ */
> > > diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> > > index 8e6f48d1eb7b..6c543a152250 100644
> > > --- a/drivers/gpu/drm/i915/intel_device_info.h
> > > +++ b/drivers/gpu/drm/i915/intel_device_info.h
> > > @@ -125,6 +125,7 @@ enum intel_ppgtt_type {
> > >  	func(has_64bit_reloc); \
> > >  	func(gpu_reset_clobbers_display); \
> > >  	func(has_reset_engine); \
> > > +	func(has_4tile); \
> > >  	func(has_global_mocs); \
> > >  	func(has_gt_uc); \
> > >  	func(has_l3_dpf); \
> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > > index cffb3df35a63..1ac1af0a7f2d 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -5378,6 +5378,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
> > >  	}
> > >  
> > >  	wp->y_tiled = modifier == I915_FORMAT_MOD_Y_TILED ||
> > > +		      modifier == I915_FORMAT_MOD_4_TILED ||
> > >  		      modifier == I915_FORMAT_MOD_Yf_TILED ||
> > >  		      modifier == I915_FORMAT_MOD_Y_TILED_CCS ||
> > >  		      modifier == I915_FORMAT_MOD_Yf_TILED_CCS;
> > > diff --git a/include/uapi/drm/drm_fourcc.h b/include/uapi/drm/drm_fourcc.h
> > > index 45a914850be0..982b0a9fa78b 100644
> > > --- a/include/uapi/drm/drm_fourcc.h
> > > +++ b/include/uapi/drm/drm_fourcc.h
> > > @@ -558,6 +558,14 @@ extern "C" {
> > >   * pitch is required to be a multiple of 4 tile widths.
> > >   */
> > >  #define I915_FORMAT_MOD_Y_TILED_GEN12_RC_CCS_CC fourcc_mod_code(INTEL, 8)
> > > +/*
> > > + * Intel F-tiling(aka Tile4) layout
> > > + *
> > > + * This is a tiled layout using 4Kb tiles in row-major layout.
> > > + * Within the tile pixels are laid out in 64 byte units / sub-tiles in OWORD
> > > + * (16 bytes) chunks column-major..
> > > + */
> > > +#define I915_FORMAT_MOD_4_TILED         fourcc_mod_code(INTEL, 12)
> > >  
> > >  /*
> > >   * Tiled, NV12MT, grouped in 64 (pixels) x 32 (lines) -sized macroblocks
> > > -- 
> > > 2.24.1.485.gad05a3d8e5
> > > 
