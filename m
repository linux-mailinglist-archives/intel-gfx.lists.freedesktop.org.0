Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A86B9CF0E4
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 17:01:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2615510E89B;
	Fri, 15 Nov 2024 16:01:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OOED4/ui";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5B9410E89B;
 Fri, 15 Nov 2024 16:01:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731686496; x=1763222496;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=I9Hu/nGEJRquv7nayy73nEqmqZcXoWDKqrw6xGt5VRk=;
 b=OOED4/uioK2+24ptwXkiN90a1LATAwhYIAo20ZYEDHiRp5+qC5MntyeN
 rlylZ5uvzxHFX1p7fij26MDn3u8I+9/TG7WIQG6J1OGMtx2KYbyO9RPfR
 oyn4ezQeYBQQTBkS4gGtmjtZXPWPCNYkra/RRF40kS8Ethe3Kvcsi5PCM
 dpiLYsjmHNHfRFCySkS9fillJfbXbtazppQaAUozirf9eTrRdoMlXWAYa
 OLfaqeAcBZAlnciPCh2Kev+y98cbnxrN385OXa8SZ/8ps4pUpnqnazRkU
 Q2F7RQ6mm73p1XsbA1I2ygDLFibFdJ+y+6ZuSieG0W0GSp3qxfbg80fqF A==;
X-CSE-ConnectionGUID: RF2+KRaaT+eVKkc6/i88yg==
X-CSE-MsgGUID: dRPj2AI6TqeZiftoN8B4Hg==
X-IronPort-AV: E=McAfee;i="6700,10204,11257"; a="31456795"
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="31456795"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 08:01:36 -0800
X-CSE-ConnectionGUID: auNY6muGSeWp1Jgu7mv0AQ==
X-CSE-MsgGUID: r6G4Xd+/RryCsv/XePl84g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="88760667"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa006.jf.intel.com with ESMTP; 15 Nov 2024 08:01:34 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 5/6] drm/i915/display: Refactor DPKGC code to call it from
 atomic_commit_tail
Date: Fri, 15 Nov 2024 21:31:15 +0530
Message-Id: <20241115160116.1436521-5-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241115160116.1436521-1-suraj.kandpal@intel.com>
References: <20241115160116.1436521-1-suraj.kandpal@intel.com>
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

Refactor the code to check the fixed refresh rate condition in the dpkgc
function itself and call it from intel_atomic_commit_tail so that we
have all the required values specially linetime which is computed after
intel_wm_compute, this will also help implement some WA's which requires
linetime. This also avoid writing into any of the registers while we are
in compute_config phase.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 ++
 drivers/gpu/drm/i915/display/skl_watermark.c | 27 +++++++++++---------
 drivers/gpu/drm/i915/display/skl_watermark.h |  1 +
 3 files changed, 18 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index e790a2de5b3d..d1880e0a5d29 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7826,6 +7826,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
 	dev_priv->display.funcs.display->commit_modeset_enables(state);
 
+	intel_program_dpkgc_latency(state);
+
 	if (state->modeset)
 		intel_set_cdclk_post_plane_update(state);
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 2deb964daed3..0cc843314358 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2854,17 +2854,28 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
  * Program DEEP PKG_C_LATENCY Pkg C with all 1's.
  * Program PKG_C_LATENCY Added Wake Time = 0
  */
-static void
-skl_program_dpkgc_latency(struct drm_i915_private *i915,
-			  bool fixed_refresh_rate)
+void
+intel_program_dpkgc_latency(struct intel_atomic_state *state)
 {
-	struct intel_display *display = to_intel_display(&i915->drm);
+	struct intel_display *display = to_intel_display(state);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_crtc *crtc;
+	struct intel_crtc_state *new_crtc_state;
 	u32 max_latency = LNL_PKG_C_LATENCY_MASK, added_wake_time = 0;
 	u32 clear, val;
+	bool fixed_refresh_rate = false;
+	int i;
 
 	if (DISPLAY_VER(display) < 20)
 		return;
 
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if (!new_crtc_state->vrr.enable ||
+		    (new_crtc_state->vrr.vmin == new_crtc_state->vrr.vmax &&
+		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline))
+			fixed_refresh_rate = true;
+	}
+
 	if (fixed_refresh_rate) {
 		max_latency = skl_watermark_max_latency(i915, 1);
 		if (max_latency == 0)
@@ -2886,7 +2897,6 @@ skl_compute_wm(struct intel_atomic_state *state)
 	struct intel_crtc *crtc;
 	struct intel_crtc_state __maybe_unused *new_crtc_state;
 	int ret, i;
-	bool enable_dpkgc = false;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		ret = skl_build_pipe_wm(state, crtc);
@@ -2911,15 +2921,8 @@ skl_compute_wm(struct intel_atomic_state *state)
 		ret = skl_wm_add_affected_planes(state, crtc);
 		if (ret)
 			return ret;
-
-		if ((new_crtc_state->vrr.vmin == new_crtc_state->vrr.vmax &&
-		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline) ||
-		    !new_crtc_state->vrr.enable)
-			enable_dpkgc = true;
 	}
 
-	skl_program_dpkgc_latency(to_i915(state->base.dev), enable_dpkgc);
-
 	skl_print_wm_changes(state);
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index e73baec94873..35a1df7336e8 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -87,6 +87,7 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915,
 					 int ratio, bool joined_mbus);
 void intel_dbuf_mbus_pre_ddb_update(struct intel_atomic_state *state);
 void intel_dbuf_mbus_post_ddb_update(struct intel_atomic_state *state);
+void intel_program_dpkgc_latency(struct intel_atomic_state *state);
 
 #endif /* __SKL_WATERMARK_H__ */
 
-- 
2.34.1

