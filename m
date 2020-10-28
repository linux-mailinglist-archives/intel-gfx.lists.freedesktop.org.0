Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 618A329CFAD
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Oct 2020 12:26:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9F146EC79;
	Wed, 28 Oct 2020 11:26:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8121A6EC79
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Oct 2020 11:26:17 +0000 (UTC)
IronPort-SDR: TWaO/4vQhLXkAVDN+kC1EeNuNXlJ3m3vdTOFboc5bFJ25anEUr+lfnKaNlnxCyMef02l1ipujv
 rU537a33uzDg==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="186000118"
X-IronPort-AV: E=Sophos;i="5.77,426,1596524400"; d="scan'208";a="186000118"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2020 04:26:17 -0700
IronPort-SDR: FOwQvtsRq1KP6ZQVMAn3nRuNBnNqwltkYGnCLUmd1Wt+joKn5Lj7nkfPZ5ZhTHI8uBBKN3vIak
 ME4Eefp9nW8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,426,1596524400"; d="scan'208";a="361725790"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga007.jf.intel.com with ESMTP; 28 Oct 2020 04:26:14 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 28 Oct 2020 16:47:31 +0530
Message-Id: <20201028111731.137873-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/jsl: Disable cursor clock gating in
 HDR mode
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
Cc: hariom.pandey@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Display underrun in HDR mode when cursor is enabled.
RTL fix will be implemented CLKGATE_DIS_PSL_A bit 28-46520h.
As per W/A 1604331009, Disable cursor clock gating in HDR mode.

Bspec : 33451

Cc: Souza Jose <jose.souza@intel.com>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 32 ++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h              |  5 +++
 2 files changed, 37 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f41b6f8b5618..73c4a43e6e31 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -541,6 +541,19 @@ icl_wa_scalerclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
 		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_DIS);
 }
 
+/* Wa_1604331009:jsl */
+static void
+jsl_wa_cursorclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
+		       bool enable)
+{
+	if (enable)
+		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
+			       intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) | CURSOR_GATING_DIS);
+	else
+		intel_de_write(dev_priv, CLKGATE_DIS_PSL(pipe),
+			       intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~CURSOR_GATING_DIS);
+}
+
 static bool
 needs_modeset(const struct intel_crtc_state *state)
 {
@@ -6637,6 +6650,16 @@ static bool needs_scalerclk_wa(const struct intel_crtc_state *crtc_state)
 	return false;
 }
 
+static bool needs_cursorclk_wa(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	/* Wa_1604331009:jsl */
+	if (crtc_state->active_planes & icl_hdr_plane_mask() &&
+	    IS_GEN(dev_priv, 11))
+		return true;
+	return false;
+}
+
 static bool planes_enabling(const struct intel_crtc_state *old_crtc_state,
 			    const struct intel_crtc_state *new_crtc_state)
 {
@@ -6678,6 +6701,10 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 	if (needs_scalerclk_wa(old_crtc_state) &&
 	    !needs_scalerclk_wa(new_crtc_state))
 		icl_wa_scalerclkgating(dev_priv, pipe, false);
+
+	if (needs_cursorclk_wa(old_crtc_state) &&
+	    !needs_cursorclk_wa(new_crtc_state))
+		jsl_wa_cursorclkgating(dev_priv, pipe, false);
 }
 
 static void skl_disable_async_flip_wa(struct intel_atomic_state *state,
@@ -6743,6 +6770,11 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	    needs_scalerclk_wa(new_crtc_state))
 		icl_wa_scalerclkgating(dev_priv, pipe, true);
 
+	/* Wa_1604331009:jsl */
+	if (!needs_cursorclk_wa(old_crtc_state) &&
+	    needs_cursorclk_wa(new_crtc_state))
+		jsl_wa_cursorclkgating(dev_priv, pipe, true);
+
 	/*
 	 * Vblank time updates from the shadow to live plane control register
 	 * are blocked if the memory self-refresh mode is active at that
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8b021f77cb1f..0434cab4bebb 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4194,6 +4194,11 @@ enum {
 #define INF_UNIT_LEVEL_CLKGATE		_MMIO(0x9560)
 #define   CGPSF_CLKGATE_DIS		(1 << 3)
 
+/*
+ * GEN11 clock gating regs
+ */
+#define   CURSOR_GATING_DIS		BIT(28)
+
 /*
  * Display engine regs
  */
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
