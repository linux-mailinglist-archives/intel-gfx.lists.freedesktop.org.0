Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9CDFA56FF7
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 19:02:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3806D10EC1E;
	Fri,  7 Mar 2025 18:02:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mYbyua2G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E449310EC1E;
 Fri,  7 Mar 2025 18:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741370560; x=1772906560;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=D0C6eHCaiHhJqr7U7b+qqSxxVHJPU4lu+vW77776DuM=;
 b=mYbyua2GefGGjFpG9MNcEL3xNhVHI+ef0L8+FV3w/OLUV2yMfrZ2wW3q
 ptvxFeQQDNCVamZRflcXX/sMgWVbdd2do8YTg8afDKkjT/5xd9+bonUKs
 VjjcHfg0o7aMoiJMNkiTC9pv++z4PXhxd3l3f6IFh5NU0OMEFoAFH4h+v
 bCIuI0UgSifpu6FSgfgrkn60co7xifPweTnLDqUgbtpDIr0+AWLPvEJLo
 YpXB4Jl9ABX8WHrK9y+hwJ9+z8mwKOjCUCQnBUkeI3Dr+T8pH9chcInmH
 zbct9OfxryatFPyKzk25EFsD5NfTrLfWHgsyRMXAV9b9ATM8kwKTNSiv0 A==;
X-CSE-ConnectionGUID: 9TZncTkXSty3nOmZKWx3DQ==
X-CSE-MsgGUID: my7ztds8QLeO1BSiJCCAoA==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="52637217"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="52637217"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 10:02:35 -0800
X-CSE-ConnectionGUID: bluqqyzYRZ2CLKW/PzvTdw==
X-CSE-MsgGUID: l/y+suAyRjGUAR8RYUPveQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124621315"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 07 Mar 2025 10:02:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 07 Mar 2025 20:02:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 14/14] drm/i915: Eliminate intel_compute_sagv_mask()
Date: Fri,  7 Mar 2025 20:01:39 +0200
Message-ID: <20250307180139.15744-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
References: <20250307180139.15744-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

intel_compute_sagv_mask() has become pointless. Just inline
its contents into the existing loop in skl_compute_wm().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 64 ++++++++------------
 1 file changed, 24 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index ccb312401896..e0fd8e2c6873 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -455,42 +455,6 @@ bool intel_can_enable_sagv(struct drm_i915_private *i915,
 	return bw_state->pipe_sagv_reject == 0;
 }
 
-static int intel_compute_sagv_mask(struct intel_atomic_state *state)
-{
-	struct intel_display *display = to_intel_display(state);
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	struct intel_crtc *crtc;
-	struct intel_crtc_state *new_crtc_state;
-	int i;
-
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
-		struct skl_pipe_wm *pipe_wm = &new_crtc_state->wm.skl.optimal;
-
-		/*
-		 * We store use_sagv_wm in the crtc state rather than relying on
-		 * that bw state since we have no convenient way to get at the
-		 * latter from the plane commit hooks (especially in the legacy
-		 * cursor case).
-		 *
-		 * drm_atomic_check_only() gets upset if we pull more crtcs
-		 * into the state, so we have to calculate this based on the
-		 * individual intel_crtc_can_enable_sagv() rather than
-		 * the overall intel_can_enable_sagv(). Otherwise the
-		 * crtcs not included in the commit would not switch to the
-		 * SAGV watermarks when we are about to enable SAGV, and that
-		 * would lead to underruns. This does mean extra power draw
-		 * when only a subset of the crtcs are blocking SAGV as the
-		 * other crtcs can't be allowed to use the more optimal
-		 * normal (ie. non-SAGV) watermarks.
-		 */
-		pipe_wm->use_sagv_wm = !HAS_HW_SAGV_WM(display) &&
-			DISPLAY_VER(i915) >= 12 &&
-			intel_crtc_can_enable_sagv(new_crtc_state);
-	}
-
-	return 0;
-}
-
 static u16 skl_ddb_entry_init(struct skl_ddb_entry *entry,
 			      u16 start, u16 end)
 {
@@ -3022,6 +2986,7 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state)
 static int
 skl_compute_wm(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
 	struct intel_crtc_state __maybe_unused *new_crtc_state;
 	int ret, i;
@@ -3036,16 +3001,35 @@ skl_compute_wm(struct intel_atomic_state *state)
 	if (ret)
 		return ret;
 
-	ret = intel_compute_sagv_mask(state);
-	if (ret)
-		return ret;
-
 	/*
 	 * skl_compute_ddb() will have adjusted the final watermarks
 	 * based on how much ddb is available. Now we can actually
 	 * check if the final watermarks changed.
 	 */
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		struct skl_pipe_wm *pipe_wm = &new_crtc_state->wm.skl.optimal;
+
+		/*
+		 * We store use_sagv_wm in the crtc state rather than relying on
+		 * that bw state since we have no convenient way to get at the
+		 * latter from the plane commit hooks (especially in the legacy
+		 * cursor case).
+		 *
+		 * drm_atomic_check_only() gets upset if we pull more crtcs
+		 * into the state, so we have to calculate this based on the
+		 * individual intel_crtc_can_enable_sagv() rather than
+		 * the overall intel_can_enable_sagv(). Otherwise the
+		 * crtcs not included in the commit would not switch to the
+		 * SAGV watermarks when we are about to enable SAGV, and that
+		 * would lead to underruns. This does mean extra power draw
+		 * when only a subset of the crtcs are blocking SAGV as the
+		 * other crtcs can't be allowed to use the more optimal
+		 * normal (ie. non-SAGV) watermarks.
+		 */
+		pipe_wm->use_sagv_wm = !HAS_HW_SAGV_WM(display) &&
+			DISPLAY_VER(display) >= 12 &&
+			intel_crtc_can_enable_sagv(new_crtc_state);
+
 		ret = skl_wm_add_affected_planes(state, crtc);
 		if (ret)
 			return ret;
-- 
2.45.3

