Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C41AB9C3A92
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:10:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ACDB10E457;
	Mon, 11 Nov 2024 09:10:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="irwtdXK5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C79A810E44E;
 Mon, 11 Nov 2024 09:10:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731316247; x=1762852247;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PGHC0LWeK/uoH+g8xfaPO/gb7o6hPmbj9Xjs2sP5KOA=;
 b=irwtdXK59QTnQ7EvoTWsL4xEWAuEOhJWoRM4fI0uVL2YTB2aK10FVoLl
 V8EOeuV9v6RMTEz0Enna+JFpO342Am5S+1CfFwsQ3FJYa1c9TxTr1ucBe
 VyC0DgX7AN5bIGpQJ1j9IRuBdh3i9RiPlg8UwShDd3Q0Bb4eN3PSa1sr3
 4Z3mowZDxqktxOdz/q2USxDp7UMVarTP+U5slYHeX7TVeUq22ZzOmE7zB
 +jiagVbGYsXN9q+0I+F1PLjGebUyAmGEIOyhhggZh9iXmGWFBzviHs2E/
 TaWqSCwYLQWoqfadCeJMWlh1o+x5mIK5QHBMxc3Evv8kSb5ohX/65GxNq w==;
X-CSE-ConnectionGUID: bPZkXAL6QVCgR98ne5ltiA==
X-CSE-MsgGUID: JzQPENIWSgawQ4gXQsxIpw==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35052504"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35052504"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:42 -0800
X-CSE-ConnectionGUID: yN1kEfGlR929wo6VycsMBQ==
X-CSE-MsgGUID: NXkwj2eMSdayYzCBafjUXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86762740"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:38 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 22/23] drm/i915/vrr: Always use VRR timing generator for
 XE2LPD+
Date: Mon, 11 Nov 2024 14:42:20 +0530
Message-ID: <20241111091221.2992818-23-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
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

Currently VRR timing generator is used only when VRR is enabled by
userspace. From XE2LPD+, gradually move away from older timing
generator and use VRR timing generator for fixed refresh rate also.

In such a case, Flipline Vmin and Vmax all are set to the Vtotal of the
mode, which effectively makes the VRR timing generator work in
fixed refresh rate mode.
The MSA Vtotal is derived from Vmax register.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 78 +++++++++++++++++++++---
 1 file changed, 70 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index c27886ace0a9..a2798a7ab9dc 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -235,9 +235,27 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state, int vmin
 	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
 }
 
-void
-intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
-			 struct drm_connector_state *conn_state)
+static
+void intel_vrr_compute_fixed_rr_timings(struct intel_crtc_state *crtc_state)
+{
+	/*
+	 * For fixed refresh rate mode Vmin, Vmax and Flipline all are set to
+	 * Vtotal value. The sink uses MSA timings for the fixed refresh rate
+	 * mode. The HW prepares the Vtotal for the MSA from the VMAX register.
+	 * Since the MSA Vtotal is one-based while Vmax is zero-based we need to
+	 * take care of this while setting Vmax value.
+	 */
+	crtc_state->vrr.vmax = crtc_state->hw.adjusted_mode.vtotal - 1;
+	crtc_state->vrr.vmin = crtc_state->vrr.vmax;
+	crtc_state->vrr.flipline = crtc_state->vrr.vmax;
+	crtc_state->vrr.tg_enable = true;
+	crtc_state->vrr.mode = INTEL_VRRTG_MODE_FIXED_RR;
+	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+}
+
+static
+void intel_vrr_compute_xe2lpd_timings(struct intel_crtc_state *crtc_state,
+				      struct drm_connector_state *conn_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_connector *connector =
@@ -245,13 +263,36 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	struct intel_dp *intel_dp = intel_attached_dp(connector);
 	bool is_edp = intel_dp_is_edp(intel_dp);
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	int vmin, vmax;
+	int vmin = 0, vmax = 0;
 
-	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
-		return;
+	if (crtc_state->vrr.in_range) {
+		if (HAS_LRR(display))
+			crtc_state->update_lrr = true;
+
+		vmin = intel_vrr_compute_vmin(connector, adjusted_mode);
+		vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
+	}
+
+	if (vmin < vmax && crtc_state->uapi.vrr_enabled)
+		intel_vrr_compute_vrr_timings(crtc_state, vmin, vmax);
+	else if (vmin < vmax && is_cmrr_frac_required(crtc_state) && is_edp)
+		intel_vrr_compute_cmrr_timings(crtc_state);
+	else
+		intel_vrr_compute_fixed_rr_timings(crtc_state);
+}
+
+static
+void intel_vrr_compute_xelpd_timings(struct intel_crtc_state *crtc_state,
+				     struct drm_connector_state *conn_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	bool is_edp = intel_dp_is_edp(intel_dp);
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int vmin, vmax;
 
-	crtc_state->vrr.in_range =
-		intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
 	if (!crtc_state->vrr.in_range)
 		return;
 
@@ -270,6 +311,27 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 		intel_vrr_compute_cmrr_timings(crtc_state);
 	else
 		intel_vrr_prepare_vrr_timings(crtc_state, vmin, vmax);
+}
+
+void
+intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
+			 struct drm_connector_state *conn_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+	struct intel_connector *connector =
+		to_intel_connector(conn_state->connector);
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
+		return;
+
+	crtc_state->vrr.in_range =
+		intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
+
+	if (DISPLAY_VER(display) >= 20)
+		intel_vrr_compute_xe2lpd_timings(crtc_state, conn_state);
+	else
+		intel_vrr_compute_xelpd_timings(crtc_state, conn_state);
 
 	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
-- 
2.45.2

