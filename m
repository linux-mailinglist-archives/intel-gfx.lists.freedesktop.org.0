Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 296D06A6D84
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Mar 2023 14:54:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91C7D10E266;
	Wed,  1 Mar 2023 13:54:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 541A310E266
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Mar 2023 13:54:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677678882; x=1709214882;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RIPOvEeWR5csbcjsd+q5obAAIKQmlOLtuky5ilH7oNQ=;
 b=VOtexax967qYAjDyQNGr4oV31hP68Evnhu5S9D78v6YZ5Fb+WnralEKo
 8BlQKVJH3vm5Adv3eZAaO5oPF7GPLNoghTAs6IsYFKl0daLtxJ0R6TKKE
 4NCuKkn+FiOvZNos0NSx65y176Id2oYz85Lmvj1IOE+O9qn1MnKm2VErO
 vFdfcMhkMYMC6lzrjABhbzZjl8m/F3Tojros3FvGSWezkibQiwPjqNDvS
 diuxr/OgidvLju43+v4vIubUKzAuhp3k+XrcLfkIbBjlZL0siKBqRaAgc
 mnBEGPPeF6FJvQV9D/694VqcZEkUD3RihLBATxKg4gzoMIwzVH8ZZjOIj g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="333139428"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="333139428"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 05:54:41 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10636"; a="667875572"
X-IronPort-AV: E=Sophos;i="5.98,225,1673942400"; d="scan'208";a="667875572"
Received: from dsvarnas-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.46.249])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2023 05:54:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Mar 2023 15:54:18 +0200
Message-Id: <ab9a7147b0cd63d95b9f27ed40615b9c9be18f84.1677678803.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <cover.1677678803.git.jani.nikula@intel.com>
References: <cover.1677678803.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915: remove unnecessary intel_pm.h
 includes
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

As intel_pm.[ch] used to contain much more, intel_pm.h was included in a
lot of places. Many of them are now unnecessary. Remove.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c               | 1 -
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 1 -
 drivers/gpu/drm/i915/display/intel_modeset_setup.c   | 1 -
 drivers/gpu/drm/i915/display/skl_watermark.c         | 1 -
 drivers/gpu/drm/i915/gt/intel_gt.c                   | 1 -
 drivers/gpu/drm/i915/gt/intel_gt_pm.c                | 1 -
 drivers/gpu/drm/i915/gt/selftest_llc.c               | 1 -
 drivers/gpu/drm/i915/i915_debugfs.c                  | 1 -
 drivers/gpu/drm/i915/i915_irq.c                      | 1 -
 drivers/gpu/drm/i915/i915_pmu.c                      | 1 -
 drivers/gpu/drm/i915/i915_request.c                  | 1 -
 drivers/gpu/drm/i915/i915_sysfs.c                    | 1 -
 drivers/gpu/drm/i915/intel_uncore.c                  | 1 -
 13 files changed, 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index 3d4687efe4dd..caef72d38798 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -9,7 +9,6 @@
 #include "intel_display.h"
 #include "intel_display_trace.h"
 #include "intel_mchbar_regs.h"
-#include "intel_pm.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
 #include "vlv_sideband.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 25013f303c82..1e654ddd0815 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -26,7 +26,6 @@
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
 #include "intel_panel.h"
-#include "intel_pm.h"
 #include "intel_psr.h"
 #include "intel_sprite.h"
 #include "intel_wm.h"
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 60f71e6f0491..7ff083ec2d1d 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -25,7 +25,6 @@
 #include "intel_fifo_underrun.h"
 #include "intel_modeset_setup.h"
 #include "intel_pch_display.h"
-#include "intel_pm.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 1300965d328a..f0af997d2a23 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -18,7 +18,6 @@
 #include "intel_display_types.h"
 #include "intel_fb.h"
 #include "intel_pcode.h"
-#include "intel_pm.h"
 #include "intel_wm.h"
 #include "skl_watermark.h"
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index f7f271708fc7..6ca944d01eb6 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -28,7 +28,6 @@
 #include "intel_migrate.h"
 #include "intel_mocs.h"
 #include "intel_pci_config.h"
-#include "intel_pm.h"
 #include "intel_rc6.h"
 #include "intel_renderstate.h"
 #include "intel_rps.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
index cef3d6f5c34e..85ae7dc079f2 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
@@ -17,7 +17,6 @@
 #include "intel_gt_print.h"
 #include "intel_gt_requests.h"
 #include "intel_llc.h"
-#include "intel_pm.h"
 #include "intel_rc6.h"
 #include "intel_rps.h"
 #include "intel_wakeref.h"
diff --git a/drivers/gpu/drm/i915/gt/selftest_llc.c b/drivers/gpu/drm/i915/gt/selftest_llc.c
index cfd736d88939..779fadcec7c4 100644
--- a/drivers/gpu/drm/i915/gt/selftest_llc.c
+++ b/drivers/gpu/drm/i915/gt/selftest_llc.c
@@ -3,7 +3,6 @@
  * Copyright © 2019 Intel Corporation
  */
 
-#include "intel_pm.h" /* intel_gpu_freq() */
 #include "selftest_llc.h"
 #include "intel_rps.h"
 
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 45773ce1deac..16011c0286ad 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -52,7 +52,6 @@
 #include "i915_irq.h"
 #include "i915_scheduler.h"
 #include "intel_mchbar_regs.h"
-#include "intel_pm.h"
 
 static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
 {
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index 417c981e4968..6ce3c934d832 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -52,7 +52,6 @@
 #include "i915_driver.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
-#include "intel_pm.h"
 
 /**
  * DOC: interrupt handling
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 52531ab28c5f..a76c5ce9513d 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -17,7 +17,6 @@
 
 #include "i915_drv.h"
 #include "i915_pmu.h"
-#include "intel_pm.h"
 
 /* Frequency for the sampling timer for events which need it. */
 #define FREQUENCY 200
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 7503dcb9043b..630a732aaecc 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -48,7 +48,6 @@
 #include "i915_driver.h"
 #include "i915_drv.h"
 #include "i915_trace.h"
-#include "intel_pm.h"
 
 struct execute_cb {
 	struct irq_work work;
diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index 595e8b574990..e88bb4f04305 100644
--- a/drivers/gpu/drm/i915/i915_sysfs.c
+++ b/drivers/gpu/drm/i915/i915_sysfs.c
@@ -37,7 +37,6 @@
 
 #include "i915_drv.h"
 #include "i915_sysfs.h"
-#include "intel_pm.h"
 
 struct drm_i915_private *kdev_minor_to_i915(struct device *kdev)
 {
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index f018da7ebaac..f4b3b2063018 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -32,7 +32,6 @@
 #include "i915_reg.h"
 #include "i915_trace.h"
 #include "i915_vgpu.h"
-#include "intel_pm.h"
 
 #define FORCEWAKE_ACK_TIMEOUT_MS 50
 #define GT_FIFO_TIMEOUT_MS	 10
-- 
2.39.1

