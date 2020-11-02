Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8252A258F
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 08:48:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F22646E3FE;
	Mon,  2 Nov 2020 07:48:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBB4A6E3FE
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 07:48:24 +0000 (UTC)
IronPort-SDR: 4/2xaNX1YlZNk7VqcPsspc9dY7kXef+OduwHLJaZmIf7MIkNuDNFoNwWS76bGa2DmFKEbGDSQH
 weqgeRrCON4w==
X-IronPort-AV: E=McAfee;i="6000,8403,9792"; a="155835310"
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="155835310"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2020 23:48:24 -0800
IronPort-SDR: wS6ivVgDW2yeAbRCIBzJV0spdj9WpS+EuLE2t4yXmaz3VnViZuvVk6aYDkJ3WydbK4RCxEqjwC
 kloFLKaSVtAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="352665926"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by fmsmga004.fm.intel.com with ESMTP; 01 Nov 2020 23:48:22 -0800
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Nov 2020 13:09:46 +0530
Message-Id: <20201102073946.158633-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH V2] drm/i915/jsl: Disable cursor clock gating in
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

Changes since V1:
	- Modified way CLKGATE_DIS_PSL bit 28 was modified

Cc: Souza Jose <jose.souza@intel.com>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 28 ++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h              |  5 ++++
 2 files changed, 33 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cddbda5303ff..b132585d9e78 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -541,6 +541,15 @@ icl_wa_scalerclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
 		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_DIS);
 }
 
+/* Wa_1604331009:jsl */
+static void
+jsl_wa_cursorclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
+		       bool enable)
+{
+	intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
+		     CURSOR_GATING_DIS, enable ? CURSOR_GATING_DIS : 0);
+}
+
 static bool
 needs_modeset(const struct intel_crtc_state *state)
 {
@@ -6637,6 +6646,16 @@ static bool needs_scalerclk_wa(const struct intel_crtc_state *crtc_state)
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
@@ -6678,6 +6697,10 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 	if (needs_scalerclk_wa(old_crtc_state) &&
 	    !needs_scalerclk_wa(new_crtc_state))
 		icl_wa_scalerclkgating(dev_priv, pipe, false);
+
+	if (needs_cursorclk_wa(old_crtc_state) &&
+	    !needs_cursorclk_wa(new_crtc_state))
+		jsl_wa_cursorclkgating(dev_priv, pipe, false);
 }
 
 static void skl_disable_async_flip_wa(struct intel_atomic_state *state,
@@ -6743,6 +6766,11 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
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
index bb0656875697..f81a503c5d4b 100644
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
