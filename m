Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 630545576AC
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jun 2022 11:34:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D099113BCC;
	Thu, 23 Jun 2022 09:34:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E2FF113BCC
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jun 2022 09:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655976875; x=1687512875;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2yMeW8bEkAK3yKaEyIBGluA25+pwEilvQ/5tJ9Kn0p8=;
 b=EEdTZ4QcXthWJcXFLPXjSyv0dmLyzmLKgMw/m6nr4JFfwDwYsZKfl56h
 JXtjBw0ubyzCt2VWG9iyL2aNT3GY28DHZrkjCyal3fGtEJmXPuGBW8+AK
 4yOcPHPp/tSxt7E8LrGC+Fdk8uc4ifvLmtFaJAx8UGs76nvE4DLn/ca5t
 yeQpekRZt2rIlPRnbJfWHQn0vt0RqPN8W2BE5ZCU5NIpmNu2d5gBy5kGi
 AZLA3C5Z0atKsLf1uvyiYgccTeOdhQkLKIPmGteut7RFLjP+EP9nBleUq
 sHkPtTaIRN1VMjEZ2wxWhtym+w/+CBTxDwzGMuRxpY7kXVmZlpKNQJakY g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="280720753"
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="280720753"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2022 02:34:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,215,1650956400"; d="scan'208";a="588552748"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga002.jf.intel.com with SMTP; 23 Jun 2022 02:34:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 23 Jun 2022 12:34:31 +0300
Date: Thu, 23 Jun 2022 12:34:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YrQzpzYrx3AddiTW@intel.com>
References: <cover.1655748056.git.jani.nikula@intel.com>
 <dc7e02a24fc231ef0fa3c4e84c01ebf19d61de2f.1655748056.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <dc7e02a24fc231ef0fa3c4e84c01ebf19d61de2f.1655748056.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [RFC 1/2] drm/i915/display: spread out HAS_*()
 feature macros
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jun 20, 2022 at 09:03:50PM +0300, Jani Nikula wrote:
> Expand single-use display feature macros around device info flags
> in-place, and remove the macros.
> 
> Move display feature macros used in one file only into that file.

I suppose one counter argument would be that it might be easier to spot
required changes for new platforms if they're all in one place.
Maybe start with that to stick to the current scheme more closely,
and then we an give some more thought to this idea of splitting the
single use macros out?

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c    |  2 ++
>  drivers/gpu/drm/i915/display/intel_cdclk.c   |  2 ++
>  drivers/gpu/drm/i915/display/intel_cursor.c  |  2 ++
>  drivers/gpu/drm/i915/display/intel_dmc.c     |  2 ++
>  drivers/gpu/drm/i915/display/intel_dsb.c     |  2 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c   |  4 ++++
>  drivers/gpu/drm/i915/display/intel_overlay.c |  5 ++--
>  drivers/gpu/drm/i915/display/intel_psr.c     |  3 +++
>  drivers/gpu/drm/i915/i915_drv.h              | 25 --------------------
>  drivers/gpu/drm/i915/intel_pm.c              |  4 ++++
>  10 files changed, 23 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index e97f1f979a48..2786a2226d78 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -60,6 +60,8 @@
>   * that.
>   */
>  
> +#define HAS_LSPCON(__i915) (IS_DISPLAY_VER(__i915, 9, 10))
> +
>  /* Wrapper for VBT child device config */
>  struct intel_bios_encoder_data {
>  	struct drm_i915_private *i915;
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 6e80162632dd..1ba70d47407f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -66,6 +66,8 @@
>   * dividers can be programmed correctly.
>   */
>  
> +#define HAS_CDCLK_CRAWL(__i915) (INTEL_INFO(__i915)->display.has_cdclk_crawl)
> +
>  struct intel_cdclk_funcs {
>  	void (*get_cdclk)(struct drm_i915_private *i915,
>  			  struct intel_cdclk_config *cdclk_config);
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index 8c80de877605..9b38a61b7a6a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -23,6 +23,8 @@
>  #include "intel_psr.h"
>  #include "intel_sprite.h"
>  
> +#define HAS_CUR_FBC(__i915) (!HAS_GMCH(__i915) && DISPLAY_VER(__i915) >= 7)
> +
>  /* Cursor formats */
>  static const u32 intel_cursor_formats[] = {
>  	DRM_FORMAT_ARGB8888,
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index fa9ef591b885..0480866f61d4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -38,6 +38,8 @@
>   * low-power state and comes back to normal.
>   */
>  
> +#define HAS_DMC(__i915) (INTEL_INFO(__i915)->display.has_dmc)
> +
>  #define DMC_VERSION(major, minor)	((major) << 16 | (minor))
>  #define DMC_VERSION_MAJOR(version)	((version) >> 16)
>  #define DMC_VERSION_MINOR(version)	((version) & 0xffff)
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index c4affcb216fd..f94235fbd100 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -270,7 +270,7 @@ void intel_dsb_prepare(struct intel_crtc_state *crtc_state)
>  	u32 *buf;
>  	intel_wakeref_t wakeref;
>  
> -	if (!HAS_DSB(i915))
> +	if (!INTEL_INFO(i915)->display.has_dsb)
>  		return;
>  
>  	dsb = kmalloc(sizeof(*dsb), GFP_KERNEL);
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index a6ba7fb72339..b08e193777ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -38,6 +38,10 @@
>  #include "intel_display_types.h"
>  #include "intel_gmbus.h"
>  
> +#define HAS_GMBUS_IRQ(__i915) (DISPLAY_VER(__i915) >= 4)
> +#define HAS_GMBUS_BURST_READ(__i915) \
> +	(DISPLAY_VER(__i915) >= 11 || IS_GEMINILAKE(__i915) || IS_KABYLAKE(__i915))
> +
>  struct intel_gmbus {
>  	struct i2c_adapter adapter;
>  #define GMBUS_FORCE_BIT_RETRY (1U << 31)
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> index 79ed8bd04a07..fb67da08624a 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -1386,7 +1386,7 @@ void intel_overlay_setup(struct drm_i915_private *dev_priv)
>  	struct intel_engine_cs *engine;
>  	int ret;
>  
> -	if (!HAS_OVERLAY(dev_priv))
> +	if (!INTEL_INFO(dev_priv)->display.has_overlay)
>  		return;
>  
>  	engine = to_gt(dev_priv)->engine[RCS0];
> @@ -1408,7 +1408,8 @@ void intel_overlay_setup(struct drm_i915_private *dev_priv)
>  	i915_active_init(&overlay->last_flip,
>  			 NULL, intel_overlay_last_flip_retire, 0);
>  
> -	ret = get_registers(overlay, OVERLAY_NEEDS_PHYSICAL(dev_priv));
> +	ret = get_registers(overlay,
> +			    INTEL_INFO(dev_priv)->display.overlay_needs_physical);
>  	if (ret)
>  		goto out_free;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 7d61c55184e5..2fc9f2cd1896 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -84,6 +84,9 @@
>   * use page flips.
>   */
>  
> +#define HAS_PSR_HW_TRACKING(__i915) (INTEL_INFO(__i915)->display.has_psr_hw_tracking)
> +#define HAS_PSR2_SEL_FETCH(__i915) (DISPLAY_VER(__i915) >= 12)
> +
>  static bool psr_global_enabled(struct intel_dp *intel_dp)
>  {
>  	struct intel_connector *connector = intel_dp->attached_connector;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index c22f29c3faa0..1d9ba4cf9e01 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -292,8 +292,6 @@ i915_fence_timeout(const struct drm_i915_private *i915)
>  /* Amount of SAGV/QGV points, BSpec precisely defines this */
>  #define I915_NUM_QGV_POINTS 8
>  
> -#define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
> -
>  /* Amount of PSF GV points, BSpec precisely defines this */
>  #define I915_NUM_PSF_GV_POINTS 3
>  
> @@ -874,8 +872,6 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
>  
>  #define INTEL_REVID(dev_priv)	(to_pci_dev((dev_priv)->drm.dev)->revision)
>  
> -#define HAS_DSB(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dsb)
> -
>  #define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)->step.display_step)
>  #define INTEL_GRAPHICS_STEP(__i915) (RUNTIME_INFO(__i915)->step.graphics_step)
>  #define INTEL_MEDIA_STEP(__i915) (RUNTIME_INFO(__i915)->step.media_step)
> @@ -1216,10 +1212,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	((sizes) & ~INTEL_INFO(dev_priv)->page_sizes) == 0; \
>  })
>  
> -#define HAS_OVERLAY(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_overlay)
> -#define OVERLAY_NEEDS_PHYSICAL(dev_priv) \
> -		(INTEL_INFO(dev_priv)->display.overlay_needs_physical)
> -
>  /* Early gen2 have a totally busted CS tlb and require pinned batches. */
>  #define HAS_BROKEN_CS_TLB(dev_priv)	(IS_I830(dev_priv) || IS_I845G(dev_priv))
>  
> @@ -1230,11 +1222,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define NEEDS_WaRsDisableCoarsePowerGating(dev_priv)			\
>  	(IS_SKL_GT3(dev_priv) || IS_SKL_GT4(dev_priv))
>  
> -#define HAS_GMBUS_IRQ(dev_priv) (DISPLAY_VER(dev_priv) >= 4)
> -#define HAS_GMBUS_BURST_READ(dev_priv) (DISPLAY_VER(dev_priv) >= 11 || \
> -					IS_GEMINILAKE(dev_priv) || \
> -					IS_KABYLAKE(dev_priv))
> -
>  /* With the 945 and later, Y tiling got adjusted so that it was 32 128-byte
>   * rows, which changed the alignment requirements and fence programming.
>   */
> @@ -1243,22 +1230,16 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define SUPPORTS_TV(dev_priv)		(INTEL_INFO(dev_priv)->display.supports_tv)
>  #define I915_HAS_HOTPLUG(dev_priv)	(INTEL_INFO(dev_priv)->display.has_hotplug)
>  
> -#define HAS_FW_BLC(dev_priv)	(DISPLAY_VER(dev_priv) > 2)
>  #define HAS_FBC(dev_priv)	(INTEL_INFO(dev_priv)->display.fbc_mask != 0)
> -#define HAS_CUR_FBC(dev_priv)	(!HAS_GMCH(dev_priv) && DISPLAY_VER(dev_priv) >= 7)
>  
>  #define HAS_IPS(dev_priv)	(IS_HSW_ULT(dev_priv) || IS_BROADWELL(dev_priv))
>  
>  #define HAS_DP_MST(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dp_mst)
>  #define HAS_DP20(dev_priv)	(IS_DG2(dev_priv))
>  
> -#define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cdclk_crawl)
>  #define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
>  #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.has_fpga_dbg)
>  #define HAS_PSR(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_psr)
> -#define HAS_PSR_HW_TRACKING(dev_priv) \
> -	(INTEL_INFO(dev_priv)->display.has_psr_hw_tracking)
> -#define HAS_PSR2_SEL_FETCH(dev_priv)	 (DISPLAY_VER(dev_priv) >= 12)
>  #define HAS_TRANSCODER(dev_priv, trans)	 ((INTEL_INFO(dev_priv)->display.cpu_transcoder_mask & BIT(trans)) != 0)
>  
>  #define HAS_RC6(dev_priv)		 (INTEL_INFO(dev_priv)->has_rc6)
> @@ -1267,8 +1248,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  
>  #define HAS_RPS(dev_priv)	(INTEL_INFO(dev_priv)->has_rps)
>  
> -#define HAS_DMC(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dmc)
> -
>  #define HAS_HECI_PXP(dev_priv) \
>  	(INTEL_INFO(dev_priv)->has_heci_pxp)
>  
> @@ -1318,8 +1297,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  
>  #define HAS_GMCH(dev_priv) (INTEL_INFO(dev_priv)->display.has_gmch)
>  
> -#define HAS_LSPCON(dev_priv) (IS_DISPLAY_VER(dev_priv, 9, 10))
> -
>  #define HAS_L3_CCS_READ(i915) (INTEL_INFO(i915)->has_l3_ccs_read)
>  
>  /* DPF == dynamic parity feature */
> @@ -1353,8 +1330,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_D12_PLANE_MINIMIZATION(dev_priv) (IS_ROCKETLAKE(dev_priv) || \
>  					      IS_ALDERLAKE_S(dev_priv))
>  
> -#define HAS_MBUS_JOINING(i915) (IS_ALDERLAKE_P(i915))
> -
>  #define HAS_3D_PIPELINE(i915)	(INTEL_INFO(i915)->has_3d_pipeline)
>  
>  #define HAS_ONE_EU_PER_FUSE_BIT(i915)	(INTEL_INFO(i915)->has_one_eu_per_fuse_bit)
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 174fab564d10..196b1ca5337d 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -57,6 +57,10 @@
>  #include "vlv_sideband.h"
>  #include "../../../platform/x86/intel_ips.h"
>  
> +#define HAS_HW_SAGV_WM(__i915) (DISPLAY_VER(__i915) >= 13 && !IS_DGFX(__i915))
> +#define HAS_FW_BLC(__i915) (DISPLAY_VER(__i915) > 2)
> +#define HAS_MBUS_JOINING(__i915) (IS_ALDERLAKE_P(__i915))
> +
>  static void skl_sagv_disable(struct drm_i915_private *dev_priv);
>  
>  struct drm_i915_clock_gating_funcs {
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
