Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A59AFBA2822
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 08:13:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 17D3B10E332;
	Fri, 26 Sep 2025 06:13:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LNOcGKYs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B3B210E332;
 Fri, 26 Sep 2025 06:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758867204; x=1790403204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MKQfX2qG8+vUJdDjWu4hOZfiN4DHTIuTgLT3h6jcD3E=;
 b=LNOcGKYs/hozHYQWYGcqO9yzPdMf58PnjOKsg/0Vr09r5suGApFeCR4E
 b4iyIZRErYwb9JSq5YHLQNoza5sO87c4NdiCymv75r3erl81ztc7n/9al
 ZxtF5sN8Bhq2nEdvM+M/MYuFlGFO7r4oX7wxskd3+TZC/qgve1YojHi5A
 iNuWCRxTVMa4aU3gfzfXHMTsOjrA67lsbUgccdcCVKmuRD0Zz0XdKfgQ3
 IFlBXjVMvpH6XnmrgI0EI/j5osAcdabbKonqsfE6INiX0FBMksmhzTNv2
 XiVWMKXlEpug6iWPoaHZOknqp9E9PJLuFbbZlRH6wXP+zFGYxoO9PWzaF A==;
X-CSE-ConnectionGUID: yJdA9Hq3SX+M1kdbN+cqOA==
X-CSE-MsgGUID: gm1K27xIQm2FQY167PQwRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65007619"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65007619"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:13:24 -0700
X-CSE-ConnectionGUID: /X1F6vAHRWOLfKs04M6pzw==
X-CSE-MsgGUID: quoduD5jSFmonjMCXKo9Uw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800"; d="scan'208";a="177092951"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:13:23 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 14/14] drm/i915/display: Use optimized guardband to set vblank
 start
Date: Fri, 26 Sep 2025 11:29:35 +0530
Message-ID: <20250926055935.3532568-15-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250926055935.3532568-1-ankit.k.nautiyal@intel.com>
References: <20250926055935.3532568-1-ankit.k.nautiyal@intel.com>
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

As we move towards using a shorter, optimized guardband, we need to adjust
how the delayed vblank start is computed.

Use the helper intel_vrr_compute_guardband() to calculate the optimized
guardband. Since this is measured from the vblank end, we shift the
vblank-start accordingly.

Calculate the minimum delay required based on the guardband and apply it
in intel_crtc_vblank_delay() to update crtc_vblank_start.

Additionally, allow vblank delay adjustment during fastset even when
the CRTC state is not inherited, for platforms where vrr timing generator
(and the static guardband) is used. This ensures correct behavior for LRR
scenarios where vtotal changes but the guardband remains static, allowing
seamless mode transitions.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 64 +++++++++++++++++++-
 1 file changed, 62 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ec415b939770..dec4fc3a1f5c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2361,6 +2361,58 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
+static
+int intel_crtc_min_guardband_delay(struct intel_atomic_state *state,
+				   struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	const struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	struct drm_connector_state *conn_state;
+	struct drm_connector *drm_connector;
+	int guardband_delay = 0;
+	int vblank_length;
+	int i;
+
+	if (!intel_vrr_use_optimized_guardband(crtc_state))
+		return 0;
+
+	vblank_length = crtc_state->vrr.vmin -
+			adjusted_mode->crtc_vdisplay;
+
+	for_each_new_connector_in_state(&state->base,
+					drm_connector,
+					conn_state, i) {
+		int guardband;
+		struct intel_connector *connector;
+
+		if (conn_state->crtc != &crtc->base)
+			continue;
+
+		connector = to_intel_connector(drm_connector);
+		guardband = intel_vrr_compute_guardband(crtc_state,
+							connector);
+		guardband_delay = vblank_length - guardband;
+	}
+
+	return guardband_delay;
+}
+
+static void intel_crtc_vblank_delay(struct intel_atomic_state *state,
+				    struct intel_crtc *crtc)
+{
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
+	struct drm_display_mode *adjusted_mode =
+		&crtc_state->hw.adjusted_mode;
+	int vblank_delay = 0;
+
+	vblank_delay = intel_crtc_min_guardband_delay(state, crtc);
+
+	adjusted_mode->crtc_vblank_start += vblank_delay;
+}
+
 static int intel_crtc_set_context_latency(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -2413,6 +2465,7 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
 	ret = intel_crtc_compute_set_context_latency(state, crtc);
 	if (ret)
 		return ret;
+	intel_crtc_vblank_delay(state, crtc);
 
 	ret = intel_dpll_crtc_compute_clock(state, crtc);
 	if (ret)
@@ -5105,9 +5158,16 @@ static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_s
 	 * Allow fastboot to fix up vblank delay (handled via LRR
 	 * codepaths), a bit dodgy as the registers aren't
 	 * double buffered but seems to be working more or less...
+	 *
+	 * Also allow this when the VRR timing generator is always on,
+	 * which implies optimized guardband is used. In such cases,
+	 * vblank delay may vary even without inherited state, but it's
+	 * still safe as VRR guardband is still same.
 	 */
-	return HAS_LRR(display) && old_crtc_state->inherited &&
-		!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
+	return HAS_LRR(display) &&
+	       (old_crtc_state->inherited ||
+		intel_vrr_always_use_vrr_tg(display)) &&
+	       !intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
 }
 
 bool
-- 
2.45.2

