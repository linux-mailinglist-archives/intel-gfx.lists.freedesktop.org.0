Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7B963B007F
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jun 2021 11:43:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FFD86E462;
	Tue, 22 Jun 2021 09:43:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 514CA6E462
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Jun 2021 09:43:24 +0000 (UTC)
IronPort-SDR: lgiK8Gt/fo7ZhpxTlbva7RlZI6HelZvbeE2JAvZSiqWEuEMjOagwJkVysxbbDwAOAYpH+TcbLf
 NRrD+arfprFQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="187402644"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="187402644"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2021 02:43:21 -0700
IronPort-SDR: eTvgE+W6S/iVWP2X6xX1OfF3f1JIrLtf73S0bCXuhWvkDg1PtSAvILuyy82YzUj/ArylBR08WI
 0TYC/nBZMu7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; d="scan'208";a="480760693"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by FMSMGA003.fm.intel.com with ESMTP; 22 Jun 2021 02:43:17 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Jun 2021 15:04:24 +0530
Message-Id: <20210622093424.886133-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor clock gating
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Display underrun in HDR mode when cursor is enabled.
RTL fix will be implemented CLKGATE_DIS_PSL_A bit 28-46520h.
As per W/A 1604331009, Disable cursor clock gating in HDR mode.

Bspec : 33451

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

Cc: Souza Jose <jose.souza@intel.com>
Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 27 ++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h              |  5 ++++
 2 files changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6be1b31af07b..e1ea03b918df 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -358,6 +358,13 @@ static void intel_update_czclk(struct drm_i915_private *dev_priv)
 		dev_priv->czclk_freq);
 }
 
+static bool
+is_hdr_mode(const struct intel_crtc_state *crtc_state)
+{
+	return (crtc_state->active_planes & ~(icl_hdr_plane_mask() |
+		BIT(PLANE_CURSOR))) == 0;
+}
+
 /* WA Display #0827: Gen9:all */
 static void
 skl_wa_827(struct drm_i915_private *dev_priv, enum pipe pipe, bool enable)
@@ -383,6 +390,23 @@ icl_wa_scalerclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
 		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_DIS);
 }
 
+/* Wa_1604331009:icl,jsl,ehl */
+	static void
+icl_wa_cursorclkgating(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+
+	if (is_hdr_mode(crtc_state) &&
+	    crtc_state->active_planes & BIT(PLANE_CURSOR) &&
+	    IS_GEN(dev_priv, 11))
+		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(crtc->pipe),
+			     CURSOR_GATING_DIS, CURSOR_GATING_DIS);
+	else
+		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(crtc->pipe),
+			     CURSOR_GATING_DIS, 0);
+}
+
 static bool
 is_trans_port_sync_slave(const struct intel_crtc_state *crtc_state)
 {
@@ -2939,6 +2963,9 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	    needs_scalerclk_wa(new_crtc_state))
 		icl_wa_scalerclkgating(dev_priv, pipe, true);
 
+	/* Wa_1604331009:icl,jsl,ehl */
+	icl_wa_cursorclkgating(new_crtc_state);
+
 	/*
 	 * Vblank time updates from the shadow to live plane control register
 	 * are blocked if the memory self-refresh mode is active at that
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c857fafb8a30..703d708c773e 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4235,6 +4235,11 @@ enum {
 #define INF_UNIT_LEVEL_CLKGATE		_MMIO(0x9560)
 #define   CGPSF_CLKGATE_DIS		(1 << 3)
 
+/*
+ * GEN11 clock gating regs
+ */
+#define   CURSOR_GATING_DIS            BIT(28)
+
 /*
  * Display engine regs
  */
-- 
2.31.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
