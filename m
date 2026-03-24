Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +FlOCq5FwmlQbQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 09:05:02 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD5930451C
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2026 09:05:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B2C710E5C3;
	Tue, 24 Mar 2026 08:05:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R8aErHLo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E89B510E5C3;
 Tue, 24 Mar 2026 08:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774339499; x=1805875499;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ZpBP9ZLu2aDLQzIFSRC3pgOdgb2RG19+nHArXFFTELU=;
 b=R8aErHLoq+CkP/xEmlXGlPfaYiGOU51JtiN60xXsgbIiae65wuBYHoAh
 YUvH4f3gonPGeFe/VN4CcbO9eg1+x34b6XdjAgh207xUhsSXCe2nSdkO8
 73i2MK/SBYo1Poy5njvLF0crmsI1294yB/vCx1V2qPsMDFNdXeomNiG2l
 OaCkgOxTT9/ecDa1pK4y46q9QbHNB7eljq0GNYzP+g1EhO48RC4XcfxLP
 QnBu83lqruj0YOq19th3pGgO5SXIF0P7P4F8cdo7m650xZajYGm3Fpu+C
 TBEO4G/U5Xa3KpqFvCvHSmYR3tJcJCH3QL9qgz4F9/1KZc9nLW9JS8Yqy g==;
X-CSE-ConnectionGUID: ScCTFh0aREK27By8HIantA==
X-CSE-MsgGUID: EaUtI4qJTAGoaz/ctvbNuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11738"; a="86045474"
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="86045474"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 01:04:59 -0700
X-CSE-ConnectionGUID: L6SUefQaSUKt6iClH5cYmw==
X-CSE-MsgGUID: 2SSlKNHzRjWskTJ7cYVi7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,138,1770624000"; d="scan'208";a="223494962"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.170])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 01:04:57 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	jani.nikula@linux.intel.com
Subject: [PATCH v2 2/4] drm/i915: move CPT clock gating init into intel_pch
Date: Tue, 24 Mar 2026 10:04:26 +0200
Message-ID: <20260324080441.154609-3-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260324080441.154609-1-luciano.coelho@intel.com>
References: <20260324080441.154609-1-luciano.coelho@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: CAD5930451C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move the CPT PCH clock gating programming into
intel_pch_init_clock_gating() and switch the corresponding IVB callers
to the display-specific code.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pch.c  | 40 +++++++++++++++++++++++
 drivers/gpu/drm/i915/intel_clock_gating.c | 39 ++--------------------
 2 files changed, 42 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pch.c b/drivers/gpu/drm/i915/display/intel_pch.c
index 65812b720bda..bcd66bdf2a22 100644
--- a/drivers/gpu/drm/i915/display/intel_pch.c
+++ b/drivers/gpu/drm/i915/display/intel_pch.c
@@ -6,6 +6,7 @@
 #include <drm/drm_print.h>
 
 #include "intel_de.h"
+#include "intel_display.h"
 #include "intel_display_regs.h"
 #include "intel_display_core.h"
 #include "intel_display_utils.h"
@@ -227,12 +228,51 @@ static void intel_pch_ibx_init_clock_gating(struct intel_display *display)
 		       PCH_DPLSUNIT_CLOCK_GATE_DISABLE);
 }
 
+static void intel_pch_cpt_init_clock_gating(struct intel_display *display)
+{
+	enum pipe pipe;
+	u32 val;
+
+	/*
+	 * On Ibex Peak and Cougar Point, we need to disable clock
+	 * gating for the panel power sequencer or it will fail to
+	 * start up when no ports are active.
+	 */
+	intel_de_write(display, SOUTH_DSPCLK_GATE_D,
+		       PCH_DPLSUNIT_CLOCK_GATE_DISABLE |
+		       PCH_DPLUNIT_CLOCK_GATE_DISABLE |
+		       PCH_CPUNIT_CLOCK_GATE_DISABLE);
+	intel_de_rmw(display, SOUTH_CHICKEN2, 0, DPLS_EDP_PPS_FIX_DIS);
+
+	/* The below fixes the weird display corruption, a few pixels shifted
+	 * downward, on (only) LVDS of some HP laptops with IVY.
+	 */
+	for_each_pipe(display, pipe) {
+		val = intel_de_read(display, TRANS_CHICKEN2(pipe));
+		val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
+		val &= ~TRANS_CHICKEN2_FDI_POLARITY_REVERSED;
+		if (display->vbt.fdi_rx_polarity_inverted)
+			val |= TRANS_CHICKEN2_FDI_POLARITY_REVERSED;
+		val &= ~TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER;
+		val &= ~TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH;
+		intel_de_write(display, TRANS_CHICKEN2(pipe), val);
+	}
+
+	/* WADP0ClockGatingDisable */
+	for_each_pipe(display, pipe)
+		intel_de_write(display, TRANS_CHICKEN1(pipe),
+			       TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
+}
+
 void intel_pch_init_clock_gating(struct intel_display *display)
 {
 	switch (INTEL_PCH_TYPE(display)) {
 	case PCH_IBX:
 		intel_pch_ibx_init_clock_gating(display);
 		break;
+	case PCH_CPT:
+		intel_pch_cpt_init_clock_gating(display);
+		break;
 	default:
 		break;
 	}
diff --git a/drivers/gpu/drm/i915/intel_clock_gating.c b/drivers/gpu/drm/i915/intel_clock_gating.c
index c0382607224d..0218196d183a 100644
--- a/drivers/gpu/drm/i915/intel_clock_gating.c
+++ b/drivers/gpu/drm/i915/intel_clock_gating.c
@@ -196,41 +196,6 @@ static void ilk_init_clock_gating(struct drm_i915_private *i915)
 	intel_pch_init_clock_gating(i915->display);
 }
 
-static void cpt_init_clock_gating(struct drm_i915_private *i915)
-{
-	struct intel_display *display = i915->display;
-	enum pipe pipe;
-	u32 val;
-
-	/*
-	 * On Ibex Peak and Cougar Point, we need to disable clock
-	 * gating for the panel power sequencer or it will fail to
-	 * start up when no ports are active.
-	 */
-	intel_uncore_write(&i915->uncore, SOUTH_DSPCLK_GATE_D, PCH_DPLSUNIT_CLOCK_GATE_DISABLE |
-			   PCH_DPLUNIT_CLOCK_GATE_DISABLE |
-			   PCH_CPUNIT_CLOCK_GATE_DISABLE);
-	intel_uncore_rmw(&i915->uncore, SOUTH_CHICKEN2, 0, DPLS_EDP_PPS_FIX_DIS);
-	/* The below fixes the weird display corruption, a few pixels shifted
-	 * downward, on (only) LVDS of some HP laptops with IVY.
-	 */
-	for_each_pipe(display, pipe) {
-		val = intel_uncore_read(&i915->uncore, TRANS_CHICKEN2(pipe));
-		val |= TRANS_CHICKEN2_TIMING_OVERRIDE;
-		val &= ~TRANS_CHICKEN2_FDI_POLARITY_REVERSED;
-		if (display->vbt.fdi_rx_polarity_inverted)
-			val |= TRANS_CHICKEN2_FDI_POLARITY_REVERSED;
-		val &= ~TRANS_CHICKEN2_DISABLE_DEEP_COLOR_COUNTER;
-		val &= ~TRANS_CHICKEN2_DISABLE_DEEP_COLOR_MODESWITCH;
-		intel_uncore_write(&i915->uncore, TRANS_CHICKEN2(pipe), val);
-	}
-	/* WADP0ClockGatingDisable */
-	for_each_pipe(display, pipe) {
-		intel_uncore_write(&i915->uncore, TRANS_CHICKEN1(pipe),
-				   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE);
-	}
-}
-
 static void gen6_check_mch_setup(struct drm_i915_private *i915)
 {
 	u32 tmp;
@@ -296,7 +261,7 @@ static void gen6_init_clock_gating(struct drm_i915_private *i915)
 
 	g4x_disable_trickle_feed(i915);
 
-	cpt_init_clock_gating(i915);
+	intel_pch_init_clock_gating(i915->display);
 
 	gen6_check_mch_setup(i915);
 }
@@ -536,7 +501,7 @@ static void ivb_init_clock_gating(struct drm_i915_private *i915)
 			 GEN6_MBC_SNPCR_MED);
 
 	if (!HAS_PCH_NOP(display))
-		cpt_init_clock_gating(i915);
+		intel_pch_init_clock_gating(display);
 
 	gen6_check_mch_setup(i915);
 }
-- 
2.53.0

