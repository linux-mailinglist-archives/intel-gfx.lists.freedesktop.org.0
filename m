Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJupGjjj1Gn0yQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:58:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1C13AD60E
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:58:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B68710E3E6;
	Tue,  7 Apr 2026 10:57:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VPp5lNQB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B98B10E3E8;
 Tue,  7 Apr 2026 10:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775559477; x=1807095477;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IhBchKlKZGR18KnKdFy77F8YjnRMqmqGWZE0TqIWffQ=;
 b=VPp5lNQBb1stu/9GUuM7i7RuMwXe4hqSKVXGlq+I8n6UaeXhlJZYya2Q
 XWmCywPwQ6L2OrNiIzs12rVHk3xDjUf7F/5is6KqqhGbRCJaAL/xsLvk1
 X3GpmGYB6n0e10pttXgM+czRYQ4hn8nx2sRYsUkPJu/HDNg9fcE4UM0xM
 ynh6vBEbikJLt1OH2L3dyNdRYSGzP3K2U6R9rMwC9Ek1xnbDvlRrEMHpE
 Pt+ERzJgqejZJxImRupXkitiCviRGY10w3vcXn59uhWIMgkf8kAhqvVQ+
 o96WVT27fWMGYnvciKu8b7Z66KSCdaS35/LglsIatiQdRQTSClSJQrE9U A==;
X-CSE-ConnectionGUID: 4SLwAq/HRmSzduARnIcgqg==
X-CSE-MsgGUID: yF+l90OAS7WpQXzwiyreAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="94099423"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="94099423"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:57:57 -0700
X-CSE-ConnectionGUID: /sfNuBXER/KlvgchpheFMQ==
X-CSE-MsgGUID: pbQvzABgQ2WhIJWeqXpwzg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="233109320"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.244])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:57:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/3] drm/i915/mchbar: move intel_mchbar_regs.h under
 include/drm/intel
Date: Tue,  7 Apr 2026 13:57:41 +0300
Message-ID: <581eef80fb77b4ab78ca040e60b2a29c844a5232.1775559414.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1775559414.git.jani.nikula@intel.com>
References: <cover.1775559414.git.jani.nikula@intel.com>
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
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 1A1C13AD60E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Since the mchbar registers are used from both i915 display and core,
move intel_mchbar_regs.h to include/drm/intel/mchbar_regs.h. Drop the
intel_ prefix from the name to reduce tautology.

With this, we can drop the corresponding xe display compat header.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_mchbar.h                 | 3 ++-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c                  | 2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c                | 2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c               | 2 +-
 drivers/gpu/drm/i915/gt/intel_llc.c                         | 2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c                       | 3 ++-
 drivers/gpu/drm/i915/gt/intel_rps.c                         | 4 ++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c                 | 2 +-
 drivers/gpu/drm/i915/gvt/handlers.c                         | 4 ++--
 drivers/gpu/drm/i915/i915_debugfs.c                         | 2 +-
 drivers/gpu/drm/i915/i915_freq.c                            | 2 +-
 drivers/gpu/drm/i915/i915_hwmon.c                           | 2 +-
 drivers/gpu/drm/i915/intel_clock_gating.c                   | 4 ++--
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c                 | 2 +-
 drivers/gpu/drm/xe/compat-i915-headers/intel_mchbar_regs.h  | 6 ------
 .../intel_mchbar_regs.h => include/drm/intel/mchbar_regs.h  | 0
 16 files changed, 19 insertions(+), 23 deletions(-)
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
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index babaf16e72f2..29d9649e3928 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -9,6 +9,7 @@
 
 #include <drm/drm_print.h>
 #include <drm/intel/intel_pcode_regs.h>
+#include <drm/intel/mchbar_regs.h>
 
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -19,7 +20,6 @@
 #include "intel_gt_pm_debugfs.h"
 #include "intel_gt_regs.h"
 #include "intel_llc.h"
-#include "intel_mchbar_regs.h"
 #include "intel_pcode.h"
 #include "intel_rc6.h"
 #include "intel_rps.h"
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
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index fa9af08f9708..2a3c85613446 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -6,6 +6,7 @@
 #include <linux/string_helpers.h>
 
 #include <drm/drm_cache.h>
+#include <drm/intel/mchbar_regs.h>
 
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_regs.h"
@@ -16,7 +17,6 @@
 #include "i915_wait_util.h"
 #include "intel_guc_print.h"
 #include "intel_guc_slpc.h"
-#include "intel_mchbar_regs.h"
 
 /**
  * DOC: SLPC - Dynamic Frequency management
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index a34f56630af9..bc11e00dc48c 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -40,8 +40,9 @@
 
 #include <drm/display/drm_dp.h>
 #include <drm/drm_print.h>
-#include <drm/intel/intel_pcode_regs.h>
 #include <drm/intel/intel_gmd_interrupt_regs.h>
+#include <drm/intel/intel_pcode_regs.h>
+#include <drm/intel/mchbar_regs.h>
 
 #include "display/bxt_dpio_phy_regs.h"
 #include "display/i9xx_plane_regs.h"
@@ -71,7 +72,6 @@
 #include "i915_drv.h"
 #include "i915_pvinfo.h"
 #include "i915_reg.h"
-#include "intel_mchbar_regs.h"
 #include "sched_policy.h"
 
 /* XXX FIXME i915 has changed PP_XXX definition */
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

