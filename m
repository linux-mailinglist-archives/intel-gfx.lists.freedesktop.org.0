Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B007C5C906
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Nov 2025 11:27:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C701910EA2D;
	Fri, 14 Nov 2025 10:27:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WFjlrroQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C71C710EA2D;
 Fri, 14 Nov 2025 10:27:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763116039; x=1794652039;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NUkg8az56x2T8gTgchXh0YUvKLuyDGcWpvAg5NybWe4=;
 b=WFjlrroQTiWoCLIeA31jPcjngX/aLEn7Zk9AIhvTxaz6kZ3H1YHY/6YH
 ZW6xOB442IowwsZRXFS7o1lL1xguN+cFjOp+PNbWYaoOV/l23U1tVw1xp
 txTXJuK5S/7/GnJcwsnfbZeDz7oCuzn7SiUlkS+BZk/34WdxKIoCmzIra
 GOGVFZwx5FvaDo3rI4AexYRXFlPAj+INIFY+HNrPwYNEMv/z8uMXzaZgo
 YXYeOAm1PeRyRRqkzcUxTTesoaKv0FYlVUydFklkenm/0bbTNvfTDc5tK
 pqSR6zoKtnDoIzQxgOhLY0LTAaCeWAXc3rcn7TUD5OGVUiRrN/YVlviVJ Q==;
X-CSE-ConnectionGUID: j/RmCQbqRvKkf7HKIZghSw==
X-CSE-MsgGUID: WCb53LeyR8GCEol66Itp6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11612"; a="87855756"
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="87855756"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 02:27:19 -0800
X-CSE-ConnectionGUID: B+Tv8yvYQeuwjtOdtE156Q==
X-CSE-MsgGUID: DcZXQdvdTHSd9apRUC6heA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,304,1754982000"; d="scan'208";a="189041747"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2025 02:27:17 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 05/10] drm/i915: add .fence_support_legacy to parent interface
Date: Fri, 14 Nov 2025 12:26:44 +0200
Message-ID: <ee77882f46d6f68893337801439609bec2f08e9f.1763115899.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763115899.git.jani.nikula@intel.com>
References: <cover.1763115899.git.jani.nikula@intel.com>
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

Add .fence_support_legacy() to display parent interface, removing more
dependencies on struct drm_i915_private, i915_drv.h, and
gt/intel_gt_types.h.

This allows us to remove the xe compat gt/intel_gt_types.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c              |  8 ++------
 drivers/gpu/drm/i915/display/intel_parent.c           |  5 +++++
 drivers/gpu/drm/i915/display/intel_parent.h           |  2 ++
 drivers/gpu/drm/i915/i915_driver.c                    |  6 ++++++
 .../drm/xe/compat-i915-headers/gt/intel_gt_types.h    | 11 -----------
 include/drm/intel/display_parent_interface.h          |  3 +++
 6 files changed, 18 insertions(+), 17 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index ab0bcea5aa89..8c56c87d00a9 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -47,9 +47,6 @@
 
 #include "gem/i915_gem_stolen.h"
 
-#include "gt/intel_gt_types.h"
-
-#include "i915_drv.h"
 #include "i915_vma.h"
 #include "i9xx_plane_regs.h"
 #include "intel_de.h"
@@ -64,6 +61,7 @@
 #include "intel_fbc_regs.h"
 #include "intel_frontbuffer.h"
 #include "intel_parent.h"
+#include "intel_step.h"
 
 #define for_each_fbc_id(__display, __fbc_id) \
 	for ((__fbc_id) = INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
@@ -267,9 +265,7 @@ static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_s
 
 static bool intel_fbc_has_fences(struct intel_display *display)
 {
-	struct drm_i915_private __maybe_unused *i915 = to_i915(display->drm);
-
-	return intel_gt_support_legacy_fencing(to_gt(i915));
+	return intel_parent_fence_support_legacy(display);
 }
 
 static u32 i8xx_fbc_ctl(struct intel_fbc *fbc)
diff --git a/drivers/gpu/drm/i915/display/intel_parent.c b/drivers/gpu/drm/i915/display/intel_parent.c
index 3786fd42827d..3dd31852e2e1 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.c
+++ b/drivers/gpu/drm/i915/display/intel_parent.c
@@ -36,3 +36,8 @@ bool intel_parent_vgpu_active(struct intel_display *display)
 {
 	return display->parent->vgpu_active && display->parent->vgpu_active(display->drm);
 }
+
+bool intel_parent_fence_support_legacy(struct intel_display *display)
+{
+	return display->parent->fence_support_legacy && display->parent->fence_support_legacy(display->drm);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_parent.h b/drivers/gpu/drm/i915/display/intel_parent.h
index 222c95836d35..fc6799db0361 100644
--- a/drivers/gpu/drm/i915/display/intel_parent.h
+++ b/drivers/gpu/drm/i915/display/intel_parent.h
@@ -13,4 +13,6 @@ void intel_parent_irq_synchronize(struct intel_display *display);
 
 bool intel_parent_vgpu_active(struct intel_display *display);
 
+bool intel_parent_fence_support_legacy(struct intel_display *display);
+
 #endif /* __INTEL_PARENT_H__ */
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index f21f1919a225..814b430de960 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -744,10 +744,16 @@ static bool vgpu_active(struct drm_device *drm)
 	return intel_vgpu_active(to_i915(drm));
 }
 
+static bool fence_support_legacy(struct drm_device *drm)
+{
+	return intel_gt_support_legacy_fencing(to_gt(to_i915(drm)));
+}
+
 static const struct intel_display_parent_interface parent = {
 	.rpm = &i915_display_rpm_interface,
 	.irq = &i915_display_irq_interface,
 	.vgpu_active = vgpu_active,
+	.fence_support_legacy = fence_support_legacy,
 };
 
 const struct intel_display_parent_interface *i915_driver_parent_interface(void)
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h b/drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h
deleted file mode 100644
index c15806d6c4f7..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/gt/intel_gt_types.h
+++ /dev/null
@@ -1,11 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#ifndef __INTEL_GT_TYPES__
-#define __INTEL_GT_TYPES__
-
-#define intel_gt_support_legacy_fencing(gt) 0
-
-#endif
diff --git a/include/drm/intel/display_parent_interface.h b/include/drm/intel/display_parent_interface.h
index f3834f36ce74..11767adb0083 100644
--- a/include/drm/intel/display_parent_interface.h
+++ b/include/drm/intel/display_parent_interface.h
@@ -51,6 +51,9 @@ struct intel_display_parent_interface {
 
 	/** @vgpu_active: Is vGPU active? Optional. */
 	bool (*vgpu_active)(struct drm_device *drm);
+
+	/** @fence_support_legacy: Support legacy fencing? Optional. */
+	bool (*fence_support_legacy)(struct drm_device *drm);
 };
 
 #endif
-- 
2.47.3

