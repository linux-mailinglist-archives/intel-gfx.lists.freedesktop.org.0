Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCF246537F
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 18:03:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BA146E5BE;
	Wed,  1 Dec 2021 17:03:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D6206E5BE
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 17:03:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="322746865"
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="322746865"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 09:02:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,279,1631602800"; d="scan'208";a="560538351"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 01 Dec 2021 07:21:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 01 Dec 2021 17:21:02 +0200
Date: Wed, 1 Dec 2021 17:21:02 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YaeS3qI8a31BSVMP@intel.com>
References: <cover.1638366969.git.jani.nikula@intel.com>
 <ee740f494e416d875e057c2eda585f4e66d65500.1638366969.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ee740f494e416d875e057c2eda585f4e66d65500.1638366969.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 10/10] drm/i915/display: stop including
 i915_drv.h from intel_display_types.h
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

On Wed, Dec 01, 2021 at 03:57:12PM +0200, Jani Nikula wrote:
> Break the dependency on i915_drv.h.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Looks reasonable.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h    |  9 ++++++++-
>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c |  1 +
>  drivers/gpu/drm/i915/display/intel_dp_link_training.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_dsi.c              |  2 ++
>  drivers/gpu/drm/i915/display/intel_fb.c               |  1 +
>  drivers/gpu/drm/i915/display/intel_fb_pin.c           | 10 +++++-----
>  drivers/gpu/drm/i915/display/intel_plane_initial.c    |  5 +++--
>  drivers/gpu/drm/i915/display/intel_quirks.c           |  1 +
>  8 files changed, 22 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index f6e76b4d377d..974af6c01cca 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -36,6 +36,7 @@
>  #include <drm/drm_crtc.h>
>  #include <drm/drm_dp_dual_mode_helper.h>
>  #include <drm/drm_dp_mst_helper.h>
> +#include <drm/drm_dsc.h>
>  #include <drm/drm_encoder.h>
>  #include <drm/drm_fb_helper.h>
>  #include <drm/drm_fourcc.h>
> @@ -46,13 +47,19 @@
>  #include <drm/i915_mei_hdcp_interface.h>
>  #include <media/cec-notifier.h>
>  
> -#include "i915_drv.h"
> +#include "i915_vma.h"
> +#include "i915_vma_types.h"
> +#include "intel_bios.h"
> +#include "intel_display.h"
> +#include "intel_display_power.h"
> +#include "intel_dpll_mgr.h"
>  #include "intel_pm_types.h"
>  
>  struct drm_printer;
>  struct __intel_global_objs_state;
>  struct intel_ddi_buf_trans;
>  struct intel_fbc;
> +struct intel_connector;
>  
>  /*
>   * Display related stuff
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 62c112daacf2..97cf3cac0105 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -34,6 +34,7 @@
>   * for some reason.
>   */
>  
> +#include "i915_drv.h"
>  #include "intel_backlight.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index e264467de8ed..9451f336f28f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -21,11 +21,11 @@
>   * IN THE SOFTWARE.
>   */
>  
> +#include "i915_drv.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
>  #include "intel_dp_link_training.h"
>  
> -
>  static void intel_dp_reset_lttpr_common_caps(struct intel_dp *intel_dp)
>  {
>  	memset(intel_dp->lttpr_common_caps, 0, sizeof(intel_dp->lttpr_common_caps));
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
> index 6b0301ba046e..a50422e03a7e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
> @@ -4,6 +4,8 @@
>   */
>  
>  #include <drm/drm_mipi_dsi.h>
> +
> +#include "i915_drv.h"
>  #include "intel_dsi.h"
>  #include "intel_panel.h"
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 99769132c35b..23cfe2e5ce2a 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -6,6 +6,7 @@
>  #include <drm/drm_framebuffer.h>
>  #include <drm/drm_modeset_helper.h>
>  
> +#include "i915_drv.h"
>  #include "intel_display.h"
>  #include "intel_display_types.h"
>  #include "intel_dpt.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> index 3b20f69e0240..31c15e5fca95 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> @@ -7,13 +7,13 @@
>   * DOC: display pinning helpers
>   */
>  
> -#include "intel_display_types.h"
> -#include "intel_fb_pin.h"
> -#include "intel_fb.h"
> +#include "gem/i915_gem_object.h"
>  
> +#include "i915_drv.h"
> +#include "intel_display_types.h"
>  #include "intel_dpt.h"
> -
> -#include "gem/i915_gem_object.h"
> +#include "intel_fb.h"
> +#include "intel_fb_pin.h"
>  
>  static struct i915_vma *
>  intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> index dcd698a02da2..01ce1d72297f 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -3,11 +3,12 @@
>   * Copyright © 2021 Intel Corporation
>   */
>  
> -#include "intel_display_types.h"
> -#include "intel_plane_initial.h"
> +#include "i915_drv.h"
>  #include "intel_atomic_plane.h"
>  #include "intel_display.h"
> +#include "intel_display_types.h"
>  #include "intel_fb.h"
> +#include "intel_plane_initial.h"
>  
>  static bool
>  intel_reuse_initial_plane_obj(struct drm_i915_private *i915,
> diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
> index 8a52b7a16774..c8488f5ebd04 100644
> --- a/drivers/gpu/drm/i915/display/intel_quirks.c
> +++ b/drivers/gpu/drm/i915/display/intel_quirks.c
> @@ -5,6 +5,7 @@
>  
>  #include <linux/dmi.h>
>  
> +#include "i915_drv.h"
>  #include "intel_display_types.h"
>  #include "intel_quirks.h"
>  
> -- 
> 2.30.2

-- 
Ville Syrjälä
Intel
