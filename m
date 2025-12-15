Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4C7CBEA45
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 16:28:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A58B10E5E9;
	Mon, 15 Dec 2025 15:28:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UHdnZNoR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 415A210E5EC;
 Mon, 15 Dec 2025 15:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765812529; x=1797348529;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S6GR38pKGVSeUcH66u32SEc/QbaBIkWgyDCh8Q13PO4=;
 b=UHdnZNoRkEFnCeMZw+R4IpKSHv6Z5eaZhAAn45RV8/jsQml5cX3W9cgU
 M36yZ4z+z4WkMWnjDCCLxlpaNMBH8+HCyjMahikibvkhcjbt+ejF7i/Wy
 frGhi3dKq850U87UBcy9EPXCyaetUT0Nu7eCCGPCvkcnhTDZrE3ESHkbm
 vHWFY1AKBlqFr79SdVOHFyE1Mg6HtTCnm1+vVfF5sdPSPTaiVRZr+lYzI
 QpcoSlou4lG++vEIX1FfLuLasl9ZU4FLy+ZQ/YfgcO4b2jpNk6GlPUNap
 wPBTRUV91yHhPTZEAC2KdTxcK1cXOJFaPGW8fQUAx32fhUlfBcpf2U+/0 g==;
X-CSE-ConnectionGUID: eBqjQiKtS2y570SEFWUSAQ==
X-CSE-MsgGUID: MFtYX59TQsal7Kl++mDTNA==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="78354342"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="78354342"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:28:49 -0800
X-CSE-ConnectionGUID: /KXYB7moS0OkyW1LC2en8g==
X-CSE-MsgGUID: urYwgc8yRguDKUwLWbLAew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="201931629"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:28:47 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 03/15] drm/i915: rename intel_plane_initial.h to
 intel_initial_plane.h
Date: Mon, 15 Dec 2025 17:28:17 +0200
Message-ID: <32c2d68a9ae7d2262ad2c63e873e522e67bc78df.1765812266.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1765812266.git.jani.nikula@intel.com>
References: <cover.1765812266.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

Follow the more naturally flowing naming. Rename both the header and the
vblank wait function.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c              | 8 ++++----
 drivers/gpu/drm/i915/display/intel_display_driver.c       | 2 +-
 .../{intel_plane_initial.h => intel_initial_plane.h}      | 6 +++---
 drivers/gpu/drm/i915/i915_initial_plane.c                 | 6 +++---
 drivers/gpu/drm/xe/display/xe_initial_plane.c             | 6 +++---
 5 files changed, 14 insertions(+), 14 deletions(-)
 rename drivers/gpu/drm/i915/display/{intel_plane_initial.h => intel_initial_plane.h} (60%)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 9c6d3ecdb589..a29a12bcec0b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -100,6 +100,7 @@
 #include "intel_frontbuffer.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
+#include "intel_initial_plane.h"
 #include "intel_link_bw.h"
 #include "intel_lt_phy.h"
 #include "intel_lvds.h"
@@ -113,7 +114,6 @@
 #include "intel_pfit.h"
 #include "intel_pipe_crc.h"
 #include "intel_plane.h"
-#include "intel_plane_initial.h"
 #include "intel_pmdemand.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
@@ -639,7 +639,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	if ((crtc_state->active_planes & ~BIT(PLANE_CURSOR)) == 0 &&
 	    hsw_ips_disable(crtc_state)) {
 		crtc_state->ips_enabled = false;
-		intel_plane_initial_vblank_wait(crtc);
+		intel_initial_plane_vblank_wait(crtc);
 	}
 
 	/*
@@ -653,7 +653,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 	 */
 	if (HAS_GMCH(display) &&
 	    intel_set_memory_cxsr(display, false))
-		intel_plane_initial_vblank_wait(crtc);
+		intel_initial_plane_vblank_wait(crtc);
 
 	/*
 	 * Gen2 reports pipe underruns whenever all planes are disabled.
@@ -663,7 +663,7 @@ void intel_plane_disable_noatomic(struct intel_crtc *crtc,
 		intel_set_cpu_fifo_underrun_reporting(display, crtc->pipe, false);
 
 	intel_plane_disable_arm(NULL, plane, crtc_state);
-	intel_plane_initial_vblank_wait(crtc);
+	intel_initial_plane_vblank_wait(crtc);
 }
 
 unsigned int
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index e282b533d5b6..b471e230fcb1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -54,11 +54,11 @@
 #include "intel_hdcp.h"
 #include "intel_hotplug.h"
 #include "intel_hti.h"
+#include "intel_initial_plane.h"
 #include "intel_modeset_lock.h"
 #include "intel_modeset_setup.h"
 #include "intel_opregion.h"
 #include "intel_overlay.h"
-#include "intel_plane_initial.h"
 #include "intel_pmdemand.h"
 #include "intel_pps.h"
 #include "intel_psr.h"
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.h b/drivers/gpu/drm/i915/display/intel_initial_plane.h
similarity index 60%
rename from drivers/gpu/drm/i915/display/intel_plane_initial.h
rename to drivers/gpu/drm/i915/display/intel_initial_plane.h
index 5c315acda210..5f9a347be8f0 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.h
+++ b/drivers/gpu/drm/i915/display/intel_initial_plane.h
@@ -3,13 +3,13 @@
  * Copyright © 2021 Intel Corporation
  */
 
-#ifndef __INTEL_PLANE_INITIAL_H__
-#define __INTEL_PLANE_INITIAL_H__
+#ifndef __INTEL_INITIAL_PLANE_H__
+#define __INTEL_INITIAL_PLANE_H__
 
 struct intel_crtc;
 struct intel_display;
 
 void intel_initial_plane_config(struct intel_display *display);
-void intel_plane_initial_vblank_wait(struct intel_crtc *crtc);
+void intel_initial_plane_vblank_wait(struct intel_crtc *crtc);
 
 #endif
diff --git a/drivers/gpu/drm/i915/i915_initial_plane.c b/drivers/gpu/drm/i915/i915_initial_plane.c
index 87c964485a41..b7f115708c32 100644
--- a/drivers/gpu/drm/i915/i915_initial_plane.c
+++ b/drivers/gpu/drm/i915/i915_initial_plane.c
@@ -11,14 +11,14 @@
 #include "display/intel_display_types.h"
 #include "display/intel_fb.h"
 #include "display/intel_frontbuffer.h"
+#include "display/intel_initial_plane.h"
 #include "display/intel_plane.h"
-#include "display/intel_plane_initial.h"
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
 
 #include "i915_drv.h"
 
-void intel_plane_initial_vblank_wait(struct intel_crtc *crtc)
+void intel_initial_plane_vblank_wait(struct intel_crtc *crtc)
 {
 	intel_crtc_wait_for_next_vblank(crtc);
 }
@@ -436,7 +436,7 @@ void intel_initial_plane_config(struct intel_display *display)
 		intel_find_initial_plane_obj(crtc, plane_configs);
 
 		if (display->funcs.display->fixup_initial_plane_config(crtc, plane_config))
-			intel_plane_initial_vblank_wait(crtc);
+			intel_initial_plane_vblank_wait(crtc);
 
 		plane_config_fini(plane_config);
 	}
diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 01c105a93bb9..9d5760e56c4c 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -19,15 +19,15 @@
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
 #include "intel_frontbuffer.h"
+#include "intel_initial_plane.h"
 #include "intel_plane.h"
-#include "intel_plane_initial.h"
 #include "xe_bo.h"
 #include "xe_vram_types.h"
 #include "xe_wa.h"
 
 #include <generated/xe_device_wa_oob.h>
 
-void intel_plane_initial_vblank_wait(struct intel_crtc *crtc)
+void intel_initial_plane_vblank_wait(struct intel_crtc *crtc)
 {
 	/* Early xe has no irq */
 	struct xe_device *xe = to_xe_device(crtc->base.dev);
@@ -314,7 +314,7 @@ void intel_initial_plane_config(struct intel_display *display)
 		intel_find_initial_plane_obj(crtc, plane_configs);
 
 		if (display->funcs.display->fixup_initial_plane_config(crtc, plane_config))
-			intel_plane_initial_vblank_wait(crtc);
+			intel_initial_plane_vblank_wait(crtc);
 
 		plane_config_fini(plane_config);
 	}
-- 
2.47.3

