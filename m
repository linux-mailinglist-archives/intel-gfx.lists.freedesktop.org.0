Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 074F8CC62B2
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 07:10:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90A9D10EBB4;
	Wed, 17 Dec 2025 06:10:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BmtPRPnk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1028D10EBB2;
 Wed, 17 Dec 2025 06:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765951848; x=1797487848;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4+edSnPnDPwJ6rOsTJM7Y99tm2SttCFdQLohXahXVZw=;
 b=BmtPRPnkoiBMdBRgH21NVF7ldZRuDiMQuVjXD6qkgSPJEUwzgjMqvdW+
 +SSC2g7UStD1IWeTXfdLmeUeLqr0sw95JnS/zapzOtKGwi6T6M+t7rQWH
 1MOKEEv3JCwkCEGBWOfdWIa46hYJxBNqRqewjttSG/+gH1JAFljnyCxZH
 1TiuBDa7nV1OzIgyD5j6BMf+0WJQneF3rsNIB+dAs71pMP6qyowe30HRO
 Mh7N1KFag043Vox0YHDl+J3bO+m7mnjifBRylWlw1rrhRSB3B01Fu4ijb
 4oJ3+N+dvMX/hgPx3Txfe9Y+1byMwJNUOK742FeDc3Uj/EARQNTT0peSs w==;
X-CSE-ConnectionGUID: KAgY+7CMTEyQUPaDOgEwSg==
X-CSE-MsgGUID: sjVMPUPSQKKE9yavcqVUuA==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="85471223"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="85471223"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 22:10:48 -0800
X-CSE-ConnectionGUID: xPT+ZkqsSBq+jN4A4x3jDQ==
X-CSE-MsgGUID: QgqWV7B2SU64ub9mkg3ttQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198105240"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa006.fm.intel.com with ESMTP; 16 Dec 2025 22:10:46 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 16/19] drm/{i915,
 xe}: Remove i915_reg.h from intel_display_irq.c
Date: Wed, 17 Dec 2025 11:52:06 +0530
Message-ID: <20251217062209.852324-17-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251217062209.852324-1-uma.shankar@intel.com>
References: <20251217062209.852324-1-uma.shankar@intel.com>
MIME-Version: 1.0
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

Move VLV_IRQ_REGS to common header to make intel_display_irq.c
free from including i915_reg.h.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  |  2 +-
 .../gpu/drm/i915/display/intel_display_regs.h | 28 +++++-----
 drivers/gpu/drm/i915/i915_reg.h               | 52 ------------------
 include/drm/intel/intel_gmd_common_regs.h     | 55 +++++++++++++++++++
 4 files changed, 70 insertions(+), 67 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 9adeebb376b1..206c0d004646 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -5,8 +5,8 @@
 
 #include <drm/drm_print.h>
 #include <drm/drm_vblank.h>
+#include <drm/intel/intel_gmd_common_regs.h>
 
-#include "i915_reg.h"
 #include "icl_dsi_regs.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index ecae358c5b0e..b433982cee56 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -82,20 +82,6 @@
 #define   DERRMR_PIPEC_VBLANK		(1 << 21)
 #define   DERRMR_PIPEC_HBLANK		(1 << 22)
 
-#define VLV_IRQ_REGS		I915_IRQ_REGS(VLV_IMR, \
-					      VLV_IER, \
-					      VLV_IIR)
-
-#define VLV_EIR		_MMIO(VLV_DISPLAY_BASE + 0x20b0)
-#define VLV_EMR		_MMIO(VLV_DISPLAY_BASE + 0x20b4)
-#define VLV_ESR		_MMIO(VLV_DISPLAY_BASE + 0x20b8)
-#define   VLV_ERROR_GUNIT_TLB_DATA			(1 << 6)
-#define   VLV_ERROR_GUNIT_TLB_PTE			(1 << 5)
-#define   VLV_ERROR_PAGE_TABLE				(1 << 4)
-#define   VLV_ERROR_CLAIM				(1 << 0)
-
-#define VLV_ERROR_REGS		I915_ERROR_REGS(VLV_EMR, VLV_EIR)
-
 #define _MBUS_ABOX0_CTL			0x45038
 #define _MBUS_ABOX1_CTL			0x45048
 #define _MBUS_ABOX2_CTL			0x4504C
@@ -3009,4 +2995,18 @@ enum skl_power_gate {
 #define   FW_BLC_SELF_FIFO_MASK    REG_BIT(16) /* 945 only */
 #define   FW_BLC_SELF_EN           REG_BIT(15) /* 945 only */
 
+#define VLV_IRQ_REGS		I915_IRQ_REGS(VLV_IMR, \
+					      VLV_IER, \
+					      VLV_IIR)
+
+#define VLV_EIR		_MMIO(VLV_DISPLAY_BASE + 0x20b0)
+#define VLV_EMR		_MMIO(VLV_DISPLAY_BASE + 0x20b4)
+#define VLV_ESR		_MMIO(VLV_DISPLAY_BASE + 0x20b8)
+#define   VLV_ERROR_GUNIT_TLB_DATA			(1 << 6)
+#define   VLV_ERROR_GUNIT_TLB_PTE			(1 << 5)
+#define   VLV_ERROR_PAGE_TABLE				(1 << 4)
+#define   VLV_ERROR_CLAIM				(1 << 0)
+
+#define VLV_ERROR_REGS		I915_ERROR_REGS(VLV_EMR, VLV_EIR)
+
 #endif /* __INTEL_DISPLAY_REGS_H__ */
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index ef2b33bbebee..44df40e25e37 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -336,9 +336,6 @@
 
 #define VLV_GU_CTL0	_MMIO(VLV_DISPLAY_BASE + 0x2030)
 #define VLV_GU_CTL1	_MMIO(VLV_DISPLAY_BASE + 0x2034)
-#define SCPD0		_MMIO(0x209c) /* 915+ only */
-#define  SCPD_FBC_IGNORE_3D			(1 << 6)
-#define  CSTATE_RENDER_CLOCK_GATE_DISABLE	(1 << 5)
 #define GEN2_IER	_MMIO(0x20a0)
 #define GEN2_IIR	_MMIO(0x20a4)
 #define GEN2_IMR	_MMIO(0x20a8)
@@ -352,13 +349,6 @@
 #define   GINT_DIS		(1 << 22)
 #define   GCFG_DIS		(1 << 8)
 #define VLV_GUNIT_CLOCK_GATE2	_MMIO(VLV_DISPLAY_BASE + 0x2064)
-#define VLV_IIR_RW	_MMIO(VLV_DISPLAY_BASE + 0x2084)
-#define VLV_IER		_MMIO(VLV_DISPLAY_BASE + 0x20a0)
-#define VLV_IIR		_MMIO(VLV_DISPLAY_BASE + 0x20a4)
-#define VLV_IMR		_MMIO(VLV_DISPLAY_BASE + 0x20a8)
-#define VLV_ISR		_MMIO(VLV_DISPLAY_BASE + 0x20ac)
-#define VLV_PCBR	_MMIO(VLV_DISPLAY_BASE + 0x2120)
-#define VLV_PCBR_ADDR_SHIFT	12
 
 #define EIR		_MMIO(0x20b0)
 #define EMR		_MMIO(0x20b4)
@@ -683,11 +673,6 @@
 #define PCH_3DCGDIS1		_MMIO(0x46024)
 # define VFMUNIT_CLOCK_GATE_DISABLE		(1 << 11)
 
-/* Display Internal Timeout Register */
-#define RM_TIMEOUT		_MMIO(0x42060)
-#define RM_TIMEOUT_REG_CAPTURE	_MMIO(0x420E0)
-#define  MMIO_TIMEOUT_US(us)	((us) << 0)
-
 #define VLV_MASTER_IER			_MMIO(0x4400c) /* Gunit master IER */
 #define   MASTER_INTERRUPT_ENABLE	(1 << 31)
 
@@ -700,24 +685,6 @@
 					      GTIER, \
 					      GTIIR)
 
-#define GEN8_MASTER_IRQ			_MMIO(0x44200)
-#define  GEN8_MASTER_IRQ_CONTROL	(1 << 31)
-#define  GEN8_PCU_IRQ			(1 << 30)
-#define  GEN8_DE_PCH_IRQ		(1 << 23)
-#define  GEN8_DE_MISC_IRQ		(1 << 22)
-#define  GEN8_DE_PORT_IRQ		(1 << 20)
-#define  GEN8_DE_PIPE_C_IRQ		(1 << 18)
-#define  GEN8_DE_PIPE_B_IRQ		(1 << 17)
-#define  GEN8_DE_PIPE_A_IRQ		(1 << 16)
-#define  GEN8_DE_PIPE_IRQ(pipe)		(1 << (16 + (pipe)))
-#define  GEN8_GT_VECS_IRQ		(1 << 6)
-#define  GEN8_GT_GUC_IRQ		(1 << 5)
-#define  GEN8_GT_PM_IRQ			(1 << 4)
-#define  GEN8_GT_VCS1_IRQ		(1 << 3) /* NB: VCS2 in bspec! */
-#define  GEN8_GT_VCS0_IRQ		(1 << 2) /* NB: VCS1 in bpsec! */
-#define  GEN8_GT_BCS_IRQ		(1 << 1)
-#define  GEN8_GT_RCS_IRQ		(1 << 0)
-
 #define GEN8_GT_ISR(which) _MMIO(0x44300 + (0x10 * (which)))
 #define GEN8_GT_IMR(which) _MMIO(0x44304 + (0x10 * (which)))
 #define GEN8_GT_IIR(which) _MMIO(0x44308 + (0x10 * (which)))
@@ -743,25 +710,6 @@
 						      GEN8_PCU_IER, \
 						      GEN8_PCU_IIR)
 
-#define GEN11_GU_MISC_ISR	_MMIO(0x444f0)
-#define GEN11_GU_MISC_IMR	_MMIO(0x444f4)
-#define GEN11_GU_MISC_IIR	_MMIO(0x444f8)
-#define GEN11_GU_MISC_IER	_MMIO(0x444fc)
-#define  GEN11_GU_MISC_GSE	(1 << 27)
-
-#define GEN11_GU_MISC_IRQ_REGS		I915_IRQ_REGS(GEN11_GU_MISC_IMR, \
-						      GEN11_GU_MISC_IER, \
-						      GEN11_GU_MISC_IIR)
-
-#define GEN11_GFX_MSTR_IRQ		_MMIO(0x190010)
-#define  GEN11_MASTER_IRQ		(1 << 31)
-#define  GEN11_PCU_IRQ			(1 << 30)
-#define  GEN11_GU_MISC_IRQ		(1 << 29)
-#define  GEN11_DISPLAY_IRQ		(1 << 16)
-#define  GEN11_GT_DW_IRQ(x)		(1 << (x))
-#define  GEN11_GT_DW1_IRQ		(1 << 1)
-#define  GEN11_GT_DW0_IRQ		(1 << 0)
-
 #define DG1_MSTR_TILE_INTR		_MMIO(0x190008)
 #define   DG1_MSTR_IRQ			REG_BIT(31)
 #define   DG1_MSTR_TILE(t)		REG_BIT(t)
diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
index db7a03699bcb..5a42b473de8a 100644
--- a/include/drm/intel/intel_gmd_common_regs.h
+++ b/include/drm/intel/intel_gmd_common_regs.h
@@ -233,6 +233,10 @@
 #define   GMD_ID_STEP				REG_GENMASK(5, 0)
 
 #define GEN2_ISR	_MMIO(0x20ac)
+#define SCPD0		_MMIO(0x209c) /* 915+ only */
+#define  SCPD_FBC_IGNORE_3D			(1 << 6)
+#define  CSTATE_RENDER_CLOCK_GATE_DISABLE	(1 << 5)
+
 
 #define I915_PM_INTERRUPT				(1 << 31)
 #define I915_ISP_INTERRUPT				(1 << 22)
@@ -348,4 +352,55 @@
 #define   ERR_INT_FIFO_UNDERRUN_A	(1 << 0)
 #define   ERR_INT_FIFO_UNDERRUN(pipe)	(1 << ((pipe) * 3))
 
+#define VLV_IIR_RW	_MMIO(VLV_DISPLAY_BASE + 0x2084)
+#define VLV_IER		_MMIO(VLV_DISPLAY_BASE + 0x20a0)
+#define VLV_IIR		_MMIO(VLV_DISPLAY_BASE + 0x20a4)
+#define VLV_IMR		_MMIO(VLV_DISPLAY_BASE + 0x20a8)
+#define VLV_ISR		_MMIO(VLV_DISPLAY_BASE + 0x20ac)
+#define VLV_PCBR	_MMIO(VLV_DISPLAY_BASE + 0x2120)
+#define VLV_PCBR_ADDR_SHIFT	12
+
+#define GEN8_MASTER_IRQ			_MMIO(0x44200)
+#define  GEN8_MASTER_IRQ_CONTROL	(1 << 31)
+#define  GEN8_PCU_IRQ			(1 << 30)
+#define  GEN8_DE_PCH_IRQ		(1 << 23)
+#define  GEN8_DE_MISC_IRQ		(1 << 22)
+#define  GEN8_DE_PORT_IRQ		(1 << 20)
+#define  GEN8_DE_PIPE_C_IRQ		(1 << 18)
+#define  GEN8_DE_PIPE_B_IRQ		(1 << 17)
+#define  GEN8_DE_PIPE_A_IRQ		(1 << 16)
+#define  GEN8_DE_PIPE_IRQ(pipe)		(1 << (16 + (pipe)))
+#define  GEN8_GT_VECS_IRQ		(1 << 6)
+#define  GEN8_GT_GUC_IRQ		(1 << 5)
+#define  GEN8_GT_PM_IRQ			(1 << 4)
+#define  GEN8_GT_VCS1_IRQ		(1 << 3) /* NB: VCS2 in bspec! */
+#define  GEN8_GT_VCS0_IRQ		(1 << 2) /* NB: VCS1 in bpsec! */
+#define  GEN8_GT_BCS_IRQ		(1 << 1)
+#define  GEN8_GT_RCS_IRQ		(1 << 0)
+
+
+#define GEN11_GU_MISC_ISR	_MMIO(0x444f0)
+#define GEN11_GU_MISC_IMR	_MMIO(0x444f4)
+#define GEN11_GU_MISC_IIR	_MMIO(0x444f8)
+#define GEN11_GU_MISC_IER	_MMIO(0x444fc)
+#define  GEN11_GU_MISC_GSE	(1 << 27)
+
+#define GEN11_GU_MISC_IRQ_REGS		I915_IRQ_REGS(GEN11_GU_MISC_IMR, \
+						      GEN11_GU_MISC_IER, \
+						      GEN11_GU_MISC_IIR)
+
+/* Display Internal Timeout Register */
+#define RM_TIMEOUT		_MMIO(0x42060)
+#define RM_TIMEOUT_REG_CAPTURE	_MMIO(0x420E0)
+#define  MMIO_TIMEOUT_US(us)	((us) << 0)
+
+#define GEN11_GFX_MSTR_IRQ		_MMIO(0x190010)
+#define  GEN11_MASTER_IRQ		(1 << 31)
+#define  GEN11_PCU_IRQ			(1 << 30)
+#define  GEN11_GU_MISC_IRQ		(1 << 29)
+#define  GEN11_DISPLAY_IRQ		(1 << 16)
+#define  GEN11_GT_DW_IRQ(x)		(1 << (x))
+#define  GEN11_GT_DW1_IRQ		(1 << 1)
+#define  GEN11_GT_DW0_IRQ		(1 << 0)
+
 #endif
-- 
2.50.1

