Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3DD4EC49E
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Mar 2022 14:41:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 198C710E3A5;
	Wed, 30 Mar 2022 12:41:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90AEC10E3A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Mar 2022 12:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648644093; x=1680180093;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nMonvoZKMBodEH6911OzsX+FIK1TiIEYYwOAwe+P6+E=;
 b=lYrVY8UlMPQ7u5T3seEV71QXKR6J0MfYBcnrlSpimTO+WAzNtHTqZegZ
 EJHFLr5Z4dAdBzqHKPrTB5Fk4NYBAy+nlRopIcJ50Nwo8ABtjMGVlvn1X
 4cTTsyKEcdt3+LYBC1sUXU4jfchdgrb+56DdQZi4hPBk4yfiTQRSVLmKe
 5nN82HiyB89JAZAgCA+/CEZhrxwzV/JqAo4KXXCPFA5xWhjWoowI6TH3S
 9lRZg+Br+sZWgerKgSmDc7+qggELIUpm6CJnSxnOcJG2FkHp7vhVRU0BP
 1aBnKhdOFBjEiCGrqHIxKpNJw2p1Q+4tTyooCXmvbobeFnvpuIvtjBx/3 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="257111343"
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="257111343"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 05:41:33 -0700
X-IronPort-AV: E=Sophos;i="5.90,222,1643702400"; d="scan'208";a="546846137"
Received: from nhanus-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.62.116])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2022 05:41:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Mar 2022 15:41:19 +0300
Message-Id: <20220330124119.224966-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220330124119.224966-1-jani.nikula@intel.com>
References: <20220330124119.224966-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RESEND 3/3] drm/i915/dmc: split out dmc registers to a
 separate file
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Clean up the massive i915_reg.h a bit with this isolated set of
registers.

v2: Remove stale comment (Lucas)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c      |  1 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 30 +++++++++++++++++++
 drivers/gpu/drm/i915/gvt/handlers.c           |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 21 -------------
 4 files changed, 32 insertions(+), 21 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index a204b60a061f..257cf662f9f4 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -28,6 +28,7 @@
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_dmc.h"
+#include "intel_dmc_regs.h"
 
 /**
  * DOC: DMC Firmware Support
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
new file mode 100644
index 000000000000..d65e698832eb
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -0,0 +1,30 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright © 2022 Intel Corporation
+ */
+
+#ifndef __INTEL_DMC_REGS_H__
+#define __INTEL_DMC_REGS_H__
+
+#include "i915_reg_defs.h"
+
+#define DMC_PROGRAM(addr, i)	_MMIO((addr) + (i) * 4)
+#define DMC_SSP_BASE_ADDR_GEN9	0x00002FC0
+#define DMC_HTP_ADDR_SKL	0x00500034
+#define DMC_SSP_BASE		_MMIO(0x8F074)
+#define DMC_HTP_SKL		_MMIO(0x8F004)
+#define DMC_LAST_WRITE		_MMIO(0x8F034)
+#define DMC_LAST_WRITE_VALUE	0xc003b400
+#define DMC_MMIO_START_RANGE	0x80000
+#define DMC_MMIO_END_RANGE	0x8FFFF
+#define SKL_DMC_DC3_DC5_COUNT	_MMIO(0x80030)
+#define SKL_DMC_DC5_DC6_COUNT	_MMIO(0x8002C)
+#define BXT_DMC_DC3_DC5_COUNT	_MMIO(0x80038)
+#define TGL_DMC_DEBUG_DC5_COUNT	_MMIO(0x101084)
+#define TGL_DMC_DEBUG_DC6_COUNT	_MMIO(0x101088)
+#define DG1_DMC_DEBUG_DC5_COUNT	_MMIO(0x134154)
+
+#define TGL_DMC_DEBUG3		_MMIO(0x101090)
+#define DG1_DMC_DEBUG3		_MMIO(0x13415c)
+
+#endif /* __INTEL_DMC_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 0ee3ecc83234..57b0f4977760 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -42,6 +42,7 @@
 #include "i915_pvinfo.h"
 #include "intel_mchbar_regs.h"
 #include "display/intel_display_types.h"
+#include "display/intel_dmc_regs.h"
 #include "display/intel_fbc.h"
 #include "display/vlv_dsi_pll_regs.h"
 #include "gt/intel_gt_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a0d652f19ff9..7caa96e2e866 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5504,27 +5504,6 @@
 #define  GAMMA_MODE_MODE_SPLIT	(3 << 0) /* ivb-bdw */
 #define  GAMMA_MODE_MODE_12BIT_MULTI_SEGMENTED	(3 << 0) /* icl + */
 
-/* DMC */
-#define DMC_PROGRAM(addr, i)	_MMIO((addr) + (i) * 4)
-#define DMC_SSP_BASE_ADDR_GEN9	0x00002FC0
-#define DMC_HTP_ADDR_SKL	0x00500034
-#define DMC_SSP_BASE		_MMIO(0x8F074)
-#define DMC_HTP_SKL		_MMIO(0x8F004)
-#define DMC_LAST_WRITE		_MMIO(0x8F034)
-#define DMC_LAST_WRITE_VALUE	0xc003b400
-/* MMIO address range for DMC program (0x80000 - 0x82FFF) */
-#define DMC_MMIO_START_RANGE	0x80000
-#define DMC_MMIO_END_RANGE	0x8FFFF
-#define SKL_DMC_DC3_DC5_COUNT	_MMIO(0x80030)
-#define SKL_DMC_DC5_DC6_COUNT	_MMIO(0x8002C)
-#define BXT_DMC_DC3_DC5_COUNT	_MMIO(0x80038)
-#define TGL_DMC_DEBUG_DC5_COUNT	_MMIO(0x101084)
-#define TGL_DMC_DEBUG_DC6_COUNT	_MMIO(0x101088)
-#define DG1_DMC_DEBUG_DC5_COUNT	_MMIO(0x134154)
-
-#define TGL_DMC_DEBUG3		_MMIO(0x101090)
-#define DG1_DMC_DEBUG3		_MMIO(0x13415c)
-
 /* Display Internal Timeout Register */
 #define RM_TIMEOUT		_MMIO(0x42060)
 #define  MMIO_TIMEOUT_US(us)	((us) << 0)
-- 
2.30.2

