Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D132396CE82
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 07:37:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A19910E689;
	Thu,  5 Sep 2024 05:37:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WNFfRYQp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 033C010E689
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2024 05:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725514632; x=1757050632;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GBeQAcezJQrjI02FKdrRqGY/C9iTsVO6+QQ+fOXAbrk=;
 b=WNFfRYQpYAgN4CEI9WuGzMWVLLmdE/ZL/RBD6OpjCIc22aelUR/EC6rU
 q2QdPkNtg+Mhnb9ws+SZZv90OYCjVn7My2xpm/Beh8Z/0CCX/55C7XkuS
 P4iPF6PpYDi0CHYt10cLPjaSb33/8PkYPsWqIxJHm4QWM4phBwrPUq2x4
 Rj7F1AruLxpHb2lmtxNDvoXtSauXDr38AIUz1hQ8iR3DHX2xWpmPTUQw7
 WDb2fHnke9mPfQYUqyA9oV0qow/Y0PP2cWC0vODX5v6jJqvdsnWBaeg0C
 aMJWMkE7AHoa4qzQgaHOU9niCK3EYI2/78BJH9ucb72B71jF7bm0V364Y w==;
X-CSE-ConnectionGUID: jP/uR6sISauhEKYCcBqL2A==
X-CSE-MsgGUID: xnAcmAubTE+t1eljrtXZ3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="35366502"
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="35366502"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2024 22:37:12 -0700
X-CSE-ConnectionGUID: GvgAOCPMR9upOp/7UbTejA==
X-CSE-MsgGUID: qqn+dDy/RgG0grpZh1pa2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,203,1719903600"; d="scan'208";a="65500230"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa009.jf.intel.com with ESMTP; 04 Sep 2024 22:37:09 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v10 4/4] drm/i915/panelreplay: Panel replay workaround with VRR
Date: Thu,  5 Sep 2024 10:48:41 +0530
Message-Id: <20240905051841.3012729-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20240905051841.3012729-1-animesh.manna@intel.com>
References: <20240905051841.3012729-1-animesh.manna@intel.com>
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

Panel Replay VSC SDP not getting sent when VRR is enabled
and W1 and W2 are 0. So Program Set Context Latency in
TRANS_SET_CONTEXT_LATENCY register to at least a value of 1.
The same is applicable for PSR1/PSR2 as well.

HSD: 14015406119

v1: Initial version.
v2: Update timings stored in adjusted_mode struct. [Ville]
v3: Add WA in compute_config(). [Ville]
v4:
- Add DISPLAY_VER() check and improve code comment. [Rodrigo]
- Introduce centralized intel_crtc_vblank_delay(). [Ville]
v5: Move to crtc_compute_config(). [Ville]
v6: Restrict DISPLAY_VER till 14. [Mitul]
v7:
- Corrected code-comment. [Mitul]
- dev_priv local variable removed. [Jani]
v8: Introduce late_compute_config() which will take care late
vblank-delay adjustment. [Ville]
v9: Implementation simplified and split into multiple patches.
v10:
- Split vrr changes and use struct intel_display in DISPLAY_VER(). [Ankit]
- Use for_each_new_intel_connector_in_state(). [Jani]

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 33 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_display.h |  2 ++
 2 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 7fb3d35f7124..7c2dbda7c71b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2525,7 +2525,18 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 {
 	struct intel_crtc_state *crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	int ret;
+	struct intel_connector *connector;
+	struct intel_digital_connector_state *conn_state;
+	int ret, i;
+
+	for_each_new_intel_connector_in_state(state, connector, conn_state, i) {
+		struct intel_encoder *encoder = connector->encoder;
+
+		if (conn_state->base.crtc != &crtc->base)
+			continue;
+
+		intel_crtc_adjust_vblank_delay(crtc_state, encoder);
+	}
 
 	ret = intel_dpll_crtc_compute_clock(state, crtc);
 	if (ret)
@@ -3936,6 +3947,26 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
 	return true;
 }
 
+void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_state,
+				    struct intel_encoder *encoder)
+{
+	struct intel_display *display = to_intel_display(encoder);
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	/*
+	 * wa_14015401596 for display versions 13, 14.
+	 * Program Set Context Latency in TRANS_SET_CONTEXT_LATENCY register
+	 * to at least a value of 1 when PSR1/PSR2/Panel Replay is enabled with VRR.
+	 * Value for TRANS_SET_CONTEXT_LATENCY is calculated by substracting
+	 * crtc_vdisplay from crtc_vblank_start, so incrementing crtc_vblank_start
+	 * by 1 if both are equal.
+	 */
+	if (crtc_state->vrr.enable && crtc_state->has_psr &&
+	    adjusted_mode->crtc_vblank_start == adjusted_mode->crtc_vdisplay &&
+	    IS_DISPLAY_VER(display, 13, 14))
+		adjusted_mode->crtc_vblank_start += 1;
+}
+
 int intel_dotclock_calculate(int link_freq,
 			     const struct intel_link_m_n *m_n)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index b21d9578d5db..468358973787 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -428,6 +428,8 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
 u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
 struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
 bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
+void intel_crtc_adjust_vblank_delay(struct intel_crtc_state *crtc_state,
+				    struct intel_encoder *encoder);
 bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 			       const struct intel_crtc_state *pipe_config,
 			       bool fastset);
-- 
2.29.0

