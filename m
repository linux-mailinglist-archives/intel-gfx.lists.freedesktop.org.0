Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DA79E1625
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 09:47:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 29C1E10E978;
	Tue,  3 Dec 2024 08:47:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QC/zi9VB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63B4110E97D;
 Tue,  3 Dec 2024 08:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733215654; x=1764751654;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=H18FRJid9VIlbqoBGfxuKh+QTYm0CJrtCr12gXJQGog=;
 b=QC/zi9VBvQVXOqk3EfclWpYHmp4qCdY5xf4j7dJE2IianmCxMWQzGbPe
 RI0n+fXCl2O9GUi5jNwY6XFmk6awczi4h8grBk1xK1N+5b4IquM4mkk4N
 Gc68YQQFPc6W/8gnYhK6p8uQI9JkDme1MF8FyzJPZTjl6CLA4cj6Q7tP+
 aXnYSuKmq6m/a57roVv3uQ+pJFee5w2T8t6N6p4OJpx9nFAFMmYlEasv3
 ZydIjTsEGRqrrONprmRkLyEHTv+Xf72LBN3/UNoSYwF5T7doi4a0LS9Ka
 GajByZgrFPvqIfBD5o1/EcpghI3tjh7s9M+1x0RwsRb1/f5y1Ey1ltVIp Q==;
X-CSE-ConnectionGUID: sRKs46u4TemLyo7JTDlOpQ==
X-CSE-MsgGUID: BYB+M7UpSQCyu8PrWm9Xew==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="44805455"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="44805455"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2024 00:47:22 -0800
X-CSE-ConnectionGUID: +6KRtn2NTdqudkaHch/1TQ==
X-CSE-MsgGUID: lbDH5wnrTo2XXWuyun85UQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="94198910"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 03 Dec 2024 00:47:19 -0800
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: mitulkumar.ajitkumar.golani@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 4/6] drm/i915/display: Refactor DPKGC code to call it from
 atomic_commit_tail
Date: Tue,  3 Dec 2024 14:17:04 +0530
Message-Id: <20241203084706.2126189-4-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241203084706.2126189-1-suraj.kandpal@intel.com>
References: <20241203084706.2126189-1-suraj.kandpal@intel.com>
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
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  2 ++
 drivers/gpu/drm/i915/display/skl_watermark.c | 28 +++++++++++---------
 drivers/gpu/drm/i915/display/skl_watermark.h |  1 +
 3 files changed, 19 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4805bf682d43..28c1b372cc95 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7831,6 +7831,8 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
 	dev_priv->display.funcs.display->commit_modeset_enables(state);
 
+	intel_program_dpkgc_latency(state);
+
 	if (state->modeset)
 		intel_set_cdclk_post_plane_update(state);
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 4e46567f1359..95b306c22954 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2854,18 +2854,30 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
  * Program DEEP PKG_C_LATENCY Pkg C with all 1's.
  * Program PKG_C_LATENCY Added Wake Time = 0
  */
-static void
-skl_program_dpkgc_latency(struct drm_i915_private *i915, bool enable_dpkgc)
+void
+intel_program_dpkgc_latency(struct intel_atomic_state *state)
 {
-	struct intel_display *display = to_intel_display(&i915->drm);
+	struct intel_display *display = to_intel_display(state);
+	struct drm_i915_private *i915 = to_i915(display->drm);
+	struct intel_crtc *crtc;
+	struct intel_crtc_state *new_crtc_state;
 	u32 max_latency = LNL_PKG_C_LATENCY_MASK;
 	u32 clear, val;
 	u32 added_wake_time = 0;
+	bool fixed_refresh_rate = false;
+	int i;
 
 	if (DISPLAY_VER(display) < 20)
 		return;
 
-	if (enable_dpkgc) {
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		if (!new_crtc_state->vrr.enable ||
+		    (new_crtc_state->vrr.vmin == new_crtc_state->vrr.vmax &&
+		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline))
+			fixed_refresh_rate = true;
+	}
+
+	if (fixed_refresh_rate) {
 		max_latency = skl_watermark_max_latency(i915, 1);
 		if (max_latency == 0)
 			max_latency = LNL_PKG_C_LATENCY_MASK;
@@ -2886,7 +2898,6 @@ skl_compute_wm(struct intel_atomic_state *state)
 	struct intel_crtc *crtc;
 	struct intel_crtc_state __maybe_unused *new_crtc_state;
 	int ret, i;
-	bool enable_dpkgc = false;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		ret = skl_build_pipe_wm(state, crtc);
@@ -2911,15 +2922,8 @@ skl_compute_wm(struct intel_atomic_state *state)
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

