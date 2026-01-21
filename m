Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OLc8LpBccWnLGAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:09:04 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5783E5F4D9
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 00:09:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E61D210E8C8;
	Wed, 21 Jan 2026 23:09:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dTFw8WmJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E78A10E8C6;
 Wed, 21 Jan 2026 23:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769036940; x=1800572940;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DVKLgAwAXiLUFKOS6tDqymF5HKzvOSAbX3fdNFAkvTk=;
 b=dTFw8WmJJmcb4iVXpBEOz+3RgOKDtRQAXxFUapsUEG6bHECJ6L8VW2Qs
 VNIkq4xuuaxj+3Gyf9x20wToJYcrc7WmAbZxY8p85C/VShyD/pYbmSz6/
 7EdDYQTeR+pMioFSXARDwDoFRCEx1WFGO29czy06nu3bJfVM9zdJgXfiE
 8bDffUexph5isb4MUNdbM2vdABYtp9hTsEVTpAezZbJsepzfWtkFRupGW
 rsrpwN7Zv7ONALtfAeodrc9i49YtP0xR2sx/QxRtkzgzXZPEl1FQSdCBb
 ztNGYju+HWFmD7o/GXLpurL38mYC2sI7yEJLT1aNxaH8ikAV/fy8TMQys A==;
X-CSE-ConnectionGUID: fOV4DYSRRv+rQHqK2T3rDg==
X-CSE-MsgGUID: Rzq5imnuTJiKWqueA8VrxQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70245001"
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="70245001"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 15:08:59 -0800
X-CSE-ConnectionGUID: FVRcqGaDSYCWzR5g6thzzw==
X-CSE-MsgGUID: jFYU0F4qQ46ffGVZVQxnXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,244,1763452800"; d="scan'208";a="206889659"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa010.fm.intel.com with ESMTP; 21 Jan 2026 15:08:57 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [v2 16/19] drm/{i915, xe}: Remove i915_reg.h from intel_display_irq.c
Date: Thu, 22 Jan 2026 04:54:11 +0530
Message-ID: <20260121232414.707192-17-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260121232414.707192-1-uma.shankar@intel.com>
References: <20260121232414.707192-1-uma.shankar@intel.com>
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
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 5783E5F4D9
X-Rspamd-Action: no action

Move VLV_IRQ_REGS to common header to make intel_display_irq.c
free from including i915_reg.h.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  |  2 +-
 .../gpu/drm/i915/display/intel_display_regs.h | 28 +++++-----
 drivers/gpu/drm/i915/i915_reg.h               | 52 ------------------
 include/drm/intel/intel_gmd_common_regs.h     | 54 +++++++++++++++++++
 4 files changed, 69 insertions(+), 67 deletions(-)

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
index aafe71a3b410..fb21b1cf6124 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -90,20 +90,6 @@
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
@@ -3166,4 +3152,18 @@ enum skl_power_gate {
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
index 0af2c9c8dc0f..a85e2d9ab561 100644
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
index 2b2a7f21529a..9bc234135454 100644
--- a/include/drm/intel/intel_gmd_common_regs.h
+++ b/include/drm/intel/intel_gmd_common_regs.h
@@ -111,6 +111,9 @@
 #define   GMD_ID_STEP				REG_GENMASK(5, 0)
 
 #define GEN2_ISR       _MMIO(0x20ac)
+#define SCPD0		_MMIO(0x209c) /* 915+ only */
+#define  SCPD_FBC_IGNORE_3D			(1 << 6)
+#define  CSTATE_RENDER_CLOCK_GATE_DISABLE	(1 << 5)
 
 #define I915_PM_INTERRUPT				(1 << 31)
 #define I915_ISP_INTERRUPT				(1 << 22)
@@ -192,4 +195,55 @@
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

