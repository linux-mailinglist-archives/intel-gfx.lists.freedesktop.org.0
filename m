Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6711CBFCCFB
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 17:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0E4D10E7E9;
	Wed, 22 Oct 2025 15:17:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c/CybO/C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D13BC10E7E9;
 Wed, 22 Oct 2025 15:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761146250; x=1792682250;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0NdD7BRVnT4dNa9HXB1E6k7c6KCJmS509gukWR5/rjc=;
 b=c/CybO/CZSbna8sBvCOhP+KZyjS53jAlhEK74ohwxKwEhcfDcnw2wGCH
 hrvgMjZFJktgKHtDcvpJFVoJTUPtpqZ1PmsN/CPZ689/wJgRt5o8tbXpp
 s5fOGuazFGam+g6/CnXYchAbywMDGEyFLCRB9Q5ZesejcNsUPVqM4QyGl
 eMAHYbc4I/3RQwRCQTq6vYaFRJHl8CH7lnrOCGazmgexad8UrXCAb6Aib
 dE/SrzTKECw77jm6ExhBid4DvshY+YxOPm666A13BQSBCAJUpz5XDCfVT
 rFllwCSw907tIb5sdP9n3AaTgvrenHSMNC+bSAG0y64sK+sqKwtY1fAZk w==;
X-CSE-ConnectionGUID: kX3rCVazRYOM2TwlQjRa4A==
X-CSE-MsgGUID: aasm5upzR56FUWW9Ezkt9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="50873998"
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="50873998"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:17:29 -0700
X-CSE-ConnectionGUID: BPcjIgJSTDGkZt0kmVac0A==
X-CSE-MsgGUID: Ob5IO4qbTHquqxobtUbHrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,247,1754982000"; d="scan'208";a="188304945"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.104])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 08:17:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/6] drm/i915/display: create intel_display_utils.h
Date: Wed, 22 Oct 2025 18:17:10 +0300
Message-ID: <dbdd1915466850293b9737b751170dd225197873.1761146196.git.jani.nikula@intel.com>
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

Start a file for display specific generic utilities.

Move KHz() and MHz() helpers there first.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_backlight.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c           |  1 +
 drivers/gpu/drm/i915/display/intel_display_utils.h | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c        |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c      |  1 +
 drivers/gpu/drm/i915/i915_utils.h                  |  3 ---
 6 files changed, 14 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_utils.h

diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
index 3b14f929825a..a68fdbd2acb9 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_backlight.c
@@ -13,7 +13,6 @@
 #include <drm/drm_print.h>
 
 #include "i915_reg.h"
-#include "i915_utils.h"
 #include "intel_backlight.h"
 #include "intel_backlight_regs.h"
 #include "intel_connector.h"
@@ -21,6 +20,7 @@
 #include "intel_display_regs.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dp_aux_backlight.h"
 #include "intel_dsi_dcs_backlight.h"
 #include "intel_panel.h"
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 870140340342..cd9fc3d1f36a 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -53,6 +53,7 @@
 #include "intel_display_power.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dkl_phy.h"
 #include "intel_dkl_phy_regs.h"
 #include "intel_dp.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_utils.h b/drivers/gpu/drm/i915/display/intel_display_utils.h
new file mode 100644
index 000000000000..0a2b603ea856
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_utils.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __INTEL_DISPLAY_UTILS__
+#define __INTEL_DISPLAY_UTILS__
+
+#define KHz(x) (1000 * (x))
+#define MHz(x) KHz(1000 * (x))
+
+#endif /* __INTEL_DISPLAY_UTILS__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index a845b2612a3f..8d11a989cf79 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -33,7 +33,6 @@
 #include <drm/drm_print.h>
 #include <drm/drm_probe_helper.h>
 
-#include "i915_utils.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_connector.h"
@@ -43,6 +42,7 @@
 #include "intel_display_driver.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dp.h"
 #include "intel_dp_hdcp.h"
 #include "intel_dp_link_training.h"
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 8ea96cc524a1..900a945ff8ab 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -32,6 +32,7 @@
 #include "intel_de.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
+#include "intel_display_utils.h"
 #include "intel_dkl_phy.h"
 #include "intel_dkl_phy_regs.h"
 #include "intel_dpio_phy.h"
diff --git a/drivers/gpu/drm/i915/i915_utils.h b/drivers/gpu/drm/i915/i915_utils.h
index 44de4a4aa84a..c1f978a7c141 100644
--- a/drivers/gpu/drm/i915/i915_utils.h
+++ b/drivers/gpu/drm/i915/i915_utils.h
@@ -100,9 +100,6 @@ static inline bool is_power_of_2_u64(u64 n)
 	return (n != 0 && ((n & (n - 1)) == 0));
 }
 
-#define KHz(x) (1000 * (x))
-#define MHz(x) KHz(1000 * (x))
-
 void add_taint_for_CI(struct drm_i915_private *i915, unsigned int taint);
 static inline void __add_taint_for_CI(unsigned int taint)
 {
-- 
2.47.3

