Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLyjEDOD8GlwUQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 11:51:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B65481E33
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 11:51:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6008C10EAD1;
	Tue, 28 Apr 2026 09:51:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YKR8bQug";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B81CA10EAD4;
 Tue, 28 Apr 2026 09:51:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777369905; x=1808905905;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=6IUeHyfmYlZs3BRDp4URNq6OQ4MeMhXl0+uVOTRusn4=;
 b=YKR8bQugkY8Opdmmgwj4RiqkmopvYz6kpLiGLqNYmizJTLz03HPSn5Tz
 LIBu7J2MtG0xg0fvAlbYZ2L9F/OWSzgr/yHyWBFkcs20bGu+4fbheH+qW
 dV3nM8ezdMQeaBSytPPITiwo6bJya7vkiNbEG/YikXKGwk9nQZuBM3zDC
 AWHC1GoUDwTqvEkQMDApPV5PpsboOjK0VSESZ4tn5jSJKL37DGX5DMJyq
 sP5aWdVqmvnOrQ1TDW8PaEj9AQ2nZ/ENG+n8pdHMEpMVBvnHc9Ik8OPO3
 mW43beCPAYcK7clBXMdMYbGPLMXdxQZYOhICeqsPDKsKkOkfgdLYRPG7J A==;
X-CSE-ConnectionGUID: vgXK39VuQDu6M5cqZDXNJg==
X-CSE-MsgGUID: ZT3cVKDPRhiuT+4p6uIS4A==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78385134"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="78385134"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 02:51:44 -0700
X-CSE-ConnectionGUID: FOLjHy2fQRanvdTXy5IMwg==
X-CSE-MsgGUID: pgBC1KfGTEyrxnl/LsNkgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="238891847"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.243])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 02:51:42 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v5 7/8] drm/i915/display: move pre-HSW clock gating init to
 display
Date: Tue, 28 Apr 2026 12:48:25 +0300
Message-ID: <20260428095104.818360-8-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260428095104.818360-1-luciano.coelho@intel.com>
References: <20260428095104.818360-1-luciano.coelho@intel.com>
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
X-Rspamd-Queue-Id: E4B65481E33
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid]

Move the remaining pre-HSW display clock gating programming into
display.

This also drops display register includes from intel_clock_gating.c.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 .../i915/display/intel_display_clock_gating.c |  92 ++++++++++++++++
 .../i915/display/intel_display_clock_gating.h |   6 +
 .../gpu/drm/i915/display/intel_display_regs.h |  28 +++++
 drivers/gpu/drm/i915/i915_reg.h               |  28 -----
 drivers/gpu/drm/i915/intel_clock_gating.c     | 103 +-----------------
 5 files changed, 132 insertions(+), 125 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
index 74bb88d52ba9..d036c7e5863d 100644
--- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
+++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
@@ -6,6 +6,7 @@
 #include <drm/intel/intel_gmd_misc_regs.h>
 
 #include "intel_de.h"
+#include "i9xx_plane_regs.h"
 #include "intel_display.h"
 #include "intel_display_clock_gating.h"
 #include "intel_display_core.h"
@@ -176,3 +177,94 @@ void intel_display_hsw_init_clock_gating(struct intel_display *display)
 			     HSW_UNMASK_VBL_TO_REGS_IN_SRD);
 	}
 }
+
+void intel_display_disable_trickle_feed(struct intel_display *display)
+{
+	enum pipe pipe;
+
+	for_each_pipe(display, pipe) {
+		intel_de_rmw(display, DSPCNTR(display, pipe), 0,
+			     DISP_TRICKLE_FEED_DISABLE);
+
+		intel_de_rmw(display, DSPSURF(display, pipe), 0, 0);
+		intel_de_posting_read(display, DSPSURF(display, pipe));
+	}
+}
+
+void intel_display_ilk_init_clock_gating(struct intel_display *display)
+{
+	u32 dspclk_gate = ILK_VRHUNIT_CLOCK_GATE_DISABLE;
+
+	/*
+	 * Required for FBC
+	 * WaFbcDisableDpfcClockGating:ilk
+	 */
+	dspclk_gate |= ILK_DPFCRUNIT_CLOCK_GATE_DISABLE |
+		       ILK_DPFCUNIT_CLOCK_GATE_DISABLE |
+		       ILK_DPFDUNIT_CLOCK_GATE_ENABLE;
+
+	intel_de_write(display, ILK_DISPLAY_CHICKEN2,
+		       intel_de_read(display, ILK_DISPLAY_CHICKEN2) |
+		       ILK_DPARB_GATE | ILK_VSDPFD_FULL);
+	dspclk_gate |= ILK_DPARBUNIT_CLOCK_GATE_ENABLE;
+	intel_de_write(display, DISP_ARB_CTL,
+		       intel_de_read(display, DISP_ARB_CTL) |
+		       DISP_FBC_WM_DIS);
+
+	if (display->platform.ironlake && display->platform.mobile) {
+		/* WaFbcAsynchFlipDisableFbcQueue:ilk */
+		intel_de_rmw(display, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS);
+		intel_de_rmw(display, ILK_DISPLAY_CHICKEN2, 0, ILK_DPARB_GATE);
+	}
+
+	intel_de_write(display, ILK_DSPCLK_GATE_D, dspclk_gate);
+	intel_de_rmw(display, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_409_SELECT);
+
+	intel_display_disable_trickle_feed(display);
+}
+
+void intel_display_gen6_init_clock_gating(struct intel_display *display)
+{
+	u32 dspclk_gate = ILK_VRHUNIT_CLOCK_GATE_DISABLE;
+
+	intel_de_write(display, ILK_DSPCLK_GATE_D, dspclk_gate);
+	intel_de_rmw(display, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_409_SELECT);
+
+	intel_de_write(display, ILK_DISPLAY_CHICKEN1,
+		       intel_de_read(display, ILK_DISPLAY_CHICKEN1) |
+		       ILK_FBCQ_DIS | ILK_PABSTRETCH_DIS);
+	intel_de_write(display, ILK_DISPLAY_CHICKEN2,
+		       intel_de_read(display, ILK_DISPLAY_CHICKEN2) |
+		       ILK_DPARB_GATE | ILK_VSDPFD_FULL);
+	intel_de_write(display, ILK_DSPCLK_GATE_D,
+		       intel_de_read(display, ILK_DSPCLK_GATE_D) |
+		       ILK_DPARBUNIT_CLOCK_GATE_ENABLE |
+		       ILK_DPFDUNIT_CLOCK_GATE_ENABLE);
+
+	intel_display_disable_trickle_feed(display);
+}
+
+void intel_display_ivb_init_clock_gating(struct intel_display *display)
+{
+	intel_de_write(display, ILK_DSPCLK_GATE_D, ILK_VRHUNIT_CLOCK_GATE_DISABLE);
+	intel_de_rmw(display, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS);
+}
+
+void intel_display_g4x_init_clock_gating(struct intel_display *display)
+{
+	u32 dspclk_gate = VRHUNIT_CLOCK_GATE_DISABLE |
+			  OVRUNIT_CLOCK_GATE_DISABLE |
+			  OVCUNIT_CLOCK_GATE_DISABLE;
+
+	if (display->platform.gm45)
+		dspclk_gate |= DSSUNIT_CLOCK_GATE_DISABLE;
+
+	intel_de_write(display, DSPCLK_GATE_D, dspclk_gate);
+
+	intel_display_disable_trickle_feed(display);
+}
+
+void intel_display_i965gm_init_clock_gating(struct intel_display *display)
+{
+	intel_de_write(display, DSPCLK_GATE_D, 0);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
index e0300dc8b041..b6dd34ca92dd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
+++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
@@ -17,5 +17,11 @@ void intel_display_bdw_clock_gating_disable_fbcq(struct intel_display *display);
 void intel_display_bdw_clock_gating_vblank_in_srd(struct intel_display *display);
 void intel_display_bdw_clock_gating_kvm_notif(struct intel_display *display);
 void intel_display_hsw_init_clock_gating(struct intel_display *display);
+void intel_display_disable_trickle_feed(struct intel_display *display);
+void intel_display_ilk_init_clock_gating(struct intel_display *display);
+void intel_display_gen6_init_clock_gating(struct intel_display *display);
+void intel_display_ivb_init_clock_gating(struct intel_display *display);
+void intel_display_g4x_init_clock_gating(struct intel_display *display);
+void intel_display_i965gm_init_clock_gating(struct intel_display *display);
 
 #endif /* __INTEL_DISPLAY_CLOCK_GATING_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
index 1cb87ba0ebeb..bc508995ad8b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
@@ -217,6 +217,34 @@
 # define DPIOUNIT_CLOCK_GATE_DISABLE		(1 << 6) /* 915-945 */
 # define OVFUNIT_CLOCK_GATE_DISABLE		(1 << 5)
 # define OVBUNIT_CLOCK_GATE_DISABLE		(1 << 4)
+
+#define ILK_DISPLAY_CHICKEN1		_MMIO(0x42000)
+#define   ILK_FBCQ_DIS			REG_BIT(22)
+#define   ILK_PABSTRETCH_DIS		REG_BIT(21)
+#define   ILK_SABSTRETCH_DIS		REG_BIT(20)
+#define   IVB_PRI_STRETCH_MAX_MASK	REG_GENMASK(21, 20)
+#define   IVB_PRI_STRETCH_MAX_X8	REG_FIELD_PREP(IVB_PRI_STRETCH_MAX_MASK, 0)
+#define   IVB_PRI_STRETCH_MAX_X4	REG_FIELD_PREP(IVB_PRI_STRETCH_MAX_MASK, 1)
+#define   IVB_PRI_STRETCH_MAX_X2	REG_FIELD_PREP(IVB_PRI_STRETCH_MAX_MASK, 2)
+#define   IVB_PRI_STRETCH_MAX_X1	REG_FIELD_PREP(IVB_PRI_STRETCH_MAX_MASK, 3)
+#define   IVB_SPR_STRETCH_MAX_MASK	REG_GENMASK(19, 18)
+#define   IVB_SPR_STRETCH_MAX_X8	REG_FIELD_PREP(IVB_SPR_STRETCH_MAX_MASK, 0)
+#define   IVB_SPR_STRETCH_MAX_X4	REG_FIELD_PREP(IVB_SPR_STRETCH_MAX_MASK, 1)
+#define   IVB_SPR_STRETCH_MAX_X2	REG_FIELD_PREP(IVB_SPR_STRETCH_MAX_MASK, 2)
+#define   IVB_SPR_STRETCH_MAX_X1	REG_FIELD_PREP(IVB_SPR_STRETCH_MAX_MASK, 3)
+
+#define ILK_DISPLAY_CHICKEN2		_MMIO(0x42004)
+/* Required on all Ironlake and Sandybridge according to the B-Spec. */
+#define   ILK_ELPIN_409_SELECT		REG_BIT(25)
+#define   ILK_DPARB_GATE		REG_BIT(22)
+#define   ILK_VSDPFD_FULL		REG_BIT(21)
+
+#define ILK_DSPCLK_GATE_D		_MMIO(0x42020)
+#define   ILK_VRHUNIT_CLOCK_GATE_DISABLE	REG_BIT(28)
+#define   ILK_DPFCUNIT_CLOCK_GATE_DISABLE	REG_BIT(9)
+#define   ILK_DPFCRUNIT_CLOCK_GATE_DISABLE	REG_BIT(8)
+#define   ILK_DPFDUNIT_CLOCK_GATE_ENABLE	REG_BIT(7)
+#define   ILK_DPARBUNIT_CLOCK_GATE_ENABLE	REG_BIT(5)
 /*
  * This bit must be set on the 830 to prevent hangs when turning off the
  * overlay scaler.
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e9d7f1c3a288..64e906380131 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -494,21 +494,6 @@
 #define   GEN7_FF_DS_SCHED_LOAD_BALANCE	(0x1 << 4)  /* Default */
 #define   GEN7_FF_DS_SCHED_HW		(0x0 << 4)
 
-#define ILK_DISPLAY_CHICKEN1	_MMIO(0x42000)
-#define   ILK_FBCQ_DIS			REG_BIT(22)
-#define   ILK_PABSTRETCH_DIS		REG_BIT(21)
-#define   ILK_SABSTRETCH_DIS		REG_BIT(20)
-#define   IVB_PRI_STRETCH_MAX_MASK	REG_GENMASK(21, 20)
-#define   IVB_PRI_STRETCH_MAX_X8	REG_FIELD_PREP(IVB_PRI_STRETCH_MAX_MASK, 0)
-#define   IVB_PRI_STRETCH_MAX_X4	REG_FIELD_PREP(IVB_PRI_STRETCH_MAX_MASK, 1)
-#define   IVB_PRI_STRETCH_MAX_X2	REG_FIELD_PREP(IVB_PRI_STRETCH_MAX_MASK, 2)
-#define   IVB_PRI_STRETCH_MAX_X1	REG_FIELD_PREP(IVB_PRI_STRETCH_MAX_MASK, 3)
-#define   IVB_SPR_STRETCH_MAX_MASK	REG_GENMASK(19, 18)
-#define   IVB_SPR_STRETCH_MAX_X8	REG_FIELD_PREP(IVB_SPR_STRETCH_MAX_MASK, 0)
-#define   IVB_SPR_STRETCH_MAX_X4	REG_FIELD_PREP(IVB_SPR_STRETCH_MAX_MASK, 1)
-#define   IVB_SPR_STRETCH_MAX_X2	REG_FIELD_PREP(IVB_SPR_STRETCH_MAX_MASK, 2)
-#define   IVB_SPR_STRETCH_MAX_X1	REG_FIELD_PREP(IVB_SPR_STRETCH_MAX_MASK, 3)
-
 #define DPLL_TEST	_MMIO(0x606c)
 #define   DPLLB_TEST_SDVO_DIV_1		(0 << 22)
 #define   DPLLB_TEST_SDVO_DIV_2		(1 << 22)
@@ -700,19 +685,6 @@
 #define   DG1_MSTR_IRQ			REG_BIT(31)
 #define   DG1_MSTR_TILE(t)		REG_BIT(t)
 
-#define ILK_DISPLAY_CHICKEN2	_MMIO(0x42004)
-/* Required on all Ironlake and Sandybridge according to the B-Spec. */
-#define   ILK_ELPIN_409_SELECT	REG_BIT(25)
-#define   ILK_DPARB_GATE	REG_BIT(22)
-#define   ILK_VSDPFD_FULL	REG_BIT(21)
-
-#define ILK_DSPCLK_GATE_D	_MMIO(0x42020)
-#define   ILK_VRHUNIT_CLOCK_GATE_DISABLE	REG_BIT(28)
-#define   ILK_DPFCUNIT_CLOCK_GATE_DISABLE	REG_BIT(9)
-#define   ILK_DPFCRUNIT_CLOCK_GATE_DISABLE	REG_BIT(8)
-#define   ILK_DPFDUNIT_CLOCK_GATE_ENABLE	REG_BIT(7)
-#define   ILK_DPARBUNIT_CLOCK_GATE_ENABLE	REG_BIT(5)
-
 #define IVB_CHICKEN3		_MMIO(0x4200c)
 #define   CHICKEN3_DGMG_REQ_OUT_FIX_DISABLE	REG_BIT(5)
 #define   CHICKEN3_DGMG_DONE_FIX_DISABLE	REG_BIT(2)
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 10aa00e003be..c27b6f9266b1 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -30,11 +30,8 @@
 #include <drm/intel/intel_gmd_misc_regs.h>
 #include <drm/intel/mchbar_regs.h>
 
-#include "display/i9xx_plane_regs.h"
-#include "display/intel_display.h"
 #include "display/intel_display_clock_gating.h"
 #include "display/intel_display_core.h"
-#include "display/intel_display_regs.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_mcr.h"
@@ -68,74 +65,15 @@ static void glk_init_clock_gating(struct drm_i915_private *i915)
 	intel_display_glk_init_clock_gating(i915->display);
 }
 
-static void g4x_disable_trickle_feed(struct drm_i915_private *dev_priv)
-{
-	struct intel_display *display = dev_priv->display;
-	enum pipe pipe;
-
-	for_each_pipe(display, pipe) {
-		intel_uncore_rmw(&dev_priv->uncore, DSPCNTR(display, pipe),
-				 0, DISP_TRICKLE_FEED_DISABLE);
-
-		intel_uncore_rmw(&dev_priv->uncore, DSPSURF(display, pipe),
-				 0, 0);
-		intel_uncore_posting_read(&dev_priv->uncore,
-					  DSPSURF(display, pipe));
-	}
-}
-
 static void ilk_init_clock_gating(struct drm_i915_private *i915)
 {
-	u32 dspclk_gate = ILK_VRHUNIT_CLOCK_GATE_DISABLE;
-
-	/*
-	 * Required for FBC
-	 * WaFbcDisableDpfcClockGating:ilk
-	 */
-	dspclk_gate |= ILK_DPFCRUNIT_CLOCK_GATE_DISABLE |
-		   ILK_DPFCUNIT_CLOCK_GATE_DISABLE |
-		   ILK_DPFDUNIT_CLOCK_GATE_ENABLE;
-
 	intel_uncore_write(&i915->uncore, PCH_3DCGDIS0,
 			   MARIUNIT_CLOCK_GATE_DISABLE |
 			   SVSMUNIT_CLOCK_GATE_DISABLE);
 	intel_uncore_write(&i915->uncore, PCH_3DCGDIS1,
 			   VFMUNIT_CLOCK_GATE_DISABLE);
 
-	/*
-	 * According to the spec the following bits should be set in
-	 * order to enable memory self-refresh
-	 * The bit 22/21 of 0x42004
-	 * The bit 5 of 0x42020
-	 * The bit 15 of 0x45000
-	 */
-	intel_uncore_write(&i915->uncore, ILK_DISPLAY_CHICKEN2,
-			   (intel_uncore_read(&i915->uncore, ILK_DISPLAY_CHICKEN2) |
-			    ILK_DPARB_GATE | ILK_VSDPFD_FULL));
-	dspclk_gate |= ILK_DPARBUNIT_CLOCK_GATE_ENABLE;
-	intel_uncore_write(&i915->uncore, DISP_ARB_CTL,
-			   (intel_uncore_read(&i915->uncore, DISP_ARB_CTL) |
-			    DISP_FBC_WM_DIS));
-
-	/*
-	 * Based on the document from hardware guys the following bits
-	 * should be set unconditionally in order to enable FBC.
-	 * The bit 22 of 0x42000
-	 * The bit 22 of 0x42004
-	 * The bit 7,8,9 of 0x42020.
-	 */
-	if (IS_IRONLAKE_M(i915)) {
-		/* WaFbcAsynchFlipDisableFbcQueue:ilk */
-		intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS);
-		intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_DPARB_GATE);
-	}
-
-	intel_uncore_write(&i915->uncore, ILK_DSPCLK_GATE_D, dspclk_gate);
-
-	intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_409_SELECT);
-
-	g4x_disable_trickle_feed(i915);
-
+	intel_display_ilk_init_clock_gating(i915->display);
 	intel_pch_init_clock_gating(i915->display);
 }
 
@@ -152,11 +90,7 @@ static void gen6_check_mch_setup(struct drm_i915_private *i915)
 
 static void gen6_init_clock_gating(struct drm_i915_private *i915)
 {
-	u32 dspclk_gate = ILK_VRHUNIT_CLOCK_GATE_DISABLE;
-
-	intel_uncore_write(&i915->uncore, ILK_DSPCLK_GATE_D, dspclk_gate);
-
-	intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN2, 0, ILK_ELPIN_409_SELECT);
+	intel_display_gen6_init_clock_gating(i915->display);
 
 	intel_uncore_write(&i915->uncore, GEN6_UCGCTL1,
 			   intel_uncore_read(&i915->uncore, GEN6_UCGCTL1) |
@@ -191,19 +125,6 @@ static void gen6_init_clock_gating(struct drm_i915_private *i915)
 	 *
 	 * WaFbcAsynchFlipDisableFbcQueue:snb
 	 */
-	intel_uncore_write(&i915->uncore, ILK_DISPLAY_CHICKEN1,
-			   intel_uncore_read(&i915->uncore, ILK_DISPLAY_CHICKEN1) |
-			   ILK_FBCQ_DIS | ILK_PABSTRETCH_DIS);
-	intel_uncore_write(&i915->uncore, ILK_DISPLAY_CHICKEN2,
-			   intel_uncore_read(&i915->uncore, ILK_DISPLAY_CHICKEN2) |
-			   ILK_DPARB_GATE | ILK_VSDPFD_FULL);
-	intel_uncore_write(&i915->uncore, ILK_DSPCLK_GATE_D,
-			   intel_uncore_read(&i915->uncore, ILK_DSPCLK_GATE_D) |
-			   ILK_DPARBUNIT_CLOCK_GATE_ENABLE  |
-			   ILK_DPFDUNIT_CLOCK_GATE_ENABLE);
-
-	g4x_disable_trickle_feed(i915);
-
 	intel_pch_init_clock_gating(i915->display);
 
 	gen6_check_mch_setup(i915);
@@ -335,10 +256,7 @@ static void ivb_init_clock_gating(struct drm_i915_private *i915)
 {
 	struct intel_display *display = i915->display;
 
-	intel_uncore_write(&i915->uncore, ILK_DSPCLK_GATE_D, ILK_VRHUNIT_CLOCK_GATE_DISABLE);
-
-	/* WaFbcAsynchFlipDisableFbcQueue:ivb */
-	intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS);
+	intel_display_ivb_init_clock_gating(display);
 
 	/* WaDisableBackToBackFlipFix:ivb */
 	intel_uncore_write(&i915->uncore, IVB_CHICKEN3,
@@ -367,7 +285,7 @@ static void ivb_init_clock_gating(struct drm_i915_private *i915)
 	intel_uncore_rmw(&i915->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
 			 0, GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
 
-	g4x_disable_trickle_feed(i915);
+	intel_display_disable_trickle_feed(display);
 
 	intel_uncore_rmw(&i915->uncore, GEN6_MBCUNIT_SNPCR, GEN6_MBC_SNPCR_MASK,
 			 GEN6_MBC_SNPCR_MED);
@@ -440,21 +358,12 @@ static void chv_init_clock_gating(struct drm_i915_private *i915)
 
 static void g4x_init_clock_gating(struct drm_i915_private *i915)
 {
-	u32 dspclk_gate;
-
 	intel_uncore_write(&i915->uncore, RENCLK_GATE_D1, 0);
 	intel_uncore_write(&i915->uncore, RENCLK_GATE_D2, VF_UNIT_CLOCK_GATE_DISABLE |
 			   GS_UNIT_CLOCK_GATE_DISABLE |
 			   CL_UNIT_CLOCK_GATE_DISABLE);
 	intel_uncore_write(&i915->uncore, RAMCLK_GATE_D, 0);
-	dspclk_gate = VRHUNIT_CLOCK_GATE_DISABLE |
-		OVRUNIT_CLOCK_GATE_DISABLE |
-		OVCUNIT_CLOCK_GATE_DISABLE;
-	if (IS_GM45(i915))
-		dspclk_gate |= DSSUNIT_CLOCK_GATE_DISABLE;
-	intel_uncore_write(&i915->uncore, DSPCLK_GATE_D, dspclk_gate);
-
-	g4x_disable_trickle_feed(i915);
+	intel_display_g4x_init_clock_gating(i915->display);
 }
 
 static void i965gm_init_clock_gating(struct drm_i915_private *i915)
@@ -463,7 +372,7 @@ static void i965gm_init_clock_gating(struct drm_i915_private *i915)
 
 	intel_uncore_write(uncore, RENCLK_GATE_D1, I965_RCC_CLOCK_GATE_DISABLE);
 	intel_uncore_write(uncore, RENCLK_GATE_D2, 0);
-	intel_uncore_write(uncore, DSPCLK_GATE_D, 0);
+	intel_display_i965gm_init_clock_gating(i915->display);
 	intel_uncore_write(uncore, RAMCLK_GATE_D, 0);
 	intel_uncore_write16(uncore, DEUC, 0);
 	intel_uncore_write(uncore,
-- 
2.53.0

