Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C286A7161B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 12:55:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05AA710E6B4;
	Wed, 26 Mar 2025 11:55:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="di7ug6mC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4EA710E121;
 Wed, 26 Mar 2025 11:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742990098; x=1774526098;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OT9rcmtpMMePakDbcc4WJqJus2fAAcBXZg+g/zWkKvw=;
 b=di7ug6mCZ2dXRMx7gwnellcgDJz+XwWotBDraLkzqnODmhNLG01bdAHr
 L0Emuvv9WtkD5ia7FDoLmmsbQQhZ9jmTy4srRkpfcI3OTcCnMxsIYjB7r
 HwXorNMi+hw2RY5A71EwCYPPIO1gKjn80CI4g3twrFo7F75tv5VL2bMyC
 3m9/zKjHeSlWT5YjG+9fflhYrtYWEzzzckkUsJKL29buWnqSm0vJT4Luk
 Am++w6FoZQl3+2/p82gdNyGfDSRG5XqaPlyBgRr0SqACcDMJWIRUtCbuP
 YIFc0KoRl4WX2P9zOC5M1mizPhzNrU1kpmrh7j9Zyr8DgaI2r3oYAVfDS A==;
X-CSE-ConnectionGUID: yAlmEdZjT2iH0d2N9i3ajQ==
X-CSE-MsgGUID: r543Ry87T0yW56lmQfOtCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="44152335"
X-IronPort-AV: E=Sophos;i="6.14,277,1736841600"; d="scan'208";a="44152335"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 04:54:57 -0700
X-CSE-ConnectionGUID: hJlV3IR+QZS5Kga/ZyowAQ==
X-CSE-MsgGUID: p2e54kYsQJGEbN1TrLDRtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,277,1736841600"; d="scan'208";a="129921964"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.210])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 04:54:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH] drm/i915: reduce intel_wakeref.h dependencies
Date: Wed, 26 Mar 2025 13:54:52 +0200
Message-Id: <20250326115452.2090275-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

Forward declare struct drm_printer instead of including drm/drm_print.h,
as we only need the pointer. Turns out quite a few places depend on this
include implicitly. Make them explicit.

Some of the includes are just stale and unnecessary. Group the forward
declarations together while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/dvo_ch7017.c        |  2 ++
 drivers/gpu/drm/i915/display/dvo_ch7xxx.c        |  2 ++
 drivers/gpu/drm/i915/display/dvo_ivch.c          |  2 ++
 drivers/gpu/drm/i915/display/dvo_ns2501.c        |  2 ++
 drivers/gpu/drm/i915/display/dvo_sil164.c        |  2 ++
 drivers/gpu/drm/i915/display/dvo_tfp410.c        |  2 ++
 drivers/gpu/drm/i915/display/icl_dsi.c           |  1 +
 drivers/gpu/drm/i915/display/intel_color.c       |  2 ++
 drivers/gpu/drm/i915/display/intel_combo_phy.c   |  2 ++
 drivers/gpu/drm/i915/display/intel_dkl_phy.c     |  1 +
 drivers/gpu/drm/i915/display/intel_dvo.c         |  1 +
 drivers/gpu/drm/i915/display/intel_hti.c         |  1 +
 drivers/gpu/drm/i915/display/intel_load_detect.c |  1 +
 drivers/gpu/drm/i915/display/intel_lspcon.c      |  1 +
 drivers/gpu/drm/i915/display/intel_pmdemand.c    |  2 ++
 drivers/gpu/drm/i915/display/intel_snps_phy.c    |  2 ++
 drivers/gpu/drm/i915/display/intel_tc.c          |  2 ++
 drivers/gpu/drm/i915/display/intel_vdsc.c        |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c         |  2 ++
 drivers/gpu/drm/i915/intel_wakeref.h             | 11 ++++-------
 20 files changed, 35 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/dvo_ch7017.c b/drivers/gpu/drm/i915/display/dvo_ch7017.c
index 206818f9ad49..f10c0fb8d2c8 100644
--- a/drivers/gpu/drm/i915/display/dvo_ch7017.c
+++ b/drivers/gpu/drm/i915/display/dvo_ch7017.c
@@ -25,6 +25,8 @@
  *
  */
 
+#include <drm/drm_print.h>
+
 #include "intel_display_types.h"
 #include "intel_dvo_dev.h"
 
diff --git a/drivers/gpu/drm/i915/display/dvo_ch7xxx.c b/drivers/gpu/drm/i915/display/dvo_ch7xxx.c
index 10ab3cc73e58..49f02aca818b 100644
--- a/drivers/gpu/drm/i915/display/dvo_ch7xxx.c
+++ b/drivers/gpu/drm/i915/display/dvo_ch7xxx.c
@@ -26,6 +26,8 @@ SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
 **************************************************************************/
 
+#include <drm/drm_print.h>
+
 #include "intel_display_types.h"
 #include "intel_dvo_dev.h"
 
diff --git a/drivers/gpu/drm/i915/display/dvo_ivch.c b/drivers/gpu/drm/i915/display/dvo_ivch.c
index d9c3152d4338..0713b2709412 100644
--- a/drivers/gpu/drm/i915/display/dvo_ivch.c
+++ b/drivers/gpu/drm/i915/display/dvo_ivch.c
@@ -29,6 +29,8 @@
  *
  */
 
+#include <drm/drm_print.h>
+
 #include "intel_display_types.h"
 #include "intel_dvo_dev.h"
 
diff --git a/drivers/gpu/drm/i915/display/dvo_ns2501.c b/drivers/gpu/drm/i915/display/dvo_ns2501.c
index 92d32d6b5bce..80b71bd6a837 100644
--- a/drivers/gpu/drm/i915/display/dvo_ns2501.c
+++ b/drivers/gpu/drm/i915/display/dvo_ns2501.c
@@ -26,6 +26,8 @@
  *
  */
 
+#include <drm/drm_print.h>
+
 #include "intel_display_types.h"
 #include "intel_dvo_dev.h"
 
diff --git a/drivers/gpu/drm/i915/display/dvo_sil164.c b/drivers/gpu/drm/i915/display/dvo_sil164.c
index b42c717085f3..017b617a8069 100644
--- a/drivers/gpu/drm/i915/display/dvo_sil164.c
+++ b/drivers/gpu/drm/i915/display/dvo_sil164.c
@@ -26,6 +26,8 @@ SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 
 **************************************************************************/
 
+#include <drm/drm_print.h>
+
 #include "intel_display_types.h"
 #include "intel_dvo_dev.h"
 
diff --git a/drivers/gpu/drm/i915/display/dvo_tfp410.c b/drivers/gpu/drm/i915/display/dvo_tfp410.c
index 280699438526..ed560e3438db 100644
--- a/drivers/gpu/drm/i915/display/dvo_tfp410.c
+++ b/drivers/gpu/drm/i915/display/dvo_tfp410.c
@@ -25,6 +25,8 @@
  *
  */
 
+#include <drm/drm_print.h>
+
 #include "intel_display_types.h"
 #include "intel_dvo_dev.h"
 
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 402b7b2e1829..9dd2e2c295b9 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -29,6 +29,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_fixed.h>
 #include <drm/drm_mipi_dsi.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index bbf6df7ebb95..98dddf72c0eb 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -22,6 +22,8 @@
  *
  */
 
+#include <drm/drm_print.h>
+
 #include "i915_utils.h"
 #include "i9xx_plane_regs.h"
 #include "intel_color.h"
diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
index 17eea244cc83..f5cc38dbe559 100644
--- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
@@ -3,6 +3,8 @@
  * Copyright © 2018 Intel Corporation
  */
 
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_combo_phy.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy.c b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
index 0813fb9b5823..dad7192132ad 100644
--- a/drivers/gpu/drm/i915/display/intel_dkl_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_dkl_phy.c
@@ -4,6 +4,7 @@
  */
 
 #include <drm/drm_device.h>
+#include <drm/drm_print.h>
 
 #include "intel_de.h"
 #include "intel_display.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 602e76ddf788..b61520353c92 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -31,6 +31,7 @@
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/display/intel_hti.c b/drivers/gpu/drm/i915/display/intel_hti.c
index fb6b84f6a81d..dc454420c134 100644
--- a/drivers/gpu/drm/i915/display/intel_hti.c
+++ b/drivers/gpu/drm/i915/display/intel_hti.c
@@ -4,6 +4,7 @@
  */
 
 #include <drm/drm_device.h>
+#include <drm/drm_print.h>
 
 #include "intel_de.h"
 #include "intel_display.h"
diff --git a/drivers/gpu/drm/i915/display/intel_load_detect.c b/drivers/gpu/drm/i915/display/intel_load_detect.c
index 86cc03a4413c..aad52d0d83e1 100644
--- a/drivers/gpu/drm/i915/display/intel_load_detect.c
+++ b/drivers/gpu/drm/i915/display/intel_load_detect.c
@@ -6,6 +6,7 @@
 #include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_atomic_uapi.h>
+#include <drm/drm_print.h>
 
 #include "intel_atomic.h"
 #include "intel_crtc.h"
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 63c1afa30b05..f94b7eeae20f 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -27,6 +27,7 @@
 #include <drm/display/drm_hdmi_helper.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_edid.h>
+#include <drm/drm_print.h>
 
 #include "i915_reg.h"
 #include "i915_utils.h"
diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu/drm/i915/display/intel_pmdemand.c
index 63301a01906c..d22b5469672d 100644
--- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
+++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
@@ -5,6 +5,8 @@
 
 #include <linux/bitops.h>
 
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_atomic.h"
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index b9acd9fe160c..2b53ac9f4935 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -5,6 +5,8 @@
 
 #include <linux/math.h>
 
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_ddi.h"
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 426a3c8529a3..2c6c18434a4c 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -3,6 +3,8 @@
  * Copyright © 2019 Intel Corporation
  */
 
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
 #include "i915_utils.h"
 #include "intel_atomic.h"
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 470c170897e5..8e799e225af1 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -9,6 +9,7 @@
 
 #include <drm/display/drm_dsc_helper.h>
 #include <drm/drm_fixed.h>
+#include <drm/drm_print.h>
 
 #include "i915_utils.h"
 #include "intel_crtc.h"
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 414f93851059..4f442804a41a 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -4,6 +4,8 @@
  *
  */
 
+#include <drm/drm_print.h>
+
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
index 48836ef52d40..a2894a56e18f 100644
--- a/drivers/gpu/drm/i915/intel_wakeref.h
+++ b/drivers/gpu/drm/i915/intel_wakeref.h
@@ -7,8 +7,6 @@
 #ifndef INTEL_WAKEREF_H
 #define INTEL_WAKEREF_H
 
-#include <drm/drm_print.h>
-
 #include <linux/atomic.h>
 #include <linux/bitfield.h>
 #include <linux/bits.h>
@@ -16,11 +14,13 @@
 #include <linux/mutex.h>
 #include <linux/refcount.h>
 #include <linux/ref_tracker.h>
-#include <linux/slab.h>
-#include <linux/stackdepot.h>
 #include <linux/timer.h>
 #include <linux/workqueue.h>
 
+struct drm_printer;
+struct intel_runtime_pm;
+struct intel_wakeref;
+
 typedef struct ref_tracker *intel_wakeref_t;
 
 #define INTEL_REFTRACK_DEAD_COUNT 16
@@ -32,9 +32,6 @@ typedef struct ref_tracker *intel_wakeref_t;
 #define INTEL_WAKEREF_BUG_ON(expr) BUILD_BUG_ON_INVALID(expr)
 #endif
 
-struct intel_runtime_pm;
-struct intel_wakeref;
-
 struct intel_wakeref_ops {
 	int (*get)(struct intel_wakeref *wf);
 	int (*put)(struct intel_wakeref *wf);
-- 
2.39.5

