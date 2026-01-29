Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJKlIQfKe2kQIgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:58:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38ABFB467E
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jan 2026 21:58:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC0FA10E902;
	Thu, 29 Jan 2026 20:58:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ETF7DGe3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C70110E902;
 Thu, 29 Jan 2026 20:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769720325; x=1801256325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eHw4gnl06CjcebJxh84r83gRvZ7wGHEhCd3F4lHEoqg=;
 b=ETF7DGe3TG34WWLDQWY2bJemrClycnadyAn0fwt75G9fo/udcDEbikon
 WlDrGM89ZTVa8yjKl/qVKqxxehU9OycDnpCzGlBr2GQVlAgteOuu90n2H
 3MAj4DrbpnsIlja5/YnbBvSR8P+YguorDB1rd0aUvUEzT7z1MPe7fet5H
 63sLzT2eW9BaCb3Yf+DYpDeLMv+jbq4kXDU5ObRy+W1Esd8twV8ds5ZZR
 pNz1BbtqBBwV2YmVEhUWwa29y1u9N8Xc4INP3NmonB4OuI1htElCjTUnm
 wd3CoFv18Q54DPC+4bC4JZLUJIcVx1P13ggEgHG7+WccPSNqcoAkx2d4G w==;
X-CSE-ConnectionGUID: fKwTfk9/SjKRrifbr99kVw==
X-CSE-MsgGUID: daP7eUnESBmiOgGLQOvAhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="88545347"
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="88545347"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2026 12:58:44 -0800
X-CSE-ConnectionGUID: AMFCyEO+TYGF7OyKZ5MiUg==
X-CSE-MsgGUID: 6XhEjUi/TZiz0o5E1xpf4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,261,1763452800"; d="scan'208";a="239927239"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa001.fm.intel.com with ESMTP; 29 Jan 2026 12:58:42 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v3 16/19] drm/i915: Remove i915_reg.h from intel_display_irq.c
Date: Fri, 30 Jan 2026 02:43:55 +0530
Message-ID: <20260129211358.1240283-17-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260129211358.1240283-1-uma.shankar@intel.com>
References: <20260129211358.1240283-1-uma.shankar@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 38ABFB467E
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
 include/drm/intel/intel_gmd_interrupt.h       | 49 +++++++++++++++++
 11 files changed, 63 insertions(+), 53 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 31c78dc3d63b..5d80f0f4779c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -7,7 +7,6 @@
 #include <drm/drm_vblank.h>
 #include <drm/intel/intel_gmd_interrupt.h>
 
-#include "i915_reg.h"
 #include "icl_dsi_regs.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index ab2ef267c9ce..4a9b7560ce8c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -1479,6 +1479,11 @@
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
index 75e802e10be2..702d8558aa69 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -5,6 +5,8 @@
 
 #include <linux/sched/clock.h>
 
+#include <drm/intel/intel_gmd_interrupt.h>
+
 #include "i915_drv.h"
 #include "i915_irq.h"
 #include "i915_reg.h"
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 286d49ecc449..dfda675f633a 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -7,6 +7,7 @@
 #include <linux/string_helpers.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_interrupt.h>
 
 #include "display/vlv_clock.h"
 #include "gem/i915_gem_region.h"
diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 6f860c320afc..28541b0c7cb9 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -40,6 +40,7 @@
 
 #include <drm/display/drm_dp.h>
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_interrupt.h>
 
 #include "display/bxt_dpio_phy_regs.h"
 #include "display/i9xx_plane_regs.h"
diff --git a/drivers/gpu/drm/i915/gvt/interrupt.c b/drivers/gpu/drm/i915/gvt/interrupt.c
index 91d22b1c62e2..92c4e2762032 100644
--- a/drivers/gpu/drm/i915/gvt/interrupt.c
+++ b/drivers/gpu/drm/i915/gvt/interrupt.c
@@ -32,6 +32,7 @@
 #include <linux/eventfd.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_interrupt.h>
 
 #include "display/intel_display_regs.h"
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 611ae5861450..9cd7fce09ebe 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -337,9 +337,6 @@
 
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
@@ -684,11 +674,6 @@
 #define PCH_3DCGDIS1		_MMIO(0x46024)
 # define VFMUNIT_CLOCK_GATE_DISABLE		(1 << 11)
 
-/* Display Internal Timeout Register */
-#define RM_TIMEOUT		_MMIO(0x42060)
-#define RM_TIMEOUT_REG_CAPTURE	_MMIO(0x420E0)
-#define  MMIO_TIMEOUT_US(us)	((us) << 0)
-
 #define VLV_MASTER_IER			_MMIO(0x4400c) /* Gunit master IER */
 #define   MASTER_INTERRUPT_ENABLE	(1 << 31)
 
@@ -701,24 +686,6 @@
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
@@ -744,25 +711,6 @@
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
index 4e18d5a22112..627185c6d110 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -26,6 +26,7 @@
  */
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_interrupt.h>
 
 #include "display/i9xx_plane_regs.h"
 #include "display/intel_display.h"
diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
index c0154fd77fc9..b20d4eb0bfd2 100644
--- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
+++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
@@ -3,6 +3,8 @@
  * Copyright © 2020 Intel Corporation
  */
 
+#include <drm/intel/intel_gmd_interrupt.h>
+
 #include "display/bxt_dpio_phy_regs.h"
 #include "display/i9xx_plane_regs.h"
 #include "display/i9xx_wm_regs.h"
diff --git a/drivers/gpu/drm/i915/vlv_suspend.c b/drivers/gpu/drm/i915/vlv_suspend.c
index bace7b38329b..e350f588cec1 100644
--- a/drivers/gpu/drm/i915/vlv_suspend.c
+++ b/drivers/gpu/drm/i915/vlv_suspend.c
@@ -7,6 +7,7 @@
 #include <linux/kernel.h>
 
 #include <drm/drm_print.h>
+#include <drm/intel/intel_gmd_interrupt.h>
 
 #include "gt/intel_gt_regs.h"
 
diff --git a/include/drm/intel/intel_gmd_interrupt.h b/include/drm/intel/intel_gmd_interrupt.h
index eae0acade16a..5c77b0aa96a2 100644
--- a/include/drm/intel/intel_gmd_interrupt.h
+++ b/include/drm/intel/intel_gmd_interrupt.h
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

