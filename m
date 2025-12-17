Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 700B4CC626B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 07:10:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D8ED10EB50;
	Wed, 17 Dec 2025 06:10:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J16oF7p4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2EF210EB4B;
 Wed, 17 Dec 2025 06:10:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765951818; x=1797487818;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Jvj9G5pYQfzrayhTivrU96IbGdJ6OP+AtqyeqN/yPIM=;
 b=J16oF7p4sE/5urMJoYU/q9+/AIuh4pK27KnnMwJT9Jk2li5Ghjnj2EMP
 VBugVW5B2HyXzU5OP/JOWi2Clg0wZrwnX1i8eLntBlWUfxPE1DDs3Hsg9
 fD42wfe7j2CJnnu42OrUEgB2XUlWHB4BdISRNM0xoyLh2KmORu0kJl29x
 wR4aua9MvWYIGTTonv2zIfHXceUl5xUp+/bERxdmAyH6hrJemg44pohXH
 G0qTJwFditqWffsUjEzdOCfdYOuuftxYPliwSt+yZE3iA6ab72UsPEkUF
 BzPS158Wtom2JMLh0N+3UFJTZr2n2BrrpJSsHz2KfVPsLwzTI/8Pv4GeP A==;
X-CSE-ConnectionGUID: uRKff0HwTiGv93R49ySwyw==
X-CSE-MsgGUID: cYv7J3/3Q+66matSSCHksw==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="85471118"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="85471118"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 22:10:17 -0800
X-CSE-ConnectionGUID: wx2lw/h0RnqK7CJVxlEFbg==
X-CSE-MsgGUID: 1Mht62qwSgmAkR2dSIgrzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198105125"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa006.fm.intel.com with ESMTP; 16 Dec 2025 22:10:16 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 01/19] drm/{i915,
 xe}: Extract common registers into a separate file
Date: Wed, 17 Dec 2025 11:51:51 +0530
Message-ID: <20251217062209.852324-2-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251217062209.852324-1-uma.shankar@intel.com>
References: <20251217062209.852324-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
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

There are certain register definitions which are commonly shared
by i915, xe and display. Extract the same to a common header to
avoid duplication.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../gpu/drm/i915/display/intel_pch_display.c    |  2 +-
 drivers/gpu/drm/i915/i915_reg.h                 | 11 +----------
 include/drm/intel/intel_gmd_common_regs.h       | 17 +++++++++++++++++
 3 files changed, 19 insertions(+), 11 deletions(-)
 create mode 100644 include/drm/intel/intel_gmd_common_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
index 16619f7be5f8..2f39ff32c6d5 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_display.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
@@ -4,9 +4,9 @@
  */
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
 #include "g4x_dp.h"
-#include "i915_reg.h"
 #include "intel_crt.h"
 #include "intel_crt_regs.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5bf3b4ab2baa..f60259c41c56 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -25,6 +25,7 @@
 #ifndef _I915_REG_H_
 #define _I915_REG_H_
 
+#include <drm/intel/intel_gmd_common_regs.h>
 #include "i915_reg_defs.h"
 #include "display/intel_display_reg_defs.h"
 
@@ -1022,16 +1023,6 @@
 #define   TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE	REG_BIT(10)
 #define   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE	REG_BIT(4)
 
-#define _TRANSA_CHICKEN2	 0xf0064
-#define _TRANSB_CHICKEN2	 0xf1064
-#define TRANS_CHICKEN2(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN2, _TRANSB_CHICKEN2)
-#define   TRANS_CHICKEN2_TIMING_OVERRIDE		REG_BIT(31)
-#define   TRANS_CHICKEN2_FDI_POLARITY_REVERSED		REG_BIT(29)
-#define   TRANS_CHICKEN2_FRAME_START_DELAY_MASK		REG_GENMASK(28, 27)
-#define   TRANS_CHICKEN2_FRAME_START_DELAY(x)		REG_FIELD_PREP(TRANS_CHICKEN2_FRAME_START_DELAY_MASK, (x)) /* 0-3 */
-#define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER	REG_BIT(26)
-#define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH	REG_BIT(25)
-
 #define SOUTH_CHICKEN1		_MMIO(0xc2000)
 #define  FDIA_PHASE_SYNC_SHIFT_OVR	19
 #define  FDIA_PHASE_SYNC_SHIFT_EN	18
diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
new file mode 100644
index 000000000000..4d91bc2dbb27
--- /dev/null
+++ b/include/drm/intel/intel_gmd_common_regs.h
@@ -0,0 +1,17 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef _INTEL_GMD_COMMON_REG_H_
+#define _INTEL_GMD_COMMON_REG_H_
+
+#define _TRANSA_CHICKEN2	 0xf0064
+#define _TRANSB_CHICKEN2	 0xf1064
+#define TRANS_CHICKEN2(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN2, _TRANSB_CHICKEN2)
+#define   TRANS_CHICKEN2_TIMING_OVERRIDE		REG_BIT(31)
+#define   TRANS_CHICKEN2_FDI_POLARITY_REVERSED		REG_BIT(29)
+#define   TRANS_CHICKEN2_FRAME_START_DELAY_MASK		REG_GENMASK(28, 27)
+#define   TRANS_CHICKEN2_FRAME_START_DELAY(x)		REG_FIELD_PREP(TRANS_CHICKEN2_FRAME_START_DELAY_MASK, (x)) /* 0-3 */
+#define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER	REG_BIT(26)
+#define   TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH	REG_BIT(25)
+
+#endif
-- 
2.50.1

