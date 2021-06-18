Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 249873ACA7A
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jun 2021 13:55:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E8D36E9F2;
	Fri, 18 Jun 2021 11:55:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01B056E9F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Jun 2021 11:55:06 +0000 (UTC)
IronPort-SDR: 6d6gaK1egSeb3G8hxMeR3Cyk+Kw6fv2vCHbdytVxrEp528aSFnwZobYhcmXifPUbHd684OLnYI
 J4O9EW5zXoTw==
X-IronPort-AV: E=McAfee;i="6200,9189,10018"; a="186233836"
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="186233836"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2021 04:55:06 -0700
IronPort-SDR: ++OmkJ0itsjV4q7S0azpUn5amjmXcfNlhAhaGnLN/YNTl73Ixoe8A36xSwnJTnX1ti+UzluJWa
 Vj19XONqC1zw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,283,1616482800"; d="scan'208";a="404952710"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by orsmga006.jf.intel.com with ESMTP; 18 Jun 2021 04:55:04 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Jun 2021 17:16:06 +0530
Message-Id: <20210618114606.865705-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH V3] drm/i915/gen11: Disable cursor clock gating
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
 drivers/gpu/drm/i915/display/intel_display.c | 15 +++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h              |  5 +++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6be1b31af07b..99b33455b945 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -383,6 +383,18 @@ icl_wa_scalerclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
 		               intel_de_read(dev_priv, CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_DIS);
 }
 
+/* Wa_1604331009:icl,jsl,ehl */
+static void
+icl_wa_cursorclkgating(struct drm_i915_private *dev_priv, enum pipe pipe,
+		       const struct intel_crtc_state *crtc_state)
+{
+	if (crtc_state->active_planes & icl_hdr_plane_mask() &&
+	    crtc_state->active_planes & BIT(PLANE_CURSOR) &&
+	    IS_GEN(dev_priv, 11))
+		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(pipe),
+			     CURSOR_GATING_DIS, CURSOR_GATING_DIS);
+}
+
 static bool
 is_trans_port_sync_slave(const struct intel_crtc_state *crtc_state)
 {
@@ -2939,6 +2951,9 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	    needs_scalerclk_wa(new_crtc_state))
 		icl_wa_scalerclkgating(dev_priv, pipe, true);
 
+	/* Wa_1604331009:icl,jsl,ehl */
+	icl_wa_cursorclkgating(dev_priv, pipe, new_crtc_state);
+
 	/*
 	 * Vblank time updates from the shadow to live plane control register
 	 * are blocked if the memory self-refresh mode is active at that
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 955027799d1d..bbdd8429297d 100644
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
