Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C971AAC4C96
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 12:59:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61EC410E490;
	Tue, 27 May 2025 10:59:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b1IBsOqu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29F6C10E493;
 Tue, 27 May 2025 10:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748343588; x=1779879588;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W77ITTLeciyU9oPT//iOqDX2A38tuczRHB1NTQ4SqrY=;
 b=b1IBsOququ8BkN5LcaZ6lgTSVvMAepx7iGS9hzPDRfKGLZohheD/cVk8
 JXc9ESZrElcqM3iChusJaE/3B7GabWNztsa2rdzpCwRSSPlJVRYH39NmC
 19lhxmlPKhZwm96B4D2YSdlNxYy6qWxYhneE5/JmRrjIxwBOvTAY5W/EI
 gpzUpJ4Sg5U18/hyxzPHd+SxoEXwt1Vtp2cpHDTY1KoKoK1ke6cWUo9TI
 0F2NAhW+M9qq4aMr7WkWz40gDKX61EQAmZRsIQRGxXKzgFYwAsLViCFzG
 Jz+e7xM+Bse914Mk8R0RhLkeCpQRc7fac0oHf+siTEThiYc+vKxuhgkMe A==;
X-CSE-ConnectionGUID: Q/Jo3brDQDOkgklvVmGMzQ==
X-CSE-MsgGUID: RGa8TaN0RPGllfcU+292UQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="67871837"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="67871837"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 03:59:48 -0700
X-CSE-ConnectionGUID: zVE0Kf3vQWWL/guD7IcxMg==
X-CSE-MsgGUID: mbQcmxF0SE6R50zA7BnD1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="142756948"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.119])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 03:59:47 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 7/8] drm/i915/sbi: split out intel_sbi_regs.h
Date: Tue, 27 May 2025 13:59:13 +0300
Message-Id: <c96197159e05ebcb63fcc05f0f0801624cd4fdeb.1748343520.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1748343520.git.jani.nikula@intel.com>
References: <cover.1748343520.git.jani.nikula@intel.com>
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
index 43710ba7ebde..4719d270e31b 100644
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
index 78fd8bd9804d..bd3c3c4447e6 100644
--- a/drivers/gpu/drm/i915/display/intel_sbi.c
+++ b/drivers/gpu/drm/i915/display/intel_sbi.c
@@ -7,10 +7,10 @@
 
 #include <drm/drm_print.h>
 
-#include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_core.h"
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
index 9b001776a960..d7322f27dab9 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -56,6 +56,7 @@
 #include "display/intel_fdi_regs.h"
 #include "display/intel_pps_regs.h"
 #include "display/intel_psr_regs.h"
+#include "display/intel_sbi_regs.h"
 #include "display/intel_sprite_regs.h"
 #include "display/intel_vga_regs.h"
 #include "display/skl_universal_plane_regs.h"
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8822c639a4f4..85fdcc53f368 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3590,47 +3590,6 @@ enum skl_power_gate {
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
index e83dc30e658d..f5a98c3cafee 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -21,6 +21,7 @@
 #include "display/intel_lvds_regs.h"
 #include "display/intel_pfit_regs.h"
 #include "display/intel_psr_regs.h"
+#include "display/intel_sbi_regs.h"
 #include "display/intel_sprite_regs.h"
 #include "display/intel_vga_regs.h"
 #include "display/skl_universal_plane_regs.h"
-- 
2.39.5

