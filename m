Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D68B526CC
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 04:59:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7740D10EA12;
	Thu, 11 Sep 2025 02:59:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JgiyjuYY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B207410EA12;
 Thu, 11 Sep 2025 02:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757559590; x=1789095590;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7hXWf63fZ/BSswzKWbiWKjM2ZVXTdQ4KecoARau3LUs=;
 b=JgiyjuYYXLeHceKBh9Bszf/HH/tph+1E7kFjfEf3tAb8HcvtPzznmGwn
 kB6/yvzi76HCMQmnDLFh+k1ge0Fy2+99MEendnfEEs36uExpXhM92RmvE
 Lq2wvZ76YqkHe2RMpCfJjTT2+df64dtE1X6evohFqaOK1MviDCPPHCpao
 FG3Tkz6emuXZ9IV7STeUDlraA+duxhZQ6CJKvBmPuni5+g/OjDjtVmoom
 PYkrwQ7t64TDZbaKWIWvcJoLo/IA1lQJY2skNQcS5jO2ZaIPXLq65MoMI
 eZ3DM3n1tLtEQOZuumEllYGhgzDklwJPgJytymy7zu1IOGamfR/xt3HwH w==;
X-CSE-ConnectionGUID: Pkmxh4XuS9qS4wR/n0BRSg==
X-CSE-MsgGUID: /I5G8UBEQuGKo4brv+KUSQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="85327088"
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="85327088"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 19:59:50 -0700
X-CSE-ConnectionGUID: MoCimR7pTnWJuZTLZntHjQ==
X-CSE-MsgGUID: iVK/z5pjQOyU8DvWyl7RcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="173955575"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 19:59:48 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 13/15] drm/i915/display: Use optimized guardband to set vblank
 start
Date: Thu, 11 Sep 2025 08:15:52 +0530
Message-ID: <20250911024554.692469-14-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
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
 drivers/gpu/drm/i915/display/intel_display.c | 58 ++++++++++++++++++--
 1 file changed, 53 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 73aec6d4686a..d0265391d660 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2422,14 +2422,55 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
 	return 0;
 }
 
-static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
+static
+int intel_crtc_min_guardband_delay(struct intel_atomic_state *state,
+				   struct intel_crtc *crtc)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
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
+	vblank_length = adjusted_mode->crtc_vblank_end -
+			adjusted_mode->crtc_vblank_start;
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
+static int intel_crtc_vblank_delay(struct intel_atomic_state *state,
+				   struct intel_crtc *crtc)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_crtc_state *crtc_state =
+		intel_atomic_get_new_crtc_state(state, crtc);
 	int vblank_delay = 0;
 
 	if (!HAS_DSB(display))
 		return 0;
 
+	if (intel_vrr_always_use_vrr_tg(display))
+		vblank_delay = intel_crtc_min_guardband_delay(state, crtc);
+
 	vblank_delay = max(vblank_delay, intel_psr_min_vblank_delay(crtc_state));
 
 	return vblank_delay;
@@ -2445,7 +2486,7 @@ static int intel_crtc_compute_vblank_delay(struct intel_atomic_state *state,
 		&crtc_state->hw.adjusted_mode;
 	int vblank_delay, max_vblank_delay;
 
-	vblank_delay = intel_crtc_vblank_delay(crtc_state);
+	vblank_delay = intel_crtc_vblank_delay(state, crtc);
 	max_vblank_delay = adjusted_mode->crtc_vblank_end - adjusted_mode->crtc_vblank_start - 1;
 
 	if (vblank_delay > max_vblank_delay) {
@@ -5162,9 +5203,16 @@ static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_s
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

