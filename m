Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FECABF16C
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 12:22:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B6B110E77D;
	Wed, 21 May 2025 10:22:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="haBUUM5P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7221010E740;
 Wed, 21 May 2025 10:22:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747822927; x=1779358927;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WzL+edoYPXR4HhsJgAzRggzt7OJ4Wzmjm8ZlokszzKY=;
 b=haBUUM5PyAc6GQuTL8K2MhD/BURcAsXLRSNkC/CNlogFoFi2MWl5Y+tH
 fPgNWcE6bjaVbvIq7BH/3DZ7Vh85DgOvIBWzgNwUai/4wQ9Ck8QBvmmmw
 luTEONlzuMUxRWi7VwNeOvTS9FUx1HZn007uPWFWhsHnpp8pneXXqf0n8
 SRwrDklJTOtZJKX+l2vTvUnkHrsCRJ9b3JRXgkV55IIY2axReHLzb1SsF
 ktqeggGyDsoQ1hlG2GZXu0AwhGa/OxseGn5F53dHnrTYVB4nqaVj4rjqA
 WL7GQ4g4yspZppQXGgFfMiFkcQNw6NmUMiBrwAGHRV2K3TxA34HFVmHSo A==;
X-CSE-ConnectionGUID: qK1hZbA5QASD1tkjv47cCg==
X-CSE-MsgGUID: yRDRt7OgTSey6AlGf5lwgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="49853426"
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="49853426"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 03:22:07 -0700
X-CSE-ConnectionGUID: o5IqYDFXR1OLfLFHA8uY4A==
X-CSE-MsgGUID: 0FpZJK7YQXincPI5h8miPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="141059013"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.174])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 03:22:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH 3/3] drm/xe: stop including intel_display_{core,
 device}.h from xe_device_types.h
Date: Wed, 21 May 2025 13:21:48 +0300
Message-Id: <48e57f0813a4531f857ff449af4f2ab2c54eb4f1.1747822630.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747822630.git.jani.nikula@intel.com>
References: <cover.1747822630.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Make xe->display pointer opaque to most of core xe driver. A few places
now need explicit include of intel_display_core.h.

With this dependency broken, changes in display should cause radically
less recompilation of xe.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c   | 1 +
 drivers/gpu/drm/xe/display/xe_display.c       | 1 +
 drivers/gpu/drm/xe/display/xe_display_rpm.c   | 1 +
 drivers/gpu/drm/xe/display/xe_display_wa.c    | 2 +-
 drivers/gpu/drm/xe/display/xe_fb_pin.c        | 1 +
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 1 +
 drivers/gpu/drm/xe/display/xe_tdf.c           | 4 ++--
 drivers/gpu/drm/xe/xe_device_types.h          | 6 +-----
 8 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index e8191562d122..b28a94df824f 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -5,6 +5,7 @@
 
 #include <drm/drm_fb_helper.h>
 
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fbdev_fb.h"
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index e3e5d41db29d..d52b9de9cdf8 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -20,6 +20,7 @@
 #include "intel_audio.h"
 #include "intel_bw.h"
 #include "intel_display.h"
+#include "intel_display_core.h"
 #include "intel_display_driver.h"
 #include "intel_display_irq.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.c b/drivers/gpu/drm/xe/display/xe_display_rpm.c
index ef76efe42e9f..3825376e98cc 100644
--- a/drivers/gpu/drm/xe/display/xe_display_rpm.c
+++ b/drivers/gpu/drm/xe/display/xe_display_rpm.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: MIT
 /* Copyright © 2025 Intel Corporation */
 
+#include "intel_display_core.h"
 #include "intel_display_rpm.h"
 #include "xe_device.h"
 #include "xe_device_types.h"
diff --git a/drivers/gpu/drm/xe/display/xe_display_wa.c b/drivers/gpu/drm/xe/display/xe_display_wa.c
index 2933ca97d673..68d1387d81a0 100644
--- a/drivers/gpu/drm/xe/display/xe_display_wa.c
+++ b/drivers/gpu/drm/xe/display/xe_display_wa.c
@@ -3,8 +3,8 @@
  * Copyright © 2024 Intel Corporation
  */
 
+#include "intel_display_core.h"
 #include "intel_display_wa.h"
-
 #include "xe_device.h"
 #include "xe_wa.h"
 
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index c2b4be72f7a0..461ecdfdb742 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -6,6 +6,7 @@
 #include <drm/ttm/ttm_bo.h>
 
 #include "i915_vma.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_dpt.h"
 #include "intel_fb.h"
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index 6502b8274173..fada6f877bca 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -14,6 +14,7 @@
 #include "intel_atomic_plane.h"
 #include "intel_crtc.h"
 #include "intel_display.h"
+#include "intel_display_core.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_fb_pin.h"
diff --git a/drivers/gpu/drm/xe/display/xe_tdf.c b/drivers/gpu/drm/xe/display/xe_tdf.c
index 2a7fccbeb1d5..78bda4c47874 100644
--- a/drivers/gpu/drm/xe/display/xe_tdf.c
+++ b/drivers/gpu/drm/xe/display/xe_tdf.c
@@ -3,9 +3,9 @@
  * Copyright © 2024 Intel Corporation
  */
 
-#include "xe_device.h"
-#include "intel_display_types.h"
+#include "intel_display_core.h"
 #include "intel_tdf.h"
+#include "xe_device.h"
 
 void intel_td_flush(struct intel_display *display)
 {
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 7659222703d2..0482e00e58df 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -30,11 +30,7 @@
 #define TEST_VM_OPS_ERROR
 #endif
 
-#if IS_ENABLED(CONFIG_DRM_XE_DISPLAY)
-#include "intel_display_core.h"
-#include "intel_display_device.h"
-#endif
-
+struct intel_display;
 struct xe_ggtt;
 struct xe_pat_ops;
 struct xe_pxp;
-- 
2.39.5

