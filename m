Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D51B1AB5491
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 14:17:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B0AF10E585;
	Tue, 13 May 2025 12:17:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NTqBPfRT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0692610E596;
 Tue, 13 May 2025 12:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747138664; x=1778674664;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8pjfHWrSMfyjA2Cu7gr8sHRjhYnnvMN2zAuuu90pFoc=;
 b=NTqBPfRTKHtr4KHHxyGMNyqDRv6OS+VcBOrlbzUtbpIQtxPeEpT0dLyO
 zbUtFZ8GcPkY+Qr9E0feGCS8Yo/bDg6rUvRPlhV3q/olrPCRFxEUPs/5T
 R/6CONeM9+KBPrLfn47tBxnyhjk61peWwaf/T1T3VVsnuMNtyaHp5QcbV
 fevLI/vyGHGex318pob5IDgphY1OunGF2BPunud9/HkSmAVKP3WYbbvTC
 ckxHHeSfgwbe7diqWM9E3wLyd+IJKn2Y/QmBAOMXhJi8BVKuUgdWlQG9D
 BNqZTcthfYggE908aO1zDpHpto2lc/6fD+JTBKpS0psJvcb0aYBvUvfC8 w==;
X-CSE-ConnectionGUID: iYld4WTbTrO66xxds6aoUA==
X-CSE-MsgGUID: 1RQ3tg3aT/mYoQOZXXe9SQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="48235925"
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="48235925"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 05:17:44 -0700
X-CSE-ConnectionGUID: TJ8cpSLWTrib+ejdKYBtig==
X-CSE-MsgGUID: YeaW4PD4RT6CZnXgsaQe5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="138205853"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 05:17:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 7/8] drm/i915/sbi: split out intel_sbi_regs.h
Date: Tue, 13 May 2025 15:17:06 +0300
Message-Id: <50c8823920ed7519e65323436c5143ebd114173a.1747138550.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747138550.git.jani.nikula@intel.com>
References: <cover.1747138550.git.jani.nikula@intel.com>
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

Split out display/intel_sbi_regs.h from i915_reg.h. Include both the SBI
interface MMIO as well as the known sideband offsets.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_pch_refclk.c   |  1 +
 drivers/gpu/drm/i915/display/intel_sbi.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_sbi_regs.h | 51 +++++++++++++++++++
 drivers/gpu/drm/i915/gvt/handlers.c           |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 41 ---------------
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  1 +
 6 files changed, 55 insertions(+), 42 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_sbi_regs.h

diff --git a/drivers/gpu/drm/i915/display/intel_pch_refclk.c b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
index efa78b3883b5..88a9bdbf2f13 100644
--- a/drivers/gpu/drm/i915/display/intel_pch_refclk.c
+++ b/drivers/gpu/drm/i915/display/intel_pch_refclk.c
@@ -12,6 +12,7 @@
 #include "intel_panel.h"
 #include "intel_pch_refclk.h"
 #include "intel_sbi.h"
+#include "intel_sbi_regs.h"
 
 static void lpt_fdi_reset_mphy(struct intel_display *display)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_sbi.c b/drivers/gpu/drm/i915/display/intel_sbi.c
index aea5e12519b9..c53d6058a717 100644
--- a/drivers/gpu/drm/i915/display/intel_sbi.c
+++ b/drivers/gpu/drm/i915/display/intel_sbi.c
@@ -7,9 +7,9 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_sbi.h"
+#include "intel_sbi_regs.h"
 
 /* SBI access */
 static int intel_sbi_rw(struct intel_display *display, u16 reg,
diff --git a/drivers/gpu/drm/i915/display/intel_sbi_regs.h b/drivers/gpu/drm/i915/display/intel_sbi_regs.h
new file mode 100644
index 000000000000..38963f8619a3
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_sbi_regs.h
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: MIT */
+/* Copyright © 2025 Intel Corporation */
+
+#ifndef __INTEL_SBI_REGS_H__
+#define __INTEL_SBI_REGS_H__
+
+#include "i915_reg_defs.h"
+
+/*
+ * Sideband Interface (SBI) is programmed indirectly, via SBI_ADDR, which
+ * contains the register offset; and SBI_DATA, which contains the payload.
+ */
+#define SBI_ADDR			_MMIO(0xC6000)
+#define SBI_DATA			_MMIO(0xC6004)
+#define SBI_CTL_STAT			_MMIO(0xC6008)
+#define  SBI_CTL_DEST_ICLK		(0x0 << 16)
+#define  SBI_CTL_DEST_MPHY		(0x1 << 16)
+#define  SBI_CTL_OP_IORD		(0x2 << 8)
+#define  SBI_CTL_OP_IOWR		(0x3 << 8)
+#define  SBI_CTL_OP_CRRD		(0x6 << 8)
+#define  SBI_CTL_OP_CRWR		(0x7 << 8)
+#define  SBI_RESPONSE_FAIL		(0x1 << 1)
+#define  SBI_RESPONSE_SUCCESS		(0x0 << 1)
+#define  SBI_BUSY			(0x1 << 0)
+#define  SBI_READY			(0x0 << 0)
+
+/* SBI offsets */
+#define  SBI_SSCDIVINTPHASE			0x0200
+#define  SBI_SSCDIVINTPHASE6			0x0600
+#define   SBI_SSCDIVINTPHASE_DIVSEL_SHIFT	1
+#define   SBI_SSCDIVINTPHASE_DIVSEL_MASK	(0x7f << 1)
+#define   SBI_SSCDIVINTPHASE_DIVSEL(x)		((x) << 1)
+#define   SBI_SSCDIVINTPHASE_INCVAL_SHIFT	8
+#define   SBI_SSCDIVINTPHASE_INCVAL_MASK	(0x7f << 8)
+#define   SBI_SSCDIVINTPHASE_INCVAL(x)		((x) << 8)
+#define   SBI_SSCDIVINTPHASE_DIR(x)		((x) << 15)
+#define   SBI_SSCDIVINTPHASE_PROPAGATE		(1 << 0)
+#define  SBI_SSCDITHPHASE			0x0204
+#define  SBI_SSCCTL				0x020c
+#define  SBI_SSCCTL6				0x060C
+#define   SBI_SSCCTL_PATHALT			(1 << 3)
+#define   SBI_SSCCTL_DISABLE			(1 << 0)
+#define  SBI_SSCAUXDIV6				0x0610
+#define   SBI_SSCAUXDIV_FINALDIV2SEL_SHIFT	4
+#define   SBI_SSCAUXDIV_FINALDIV2SEL_MASK	(1 << 4)
+#define   SBI_SSCAUXDIV_FINALDIV2SEL(x)		((x) << 4)
+#define  SBI_DBUFF0				0x2a00
+#define  SBI_GEN0				0x1f00
+#define   SBI_GEN0_CFG_BUFFENABLE_DISABLE	(1 << 0)
+
+#endif /* __INTEL_SBI_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 1344e6d20a34..7ee0e3657321 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -55,6 +55,7 @@
 #include "display/intel_fdi_regs.h"
 #include "display/intel_pps_regs.h"
 #include "display/intel_psr_regs.h"
+#include "display/intel_sbi_regs.h"
 #include "display/intel_sprite_regs.h"
 #include "display/intel_vga_regs.h"
 #include "display/skl_universal_plane_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2e4190da3e0d..c1a7ac466828 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3588,47 +3588,6 @@ enum skl_power_gate {
 #define _DDI_DP_COMP_PAT_B			0x615F4
 #define DDI_DP_COMP_PAT(pipe, i)		_MMIO(_PIPE(pipe, _DDI_DP_COMP_PAT_A, _DDI_DP_COMP_PAT_B) + (i) * 4)
 
-/* Sideband Interface (SBI) is programmed indirectly, via
- * SBI_ADDR, which contains the register offset; and SBI_DATA,
- * which contains the payload */
-#define SBI_ADDR			_MMIO(0xC6000)
-#define SBI_DATA			_MMIO(0xC6004)
-#define SBI_CTL_STAT			_MMIO(0xC6008)
-#define  SBI_CTL_DEST_ICLK		(0x0 << 16)
-#define  SBI_CTL_DEST_MPHY		(0x1 << 16)
-#define  SBI_CTL_OP_IORD		(0x2 << 8)
-#define  SBI_CTL_OP_IOWR		(0x3 << 8)
-#define  SBI_CTL_OP_CRRD		(0x6 << 8)
-#define  SBI_CTL_OP_CRWR		(0x7 << 8)
-#define  SBI_RESPONSE_FAIL		(0x1 << 1)
-#define  SBI_RESPONSE_SUCCESS		(0x0 << 1)
-#define  SBI_BUSY			(0x1 << 0)
-#define  SBI_READY			(0x0 << 0)
-
-/* SBI offsets */
-#define  SBI_SSCDIVINTPHASE			0x0200
-#define  SBI_SSCDIVINTPHASE6			0x0600
-#define   SBI_SSCDIVINTPHASE_DIVSEL_SHIFT	1
-#define   SBI_SSCDIVINTPHASE_DIVSEL_MASK	(0x7f << 1)
-#define   SBI_SSCDIVINTPHASE_DIVSEL(x)		((x) << 1)
-#define   SBI_SSCDIVINTPHASE_INCVAL_SHIFT	8
-#define   SBI_SSCDIVINTPHASE_INCVAL_MASK	(0x7f << 8)
-#define   SBI_SSCDIVINTPHASE_INCVAL(x)		((x) << 8)
-#define   SBI_SSCDIVINTPHASE_DIR(x)		((x) << 15)
-#define   SBI_SSCDIVINTPHASE_PROPAGATE		(1 << 0)
-#define  SBI_SSCDITHPHASE			0x0204
-#define  SBI_SSCCTL				0x020c
-#define  SBI_SSCCTL6				0x060C
-#define   SBI_SSCCTL_PATHALT			(1 << 3)
-#define   SBI_SSCCTL_DISABLE			(1 << 0)
-#define  SBI_SSCAUXDIV6				0x0610
-#define   SBI_SSCAUXDIV_FINALDIV2SEL_SHIFT	4
-#define   SBI_SSCAUXDIV_FINALDIV2SEL_MASK	(1 << 4)
-#define   SBI_SSCAUXDIV_FINALDIV2SEL(x)		((x) << 4)
-#define  SBI_DBUFF0				0x2a00
-#define  SBI_GEN0				0x1f00
-#define   SBI_GEN0_CFG_BUFFENABLE_DISABLE	(1 << 0)
-
 /* LPT PIXCLK_GATE */
 #define PIXCLK_GATE			_MMIO(0xC6020)
 #define  PIXCLK_GATE_UNGATE		(1 << 0)
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index d581a9d2c063..cf3ff16e630e 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -20,6 +20,7 @@
 #include "display/intel_lvds_regs.h"
 #include "display/intel_pfit_regs.h"
 #include "display/intel_psr_regs.h"
+#include "display/intel_sbi_regs.h"
 #include "display/intel_sprite_regs.h"
 #include "display/intel_vga_regs.h"
 #include "display/skl_universal_plane_regs.h"
-- 
2.39.5

