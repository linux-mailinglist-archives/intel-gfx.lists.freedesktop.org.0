Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 021C2979C94
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2024 10:12:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9504310E173;
	Mon, 16 Sep 2024 08:12:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R6K90t+Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72D2910E173
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2024 08:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726474362; x=1758010362;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+yym8ujimfbmShNap8K1/F6RpS2XQaIXe4xqj3Xp7YM=;
 b=R6K90t+QDmIpTYcnSnqU7+0mABS/2pmlf4EvwMVOOnx/nuVDlpv3Aayf
 zI+8xnpshPVsKu5LBlLaUNMJspL5Avt3/3rLOjTF+nIa+RBjipx8WJtRX
 l5hKNA6q6iTyTNbkngO3Kv6ujNaPiTI3XJ/PqwYcK+HsTTWo0yEHk70Ji
 hdKyRHgClsSUZZtQ0LBfrHlXWPHUMJDVgCl7ibAae+HbtDnoQNGVRllCz
 i07SW+NZcfW7QsBOf9Yx0X5wNicXNCoIgKqaJj+HrvqZo/UJy8xjGIJQ9
 alYKgBprWYUjNO4xs2j+uXN2Rp64JdOjiBFKlw4O17oxtkj1EfuRP/clJ g==;
X-CSE-ConnectionGUID: EJwvCv+TTPCqAZcTWm+vtQ==
X-CSE-MsgGUID: efCiVXyeSNSmnUxyPFAQ+A==
X-IronPort-AV: E=McAfee;i="6700,10204,11196"; a="25440862"
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="25440862"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2024 01:12:42 -0700
X-CSE-ConnectionGUID: ONFxd9FUSQaeLBgv993CDg==
X-CSE-MsgGUID: CrntnlOVRyCp1kBpiyG5cQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,232,1719903600"; d="scan'208";a="68792705"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa009.fm.intel.com with ESMTP; 16 Sep 2024 01:12:38 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 jouni.hogander@intel.com, arun.r.murthy@intel.com,
 ankit.k.nautiyal@intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v11 2/2] drm/i915/panelreplay: Panel replay workaround with VRR
Date: Mon, 16 Sep 2024 13:24:06 +0530
Message-Id: <20240916075406.3521433-3-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20240916075406.3521433-1-animesh.manna@intel.com>
References: <20240916075406.3521433-1-animesh.manna@intel.com>
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
index 111e61eceafc..a0bd29b0d29a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2529,7 +2529,18 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
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
@@ -3940,6 +3951,26 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
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
index 7ca26e5cb20e..db7bb5cac2f5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -429,6 +429,8 @@ bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
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

