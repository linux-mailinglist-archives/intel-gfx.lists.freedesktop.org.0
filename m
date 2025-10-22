Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A205BFCCFD
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 17:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1150110E7EA;
	Wed, 22 Oct 2025 15:17:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bVzqdUMF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9349110E7EA;
 Wed, 22 Oct 2025 15:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761146258; x=1792682258;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hoCfujzYNURPGr2Vo+g4fzQEPFj+tyubmSk9RB9YNdA=;
 b=bVzqdUMFZm2YRlArqFjKQ4pygR0Q1zIwjX0XAu/+90vjSEn8y3PjPTc4
 VzskguoP2XArh3ICIW5F/oBIfy/M62fEigi5tOAowDTxNusHpVdthja7+
 4y1fbDO5Pfp+NAYfqeu8BSNqD3Z3EX4vxtVbKUE7iWTlwFNzMjlqU1+zI
 V5hAG76zMSs5shNA8qGO25ssMNOZb2Qjbkvgzi9XRHZ4qjMOYHcQnBvCp
 pwN92XcBKDbake6tymdyLLJaj2CcieqoP08py92Os+UqtS2FwLT/T/Nn8
 Fs1YUqm4aH9okWa967goBIuTKbFbB9ikTKOLKXG8acJMfIWJccTbRx5ln w==;
X-CSE-ConnectionGUID: YsG8CRMFRxCmRJ5frhWtsA==
X-CSE-MsgGUID: xkNtzWDtR7ybLTQwS0YzXg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63002810"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="63002810"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:17:37 -0700
X-CSE-ConnectionGUID: Itb7UCImQmWjLGRTLJn1MA==
X-CSE-MsgGUID: hREZ5aL+TyucU38Ftxx2tA==
X-ExtLoop1: 1
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:17:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/6] drm/i915/display: add intel_display_vtd_active()
Date: Wed, 22 Oct 2025 18:17:12 +0300
Message-ID: <e022166af7c67f43904e2d0fc87bc5c13e0f1204.1761146196.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1761146196.git.jani.nikula@intel.com>
References: <cover.1761146196.git.jani.nikula@intel.com>
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

Add intel_display_vtd_active() to utils. It's intentional duplication
with i915_utils.h i915_vtd_active(), but reduces duplication with
xe. Win some, lose some.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bw.c            |  4 ++--
 drivers/gpu/drm/i915/display/intel_display.c       |  8 +++-----
 drivers/gpu/drm/i915/display/intel_display_utils.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_display_utils.h |  1 +
 drivers/gpu/drm/i915/display/intel_fbc.c           |  4 +++-
 drivers/gpu/drm/xe/display/ext/i915_utils.c        | 10 ----------
 6 files changed, 23 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
index 92a060e02cf3..640a40805f18 100644
--- a/drivers/gpu/drm/i915/display/intel_bw.c
+++ b/drivers/gpu/drm/i915/display/intel_bw.c
@@ -13,6 +13,7 @@
 #include "intel_display_core.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
 #include "intel_uncore.h"
@@ -842,14 +843,13 @@ static unsigned int intel_bw_num_active_planes(struct intel_display *display,
 static unsigned int intel_bw_data_rate(struct intel_display *display,
 				       const struct intel_bw_state *bw_state)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
 	unsigned int data_rate = 0;
 	enum pipe pipe;
 
 	for_each_pipe(display, pipe)
 		data_rate += bw_state->data_rate[pipe];
 
-	if (DISPLAY_VER(display) >= 13 && i915_vtd_active(i915))
+	if (DISPLAY_VER(display) >= 13 && intel_display_vtd_active(display))
 		data_rate = DIV_ROUND_UP(data_rate * 105, 100);
 
 	return data_rate;
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a8b4619de347..33174fb46ecb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -76,6 +76,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_display_wa.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
@@ -830,9 +831,8 @@ static void intel_async_flip_vtd_wa(struct intel_display *display,
 static bool needs_async_flip_vtd_wa(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
 
-	return crtc_state->uapi.async_flip && i915_vtd_active(i915) &&
+	return crtc_state->uapi.async_flip && intel_display_vtd_active(display) &&
 		(DISPLAY_VER(display) == 9 || display->platform.broadwell ||
 		 display->platform.haswell);
 }
@@ -8313,7 +8313,5 @@ void i830_disable_pipe(struct intel_display *display, enum pipe pipe)
 
 bool intel_scanout_needs_vtd_wa(struct intel_display *display)
 {
-	struct drm_i915_private *i915 = to_i915(display->drm);
-
-	return IS_DISPLAY_VER(display, 6, 11) && i915_vtd_active(i915);
+	return IS_DISPLAY_VER(display, 6, 11) && intel_display_vtd_active(display);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_utils.c b/drivers/gpu/drm/i915/display/intel_display_utils.c
index 13d3999dd580..04d010f7c23e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_utils.c
+++ b/drivers/gpu/drm/i915/display/intel_display_utils.c
@@ -1,10 +1,15 @@
 // SPDX-License-Identifier: MIT
 /* Copyright © 2025 Intel Corporation */
 
+#include <linux/device.h>
+
+#include <drm/drm_device.h>
+
 #ifdef CONFIG_X86
 #include <asm/hypervisor.h>
 #endif
 
+#include "intel_display_core.h"
 #include "intel_display_utils.h"
 
 bool intel_display_run_as_guest(struct intel_display *display)
@@ -16,3 +21,12 @@ bool intel_display_run_as_guest(struct intel_display *display)
 	return false;
 #endif
 }
+
+bool intel_display_vtd_active(struct intel_display *display)
+{
+	if (device_iommu_mapped(display->drm->dev))
+		return true;
+
+	/* Running as a guest, we assume the host is enforcing VT'd */
+	return intel_display_run_as_guest(display);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_utils.h b/drivers/gpu/drm/i915/display/intel_display_utils.h
index e54e69afd959..af1e34bac720 100644
--- a/drivers/gpu/drm/i915/display/intel_display_utils.h
+++ b/drivers/gpu/drm/i915/display/intel_display_utils.h
@@ -12,5 +12,6 @@ struct intel_display;
 #define MHz(x) KHz(1000 * (x))
 
 bool intel_display_run_as_guest(struct intel_display *display);
+bool intel_display_vtd_active(struct intel_display *display);
 
 #endif /* __INTEL_DISPLAY_UTILS__ */
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 10ef3136dadc..6f2cc01ea4a0 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -59,6 +59,7 @@
 #include "intel_display_rpm.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_display_wa.h"
 #include "intel_fbc.h"
 #include "intel_fbc_regs.h"
@@ -1472,7 +1473,8 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	}
 
 	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */
-	if (i915_vtd_active(i915) && (display->platform.skylake || display->platform.broxton)) {
+	if (intel_display_vtd_active(display) &&
+	    (display->platform.skylake || display->platform.broxton)) {
 		plane_state->no_fbc_reason = "VT-d enabled";
 		return 0;
 	}
diff --git a/drivers/gpu/drm/xe/display/ext/i915_utils.c b/drivers/gpu/drm/xe/display/ext/i915_utils.c
index 1421c2a7b64d..af9ec2abbaa1 100644
--- a/drivers/gpu/drm/xe/display/ext/i915_utils.c
+++ b/drivers/gpu/drm/xe/display/ext/i915_utils.c
@@ -3,18 +3,8 @@
  * Copyright © 2023 Intel Corporation
  */
 
-#include "i915_drv.h"
 #include "i915_utils.h"
 
-bool i915_vtd_active(struct drm_i915_private *i915)
-{
-	if (device_iommu_mapped(i915->drm.dev))
-		return true;
-
-	/* Running as a guest, we assume the host is enforcing VT'd */
-	return i915_run_as_guest();
-}
-
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
 
 /* i915 specific, just put here for shutting it up */
-- 
2.47.3

