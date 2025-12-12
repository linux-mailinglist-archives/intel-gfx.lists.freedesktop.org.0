Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E96ACB8BF5
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 12:51:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C86FF10E339;
	Fri, 12 Dec 2025 11:51:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WtBbV5G1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10B2E10E247;
 Fri, 12 Dec 2025 11:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765540303; x=1797076303;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XIAW2AjJ4aOgTxy/44UP/tu31orjCX6NZZS1TUbf/FY=;
 b=WtBbV5G1CcxBaISMEq1K8TGrVzXFQ8nrkn22FYNAk2x07VLJaalSTK3o
 CG25UWFmY6XmCRRzCXz2JF5HEWxIxcZJLZj+qq7lAUtt93q35d9wn9GKW
 XDAhtPnaXR1Yga8KQ3T3DGyVk8vti/QjCg0v9wqQJm8bcthlBo+6J5o3h
 zzDroOzktse587Iz16PYju6kqwaArJ3c7K1ZKdj4kO87Cyzm6M1i3dZOL
 y8U9WEI9K5IkyS7OdcVEDCqoX+nZnIlEToEi2nFzBEyPgCXiSFUh2g7gy
 XR1cEJ28h8KgmfAQN5KTQcOYrJeKb6AgR0RL3udIrFJHioje4Y3kOF3JM g==;
X-CSE-ConnectionGUID: 2GEhV8+bQ92hf2SSBOevNQ==
X-CSE-MsgGUID: wSUXkuHnSFO0X8vr8cZT6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="90190913"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="90190913"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 03:51:43 -0800
X-CSE-ConnectionGUID: 9YaKKuijQ+G40ZK5Xv+lqw==
X-CSE-MsgGUID: uQ9rpuUUTDu5lR8GEVOg5g==
X-ExtLoop1: 1
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.245.152])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 03:51:41 -0800
Date: Fri, 12 Dec 2025 13:51:39 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/{i915, xe}/panic: move panic handling to parent
 interface
Message-ID: <aTwBywbLwbGvz7Xn@intel.com>
References: <cover.1765474612.git.jani.nikula@intel.com>
 <e27eca5424479e8936b786018d0af19a34f839f6.1765474612.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e27eca5424479e8936b786018d0af19a34f839f6.1765474612.git.jani.nikula@intel.com>
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

On Thu, Dec 11, 2025 at 07:37:12PM +0200, Jani Nikula wrote:
> Move the panic handling to the display parent interface, making display
> more independent of i915 and xe driver implementations.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c        |  1 -
>  drivers/gpu/drm/i915/display/intel_fb.c          |  3 +--
>  drivers/gpu/drm/i915/display/intel_panic.h       | 14 --------------
>  drivers/gpu/drm/i915/display/intel_parent.c      | 15 +++++++++++++++
>  drivers/gpu/drm/i915/display/intel_parent.h      |  6 ++++++
>  drivers/gpu/drm/i915/display/intel_plane.c       |  5 ++---
>  .../gpu/drm/i915/display/skl_universal_plane.c   |  1 -
>  drivers/gpu/drm/i915/i915_driver.c               |  2 ++
>  drivers/gpu/drm/i915/i915_panic.c                | 16 ++++++++++++----
>  drivers/gpu/drm/i915/i915_panic.h                |  9 +++++++++
>  drivers/gpu/drm/xe/display/xe_display.c          |  2 ++
>  drivers/gpu/drm/xe/display/xe_panic.c            | 16 +++++++++-------
>  drivers/gpu/drm/xe/display/xe_panic.h            |  9 +++++++++
>  include/drm/intel/display_parent_interface.h     | 11 +++++++++++
>  14 files changed, 78 insertions(+), 32 deletions(-)
>  delete mode 100644 drivers/gpu/drm/i915/display/intel_panic.h
>  create mode 100644 drivers/gpu/drm/i915/i915_panic.h
>  create mode 100644 drivers/gpu/drm/xe/display/xe_panic.h
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
> index 45730ae05591..b1fecf178906 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -22,7 +22,6 @@
>  #include "intel_fb.h"
>  #include "intel_fbc.h"
>  #include "intel_frontbuffer.h"
> -#include "intel_panic.h"
>  #include "intel_plane.h"
>  #include "intel_sprite.h"
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 5b8e02ca2faf..b9bd9b6dfe94 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -20,7 +20,6 @@
>  #include "intel_fb.h"
>  #include "intel_fb_bo.h"
>  #include "intel_frontbuffer.h"
> -#include "intel_panic.h"
>  #include "intel_parent.h"
>  #include "intel_plane.h"
>  
> @@ -2217,7 +2216,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
>  	int ret;
>  	int i;
>  
> -	intel_fb->panic = intel_panic_alloc();
> +	intel_fb->panic = intel_parent_panic_alloc(display);
>  	if (!intel_fb->panic)
>  		return -ENOMEM;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_panic.h b/drivers/gpu/drm/i915/display/intel_panic.h
> deleted file mode 100644
> index afb472e924aa..000000000000
> --- a/drivers/gpu/drm/i915/display/intel_panic.h
> +++ /dev/null
> @@ -1,14 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/* Copyright © 2025 Intel Corporation */
> -
> -#ifndef __INTEL_PANIC_H__
> -#define __INTEL_PANIC_H__
> -
> -struct drm_scanout_buffer;
> -struct intel_panic;
> -
> -struct intel_panic *intel_panic_alloc(void);
> -int intel_panic_setup(struct intel_panic *panic, struct drm_scanout_buffer *sb);
> -void intel_panic_finish(struct intel_panic *panic);
> -
> -#endif /* __INTEL_PANIC_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
> index 1d7bee7d2ccd..d1c2194767e7 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.c
> +++ b/drivers/gpu/drm/i915/display/intel_parent.c
> @@ -47,6 +47,21 @@ void intel_parent_hdcp_gsc_context_free(struct intel_display *display,
>  	display->parent->hdcp->gsc_context_free(gsc_context);
>  }
>  
> +struct intel_panic *intel_parent_panic_alloc(struct intel_display *display)
> +{
> +	return display->parent->panic->alloc();
> +}
> +
> +int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic, struct drm_scanout_buffer *sb)
> +{
> +	return display->parent->panic->setup(panic, sb);
> +}
> +
> +void intel_parent_panic_finish(struct intel_display *display, struct intel_panic *panic)
> +{
> +	display->parent->panic->finish(panic);
> +}
> +
>  bool intel_parent_irq_enabled(struct intel_display *display)
>  {
>  	return display->parent->irq->enabled(display->drm);
> diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
> index 1bb584d850e5..8cd811d14fb1 100644
> --- a/drivers/gpu/drm/i915/display/intel_parent.h
> +++ b/drivers/gpu/drm/i915/display/intel_parent.h
> @@ -7,8 +7,10 @@
>  #include <linux/types.h>
>  
>  struct dma_fence;
> +struct drm_scanout_buffer;
>  struct intel_display;
>  struct intel_hdcp_gsc_context;
> +struct intel_panic;
>  struct intel_stolen_node;
>  
>  ssize_t intel_parent_hdcp_gsc_msg_send(struct intel_display *display,
> @@ -23,6 +25,10 @@ void intel_parent_hdcp_gsc_context_free(struct intel_display *display,
>  bool intel_parent_irq_enabled(struct intel_display *display);
>  void intel_parent_irq_synchronize(struct intel_display *display);
>  
> +struct intel_panic *intel_parent_panic_alloc(struct intel_display *display);
> +int intel_parent_panic_setup(struct intel_display *display, struct intel_panic *panic, struct drm_scanout_buffer *sb);
> +void intel_parent_panic_finish(struct intel_display *display, struct intel_panic *panic);
> +
>  bool intel_parent_rps_available(struct intel_display *display);
>  void intel_parent_rps_boost_if_not_started(struct intel_display *display, struct dma_fence *fence);
>  void intel_parent_rps_mark_interactive(struct intel_display *display, bool interactive);
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
> index ca9449589161..3dc2ed52147f 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -55,7 +55,6 @@
>  #include "intel_fb.h"
>  #include "intel_fb_pin.h"
>  #include "intel_fbdev.h"
> -#include "intel_panic.h"
>  #include "intel_parent.h"
>  #include "intel_plane.h"
>  #include "intel_psr.h"
> @@ -1344,7 +1343,7 @@ static void intel_panic_flush(struct drm_plane *_plane)
>  	const struct intel_crtc_state *crtc_state = to_intel_crtc_state(crtc->base.state);
>  	const struct intel_framebuffer *fb = to_intel_framebuffer(plane_state->hw.fb);
>  
> -	intel_panic_finish(fb->panic);
> +	intel_parent_panic_finish(display, fb->panic);
>  
>  	if (crtc_state->enable_psr2_sel_fetch) {
>  		/* Force a full update for psr2 */
> @@ -1425,7 +1424,7 @@ static int intel_get_scanout_buffer(struct drm_plane *plane,
>  				return -EOPNOTSUPP;
>  		}
>  		sb->private = fb;
> -		ret = intel_panic_setup(fb->panic, sb);
> +		ret = intel_parent_panic_setup(display, fb->panic, sb);
>  		if (ret)
>  			return ret;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 40148d225410..b3d41705448a 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -21,7 +21,6 @@
>  #include "intel_fb.h"
>  #include "intel_fbc.h"
>  #include "intel_frontbuffer.h"
> -#include "intel_panic.h"
>  #include "intel_parent.h"
>  #include "intel_plane.h"
>  #include "intel_psr.h"
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 0300a1df8bd2..a341e2d46551 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -102,6 +102,7 @@
>  #include "i915_ioctl.h"
>  #include "i915_irq.h"
>  #include "i915_memcpy.h"
> +#include "i915_panic.h"
>  #include "i915_perf.h"
>  #include "i915_query.h"
>  #include "i915_reg.h"
> @@ -768,6 +769,7 @@ static bool has_auxccs(struct drm_device *drm)
>  
>  static const struct intel_display_parent_interface parent = {
>  	.hdcp = &i915_display_hdcp_interface,
> +	.panic = &i915_display_panic_interface,
>  	.rpm = &i915_display_rpm_interface,

This 'rpm' guy seems to be in the wrong spot. I'd expect these to
be sorted alphabetically. I already noticed this when doing the
pc8 stuff but forgot to send a patch to deal with this.

>  	.irq = &i915_display_irq_interface,
>  	.rps = &i915_display_rps_interface,
<snip>
> @@ -86,6 +94,9 @@ struct intel_display_parent_interface {
>  	/** @irq: IRQ interface */
>  	const struct intel_display_irq_interface *irq;

Same sorting issue here.

Though I suppose the naked vfuncs that don't have their
own interface struct also screw up the order, so not sure
if there ever was a plan to keep these sorted.

>  
> +	/** @panic: Panic interface */
> +	const struct intel_display_panic_interface *panic;
> +
>  	/** @rpm: RPS interface. Optional. */
             ^^^
Docs wrong here.

But all of that is not directly related to this stuff, so
the series is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  	const struct intel_display_rps_interface *rps;
>  
> -- 
> 2.47.3

-- 
Ville Syrjälä
Intel
