Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B296419206
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Sep 2021 12:09:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0F3D89C82;
	Mon, 27 Sep 2021 10:09:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DD5489C82
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Sep 2021 10:09:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10119"; a="211695291"
X-IronPort-AV: E=Sophos;i="5.85,326,1624345200"; d="scan'208";a="211695291"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2021 03:09:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,326,1624345200"; d="scan'208";a="518507807"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by fmsmga008.fm.intel.com with ESMTP; 27 Sep 2021 03:09:38 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 27 Sep 2021 15:32:40 +0530
Message-Id: <20210927100240.2527555-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH V6] drm/i915/gen11: Disable cursor clock gating
 in HDR mode
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

Display underrun in HDR mode when cursor is enabled.
RTL fix will be implemented CLKGATE_DIS_PSL_A bit 28-46520h.
As per W/A 1604331009, Disable cursor clock gating in HDR mode.

Bspec : 33451

Changes since V5:
	- replace intel_de_read with intel_de_rmw - Jani
Changes since V4:
        - Added WA needed check - Ville
        - Replace BIT with REG_BIT - Ville
        - Add WA enable/disable support back which was added in V1 - Ville
Changes since V3:
        - Disable WA when not in HDR mode or cursor plane not active - Ville
        - Extract required args from crtc_state - Ville
        - Create HDR mode API using bdw_set_pipemisc ref - Ville
        - Tested with HDR video as well full setmode, WA applies and disables
Changes since V2:
        - Made it general gen11 WA
        - Removed WA needed check
        - Added cursor plane active check
        - Once WA enable, software will not disable
Changes since V1:
        - Modified way CLKGATE_DIS_PSL bit 28 was modified

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 31 ++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h              |  1 +
 2 files changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index f27c294beb92..e6ccc986bf27 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -214,6 +214,14 @@ icl_wa_scalerclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
 		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_DIS);
 }
 
+/* Wa_1604331009:icl,jsl,ehl */
+static void
+icl_wa_cursorclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
+		       bool enable)
+{
+	intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe), CURSOR_GATING_DIS, enable ? CURSOR_GATING_DIS : 0);
+}
+
 static bool
 is_trans_port_sync_slave(const struct intel_crtc_state *crtc_state)
 {
@@ -2356,6 +2364,19 @@ static bool needs_scalerclk_wa(const struct intel_crtc_state *crtc_state)
 	return false;
 }
 
+static bool needs_cursorclk_wa(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+
+	/* Wa_1604331009:icl,jsl,ehl */
+	if (is_hdr_mode(crtc_state) &&
+	    crtc_state->active_planes & BIT(PLANE_CURSOR) &&
+	    DISPLAY_VER(dev_priv) == 11)
+		return true;
+
+	return false;
+}
+
 static bool planes_enabling(const struct intel_crtc_state *old_crtc_state,
 			    const struct intel_crtc_state *new_crtc_state)
 {
@@ -2398,6 +2419,11 @@ static void intel_post_plane_update(struct intel_atomic_state *state,
 	if (needs_scalerclk_wa(old_crtc_state) &&
 	    !needs_scalerclk_wa(new_crtc_state))
 		icl_wa_scalerclkgating(dev_priv, pipe, false);
+
+	if (needs_cursorclk_wa(old_crtc_state) &&
+	    !needs_cursorclk_wa(new_crtc_state))
+		icl_wa_cursorclkgating(dev_priv, pipe, false);
+
 }
 
 static void intel_crtc_enable_flip_done(struct intel_atomic_state *state,
@@ -2494,6 +2520,11 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	    needs_scalerclk_wa(new_crtc_state))
 		icl_wa_scalerclkgating(dev_priv, pipe, true);
 
+	/* Wa_1604331009:icl,jsl,ehl */
+	if (!needs_cursorclk_wa(old_crtc_state) &&
+	    needs_cursorclk_wa(new_crtc_state))
+		icl_wa_cursorclkgating(dev_priv, pipe, true);
+
 	/*
 	 * Vblank time updates from the shadow to live plane control register
 	 * are blocked if the memory self-refresh mode is active at that
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index ef594df039db..7b3eed5b4e42 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4272,6 +4272,7 @@ enum {
 #define   DPF_GATING_DIS		(1 << 10)
 #define   DPF_RAM_GATING_DIS		(1 << 9)
 #define   DPFR_GATING_DIS		(1 << 8)
+#define   CURSOR_GATING_DIS		REG_BIT(28)
 
 #define CLKGATE_DIS_PSL(pipe) \
 	_MMIO_PIPE(pipe, _CLKGATE_DIS_PSL_A, _CLKGATE_DIS_PSL_B)
-- 
2.31.1

