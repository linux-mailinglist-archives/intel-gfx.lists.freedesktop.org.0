Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD341B96FEE
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 19:20:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5767310E66A;
	Tue, 23 Sep 2025 17:20:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YA5ymJik";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B9AA10E66A;
 Tue, 23 Sep 2025 17:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758648029; x=1790184029;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3cd2yYbAscL/3fae9CbtY69R2JP78ib2Pd8CdSFCmXM=;
 b=YA5ymJikoFCFJjSlQNC9JjbHiDJeRgCTngI5rYDTYa2ywasM6NGsKuba
 7R0Wg0WNZIpzMbjixgZt1KRuWW2swWYMSUv8wVDFy4/uQSniF3pVhUJX5
 BXCGrONxuXZBFRiQJ/KIXF4B7dJhbcM51sRjmGE1JeBbdttzyyv4Bh/aE
 xeek3sS3PJNZFDEajEu/izfgIDvlqBoH0iho2lZs+hS0usMnXXy/Ub+Pz
 PzXTQQ1z9fcPVlaGCBkUwU4Tt5sdSAbK5fTuBgch9BOHC52DQxaLSgQBz
 jMemMrlvLHF1sPJn64YCgPvQrAkYeBWYHmoRRl1Rahf4uL7jK6XuKO1ur Q==;
X-CSE-ConnectionGUID: IKYCH4s9QVq37EI6N1lAeg==
X-CSE-MsgGUID: VDV/5+QSR+mnW/r4fNjSHg==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="78375386"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="78375386"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:28 -0700
X-CSE-ConnectionGUID: hdQPzQ0HST+xKKSs0hXM1w==
X-CSE-MsgGUID: o2pUnXFwRbaFM163EZlOgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="207747801"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.13])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 10:20:28 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 10/20] drm/i915/cdclk: Extract
 intel_cdclk_update_crtc_min_cdclk()
Date: Tue, 23 Sep 2025 20:19:32 +0300
Message-ID: <20250923171943.7319-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
References: <20250923171943.7319-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Hide the cdclk state details better by providing a helper
(intel_cdclk_update_crtc_min_cdclk()) by which the crtc code
can inform the cdclk code about a new per-pipe min_cdclk value.

Note that this is currently being called once per-plane, but
it'll be changed to be just a single call for the whole pipe
later.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 30 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_cdclk.h |  4 ++
 drivers/gpu/drm/i915/display/intel_plane.c | 44 ++++------------------
 3 files changed, 41 insertions(+), 37 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 3257f1f4fc11..aa5793326b0c 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2836,6 +2836,36 @@ static int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_stat
 	return min_cdclk;
 }
 
+int intel_cdclk_update_crtc_min_cdclk(struct intel_atomic_state *state,
+				      struct intel_crtc *crtc,
+				      int old_min_cdclk, int new_min_cdclk,
+				      bool *need_cdclk_calc)
+{
+	struct intel_display *display = to_intel_display(state);
+	struct intel_cdclk_state *cdclk_state;
+
+	if (new_min_cdclk <= old_min_cdclk)
+		return 0;
+
+	cdclk_state = intel_atomic_get_cdclk_state(state);
+	if (IS_ERR(cdclk_state))
+		return PTR_ERR(cdclk_state);
+
+	old_min_cdclk = cdclk_state->min_cdclk[crtc->pipe];
+
+	if (new_min_cdclk <= old_min_cdclk)
+		return 0;
+
+	*need_cdclk_calc = true;
+
+	drm_dbg_kms(display->drm,
+		    "[CRTC:%d:%s] min cdclk: %d kHz -> %d kHz\n",
+		    crtc->base.base.id, crtc->base.name,
+		    old_min_cdclk, new_min_cdclk);
+
+	return 0;
+}
+
 int intel_cdclk_update_bw_min_cdclk(struct intel_atomic_state *state,
 				    int old_min_cdclk, int new_min_cdclk,
 				    bool *need_cdclk_calc)
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 0e67c75ca569..25d45c8f059d 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -51,6 +51,10 @@ void intel_cdclk_crtc_disable_noatomic(struct intel_crtc *crtc);
 int intel_cdclk_update_bw_min_cdclk(struct intel_atomic_state *state,
 				    int old_min_cdclk, int new_min_cdclk,
 				    bool *need_cdclk_calc);
+int intel_cdclk_update_crtc_min_cdclk(struct intel_atomic_state *state,
+				      struct intel_crtc *crtc,
+				      int old_min_cdclk, int new_min_cdclk,
+				      bool *need_cdclk_calc);
 
 #define to_intel_cdclk_state(global_state) \
 	container_of_const((global_state), struct intel_cdclk_state, base)
diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
index 2329f09d413d..864e2db207fa 100644
--- a/drivers/gpu/drm/i915/display/intel_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_plane.c
@@ -296,13 +296,12 @@ int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
 			       struct intel_plane *plane,
 			       bool *need_cdclk_calc)
 {
-	struct intel_display *display = to_intel_display(plane);
 	const struct intel_plane_state *plane_state =
 		intel_atomic_get_new_plane_state(state, plane);
 	struct intel_crtc *crtc = to_intel_crtc(plane_state->hw.crtc);
-	const struct intel_cdclk_state *cdclk_state;
 	const struct intel_crtc_state *old_crtc_state;
 	struct intel_crtc_state *new_crtc_state;
+	int ret;
 
 	if (!plane_state->uapi.visible || !plane->min_cdclk)
 		return 0;
@@ -313,41 +312,12 @@ int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
 	new_crtc_state->min_cdclk[plane->id] =
 		plane->min_cdclk(new_crtc_state, plane_state);
 
-	/*
-	 * No need to check against the cdclk state if
-	 * the min cdclk for the plane doesn't increase.
-	 *
-	 * Ie. we only ever increase the cdclk due to plane
-	 * requirements. This can reduce back and forth
-	 * display blinking due to constant cdclk changes.
-	 */
-	if (new_crtc_state->min_cdclk[plane->id] <=
-	    old_crtc_state->min_cdclk[plane->id])
-		return 0;
-
-	cdclk_state = intel_atomic_get_cdclk_state(state);
-	if (IS_ERR(cdclk_state))
-		return PTR_ERR(cdclk_state);
-
-	/*
-	 * No need to recalculate the cdclk state if
-	 * the min cdclk for the pipe doesn't increase.
-	 *
-	 * Ie. we only ever increase the cdclk due to plane
-	 * requirements. This can reduce back and forth
-	 * display blinking due to constant cdclk changes.
-	 */
-	if (new_crtc_state->min_cdclk[plane->id] <=
-	    intel_cdclk_min_cdclk(cdclk_state, crtc->pipe))
-		return 0;
-
-	drm_dbg_kms(display->drm,
-		    "[PLANE:%d:%s] min cdclk (%d kHz) > [CRTC:%d:%s] min cdclk (%d kHz)\n",
-		    plane->base.base.id, plane->base.name,
-		    new_crtc_state->min_cdclk[plane->id],
-		    crtc->base.base.id, crtc->base.name,
-		    intel_cdclk_min_cdclk(cdclk_state, crtc->pipe));
-	*need_cdclk_calc = true;
+	ret = intel_cdclk_update_crtc_min_cdclk(state, crtc,
+						old_crtc_state->min_cdclk[plane->id],
+						new_crtc_state->min_cdclk[plane->id],
+						need_cdclk_calc);
+	if (ret)
+		return ret;
 
 	return 0;
 }
-- 
2.49.1

