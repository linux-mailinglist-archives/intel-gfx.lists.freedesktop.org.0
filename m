Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCqwCNZc1Wlq5QcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 21:36:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E003B3C05
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 21:36:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3662B10E4B0;
	Tue,  7 Apr 2026 19:36:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hadlEsvF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 933B610E178;
 Tue,  7 Apr 2026 19:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775590611; x=1807126611;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UqpQ0jFg1ii5MbnRXH92aWyesJlf1kIGRAMKMbfbhKU=;
 b=hadlEsvFVHW6aT8a4JI47oKnHDU+qxaSwVqeTiOsw8KakrldhK204A0S
 /vGjct/JchmzowAKTgsN8+oXuJ5jl/T/gHfb2lIEFVroCWUfw3FnjsRJ0
 olOIG3l706bVELKid+f3gphwfoyA/fhRa3u1bma4GphIQUrIUfr1PzxFO
 AtMQX/CtS0TrrITABKl+dXsOW08uX3TkEbhomkGFI1MXw17muctFZqeaU
 6PULRV0X0DA3QXStLl9Gj5NR/W+hdLh6c7TlP62+0tVY9v/pJasOIqGLg
 f6AKzm1MyBjN3ReFAD0IHYwEGfvlEOHjw8DZ7Oj4xOZ2lEpG4sI1NOU98 A==;
X-CSE-ConnectionGUID: WBw/lUmFRHKBddpx+cgrcA==
X-CSE-MsgGUID: l2aYj8IPSjCRxbdnL5QdQg==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80424033"
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="80424033"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 12:36:51 -0700
X-CSE-ConnectionGUID: aRiieOlYQ8aaYJah/vWxYw==
X-CSE-MsgGUID: aPJQ/xpuSvyG02mXHQtePQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,166,1770624000"; d="scan'208";a="227419498"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.244])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 12:36:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 3/5] drm/i915/mchbar: move intel_mchbar_regs.h under
 include/drm/intel
Date: Tue,  7 Apr 2026 22:36:28 +0300
Message-ID: <6c951b2c05db74ea517d52a3912986f7eb886422.1775590536.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1775590536.git.jani.nikula@intel.com>
References: <cover.1775590536.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: A7E003B3C05
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Since the mchbar registers are used from both i915 display and core,
move intel_mchbar_regs.h to include/drm/intel/mchbar_regs.h. Drop the
intel_ prefix from the name to reduce tautology.

With this, we can drop the corresponding xe display compat header.

v2: Rebase

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_mchbar.h                 | 3 ++-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c                  | 2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c                | 2 +-
 drivers/gpu/drm/i915/gt/intel_llc.c                         | 2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c                       | 3 ++-
 drivers/gpu/drm/i915/gt/intel_rps.c                         | 4 ++--
 drivers/gpu/drm/i915/i915_debugfs.c                         | 2 +-
 drivers/gpu/drm/i915/i915_freq.c                            | 2 +-
 drivers/gpu/drm/i915/i915_hwmon.c                           | 2 +-
 drivers/gpu/drm/i915/intel_clock_gating.c                   | 4 ++--
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c                 | 2 +-
 drivers/gpu/drm/xe/compat-i915-headers/intel_mchbar_regs.h  | 6 ------
 .../intel_mchbar_regs.h => include/drm/intel/mchbar_regs.h  | 0
 13 files changed, 15 insertions(+), 19 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_mchbar_regs.h
 rename drivers/gpu/drm/i915/intel_mchbar_regs.h => include/drm/intel/mchbar_regs.h (100%)

diff --git a/drivers/gpu/drm/i915/display/intel_mchbar.h b/drivers/gpu/drm/i915/display/intel_mchbar.h
index 51ecd6075bdf..fb645c64796c 100644
--- a/drivers/gpu/drm/i915/display/intel_mchbar.h
+++ b/drivers/gpu/drm/i915/display/intel_mchbar.h
@@ -8,8 +8,9 @@
 
 #include <linux/types.h>
 
+#include <drm/intel/mchbar_regs.h>
+
 #include "i915_reg_defs.h"
-#include "intel_mchbar_regs.h"
 
 struct intel_display;
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
index 77f85359f279..5838fb33104d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
@@ -10,6 +10,7 @@
 #include <drm/drm_print.h>
 #include <drm/intel/display_parent_interface.h>
 #include <drm/intel/i915_drm.h>
+#include <drm/intel/mchbar_regs.h>
 
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_region.h"
@@ -23,7 +24,6 @@
 #include "i915_reg.h"
 #include "i915_utils.h"
 #include "i915_vgpu.h"
-#include "intel_mchbar_regs.h"
 #include "intel_pci_config.h"
 
 struct intel_stolen_node {
diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
index ac9aede82320..6efc1ed3831b 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
@@ -7,6 +7,7 @@
 
 #include <drm/drm_print.h>
 #include <drm/intel/intel_gmd_misc_regs.h>
+#include <drm/intel/mchbar_regs.h>
 
 #include "display/intel_display.h"
 #include "i915_drv.h"
@@ -15,7 +16,6 @@
 #include "i915_pvinfo.h"
 #include "i915_vgpu.h"
 #include "intel_gt_regs.h"
-#include "intel_mchbar_regs.h"
 
 /**
  * DOC: fence register handling
diff --git a/drivers/gpu/drm/i915/gt/intel_llc.c b/drivers/gpu/drm/i915/gt/intel_llc.c
index bcd707e3d436..82d9a8e50867 100644
--- a/drivers/gpu/drm/i915/gt/intel_llc.c
+++ b/drivers/gpu/drm/i915/gt/intel_llc.c
@@ -7,12 +7,12 @@
 #include <linux/cpufreq.h>
 
 #include <drm/intel/intel_pcode_regs.h>
+#include <drm/intel/mchbar_regs.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_gt.h"
 #include "intel_llc.h"
-#include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
 #include "intel_rps.h"
 
diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index 984d0056c01c..4d0ea953eb6e 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -7,6 +7,8 @@
 #include <linux/stop_machine.h>
 #include <linux/string_helpers.h>
 
+#include <drm/intel/mchbar_regs.h>
+
 #include "display/intel_display_reset.h"
 #include "display/intel_overlay.h"
 #include "gem/i915_gem_context.h"
@@ -27,7 +29,6 @@
 #include "intel_gt_pm.h"
 #include "intel_gt_print.h"
 #include "intel_gt_requests.h"
-#include "intel_mchbar_regs.h"
 #include "intel_pci_config.h"
 #include "intel_reset.h"
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 844f2716a386..a33b19c04737 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -5,9 +5,10 @@
 
 #include <linux/string_helpers.h>
 
-#include <drm/intel/i915_drm.h>
 #include <drm/intel/display_parent_interface.h>
+#include <drm/intel/i915_drm.h>
 #include <drm/intel/intel_pcode_regs.h>
+#include <drm/intel/mchbar_regs.h>
 
 #include "display/intel_display_rps.h"
 #include "display/vlv_clock.h"
@@ -25,7 +26,6 @@
 #include "intel_gt_pm_irq.h"
 #include "intel_gt_print.h"
 #include "intel_gt_regs.h"
-#include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
 #include "intel_rps.h"
 #include "vlv_iosf_sb.h"
diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index 4778ba664ec7..a3e27f9e4f47 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -34,6 +34,7 @@
 #include <drm/drm_debugfs.h>
 #include <drm/drm_print.h>
 #include <drm/intel/intel_gmd_misc_regs.h>
+#include <drm/intel/mchbar_regs.h>
 
 #include "gem/i915_gem_context.h"
 #include "gt/intel_gt.h"
@@ -57,7 +58,6 @@
 #include "i915_reg.h"
 #include "i915_scheduler.h"
 #include "i915_wait_util.h"
-#include "intel_mchbar_regs.h"
 
 static inline struct drm_i915_private *node_to_i915(struct drm_info_node *node)
 {
diff --git a/drivers/gpu/drm/i915/i915_freq.c b/drivers/gpu/drm/i915/i915_freq.c
index 9bdaea34aef9..9547d087555f 100644
--- a/drivers/gpu/drm/i915/i915_freq.c
+++ b/drivers/gpu/drm/i915/i915_freq.c
@@ -2,10 +2,10 @@
 /* Copyright © 2025 Intel Corporation */
 
 #include <drm/drm_print.h>
+#include <drm/intel/mchbar_regs.h>
 
 #include "i915_drv.h"
 #include "i915_freq.h"
-#include "intel_mchbar_regs.h"
 
 unsigned int i9xx_fsb_freq(struct drm_i915_private *i915)
 {
diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index c4a799f5fe92..da643b38064c 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -10,11 +10,11 @@
 #include <linux/units.h>
 
 #include <drm/intel/intel_pcode_regs.h>
+#include <drm/intel/mchbar_regs.h>
 
 #include "i915_drv.h"
 #include "i915_hwmon.h"
 #include "i915_reg.h"
-#include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_regs.h"
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index ee2489a2fbe7..515f83c82abc 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -26,8 +26,9 @@
  */
 
 #include <drm/drm_print.h>
-#include <drm/intel/intel_gmd_misc_regs.h>
 #include <drm/intel/intel_gmd_interrupt_regs.h>
+#include <drm/intel/intel_gmd_misc_regs.h>
+#include <drm/intel/mchbar_regs.h>
 
 #include "display/i9xx_plane_regs.h"
 #include "display/intel_display.h"
@@ -42,7 +43,6 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_clock_gating.h"
-#include "intel_mchbar_regs.h"
 #include "vlv_iosf_sb.h"
 
 struct drm_i915_clock_gating_funcs {
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index ae42818ab6e0..de118fae0a49 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -7,6 +7,7 @@
 #include <drm/intel/intel_gmd_misc_regs.h>
 
 #include <drm/intel/intel_gmd_interrupt_regs.h>
+#include <drm/intel/mchbar_regs.h>
 
 #include "display/bxt_dpio_phy_regs.h"
 #include "display/i9xx_plane_regs.h"
@@ -44,7 +45,6 @@
 #include "i915_pvinfo.h"
 #include "i915_reg.h"
 #include "intel_gvt.h"
-#include "intel_mchbar_regs.h"
 
 #define MMIO_F(reg, s) do { \
 	int ret; \
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_mchbar_regs.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_mchbar_regs.h
deleted file mode 100644
index 55b316985340..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_mchbar_regs.h
+++ /dev/null
@@ -1,6 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include "../../i915/intel_mchbar_regs.h"
diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/include/drm/intel/mchbar_regs.h
similarity index 100%
rename from drivers/gpu/drm/i915/intel_mchbar_regs.h
rename to include/drm/intel/mchbar_regs.h
-- 
2.47.3

