Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A565262B0E
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Sep 2020 10:57:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 999EE6EB3A;
	Wed,  9 Sep 2020 08:57:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F3BB6EB1E
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Sep 2020 08:57:14 +0000 (UTC)
IronPort-SDR: Xg6yxUveIzB2dF5dHjBRRoyGes9+Sl/4EVIioiVA1ZByrrSk2KmtIcEQDXqfQ+Hv/lyLVCTCXo
 qTcEzkLB+pMg==
X-IronPort-AV: E=McAfee;i="6000,8403,9738"; a="159257122"
X-IronPort-AV: E=Sophos;i="5.76,409,1592895600"; d="scan'208";a="159257122"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2020 01:57:09 -0700
IronPort-SDR: rpmUfj8ivLhh8dDcKts6guYi+l3KKm8HwsF45xtuCot48YXoJ53QJ7P2nvJh1Tr/qO4KGLP9OY
 VgugfTD0q7Ig==
X-IronPort-AV: E=Sophos;i="5.76,409,1592895600"; d="scan'208";a="480384792"
Received: from vandita-desktop.iind.intel.com ([10.223.74.218])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 09 Sep 2020 01:57:07 -0700
From: Vandita Kulkarni <vandita.kulkarni@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Sep 2020 14:20:47 +0530
Message-Id: <20200909085047.31004-5-vandita.kulkarni@intel.com>
X-Mailer: git-send-email 2.21.0.5.gaeb582a
In-Reply-To: <20200909085047.31004-1-vandita.kulkarni@intel.com>
References: <20200909085047.31004-1-vandita.kulkarni@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [V9 4/4] drm/i915/dsi: Initiate fame request in cmd mode
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In TE Gate mode or TE NO_GATE mode on every flip
we need to set the frame update request bit.
After this  bit is set transcoder hardware will
automatically send the frame data to the panel
in case of TE NO_GATE mode, where it sends after
it receives the TE event in case of TE_GATE mode.
Once the frame data is sent to the panel, we see
the frame counter updating.

v2: Use intel_de_read/write

v3: remove the usage of private_flags

Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c       | 26 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c | 13 ++++++++++
 drivers/gpu/drm/i915/display/intel_dsi.h     |  3 +++
 3 files changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index ee3c5c085cd3..cdc9d8874945 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -205,6 +205,32 @@ static int dsi_send_pkt_payld(struct intel_dsi_host *host,
 	return 0;
 }
 
+void gen11_dsi_frame_update(struct intel_crtc_state *crtc_state)
+{
+	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
+	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
+	u32 tmp, flags;
+	enum port port;
+
+	flags = crtc->mode_flags;
+
+	/*
+	 * case 1 also covers dual link
+	 * In case of dual link, frame update should be set on
+	 * DSI_0
+	 */
+	if (flags & I915_MODE_FLAG_DSI_USE_TE0)
+		port = PORT_A;
+	else if (flags & I915_MODE_FLAG_DSI_USE_TE1)
+		port = PORT_B;
+	else
+		return;
+
+	tmp = intel_de_read(dev_priv, DSI_CMD_FRMCTL(port));
+	tmp |= DSI_FRAME_UPDATE_REQUEST;
+	intel_de_write(dev_priv, DSI_CMD_FRMCTL(port), tmp);
+}
+
 static void dsi_program_swing_and_deemphasis(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ec148a8da2c2..cd852c24d3bc 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -15615,6 +15615,18 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 		intel_set_cdclk_post_plane_update(state);
 	}
 
+	/*
+	 * Incase of mipi dsi command mode, we need to set frame update
+	 * for every commit
+	 */
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if ((INTEL_GEN(dev_priv) >= 11) &&
+		    (intel_crtc_has_type(new_crtc_state, INTEL_OUTPUT_DSI))) {
+			if (new_crtc_state->hw.active)
+				gen11_dsi_frame_update(new_crtc_state);
+		}
+	}
+
 	/* FIXME: We should call drm_atomic_helper_commit_hw_done() here
 	 * already, but still need the state for the delayed optimization. To
 	 * fix this:
@@ -15626,6 +15638,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	 */
 	drm_atomic_helper_wait_for_flip_done(dev, &state->base);
 
+
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		if (new_crtc_state->hw.active &&
 		    !needs_modeset(new_crtc_state) &&
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
index 19f78a4022d3..08f1f586eefb 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi.h
@@ -205,6 +205,9 @@ u32 bxt_dsi_get_pclk(struct intel_encoder *encoder,
 		     struct intel_crtc_state *config);
 void bxt_dsi_reset_clocks(struct intel_encoder *encoder, enum port port);
 
+/* icl_dsi.c */
+void gen11_dsi_frame_update(struct intel_crtc_state *crtc_state);
+
 /* intel_dsi_vbt.c */
 bool intel_dsi_vbt_init(struct intel_dsi *intel_dsi, u16 panel_id);
 void intel_dsi_vbt_gpio_init(struct intel_dsi *intel_dsi, bool panel_is_on);
-- 
2.21.0.5.gaeb582a

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
