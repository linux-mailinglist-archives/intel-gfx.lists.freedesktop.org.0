Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YOewAhGhwmm3fQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 15:34:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BBF30A3B5
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 15:34:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCBF610E136;
	Tue, 24 Mar 2026 14:34:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jqGekYre";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51B1810E6E9;
 Tue, 24 Mar 2026 14:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774362894; x=1805898894;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jIGIK9h2RyRfGkv7m+BtWAsA2bNM8yV3aBgWTwDREGQ=;
 b=jqGekYreBHu/DgTA0mtUcNcrqpJ0gTb6yy4coL89EV7/JnwneZy449m5
 301MlsceoWDTh/iifcmPzfieTtnzk8Y9mxFw+hKvuQuNuIEK/Q2893nZG
 ihSTCjl6mJ23xJul4woAVwP7Rc0BxKk76eEYOdt8kFHSNN7cq9CGxuG32
 NcN/6l7hPqurBc1NKe99X/6NWuBV1+YpweLcEVYv8IXpx7L997tRAwQdf
 IyjVFQcBeeCrtHwMN5QP0NFJwnZkNmYGVXWNVlnoHUFMSTRVo/druPDGv
 OkaGPqFG+7tQOU4HjQR/BsoV4PTYkWE86XHhRDf1ncHG70ZyQ7dfFKMh9 A==;
X-CSE-ConnectionGUID: G3zLKUefQ4aTu3G7cVc0JA==
X-CSE-MsgGUID: 6Cg+YV8tTJOLavNxGOXevQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="75405167"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="75405167"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 07:34:52 -0700
X-CSE-ConnectionGUID: AEO2tbO2RqiucMCbSLb0RQ==
X-CSE-MsgGUID: kVdMdwcGSnyGxoMeXixGhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="228843237"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.170])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 07:34:50 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	jani.nikula@linux.intel.com
Subject: [PATCH 7/8] drm/i915/display: move pre-HSW clock gating init to
 display
Date: Tue, 24 Mar 2026 16:29:56 +0200
Message-ID: <20260324143420.310800-8-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260324143420.310800-1-luciano.coelho@intel.com>
References: <20260324143420.310800-1-luciano.coelho@intel.com>
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
	RCPT_COUNT_THREE(0.00)[3];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: 78BBF30A3B5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move the remaining pre-HSW display clock gating programming into
display.

This also drops display register includes from intel_clock_gating.c.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 .../i915/display/intel_display_clock_gating.c | 100 ++++++++++++++++
 .../i915/display/intel_display_clock_gating.h |  12 ++
 drivers/gpu/drm/i915/intel_clock_gating.c     | 109 +-----------------
 3 files changed, 118 insertions(+), 103 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
index 0b2edf6acb79..5809c49dccf0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
+++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
@@ -6,11 +6,13 @@
 #include <drm/intel/intel_gmd_misc_regs.h>
 
 #include "intel_de.h"
+#include "i9xx_plane_regs.h"
 #include "intel_display.h"
 #include "intel_display_clock_gating.h"
 #include "intel_display_regs.h"
 
 #include "i915_drv.h"
+#include "i915_reg.h"
 
 static void intel_display_gen9_init_clock_gating(struct intel_display *display,
 						 bool has_llc)
@@ -156,3 +158,101 @@ void intel_display_hsw_init_clock_gating(struct intel_display *display)
 	intel_display_hsw_init_clock_gating_common(display,
 						   HSW_UNMASK_VBL_TO_REGS_IN_SRD);
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
+	struct drm_i915_private *i915 = to_i915(display->drm);
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
+	intel_de_write(display, PCH_3DCGDIS0,
+		       MARIUNIT_CLOCK_GATE_DISABLE |
+		       SVSMUNIT_CLOCK_GATE_DISABLE);
+	intel_de_write(display, PCH_3DCGDIS1, VFMUNIT_CLOCK_GATE_DISABLE);
+
+	intel_de_write(display, ILK_DISPLAY_CHICKEN2,
+		       intel_de_read(display, ILK_DISPLAY_CHICKEN2) |
+		       ILK_DPARB_GATE | ILK_VSDPFD_FULL);
+	dspclk_gate |= ILK_DPARBUNIT_CLOCK_GATE_ENABLE;
+	intel_de_write(display, DISP_ARB_CTL,
+		       intel_de_read(display, DISP_ARB_CTL) |
+		       DISP_FBC_WM_DIS);
+
+	if (IS_IRONLAKE_M(i915)) {
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
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	u32 dspclk_gate = VRHUNIT_CLOCK_GATE_DISABLE |
+			  OVRUNIT_CLOCK_GATE_DISABLE |
+			  OVCUNIT_CLOCK_GATE_DISABLE;
+
+	if (IS_GM45(i915))
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
index 0eb240f2f69e..9eebfc4a6ebe 100644
--- a/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
+++ b/drivers/gpu/drm/i915/display/intel_display_clock_gating.h
@@ -17,6 +17,12 @@ void intel_display_glk_init_clock_gating(struct intel_display *display);
 void intel_display_bdw_hsw_init_clock_gating(struct intel_display *display);
 void intel_display_bdw_init_clock_gating(struct intel_display *display);
 void intel_display_hsw_init_clock_gating(struct intel_display *display);
+void intel_display_disable_trickle_feed(struct intel_display *display);
+void intel_display_ilk_init_clock_gating(struct intel_display *display);
+void intel_display_gen6_init_clock_gating(struct intel_display *display);
+void intel_display_ivb_init_clock_gating(struct intel_display *display);
+void intel_display_g4x_init_clock_gating(struct intel_display *display);
+void intel_display_i965gm_init_clock_gating(struct intel_display *display);
 #else
 static inline void intel_display_skl_init_clock_gating(struct intel_display *display) {}
 static inline void intel_display_kbl_init_clock_gating(struct intel_display *display) {}
@@ -26,6 +32,12 @@ static inline void intel_display_glk_init_clock_gating(struct intel_display *dis
 static inline void intel_display_bdw_hsw_init_clock_gating(struct intel_display *display) {}
 static inline void intel_display_bdw_init_clock_gating(struct intel_display *display) {}
 static inline void intel_display_hsw_init_clock_gating(struct intel_display *display) {}
+static inline void intel_display_disable_trickle_feed(struct intel_display *display) {}
+static inline void intel_display_ilk_init_clock_gating(struct intel_display *display) {}
+static inline void intel_display_gen6_init_clock_gating(struct intel_display *display) {}
+static inline void intel_display_ivb_init_clock_gating(struct intel_display *display) {}
+static inline void intel_display_g4x_init_clock_gating(struct intel_display *display) {}
+static inline void intel_display_i965gm_init_clock_gating(struct intel_display *display) {}
 #endif
 
 #endif /* __INTEL_DISPLAY_CLOCK_GATING_H__ */
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index a8e3eb6f06c8..98c048387a0a 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -29,11 +29,8 @@
 #include <drm/intel/intel_gmd_misc_regs.h>
 #include <drm/intel/intel_gmd_interrupt_regs.h>
 
-#include "display/i9xx_plane_regs.h"
-#include "display/intel_display.h"
 #include "display/intel_display_clock_gating.h"
 #include "display/intel_display_core.h"
-#include "display/intel_display_regs.h"
 #include "gt/intel_engine_regs.h"
 #include "gt/intel_gt.h"
 #include "gt/intel_gt_mcr.h"
@@ -68,74 +65,9 @@ static void glk_init_clock_gating(struct drm_i915_private *i915)
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
-	intel_uncore_write(&i915->uncore, PCH_3DCGDIS0,
-			   MARIUNIT_CLOCK_GATE_DISABLE |
-			   SVSMUNIT_CLOCK_GATE_DISABLE);
-	intel_uncore_write(&i915->uncore, PCH_3DCGDIS1,
-			   VFMUNIT_CLOCK_GATE_DISABLE);
-
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
 
@@ -152,11 +84,7 @@ static void gen6_check_mch_setup(struct drm_i915_private *i915)
 
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
@@ -191,19 +119,6 @@ static void gen6_init_clock_gating(struct drm_i915_private *i915)
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
@@ -338,10 +253,7 @@ static void ivb_init_clock_gating(struct drm_i915_private *i915)
 {
 	struct intel_display *display = i915->display;
 
-	intel_uncore_write(&i915->uncore, ILK_DSPCLK_GATE_D, ILK_VRHUNIT_CLOCK_GATE_DISABLE);
-
-	/* WaFbcAsynchFlipDisableFbcQueue:ivb */
-	intel_uncore_rmw(&i915->uncore, ILK_DISPLAY_CHICKEN1, 0, ILK_FBCQ_DIS);
+	intel_display_ivb_init_clock_gating(display);
 
 	/* WaDisableBackToBackFlipFix:ivb */
 	intel_uncore_write(&i915->uncore, IVB_CHICKEN3,
@@ -370,7 +282,7 @@ static void ivb_init_clock_gating(struct drm_i915_private *i915)
 	intel_uncore_rmw(&i915->uncore, GEN7_SQ_CHICKEN_MBCUNIT_CONFIG,
 			 0, GEN7_SQ_CHICKEN_MBCUNIT_SQINTMOB);
 
-	g4x_disable_trickle_feed(i915);
+	intel_display_disable_trickle_feed(display);
 
 	intel_uncore_rmw(&i915->uncore, GEN6_MBCUNIT_SNPCR, GEN6_MBC_SNPCR_MASK,
 			 GEN6_MBC_SNPCR_MED);
@@ -443,21 +355,12 @@ static void chv_init_clock_gating(struct drm_i915_private *i915)
 
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
@@ -466,7 +369,7 @@ static void i965gm_init_clock_gating(struct drm_i915_private *i915)
 
 	intel_uncore_write(uncore, RENCLK_GATE_D1, I965_RCC_CLOCK_GATE_DISABLE);
 	intel_uncore_write(uncore, RENCLK_GATE_D2, 0);
-	intel_uncore_write(uncore, DSPCLK_GATE_D, 0);
+	intel_display_i965gm_init_clock_gating(i915->display);
 	intel_uncore_write(uncore, RAMCLK_GATE_D, 0);
 	intel_uncore_write16(uncore, DEUC, 0);
 	intel_uncore_write(uncore,
-- 
2.53.0

