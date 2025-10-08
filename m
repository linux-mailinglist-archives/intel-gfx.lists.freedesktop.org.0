Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4167BC5928
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 17:29:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B46110E844;
	Wed,  8 Oct 2025 15:29:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bR9+ICjy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE6110E843;
 Wed,  8 Oct 2025 15:29:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759937372; x=1791473372;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=C+NLseSWqePEShVvOQBmEh0ji0pqfA1mOInr8WNXfIU=;
 b=bR9+ICjyKn6XQMPZcAPzT84WS+9uAz2i2eZUZbjQMyYvlVGZxFQ+SVDF
 cjikXdfrfckIBLXtgPzY9ROtNq5LrjnZSQ8AvbW6fweMORBBcBXzKhYNO
 +inVOxIP76/uJx8iFh3LGnvUUUmM060zxhB6vk0lfKzDB50IJ3gKXsmVI
 HEeIxJPd46UIpVrEeO+TFe6unqrlZXppA30VNXQ4HqlypkuIiLWcr2lqF
 aGCmCaFi4+M7J+3ETO1jIrG9m/36Ti/Oz97GcoquK9pJlEbXxpi+ZSR5K
 NUCkMIbmrl0LnfCYEq12guqhIWBp7bmlv0VBd2jqpmP9OfjM9JrqKQLLJ w==;
X-CSE-ConnectionGUID: IimdLXvvSAyCxM1DykWs8g==
X-CSE-MsgGUID: AjqI+bMYRvyZ8gy1Ad1Lfg==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="64751572"
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="64751572"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 08:29:31 -0700
X-CSE-ConnectionGUID: /YZcc/84TZGIKYV7l32xcg==
X-CSE-MsgGUID: EyDJCJzcShmlKxWxd06i3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="184846699"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 08:29:29 -0700
Date: Wed, 8 Oct 2025 18:29:27 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH] drm/{i915,xe}/display: pass parent interface to display
 probe
Message-ID: <aOaDCa576OP-eRAy@intel.com>
References: <20251008135344.773326-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251008135344.773326-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Oct 08, 2025 at 04:53:44PM +0300, Jani Nikula wrote:
> Let's gradually start calling i915 and xe parent, or core, drivers from
> display via function pointers passed at display probe.
> 
> For starters, just add a small feature test hook ->has_flat_ccs. While
> it's platform specific for platforms supported by i915, the newer
> platforms in xe may have it fused off, and need a dynamic check.

That's not actually how we use it. We just use it to differentiate
between platforms that use AUX vs. not for compression. Even if
the actual compression can't happen we still want to take the
HAS_FLAT_CCS path. Ie. it should be just a platform check.

Maybe we should just flip it around and instead add some kind of
HAS_AUX_CCS feature macro?

> 
> Going forward, the struct intel_display_parent_interface is expected to
> include const pointers to sub-structs by functionality, for example:
> 
> struct intel_display_rpm {
> 	struct ref_tracker *(*get)(struct drm_device *drm);
> 	/* ... */
> };
> 
> struct intel_display_parent_interface {
> 	/* ... */
> 	const struct intel_display_rpm *rpm;
> };
> 
> This is a baby step towards not building display as part of both i915
> and xe drivers, but rather making it an independent driver interfacing
> with the two.
> 
> Cc: Jouni Högander <jouni.hogander@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> 
> ---
> 
> v1 after RFC [1], with some naming improvements etc.
> 
> [1] https://lore.kernel.org/r/20251003092107.2892508-1-jani.nikula@intel.com
> ---
>  .../gpu/drm/i915/display/intel_display_core.h |  4 +++
>  .../drm/i915/display/intel_display_device.c   |  5 +++-
>  .../drm/i915/display/intel_display_device.h   |  4 ++-
>  drivers/gpu/drm/i915/display/intel_fb.c       |  5 ++--
>  .../drm/i915/display/skl_universal_plane.c    |  5 ++--
>  drivers/gpu/drm/i915/i915_driver.c            | 17 ++++++++++-
>  drivers/gpu/drm/i915/i915_driver.h            |  2 ++
>  .../gpu/drm/i915/selftests/mock_gem_device.c  |  4 ++-
>  .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  2 --
>  drivers/gpu/drm/xe/display/xe_display.c       | 12 +++++++-
>  include/drm/intel/display_parent_interface.h  | 28 +++++++++++++++++++
>  11 files changed, 76 insertions(+), 12 deletions(-)
>  create mode 100644 include/drm/intel/display_parent_interface.h
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> index df4da52cbdb3..ebbfcd5efe84 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -41,6 +41,7 @@ struct intel_cdclk_vals;
>  struct intel_color_funcs;
>  struct intel_crtc;
>  struct intel_crtc_state;
> +struct intel_display_parent_interface;
>  struct intel_dmc;
>  struct intel_dpll_global_funcs;
>  struct intel_dpll_mgr;
> @@ -291,6 +292,9 @@ struct intel_display {
>  	/* Intel PCH: where the south display engine lives */
>  	enum intel_pch pch_type;
>  
> +	/* Parent, or core, driver functions exposed to display */
> +	const struct intel_display_parent_interface *parent;
> +
>  	/* Display functions */
>  	struct {
>  		/* Top level crtc-ish functions */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index f3f1f25b0f38..328447a5e5e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1647,7 +1647,8 @@ static void display_platforms_or(struct intel_display_platforms *dst,
>  	bitmap_or(dst->bitmap, dst->bitmap, src->bitmap, display_platforms_num_bits());
>  }
>  
> -struct intel_display *intel_display_device_probe(struct pci_dev *pdev)
> +struct intel_display *intel_display_device_probe(struct pci_dev *pdev,
> +						 const struct intel_display_parent_interface *parent)
>  {
>  	struct intel_display *display;
>  	const struct intel_display_device_info *info;
> @@ -1663,6 +1664,8 @@ struct intel_display *intel_display_device_probe(struct pci_dev *pdev)
>  	/* Add drm device backpointer as early as possible. */
>  	display->drm = pci_get_drvdata(pdev);
>  
> +	display->parent = parent;
> +
>  	intel_display_params_copy(&display->params);
>  
>  	if (has_no_display(pdev)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 0e062753cf9b..c570c177a8e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -13,6 +13,7 @@
>  
>  struct drm_printer;
>  struct intel_display;
> +struct intel_display_parent_interface;
>  struct pci_dev;
>  
>  /*
> @@ -310,7 +311,8 @@ struct intel_display_device_info {
>  
>  bool intel_display_device_present(struct intel_display *display);
>  bool intel_display_device_enabled(struct intel_display *display);
> -struct intel_display *intel_display_device_probe(struct pci_dev *pdev);
> +struct intel_display *intel_display_device_probe(struct pci_dev *pdev,
> +						 const struct intel_display_parent_interface *parent);
>  void intel_display_device_remove(struct intel_display *display);
>  void intel_display_device_info_runtime_init(struct intel_display *display);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 69237dabdae8..957416b69fa1 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -9,6 +9,7 @@
>  #include <drm/drm_blend.h>
>  #include <drm/drm_gem.h>
>  #include <drm/drm_modeset_helper.h>
> +#include <drm/intel/display_parent_interface.h>
>  
>  #include "i915_drv.h"
>  #include "i915_utils.h"
> @@ -547,8 +548,6 @@ static bool plane_has_modifier(struct intel_display *display,
>  			       u8 plane_caps,
>  			       const struct intel_modifier_desc *md)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
>  	if (!IS_DISPLAY_VER(display, md->display_ver.from, md->display_ver.until))
>  		return false;
>  
> @@ -560,7 +559,7 @@ static bool plane_has_modifier(struct intel_display *display,
>  	 * where supported.
>  	 */
>  	if (intel_fb_is_ccs_modifier(md->modifier) &&
> -	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
> +	    display->parent->has_flat_ccs(display->drm) != !md->ccs.packed_aux_planes)
>  		return false;
>  
>  	if (md->modifier == I915_FORMAT_MOD_4_TILED_BMG_CCS &&
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index e13fb781e7b2..1c78165839ed 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -7,6 +7,7 @@
>  #include <drm/drm_blend.h>
>  #include <drm/drm_damage_helper.h>
>  #include <drm/drm_fourcc.h>
> +#include <drm/intel/display_parent_interface.h>
>  
>  #include "pxp/intel_pxp.h"
>  #include "i915_drv.h"
> @@ -1572,7 +1573,7 @@ icl_plane_update_noarm(struct intel_dsb *dsb,
>  	}
>  
>  	/* FLAT CCS doesn't need to program AUX_DIST */
> -	if (!HAS_FLAT_CCS(to_i915(display->drm)) && DISPLAY_VER(display) < 20)
> +	if (!display->parent->has_flat_ccs(display->drm) && DISPLAY_VER(display) < 20)
>  		intel_de_write_dsb(display, dsb, PLANE_AUX_DIST(pipe, plane_id),
>  				   skl_plane_aux_dist(plane_state, color_plane));
>  
> @@ -2930,7 +2931,7 @@ skl_universal_plane_create(struct intel_display *display,
>  		caps = skl_plane_caps(display, pipe, plane_id);
>  
>  	/* FIXME: xe has problems with AUX */
> -	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(to_i915(display->drm)))
> +	if (!IS_ENABLED(I915) && !display->parent->has_flat_ccs(display->drm))
>  		caps &= ~(INTEL_PLANE_CAP_CCS_RC |
>  			  INTEL_PLANE_CAP_CCS_RC_CC |
>  			  INTEL_PLANE_CAP_CCS_MC);
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index b46cb54ef5dc..a314799e4748 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -47,6 +47,7 @@
>  #include <drm/drm_managed.h>
>  #include <drm/drm_probe_helper.h>
>  #include <drm/intel/display_member.h>
> +#include <drm/intel/display_parent_interface.h>
>  
>  #include "display/i9xx_display_sr.h"
>  #include "display/intel_bw.h"
> @@ -738,6 +739,20 @@ static void i915_welcome_messages(struct drm_i915_private *dev_priv)
>  			 "DRM_I915_DEBUG_RUNTIME_PM enabled\n");
>  }
>  
> +static bool has_flat_ccs(struct drm_device *drm)
> +{
> +	return HAS_FLAT_CCS(to_i915(drm));
> +}
> +
> +static const struct intel_display_parent_interface parent = {
> +	.has_flat_ccs = has_flat_ccs,
> +};
> +
> +const struct intel_display_parent_interface *i915_driver_parent_interface(void)
> +{
> +	return &parent;
> +}
> +
>  /* Ensure drm and display members are placed properly. */
>  INTEL_DISPLAY_MEMBER_STATIC_ASSERT(struct drm_i915_private, drm, display);
>  
> @@ -762,7 +777,7 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	/* Set up device info and initial runtime info. */
>  	intel_device_info_driver_create(i915, pdev->device, match_info);
>  
> -	display = intel_display_device_probe(pdev);
> +	display = intel_display_device_probe(pdev, &parent);
>  	if (IS_ERR(display))
>  		return ERR_CAST(display);
>  
> diff --git a/drivers/gpu/drm/i915/i915_driver.h b/drivers/gpu/drm/i915/i915_driver.h
> index 1e95ecb2a163..9551519ab429 100644
> --- a/drivers/gpu/drm/i915/i915_driver.h
> +++ b/drivers/gpu/drm/i915/i915_driver.h
> @@ -12,6 +12,7 @@ struct pci_dev;
>  struct pci_device_id;
>  struct drm_i915_private;
>  struct drm_printer;
> +struct intel_display_parent_interface;
>  
>  #define DRIVER_NAME		"i915"
>  #define DRIVER_DESC		"Intel Graphics"
> @@ -24,6 +25,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915);
>  
>  int i915_driver_resume_switcheroo(struct drm_i915_private *i915);
>  int i915_driver_suspend_switcheroo(struct drm_i915_private *i915, pm_message_t state);
> +const struct intel_display_parent_interface *i915_driver_parent_interface(void);
>  
>  void
>  i915_print_iommu_status(struct drm_i915_private *i915, struct drm_printer *p);
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index fb8751bd5df0..b59626c4994c 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -33,6 +33,7 @@
>  #include "gt/intel_gt.h"
>  #include "gt/intel_gt_requests.h"
>  #include "gt/mock_engine.h"
> +#include "i915_driver.h"
>  #include "intel_memory_region.h"
>  #include "intel_region_ttm.h"
>  
> @@ -183,7 +184,8 @@ struct drm_i915_private *mock_gem_device(void)
>  	/* Set up device info and initial runtime info. */
>  	intel_device_info_driver_create(i915, pdev->device, &mock_info);
>  
> -	display = intel_display_device_probe(pdev);
> +	/* FIXME: Can we run selftests using a mock device without display? */
> +	display = intel_display_device_probe(pdev, i915_driver_parent_interface());
>  	if (IS_ERR(display))
>  		goto err_device;
>  
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index b8269391bc69..a0311926b50b 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -12,7 +12,6 @@
>  
>  #include <drm/drm_drv.h>
>  
> -#include "xe_device.h" /* for xe_device_has_flat_ccs() */
>  #include "xe_device_types.h"
>  
>  static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
> @@ -35,7 +34,6 @@ static inline struct drm_i915_private *to_i915(const struct drm_device *dev)
>  
>  #define IS_MOBILE(xe) (xe && 0)
>  
> -#define HAS_FLAT_CCS(xe) (xe_device_has_flat_ccs(xe))
>  #define HAS_128_BYTE_Y_TILING(xe) (xe || 1)
>  
>  #endif
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 5f4044e63185..f44ef8836a8f 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -14,6 +14,7 @@
>  #include <drm/drm_managed.h>
>  #include <drm/drm_probe_helper.h>
>  #include <drm/intel/display_member.h>
> +#include <drm/intel/display_parent_interface.h>
>  #include <uapi/drm/xe_drm.h>
>  
>  #include "soc/intel_dram.h"
> @@ -515,6 +516,15 @@ static void display_device_remove(struct drm_device *dev, void *arg)
>  	intel_display_device_remove(display);
>  }
>  
> +static bool has_flat_ccs(struct drm_device *drm)
> +{
> +	return xe_device_has_flat_ccs(to_xe_device(drm));
> +}
> +
> +static const struct intel_display_parent_interface parent = {
> +	.has_flat_ccs = has_flat_ccs,
> +};
> +
>  /**
>   * xe_display_probe - probe display and create display struct
>   * @xe: XE device instance
> @@ -535,7 +545,7 @@ int xe_display_probe(struct xe_device *xe)
>  	if (!xe->info.probe_display)
>  		goto no_display;
>  
> -	display = intel_display_device_probe(pdev);
> +	display = intel_display_device_probe(pdev, &parent);
>  	if (IS_ERR(display))
>  		return PTR_ERR(display);
>  
> diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
> new file mode 100644
> index 000000000000..ef03b7e45405
> --- /dev/null
> +++ b/include/drm/intel/display_parent_interface.h
> @@ -0,0 +1,28 @@
> +/* SPDX-License-Identifier: MIT */
> +/* Copyright © 2025 Intel Corporation x*/
> +
> +#ifndef __DISPLAY_PARENT_INTERFACE_H__
> +#define __DISPLAY_PARENT_INTERFACE_H__
> +
> +#include <linux/types.h>
> +
> +struct drm_device;
> +
> +/**
> + * struct intel_display_parent_interface - services parent driver provides to display
> + *
> + * The parent, or core, driver provides a pointer to this structure to display
> + * driver when calling intel_display_device_probe(). The display driver uses it
> + * to access services provided by the parent driver. The structure may contain
> + * sub-struct pointers to group function pointers by functionality.
> + *
> + * All function and sub-struct pointers must be initialized and callable unless
> + * explicitly marked as "optional" below. The display driver will only NULL
> + * check the optional pointers.
> + */
> +struct intel_display_parent_interface {
> +	/** @has_flat_ccs: does the device support flat CCS */
> +	bool (*has_flat_ccs)(struct drm_device *drm);
> +};
> +
> +#endif
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
