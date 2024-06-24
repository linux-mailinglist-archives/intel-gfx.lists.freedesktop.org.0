Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11A109156F6
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 21:10:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A7B210E54F;
	Mon, 24 Jun 2024 19:10:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O0K2zJGL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F34AF10E54D
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 19:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719256244; x=1750792244;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=hS6fAeHbHTzZ85C0kwH1Dw8XxtaMGid1FCyeoPhMBoo=;
 b=O0K2zJGLWXg5qS/NbQeD0JWGeMetNsdXnT/tzCUtU8hQ2dG81ZWQPoE4
 JwzNk/DcCF3GYMv7hrMULuddtpiT1BRVBCZ1Xin1GL2Tjptq4BE5iHHcb
 di3a7F/mfJD8XisjTO8XFQm72w8ioRLTusNfb/Pvc8OlZq5zxq9AmnYfY
 /Vd1cuOuB6T3QSPh7GQ+7MrZ31754WogtXvuE5dEPV58CJFP4ADGI5Oky
 qp0fK3BFHEyUs90/ePx3gR6X0nMDMaQluBnbWBuFCJQsCKKCWxeEkITUj
 mhhgh8/OCZ6F4rCX6OR5w3f1K/gvc57krBRdYsAMDjI5q0gxjOkv0SjJV w==;
X-CSE-ConnectionGUID: H8fN3LZdRjeeWkiLaZnFsw==
X-CSE-MsgGUID: xgjyePGSQoSwlvcvrxTCrw==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16374122"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16374122"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 12:10:43 -0700
X-CSE-ConnectionGUID: YpNx0P0WQgKPHSD95gwiZA==
X-CSE-MsgGUID: dXfa7VQgTD+c+cTttKT4Yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43371916"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 12:10:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 22:10:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/14] drm/i915/dsb: Hook up DSB error interrupts
Date: Mon, 24 Jun 2024 22:10:21 +0300
Message-ID: <20240624191032.27333-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
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

Enable all DSB error/fault interrupts so that we can see if
anything goes terribly wrong.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../gpu/drm/i915/display/intel_display_irq.c  | 17 ++++++
 drivers/gpu/drm/i915/display/intel_dsb.c      | 58 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h      |  6 ++
 drivers/gpu/drm/i915/i915_reg.h               |  4 ++
 4 files changed, 85 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index 5219ba295c74..7169db984651 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -14,6 +14,7 @@
 #include "intel_display_trace.h"
 #include "intel_display_types.h"
 #include "intel_dp_aux.h"
+#include "intel_dsb.h"
 #include "intel_fdi_regs.h"
 #include "intel_fifo_underrun.h"
 #include "intel_gmbus.h"
@@ -1143,6 +1144,17 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
 
 		intel_uncore_write(&dev_priv->uncore, GEN8_DE_PIPE_IIR(pipe), iir);
 
+		if (HAS_DSB(dev_priv)) {
+			if (iir & GEN12_DSB_INT(INTEL_DSB_0))
+				intel_dsb_irq_handler(&dev_priv->display, pipe, INTEL_DSB_0);
+
+			if (iir & GEN12_DSB_INT(INTEL_DSB_1))
+				intel_dsb_irq_handler(&dev_priv->display, pipe, INTEL_DSB_1);
+
+			if (iir & GEN12_DSB_INT(INTEL_DSB_2))
+				intel_dsb_irq_handler(&dev_priv->display, pipe, INTEL_DSB_2);
+		}
+
 		if (iir & GEN8_PIPE_VBLANK)
 			intel_handle_vblank(dev_priv, pipe);
 
@@ -1718,6 +1730,11 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
 			de_port_masked |= DSI0_TE | DSI1_TE;
 	}
 
+	if (HAS_DSB(dev_priv))
+		de_pipe_masked |= GEN12_DSB_INT(INTEL_DSB_0) |
+			GEN12_DSB_INT(INTEL_DSB_1) |
+			GEN12_DSB_INT(INTEL_DSB_2);
+
 	de_pipe_enables = de_pipe_masked |
 		GEN8_PIPE_VBLANK |
 		gen8_de_pipe_underrun_mask(dev_priv) |
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 2ab3765f6c06..ded696363258 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -339,6 +339,42 @@ static u32 dsb_chicken(struct intel_crtc *crtc)
 		return DSB_SKIP_WAITS_EN;
 }
 
+static u32 dsb_error_int_status(struct intel_display *display)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	u32 errors;
+
+	errors = DSB_GTT_FAULT_INT_STATUS |
+		DSB_RSPTIMEOUT_INT_STATUS |
+		DSB_POLL_ERR_INT_STATUS;
+
+	/*
+	 * All the non-existing status bits operate as
+	 * normal r/w bits, so any attempt to clear them
+	 * will just end up setting them. Never do that so
+	 * we won't mistake them for actual error interrupts.
+	 */
+	if (DISPLAY_VER(i915) >= 14)
+		errors |= DSB_ATS_FAULT_INT_STATUS;
+
+	return errors;
+}
+
+static u32 dsb_error_int_en(struct intel_display *display)
+{
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	u32 errors;
+
+	errors = DSB_GTT_FAULT_INT_EN |
+		DSB_RSPTIMEOUT_INT_EN |
+		DSB_POLL_ERR_INT_EN;
+
+	if (DISPLAY_VER(i915) >= 14)
+		errors |= DSB_ATS_FAULT_INT_EN;
+
+	return errors;
+}
+
 static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 			      int dewake_scanline)
 {
@@ -363,6 +399,10 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
 	intel_de_write_fw(display, DSB_CHICKEN(pipe, dsb->id),
 			  dsb_chicken(crtc));
 
+	intel_de_write_fw(display, DSB_INTERRUPT(pipe, dsb->id),
+			  dsb_error_int_status(display) | DSB_PROG_INT_STATUS |
+			  dsb_error_int_en(display));
+
 	intel_de_write_fw(display, DSB_HEAD(pipe, dsb->id),
 			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf));
 
@@ -430,6 +470,9 @@ void intel_dsb_wait(struct intel_dsb *dsb)
 	dsb->free_pos = 0;
 	dsb->ins_start_offset = 0;
 	intel_de_write_fw(display, DSB_CTRL(pipe, dsb->id), 0);
+
+	intel_de_write_fw(display, DSB_INTERRUPT(pipe, dsb->id),
+			  dsb_error_int_status(display) | DSB_PROG_INT_STATUS);
 }
 
 /**
@@ -513,3 +556,18 @@ void intel_dsb_cleanup(struct intel_dsb *dsb)
 	intel_dsb_buffer_cleanup(&dsb->dsb_buf);
 	kfree(dsb);
 }
+
+void intel_dsb_irq_handler(struct intel_display *display,
+			   enum pipe pipe, enum intel_dsb_id dsb_id)
+{
+	struct intel_crtc *crtc = intel_crtc_for_pipe(to_i915(display->drm), pipe);
+	u32 tmp, errors;
+
+	tmp = intel_de_read_fw(display, DSB_INTERRUPT(pipe, dsb_id));
+	intel_de_write_fw(display, DSB_INTERRUPT(pipe, dsb_id), tmp);
+
+	errors = tmp & dsb_error_int_status(display);
+	if (errors)
+		drm_err(display->drm, "[CRTC:%d:%s] / DSB %d error interrupt: 0x%x\n",
+			crtc->base.base.id, crtc->base.name, dsb_id, errors);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index bb42749f2ea4..84fc2f8434d1 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -13,8 +13,11 @@
 struct intel_atomic_state;
 struct intel_crtc;
 struct intel_crtc_state;
+struct intel_display;
 struct intel_dsb;
 
+enum pipe;
+
 enum intel_dsb_id {
 	INTEL_DSB_0,
 	INTEL_DSB_1,
@@ -41,4 +44,7 @@ void intel_dsb_commit(struct intel_dsb *dsb,
 		      bool wait_for_vblank);
 void intel_dsb_wait(struct intel_dsb *dsb);
 
+void intel_dsb_irq_handler(struct intel_display *display,
+			   enum pipe pipe, enum intel_dsb_id dsb_id);
+
 #endif
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 0e3d79227e3c..49a9761ca313 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2515,6 +2515,10 @@
 #define  GEN11_PIPE_PLANE7_FLIP_DONE	REG_BIT(18) /* icl/tgl */
 #define  GEN11_PIPE_PLANE6_FLIP_DONE	REG_BIT(17) /* icl/tgl */
 #define  GEN11_PIPE_PLANE5_FLIP_DONE	REG_BIT(16) /* icl+ */
+#define  GEN12_DSB_2_INT		REG_BIT(15) /* tgl+ */
+#define  GEN12_DSB_1_INT		REG_BIT(14) /* tgl+ */
+#define  GEN12_DSB_0_INT		REG_BIT(13) /* tgl+ */
+#define  GEN12_DSB_INT(dsb_id)		REG_BIT(13 + (dsb_id))
 #define  GEN9_PIPE_CURSOR_FAULT		REG_BIT(11) /* skl+ */
 #define  GEN9_PIPE_PLANE4_FAULT		REG_BIT(10) /* skl+ */
 #define  GEN8_PIPE_CURSOR_FAULT		REG_BIT(10) /* bdw */
-- 
2.44.2

