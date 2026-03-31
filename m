Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UJOuDjG7y2kpKAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:16:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC0543695AB
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 14:16:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D44010EB05;
	Tue, 31 Mar 2026 12:16:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hCqzEDkI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4A6C10EAE1;
 Tue, 31 Mar 2026 12:16:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774959403; x=1806495403;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8rJk4V8NUW4J1I0ccraADTOz8ClnODtN82aUOw6g0ko=;
 b=hCqzEDkIcIwSIAZgBjHDtpjEHa6ASnCreVY5TnZ/a9WnPH725bEa3IRT
 1I4vz5rp+BLoBO4GIYKDqRH0NYVUI1k2662JmvKgc6hpc6S3Irw8DQfox
 6Prn9LbKPpvmgmff50yBLDeBE32lPyKpV5A1P0pZu6yN/PTzUREtQ4QtB
 UKAgYqDCE8PfWB0oPLqdhVEJGDAA6a0MjRfemHifIrcmtGR4UKkVgjyvw
 5D52WvDPU8icFhJRA5QnRqu2j/qFp1XkQO4DRLkaZ7C8mU9v2CNnIelsi
 PmYD/rWhBMbDIhGvtEW0yLOCt9l6TVkGxW26CbWWeAfbyB5uYBeIbBNUq g==;
X-CSE-ConnectionGUID: z3c7NSycTxSOhZGHAVOn9A==
X-CSE-MsgGUID: WtoHfra5T5+5+7DYB7wuqg==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="87361420"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="87361420"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:16:42 -0700
X-CSE-ConnectionGUID: lPrLO0azTPWtyZG85pLfng==
X-CSE-MsgGUID: 71xXtVoPSzetzzcKZJpKNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="223469122"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.244])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 05:16:40 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v2 7/8] drm/i915/display: move pre-HSW clock gating init to
 display
Date: Tue, 31 Mar 2026 15:07:18 +0300
Message-ID: <20260331121608.1016333-8-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260331121608.1016333-1-luciano.coelho@intel.com>
References: <20260331121608.1016333-1-luciano.coelho@intel.com>
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
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: BC0543695AB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move the remaining pre-HSW display clock gating programming into
display.

This also drops display register includes from intel_clock_gating.c.

Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 .../i915/display/intel_display_clock_gating.c |  95 ++++++++++++++++
 .../i915/display/intel_display_clock_gating.h |   6 +
 drivers/gpu/drm/i915/intel_clock_gating.c     | 103 +-----------------
 3 files changed, 107 insertions(+), 97 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_clock_gating.c b/drivers/gpu/drm/i915/display/intel_display_clock_gating.c
index d5085ce7adae..6867963868a7 100644
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
@@ -167,3 +169,96 @@ void intel_display_hsw_init_clock_gating(struct intel_display *display)
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
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index 47b437a82f4e..12559db84cf4 100644
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

