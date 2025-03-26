Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81EF6A71BD8
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 17:26:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 087F610E740;
	Wed, 26 Mar 2025 16:26:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PFY9cDCR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA44110E73E;
 Wed, 26 Mar 2025 16:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743006392; x=1774542392;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gAz73g30mj3L/6kIH6ZAR1mYBvhoWSYbwZrAp5TQJnY=;
 b=PFY9cDCRh5UmUiV3RCACr9Y3VVIbZNNTDezNB/+fkf++g78biTz+zOyw
 r6yki8jH4XsQc76iEOFfsumbNVVHKMxJuVUGJThs9JYsBl2d5gS0TydBt
 oL2bDJKgsrkekC6i1inxZsAnrjEjSiw7Oi1b7L5pwTgC6i/eIa/c4BJWK
 TET5sbSzFgp4MzAre5mBs5B0IErW7gz/ogaQiDhubothjFLfJNPa2MANV
 2WKvJPOvN9r+p44Fmh4GH4MMrqhqZ3/WsDpL8Uq+/HEE0C87RiqZ/Sjt8
 bH8IXJoi0m9quQKcJ5eI3msuPmwjK3Y4Y3CG08JdeH3ttVZ6ZB4mlKnOY Q==;
X-CSE-ConnectionGUID: g2hM/DWlTJ6Ng26LLo750w==
X-CSE-MsgGUID: AHOJjwtbRe2RW9gxHcksNw==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44029600"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44029600"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 09:26:32 -0700
X-CSE-ConnectionGUID: ntb7x+F8QjylcRmICaTFQA==
X-CSE-MsgGUID: tSX6gyRZQVW2mleZmvgyzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="130016476"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Mar 2025 09:26:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Mar 2025 18:26:28 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 14/14] drm/i915: Eliminate intel_compute_sagv_mask()
Date: Wed, 26 Mar 2025 18:25:44 +0200
Message-ID: <20250326162544.3642-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
References: <20250326162544.3642-1-ville.syrjala@linux.intel.com>
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
index 8b51f0b42785..9381aec797c9 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -458,42 +458,6 @@ bool intel_can_enable_sagv(struct drm_i915_private *i915,
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
@@ -3028,6 +2992,7 @@ intel_program_dpkgc_latency(struct intel_atomic_state *state)
 static int
 skl_compute_wm(struct intel_atomic_state *state)
 {
+	struct intel_display *display = to_intel_display(state);
 	struct intel_crtc *crtc;
 	struct intel_crtc_state __maybe_unused *new_crtc_state;
 	int ret, i;
@@ -3042,16 +3007,35 @@ skl_compute_wm(struct intel_atomic_state *state)
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

