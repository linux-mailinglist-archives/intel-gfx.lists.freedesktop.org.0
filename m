Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EBOYA0N8jGkcpgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 13:55:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 680DB12492A
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Feb 2026 13:55:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94D2C10E610;
	Wed, 11 Feb 2026 12:55:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FXFC8YrC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8556E10E5CA;
 Wed, 11 Feb 2026 12:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770814528; x=1802350528;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=mg4dNJHLAzj/+D3JpUGE042BbwtBeRbUZVbWBEiE1bw=;
 b=FXFC8YrCcApQXCmMcOJpynW3XSG9OpC/KjzvGMW+pr618K93tbG8YXG1
 TClwmKrQlqsHn4leur2R1NEzhu/e63tEKh81g8r/+TkBaqsJ1DLTHXWCl
 miMaCspv59pqNRpyr8EPEGm5cpd8rlw3gs7XGvyocimRgs8wKcvGOFgrD
 SkZ2gAz392AsKxlAuWhJaapZ8KYfWFZmnrrTicsKktEi/gp5Sfru2qTll
 fdSqwi9ISDATohP6nz1RwSl4hd2p2M0xn2tPCmncyT2u9Pu0fyS3Hu0Kn
 8z36ORrr82yTXUIe3CcgL8xoecN1zjN4XxhBv0XrSgFKdO04ynunK505B g==;
X-CSE-ConnectionGUID: A2rxyHNaQreBxFcK+J5wPw==
X-CSE-MsgGUID: NUaTK3MDS2aT8gTbKELiAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11697"; a="83402255"
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="83402255"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 04:55:27 -0800
X-CSE-ConnectionGUID: BgJRY+zWTw+/QFcuQf5bUw==
X-CSE-MsgGUID: MWjMhzeCQ8qAD6i7/PXdxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,283,1763452800"; d="scan'208";a="211179099"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.57])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 04:55:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [v4 20/20] drm/{i915, xe}: Remove i915_reg.h from display
In-Reply-To: <20260205094341.1882816-21-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260205094341.1882816-1-uma.shankar@intel.com>
 <20260205094341.1882816-21-uma.shankar@intel.com>
Date: Wed, 11 Feb 2026 14:55:22 +0200
Message-ID: <adca169e0050a61550c4bc51346f9c8247a3c4f3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 680DB12492A
X-Rspamd-Action: no action

On Thu, 05 Feb 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> Make display files free from including i915_reg.h.
>
> v2: Move pcode_regs.h out of i915_reg.h (Jani)
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  drivers/gpu/drm/i915/display/hsw_ips.c               | 1 -
>  drivers/gpu/drm/i915/display/i9xx_plane.c            | 1 -
>  drivers/gpu/drm/i915/display/icl_dsi.c               | 1 -
>  drivers/gpu/drm/i915/display/intel_backlight.c       | 1 -
>  drivers/gpu/drm/i915/display/intel_bw.c              | 1 -
>  drivers/gpu/drm/i915/display/intel_casf.c            | 1 -
>  drivers/gpu/drm/i915/display/intel_ddi.c             | 1 -
>  drivers/gpu/drm/i915/display/intel_display_debugfs.c | 1 -
>  drivers/gpu/drm/i915/display/intel_display_power.c   | 1 -
>  drivers/gpu/drm/i915/display/intel_display_wa.c      | 1 -
>  drivers/gpu/drm/i915/display/intel_dmc.c             | 1 -
>  drivers/gpu/drm/i915/display/intel_fdi.c             | 1 -
>  drivers/gpu/drm/i915/display/intel_hdcp.c            | 1 -
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c     | 1 -
>  drivers/gpu/drm/i915/display/intel_lt_phy.c          | 1 -
>  drivers/gpu/drm/i915/display/intel_pps.c             | 1 -
>  drivers/gpu/drm/i915/display/intel_tc.c              | 1 -
>  drivers/gpu/drm/i915/display/skl_watermark.c         | 1 -
>  drivers/gpu/drm/i915/display/vlv_dsi.c               | 1 -
>  19 files changed, 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i915/display/hsw_ips.c
> index 8658872ed86f..cbaef3f13f00 100644
> --- a/drivers/gpu/drm/i915/display/hsw_ips.c
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
> @@ -9,7 +9,6 @@
>  #include <drm/intel/intel_pcode_regs.h>
>  
>  #include "hsw_ips.h"
> -#include "i915_reg.h"
>  #include "intel_color_regs.h"
>  #include "intel_de.h"
>  #include "intel_display_regs.h"
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
> index b1fecf178906..9c16753a1f3b 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -10,7 +10,6 @@
>  #include <drm/drm_fourcc.h>
>  #include <drm/drm_print.h>
>  
> -#include "i915_reg.h"
>  #include "i9xx_plane.h"
>  #include "i9xx_plane_regs.h"
>  #include "intel_atomic.h"
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index c8e0333706c1..7cf511a6c0f9 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -34,7 +34,6 @@
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
>  
> -#include "i915_reg.h"
>  #include "icl_dsi.h"
>  #include "icl_dsi_regs.h"
>  #include "intel_atomic.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index a68fdbd2acb9..34e95f05936e 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -12,7 +12,6 @@
>  #include <drm/drm_file.h>
>  #include <drm/drm_print.h>
>  
> -#include "i915_reg.h"
>  #include "intel_backlight.h"
>  #include "intel_backlight_regs.h"
>  #include "intel_connector.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 618da1dfb671..6808fb9b4ab3 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -7,7 +7,6 @@
>  #include <drm/drm_print.h>
>  #include <drm/intel/intel_pcode_regs.h>
>  
> -#include "i915_reg.h"
>  #include "intel_bw.h"
>  #include "intel_crtc.h"
>  #include "intel_display_core.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
> index 0fe4398a1a4e..b167af31de5b 100644
> --- a/drivers/gpu/drm/i915/display/intel_casf.c
> +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> @@ -3,7 +3,6 @@
>  
>  #include <drm/drm_print.h>
>  
> -#include "i915_reg.h"
>  #include "intel_casf.h"
>  #include "intel_casf_regs.h"
>  #include "intel_de.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index f92323664162..94ae583e907f 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -34,7 +34,6 @@
>  #include <drm/drm_print.h>
>  #include <drm/drm_privacy_screen_consumer.h>
>  
> -#include "i915_reg.h"
>  #include "icl_dsi.h"
>  #include "intel_alpm.h"
>  #include "intel_audio.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index f041a7102317..2614c4863c87 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -16,7 +16,6 @@
>  #include <drm/intel/intel_gmd_misc_regs.h>
>  
>  #include "hsw_ips.h"
> -#include "i915_reg.h"
>  #include "i9xx_wm_regs.h"
>  #include "intel_alpm.h"
>  #include "intel_bo.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index cb9256f72aa9..755935dcfe23 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -9,7 +9,6 @@
>  #include <drm/drm_print.h>
>  #include <drm/intel/intel_pcode_regs.h>
>  
> -#include "i915_reg.h"
>  #include "intel_backlight_regs.h"
>  #include "intel_cdclk.h"
>  #include "intel_clock_gating.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
> index b1979ee9d836..c2ccdca2c2f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_wa.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
> @@ -5,7 +5,6 @@
>  
>  #include <drm/drm_print.h>
>  
> -#include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_display_core.h"
>  #include "intel_display_regs.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 1182bc9a2e6d..8df06b993890 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -29,7 +29,6 @@
>  #include <drm/drm_file.h>
>  #include <drm/drm_print.h>
>  
> -#include "i915_reg.h"
>  #include "intel_crtc.h"
>  #include "intel_de.h"
>  #include "intel_display_power_well.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
> index 5bb0090dd5ed..24ce8a7842c7 100644
> --- a/drivers/gpu/drm/i915/display/intel_fdi.c
> +++ b/drivers/gpu/drm/i915/display/intel_fdi.c
> @@ -8,7 +8,6 @@
>  #include <drm/drm_fixed.h>
>  #include <drm/drm_print.h>
>  
> -#include "i915_reg.h"
>  #include "intel_atomic.h"
>  #include "intel_crtc.h"
>  #include "intel_ddi.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index c96f51d88186..0058098d3c3e 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -19,7 +19,6 @@
>  #include <drm/intel/i915_component.h>
>  #include <drm/intel/intel_pcode_regs.h>
>  
> -#include "i915_reg.h"
>  #include "intel_connector.h"
>  #include "intel_de.h"
>  #include "intel_display_jiffies.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index 82c39e4ffa37..8865cb2ac569 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -5,7 +5,6 @@
>  
>  #include <drm/drm_print.h>
>  
> -#include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_display_irq.h"
>  #include "intel_display_regs.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 27ad8407606b..eced8493e566 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -5,7 +5,6 @@
>  
>  #include <drm/drm_print.h>
>  
> -#include "i915_reg.h"
>  #include "intel_cx0_phy.h"
>  #include "intel_cx0_phy_regs.h"
>  #include "intel_ddi.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index b217ec7aa758..2d799af73bb7 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -9,7 +9,6 @@
>  #include <drm/drm_print.h>
>  
>  #include "g4x_dp.h"
> -#include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_display_jiffies.h"
>  #include "intel_display_power_well.h"
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 064f572bbc85..78ed9c58a72f 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -7,7 +7,6 @@
>  
>  #include <drm/drm_print.h>
>  
> -#include "i915_reg.h"
>  #include "intel_atomic.h"
>  #include "intel_cx0_phy_regs.h"
>  #include "intel_ddi.h"
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 1455ea068d22..8e3031adb09f 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -9,7 +9,6 @@
>  #include <drm/drm_print.h>
>  #include <drm/intel/intel_pcode_regs.h>
>  
> -#include "i915_reg.h"
>  #include "i9xx_wm.h"
>  #include "intel_atomic.h"
>  #include "intel_bw.h"
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index d705af3bf8ba..67f0082d3a69 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -33,7 +33,6 @@
>  #include <drm/drm_print.h>
>  #include <drm/drm_probe_helper.h>
>  
> -#include "i915_reg.h"
>  #include "intel_atomic.h"
>  #include "intel_backlight.h"
>  #include "intel_connector.h"

-- 
Jani Nikula, Intel
