Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE74AC0903
	for <lists+intel-gfx@lfdr.de>; Thu, 22 May 2025 11:49:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 880C810ECB4;
	Thu, 22 May 2025 09:49:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OPv4JJ7n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B29D110ECB4;
 Thu, 22 May 2025 09:49:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747907347; x=1779443347;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jmilzEbCAli6t980W/F2ICEzIglS7NYb1K/cO08Znlc=;
 b=OPv4JJ7n2WHrHlS9gcaHMXbnHOKzwBXzZChJWcIAhr8qpy/YBO3yqcUU
 WbOrN1mv5PP2k10EYN9UoGf/nk5w3wFNfOOC5ylNWtDlWJmAnSzFsNYOp
 4vf2z2rPL6TR5OxLBTliLo4nOuRkcVpxi9fNhyHaxyYk4tKOHQD+Dt+0f
 XnVzF+OKmroRQi7YJlpwiUBrQlfSUa3XS1LSg0aTzvDoAFfMD7JoJZ+D1
 FfQYH2bh55CdLz6JkqLKCD83ZCKzqx3AcnQUytTtHrEHx8vs0KPmmjZ9W
 zLOd1tm9YHwFLdE6pIbDE81v/IF+XWRdZdJOsjjjL7fXgeNTNvDPIWjwQ g==;
X-CSE-ConnectionGUID: 7IOy22a6TtiFSABGvzFmJw==
X-CSE-MsgGUID: 5J3R3w6JTkqxTLx1CawyiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="50025571"
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="50025571"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 02:49:07 -0700
X-CSE-ConnectionGUID: k5UG9LHLRduygcFJ72awQw==
X-CSE-MsgGUID: rk0AFXaOS6ONXYK6/i3Apg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,305,1739865600"; d="scan'208";a="141044328"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2025 02:49:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	lucas.demarchi@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH v2 3/3] drm/xe: stop including intel_display_{core,
 device}.h from xe_device_types.h
Date: Thu, 22 May 2025 12:48:44 +0300
Message-Id: <a12918f4d404e2d6d4e963126ce96df01d5064f3.1747907216.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747907216.git.jani.nikula@intel.com>
References: <cover.1747907216.git.jani.nikula@intel.com>
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

Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>
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
index db7ef8737e1d..3f92bf51813e 100644
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

