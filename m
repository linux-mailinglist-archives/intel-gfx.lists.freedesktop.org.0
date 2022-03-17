Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC5764DCDAF
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 19:37:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03E1710E752;
	Thu, 17 Mar 2022 18:37:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EE0810E752
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 18:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647542219; x=1679078219;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UcMOB1csKRdFNioorVFLkrk+1M3zNlOBVZV+WI+rHIc=;
 b=XLM9uUXoBpHRkwqCMvmbV41vqt+B3ChRYgm9v7X4alCn4yfKdmcN+tdG
 QvK45CvXHcNOlGaHDCXGl7HySLQxLT+xpReTNxoIh3XcUbMY9Vp7VNCya
 irl/RXKPZyYMdxU2yLVVUpX6nuuA5cMsFoXzhU17Oy+GwZzHRq85aAMT2
 OocikizWUYiSiBoHfdOCPbYYFqNpoSFVRrqZW32Oq0hl731OFnDOhRH12
 Py5H1hPuhggR0nykW3qTQr+p5hy+v7W1/Nt5PTLqzWV0LpSb2SQINe1Tq
 1gE4MR9c5e4pnJWrkbphai294xJGmgrBMy0gHYDMvDFGvkHD9SeFAnRCv g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="237566735"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="237566735"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:36:59 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="647154576"
Received: from unknown (HELO localhost) ([10.252.58.37])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:36:57 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 17 Mar 2022 20:36:20 +0200
Message-Id: <6b3a6acadc33afb7171ca87e958341d1ac244f5b.1647542120.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1647542120.git.jani.nikula@intel.com>
References: <cover.1647542120.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/8] drm/i915/dmc: split out dmc registers to a
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Clean up the massive i915_reg.h a bit with this isolated set of
registers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c      |  1 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 31 +++++++++++++++++++
 drivers/gpu/drm/i915/gvt/handlers.c           |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 21 -------------
 4 files changed, 33 insertions(+), 21 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 7b7c757ce0ee..4d292a016ca0 100644
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
index 000000000000..e436fe93a2da
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -0,0 +1,31 @@
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
+/* MMIO address range for DMC program (0x80000 - 0x82FFF) */
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
index 4a10b00a585b..25e981406170 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -5493,27 +5493,6 @@
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

