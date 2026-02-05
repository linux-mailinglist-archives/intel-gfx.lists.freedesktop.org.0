Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gE2yFsBihGkM2wMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 095D0F0B8F
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 10:28:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C4F710E852;
	Thu,  5 Feb 2026 09:28:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mkGNqJJF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C29610E844;
 Thu,  5 Feb 2026 09:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770283709; x=1801819709;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/zAdL3GHYihS42NojZcpdiSqLivszgSqj/eHYaSnV74=;
 b=mkGNqJJFLrormaulxvA4+MaEf/RnpD1orhLj6Oo+kjrFlYtYhFlLbwNP
 pCcPYGRz4KGgbF8baUp4O3NO9M3q/LDijhlrzqcxq5UU00Or5IJSTyaGn
 2o7KZoGEQrV5crP6C/WH5CBo+lhSR0hloY5161t5UonjP+vRDa4MWVaTb
 SVH+ESn6muu/Ou/sdPx0SVCZRVmrdaPxl1ezEiktdxgdtT0Owaxewjtk/
 hFXdQcA9au+sLSRHYih0V2xpowiOFImy1GNLgwhTV5qsbfqoDNXlUMym+
 eEZ4tJNM8BGY5M1KbtNpaYpbbpKmYa5aMZTSr+dXKODCLFRFYnNTOelTK A==;
X-CSE-ConnectionGUID: 4aHBji0+SJeFrU24bYG/TQ==
X-CSE-MsgGUID: hQPCrVUlTMaKeI7BwuFC4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="89060142"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="89060142"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2026 01:28:29 -0800
X-CSE-ConnectionGUID: KwVTEckMSa64u8Fdiwsx1A==
X-CSE-MsgGUID: EZwOTLMjQoK4JR+oBxM9rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="209807811"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa007.fm.intel.com with ESMTP; 05 Feb 2026 01:28:27 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v4 17/20] drm/i915: Remove i915_reg.h from intel_display_irq.c
Date: Thu,  5 Feb 2026 15:13:38 +0530
Message-ID: <20260205094341.1882816-18-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260205094341.1882816-1-uma.shankar@intel.com>
References: <20260205094341.1882816-1-uma.shankar@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 095D0F0B8F
X-Rspamd-Action: no action

Move VLV_IRQ_REGS to common header for interrupt to make
intel_display_irq.c free from including i915_reg.h.

v2: Move interrupt to dedicated header (Jani)

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  |  1 -
 .../gpu/drm/i915/display/intel_display_regs.h |  5 ++
 drivers/gpu/drm/i915/gt/intel_gt_irq.c        |  2 +
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  1 +
 drivers/gpu/drm/i915/gvt/handlers.c           |  1 +
 drivers/gpu/drm/i915/gvt/interrupt.c          |  1 +
 drivers/gpu/drm/i915/i915_reg.h               | 52 -------------------
 drivers/gpu/drm/i915/intel_clock_gating.c     |  1 +
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c   |  2 +
 drivers/gpu/drm/i915/vlv_suspend.c            |  1 +
 include/drm/intel/intel_gmd_interrupt_regs.h  | 49 +++++++++++++++++
 11 files changed, 63 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 432a9c895c39..bd0eb1f46919 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -7,7 +7,6 @@
 #include <drm/drm_vblank.h>
 #include <drm/intel/intel_gmd_interrupt_regs.h>
 
-#include "i915_reg.h"
 #include "icl_dsi_regs.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index dcb8cab7b30b..1c77a7de2d6e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -1470,6 +1470,11 @@
 #define DE_PIPEA_FIFO_UNDERRUN  (1 << 0)
 #define DE_PIPE_FIFO_UNDERRUN(pipe)  (1 << (8 * (pipe)))
 
+/* Display Internal Timeout Register */
+#define RM_TIMEOUT		_MMIO(0x42060)
+#define RM_TIMEOUT_REG_CAPTURE	_MMIO(0x420E0)
+#define  MMIO_TIMEOUT_US(us)	((us) << 0)
+
 #define GEN8_DE_MISC_ISR _MMIO(0x44460)
 #define GEN8_DE_MISC_IMR _MMIO(0x44464)
 #define GEN8_DE_MISC_IIR _MMIO(0x44468)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index 75e802e10be2..d85c849c0081 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -5,6 +5,8 @@
 
 #include <linux/sched/clock.h>
 
+#include <drm/intel/intel_gmd_interrupt_regs.h>
+
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 942ac1ebecee..5c316f734c4a 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -8,6 +8,7 @@
 
 #include <drm/drm_print.h>
 #include <drm/intel/intel_pcode_regs.h>
+#include <drm/intel/intel_gmd_interrupt_regs.h>
 
 #include "display/vlv_clock.h"
 #include "gem/i915_gem_region.h"
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 2e9d9d0638ae..4f65ced906da 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -41,6 +41,7 @@
 #include <drm/display/drm_dp.h>
 #include <drm/drm_print.h>
 #include <drm/intel/intel_pcode_regs.h>
+#include <drm/intel/intel_gmd_interrupt_regs.h>
 
 #include "display/bxt_dpio_phy_regs.h"
 #include "display/i9xx_plane_regs.h"
diff --git a/drivers/gpu/drm/i915/gvt/interrupt.c b/drivers/gpu/drm/i915/gvt/interrupt.c
index 91d22b1c62e2..f85113218037 100644
--- a/drivers/gpu/drm/i915/gvt/interrupt.c
+++ b/drivers/gpu/drm/i915/gvt/interrupt.c
@@ -32,6 +32,7 @@
 #include <linux/eventfd.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_interrupt_regs.h>
 
 #include "display/intel_display_regs.h"
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5cb53a8c451a..7f3d5b7f7abd 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -335,9 +335,6 @@
 
 #define VLV_GU_CTL0	_MMIO(VLV_DISPLAY_BASE + 0x2030)
 #define VLV_GU_CTL1	_MMIO(VLV_DISPLAY_BASE + 0x2034)
-#define SCPD0		_MMIO(0x209c) /* 915+ only */
-#define  SCPD_FBC_IGNORE_3D			(1 << 6)
-#define  CSTATE_RENDER_CLOCK_GATE_DISABLE	(1 << 5)
 #define GEN2_IER	_MMIO(0x20a0)
 #define GEN2_IIR	_MMIO(0x20a4)
 #define GEN2_IMR	_MMIO(0x20a8)
@@ -350,13 +347,6 @@
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
@@ -682,11 +672,6 @@
 #define PCH_3DCGDIS1		_MMIO(0x46024)
 # define VFMUNIT_CLOCK_GATE_DISABLE		(1 << 11)
 
-/* Display Internal Timeout Register */
-#define RM_TIMEOUT		_MMIO(0x42060)
-#define RM_TIMEOUT_REG_CAPTURE	_MMIO(0x420E0)
-#define  MMIO_TIMEOUT_US(us)	((us) << 0)
-
 #define VLV_MASTER_IER			_MMIO(0x4400c) /* Gunit master IER */
 #define   MASTER_INTERRUPT_ENABLE	(1 << 31)
 
@@ -699,24 +684,6 @@
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
@@ -742,25 +709,6 @@
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
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 1ad31435bd3f..d0400ea2ffc7 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -27,6 +27,7 @@
 
 #include <drm/drm_print.h>
 #include <drm/intel/intel_gmd_misc_regs.h>
+#include <drm/intel/intel_gmd_interrupt_regs.h>
 
 #include "display/i9xx_plane_regs.h"
 #include "display/intel_display.h"
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index c8a51e773086..ae42818ab6e0 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -6,6 +6,8 @@
 #include <drm/intel/intel_pcode_regs.h>
 #include <drm/intel/intel_gmd_misc_regs.h>
 
+#include <drm/intel/intel_gmd_interrupt_regs.h>
+
 #include "display/bxt_dpio_phy_regs.h"
 #include "display/i9xx_plane_regs.h"
 #include "display/i9xx_wm_regs.h"
diff --git a/drivers/gpu/drm/i915/vlv_suspend.c b/drivers/gpu/drm/i915/vlv_suspend.c
index bace7b38329b..1e4343fe5574 100644
--- a/drivers/gpu/drm/i915/vlv_suspend.c
+++ b/drivers/gpu/drm/i915/vlv_suspend.c
@@ -7,6 +7,7 @@
 #include <linux/kernel.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_interrupt_regs.h>
 
 #include "gt/intel_gt_regs.h"
 
diff --git a/include/drm/intel/intel_gmd_interrupt_regs.h b/include/drm/intel/intel_gmd_interrupt_regs.h
index dc9d5fc29ff6..ce66c4151e76 100644
--- a/include/drm/intel/intel_gmd_interrupt_regs.h
+++ b/include/drm/intel/intel_gmd_interrupt_regs.h
@@ -40,4 +40,53 @@
 #define I915_ASLE_INTERRUPT				(1 << 0)
 #define I915_BSD_USER_INTERRUPT				(1 << 25)
 
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
+#define GEN11_GFX_MSTR_IRQ		_MMIO(0x190010)
+#define  GEN11_MASTER_IRQ		(1 << 31)
+#define  GEN11_PCU_IRQ			(1 << 30)
+#define  GEN11_GU_MISC_IRQ		(1 << 29)
+#define  GEN11_DISPLAY_IRQ		(1 << 16)
+#define  GEN11_GT_DW_IRQ(x)		(1 << (x))
+#define  GEN11_GT_DW1_IRQ		(1 << 1)
+#define  GEN11_GT_DW0_IRQ		(1 << 0)
+
+#define SCPD0		_MMIO(0x209c) /* 915+ only */
+#define  SCPD_FBC_IGNORE_3D			(1 << 6)
+#define  CSTATE_RENDER_CLOCK_GATE_DISABLE	(1 << 5)
+
+#define VLV_IIR_RW	_MMIO(VLV_DISPLAY_BASE + 0x2084)
+#define VLV_IER		_MMIO(VLV_DISPLAY_BASE + 0x20a0)
+#define VLV_IIR		_MMIO(VLV_DISPLAY_BASE + 0x20a4)
+#define VLV_IMR		_MMIO(VLV_DISPLAY_BASE + 0x20a8)
+#define VLV_ISR		_MMIO(VLV_DISPLAY_BASE + 0x20ac)
+#define VLV_PCBR	_MMIO(VLV_DISPLAY_BASE + 0x2120)
+#define VLV_PCBR_ADDR_SHIFT	12
+
 #endif
-- 
2.50.1

