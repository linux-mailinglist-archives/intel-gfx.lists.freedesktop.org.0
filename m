Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BFFAB34F9
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 12:34:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B45BB10E388;
	Mon, 12 May 2025 10:34:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GskOy/zj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C84B210E385;
 Mon, 12 May 2025 10:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747046047; x=1778582047;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=egpcinoj5hqc7lnhacXUDBWlMk0kW6u0ph1TbQfx5mo=;
 b=GskOy/zjIPtT8bXv2gwsk0ZVPBvd2PHApcd64n49WV/NdPg5woeJGuCt
 1rwIzCWle4GxHgCml4mOTtWeKeqtc6a5JmO541iOoMpg1g/XGDFOt5iTe
 TQ5CsQSQmqgkZetOjhke58TSgRdV0LAYvLGXqplo9P9NpRQCYQCWYm233
 0Ii+CgsUjvjl2a9NViFzIMXnLbWA+4CWwVdS2FyaWz38OnBrKacX0MSqj
 MOtLHokR/3qrNQEfM45XucM2LKQplSyy24TulCttMzCQ29rW+zyJeFbC3
 4jSFuU62hEgTQUhRidmjR9pORGFtpNAcwCqNp0+2L6yDO6v4vECXoP8lA Q==;
X-CSE-ConnectionGUID: HVrrbWoiSkmT06Dzef5iDw==
X-CSE-MsgGUID: lMk5RxiVQ36/Ooa8AU00HA==
X-IronPort-AV: E=McAfee;i="6700,10204,11430"; a="59467360"
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="59467360"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2025 03:34:07 -0700
X-CSE-ConnectionGUID: o+3GpQGxT+yoR3pXU5Z4ZQ==
X-CSE-MsgGUID: tDguNQmDTwi4eyFaQCZ/3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,282,1739865600"; d="scan'208";a="142439949"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.195])
 by orviesa005.jf.intel.com with SMTP; 12 May 2025 03:34:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 May 2025 13:34:04 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 2/7] drm/i915: Hook up PIPEDMC interrupts
Date: Mon, 12 May 2025 13:33:53 +0300
Message-ID: <20250512103358.15724-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250512103358.15724-1-ville.syrjala@linux.intel.com>
References: <20250512103358.15724-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Hook up PIPEDMC interrupts. We'll need these for:
- flip queue signalling
- GTT/ATS faults on LNL+
- random errors

On LNL+ we get a new level of interrupts registers PIPEDMC_INTERRUPT*.
On earlier platforms we only have the INT_VECTOR field in the
PIPEDMC_STATUS registers, whose values are defined by the firmware.

Similar to DSB interrupt registers, the unused bits in
PIPEDMC_INTERRUPT* seem to act like randomg r/w bits (instead
of being hardwired to 0 like one would expect), and so we'll try
to avoid setting them so that we don't mistake them for real
interrupts.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_device.h   |  1 +
 .../gpu/drm/i915/display/intel_display_irq.c  |  7 +++
 drivers/gpu/drm/i915/display/intel_dmc.c      | 46 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dmc.h      |  2 +
 drivers/gpu/drm/i915/display/intel_dmc_regs.h | 22 +++++++++
 drivers/gpu/drm/i915/i915_reg.h               |  2 +
 6 files changed, 80 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 87c666792c0d..d4611d17e498 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -181,6 +181,7 @@ struct intel_display_platforms {
 #define HAS_MBUS_JOINING(__display)	((__display)->platform.alderlake_p || DISPLAY_VER(__display) >= 14)
 #define HAS_MSO(__display)		(DISPLAY_VER(__display) >= 12)
 #define HAS_OVERLAY(__display)		(DISPLAY_INFO(__display)->has_overlay)
+#define HAS_PIPEDMC(__display)		(DISPLAY_VER(__display) >= 12)
 #define HAS_PSR(__display)		(DISPLAY_INFO(__display)->has_psr)
 #define HAS_PSR_HW_TRACKING(__display)	(DISPLAY_INFO(__display)->has_psr_hw_tracking)
 #define HAS_PSR2_SEL_FETCH(__display)	(DISPLAY_VER(__display) >= 12)
diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index a7130b14aace..21d278b0de21 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -17,6 +17,7 @@
 #include "intel_display_rps.h"
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
+#include "intel_dmc.h"
 #include "intel_dmc_wl.h"
 #include "intel_dp_aux.h"
 #include "intel_dsb.h"
@@ -1449,6 +1450,9 @@ void gen8_de_irq_handler(struct intel_display *display, u32 master_ctl)
 				intel_dsb_irq_handler(display, pipe, INTEL_DSB_2);
 		}
 
+		if (HAS_PIPEDMC(display) && iir & GEN12_PIPEDMC_INTERRUPT)
+			intel_pipedmc_irq_handler(display, pipe);
+
 		if (iir & GEN8_PIPE_CDCLK_CRC_DONE)
 			hsw_pipe_crc_irq_handler(display, pipe);
 
@@ -2266,6 +2270,9 @@ void gen8_de_irq_postinstall(struct intel_display *display)
 			GEN12_DSB_INT(INTEL_DSB_1) |
 			GEN12_DSB_INT(INTEL_DSB_2);
 
+	if (HAS_PIPEDMC(display))
+		de_pipe_masked |= GEN12_PIPEDMC_INTERRUPT;
+
 	de_pipe_enables = de_pipe_masked |
 		GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
 		gen8_de_pipe_flip_done_mask(display);
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index b58189d24e7e..f9cadeaff893 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -27,9 +27,11 @@
 
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "intel_crtc.h"
 #include "intel_de.h"
 #include "intel_display_rpm.h"
 #include "intel_display_power_well.h"
+#include "intel_display_types.h"
 #include "intel_dmc.h"
 #include "intel_dmc_regs.h"
 #include "intel_step.h"
@@ -490,6 +492,14 @@ static void pipedmc_clock_gating_wa(struct intel_display *display, bool enable)
 		adlp_pipedmc_clock_gating_wa(display, enable);
 }
 
+static u32 pipedmc_interrupt_mask(struct intel_display *display)
+{
+	return PIPEDMC_FLIPQ_PROG_DONE |
+		PIPEDMC_ERROR |
+		PIPEDMC_GTT_FAULT |
+		PIPEDMC_ATS_FAULT;
+}
+
 void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
 {
 	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
@@ -497,6 +507,11 @@ void intel_dmc_enable_pipe(struct intel_display *display, enum pipe pipe)
 	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(display, dmc_id))
 		return;
 
+	if (DISPLAY_VER(display) >= 20) {
+		intel_de_write(display, PIPEDMC_INTERRUPT(pipe), pipedmc_interrupt_mask(display));
+		intel_de_write(display, PIPEDMC_INTERRUPT_MASK(pipe), ~pipedmc_interrupt_mask(display));
+	}
+
 	if (DISPLAY_VER(display) >= 14)
 		intel_de_rmw(display, MTL_PIPEDMC_CONTROL, 0, PIPEDMC_ENABLE_MTL(pipe));
 	else
@@ -514,6 +529,11 @@ void intel_dmc_disable_pipe(struct intel_display *display, enum pipe pipe)
 		intel_de_rmw(display, MTL_PIPEDMC_CONTROL, PIPEDMC_ENABLE_MTL(pipe), 0);
 	else
 		intel_de_rmw(display, PIPEDMC_CONTROL(pipe), PIPEDMC_ENABLE, 0);
+
+	if (DISPLAY_VER(display) >= 20) {
+		intel_de_write(display, PIPEDMC_INTERRUPT_MASK(pipe), ~0);
+		intel_de_write(display, PIPEDMC_INTERRUPT(pipe), pipedmc_interrupt_mask(display));
+	}
 }
 
 /**
@@ -1403,3 +1423,29 @@ void intel_dmc_debugfs_register(struct intel_display *display)
 	debugfs_create_file("i915_dmc_info", 0444, minor->debugfs_root,
 			    display, &intel_dmc_debugfs_status_fops);
 }
+
+void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe pipe)
+{
+	struct intel_crtc *crtc = intel_crtc_for_pipe(display, pipe);
+	u32 tmp;
+
+	if (DISPLAY_VER(display) >= 20) {
+		tmp = intel_de_read(display, PIPEDMC_INTERRUPT(pipe));
+		intel_de_write(display, PIPEDMC_INTERRUPT(pipe), tmp);
+
+		if (tmp & PIPEDMC_ATS_FAULT)
+			drm_err_ratelimited(display->drm, "[CRTC:%d:%s] PIPEDMC ATS fault\n",
+					    crtc->base.base.id, crtc->base.name);
+		if (tmp & PIPEDMC_GTT_FAULT)
+			drm_err_ratelimited(display->drm, "[CRTC:%d:%s] PIPEDMC GTT fault\n",
+					    crtc->base.base.id, crtc->base.name);
+		if (tmp & PIPEDMC_ERROR)
+			drm_err(display->drm, "[CRTC:%d:%s]] PIPEDMC error\n",
+				crtc->base.base.id, crtc->base.name);
+	}
+
+	tmp = intel_de_read(display, PIPEDMC_STATUS(pipe)) & PIPEDMC_INT_VECTOR_MASK;
+	if (tmp)
+		drm_err(display->drm, "[CRTC:%d:%s]] PIPEDMC interrupt vector 0x%x\n",
+			crtc->base.base.id, crtc->base.name, tmp);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index bd1c459b0075..a98e8deff13a 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -34,4 +34,6 @@ void intel_dmc_update_dc6_allowed_count(struct intel_display *display, bool star
 
 void assert_dmc_loaded(struct intel_display *display);
 
+void intel_pipedmc_irq_handler(struct intel_display *display, enum pipe pipe);
+
 #endif /* __INTEL_DMC_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
index e16ea3f16ed8..e8ac0e1be764 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
@@ -27,6 +27,28 @@
 						   _MTL_PIPEDMC_EVT_CTL_4_A, \
 						   _MTL_PIPEDMC_EVT_CTL_4_B)
 
+#define _PIPEDMC_STATUS_A		0x5f06c
+#define _PIPEDMC_STATUS_B		0x5f46c
+#define PIPEDMC_STATUS(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_STATUS_A, _PIPEDMC_STATUS_B)
+#define   PIPEDMC_SSP			REG_GENMASK(31, 16)
+#define   PIPEDMC_INT_VECTOR_MASK	REG_GENMASK(15, 8)
+/* PIPEDMC_INT_VECTOR values defined by firmware */
+#define   PIPEDMC_INT_VECTOR_SCANLINE_COMP_ERROR	REG_FIELD_PREP(PIPEDMC_INT_VECTOR_MASK, 0x1)
+#define   PIPEDMC_INT_VECTOR_DC6V_FLIPQ_OVERLAP_ERROR	REG_FIELD_PREP(PIPEDMC_INT_VECTOR_MASK, 0x2)
+#define   PIPEDMC_INT_VECTOR_FLIPQ_PROG_DONE		REG_FIELD_PREP(PIPEDMC_INT_VECTOR_MASK, 0xff) /* Wa_16018781658:lnl[a0] */
+#define   PIPEDMC_EVT_PENDING		REG_GENMASK(7, 0)
+
+#define _PIPEDMC_INTERRUPT_A		0x5f190 /* lnl+ */
+#define _PIPEDMC_INTERRUPT_B		0x5f590 /* lnl+ */
+#define PIPEDMC_INTERRUPT(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_INTERRUPT_A, _PIPEDMC_INTERRUPT_B)
+#define _PIPEDMC_INTERRUPT_MASK_A	0x5f194 /* lnl+ */
+#define _PIPEDMC_INTERRUPT_MASK_B	0x5f594 /* lnl+ */
+#define PIPEDMC_INTERRUPT_MASK(pipe)	_MMIO_PIPE((pipe), _PIPEDMC_INTERRUPT_MASK_A, _PIPEDMC_INTERRUPT_MASK_B)
+#define   PIPEDMC_FLIPQ_PROG_DONE	REG_BIT(3)
+#define   PIPEDMC_ERROR			REG_BIT(2)
+#define   PIPEDMC_GTT_FAULT		REG_BIT(1)
+#define   PIPEDMC_ATS_FAULT		REG_BIT(0)
+
 #define PIPEDMC_BLOCK_PKGC_SW_A	0x5f1d0
 #define PIPEDMC_BLOCK_PKGC_SW_B	0x5F5d0
 #define PIPEDMC_BLOCK_PKGC_SW(pipe)				_MMIO_PIPE(pipe, \
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2d0e04eae763..8822c639a4f4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2128,12 +2128,14 @@
 #define  GEN12_PIPEDMC_INTERRUPT	REG_BIT(26) /* tgl+ */
 #define  GEN12_PIPEDMC_FAULT		REG_BIT(25) /* tgl-mtl */
 #define  MTL_PIPEDMC_ATS_FAULT		REG_BIT(24) /* mtl */
+#define  GEN12_PIPEDMC_FLIPQ_DONE	REG_BIT(24) /* tgl-adl */
 #define  GEN11_PIPE_PLANE7_FAULT	REG_BIT(22) /* icl/tgl */
 #define  GEN11_PIPE_PLANE6_FAULT	REG_BIT(21) /* icl/tgl */
 #define  GEN11_PIPE_PLANE5_FAULT	REG_BIT(20) /* icl+ */
 #define  GEN12_PIPE_VBLANK_UNMOD	REG_BIT(19) /* tgl+ */
 #define  MTL_PLANE_ATS_FAULT		REG_BIT(18) /* mtl+ */
 #define  GEN11_PIPE_PLANE7_FLIP_DONE	REG_BIT(18) /* icl/tgl */
+#define  MTL_PIPEDMC_FLIPQ_DONE		REG_BIT(17) /* mtl */
 #define  GEN11_PIPE_PLANE6_FLIP_DONE	REG_BIT(17) /* icl/tgl */
 #define  GEN11_PIPE_PLANE5_FLIP_DONE	REG_BIT(16) /* icl+ */
 #define  GEN12_DSB_2_INT		REG_BIT(15) /* tgl+ */
-- 
2.49.0

