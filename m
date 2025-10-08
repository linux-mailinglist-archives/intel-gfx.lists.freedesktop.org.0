Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77123BC648F
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 20:26:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0FCF910E8AF;
	Wed,  8 Oct 2025 18:26:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P/fhyzgZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F46410E8B0;
 Wed,  8 Oct 2025 18:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759947988; x=1791483988;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bRrS0mdHl/if9cNJrPywoMqxhLbZbwe++AxdsIzuo30=;
 b=P/fhyzgZbc8+SHXjpq2rTPPBCHjR+izgUYrihzTGeUVO5t1m5iaMvI4n
 80X3pxfE9SI4jCW3PyBZASxjh158p72oeV7VsVPEwajmBhY8q8zp9XRFI
 ukD/MciVvEcawwLaTu7EyogQP9giTmQrb9jNOqv3BVWl3ixkIZ62lzG72
 JaW8fj3dKxnFo96cV4SgzKchJ4J8/rcgV+irQq2k4xCQnFwYKeRGtXnt4
 VL0PsJLxuYRxSGqraUiSBIm48bj2iF5j9bjKH9AdZ49nFbHOzrJ/ZcwPi
 tCQMmR0oL+suwsN1kOUKQu9EdNYsbmwBLyKG/PJKaDDeopCHeA3CSnvla w==;
X-CSE-ConnectionGUID: OaaA9dZCQeGnrlgSb6QrhQ==
X-CSE-MsgGUID: muU8eeuYQnOvFkq5pr2n/A==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="62245591"
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="62245591"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:26:28 -0700
X-CSE-ConnectionGUID: R8PYiBziSgaK7MZK3/uw7A==
X-CSE-MsgGUID: WkqCBEldQmaRfm0XL2Txlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,214,1754982000"; d="scan'208";a="185799892"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 11:26:26 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [RFC][PATCH 07/11] drm/i915: Introduce
 intel_compute_global_watermarks_late()
Date: Wed,  8 Oct 2025 21:25:54 +0300
Message-ID: <20251008182559.20615-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
References: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
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

Add a late watermarks computation stage for skl+. Need this
(temporarily perhaps) to get the final cdclk values into
skl_wm_check_vblank().

But the order is actually wrong now for SAGV. For SAGV we
want to first do skl_wm_check_vblank(), then copute
crttc_state->use_sagv_wm, and then do intel_bw_atomic_check().

Scalers are completely borked as far as skl_wm_check_vblank()
goes as well.

TODO: just a hack really, need to figure out the correct order
      for real

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  4 ++
 .../gpu/drm/i915/display/intel_display_core.h |  1 +
 drivers/gpu/drm/i915/display/intel_wm.c       | 10 +++++
 drivers/gpu/drm/i915/display/intel_wm.h       |  1 +
 drivers/gpu/drm/i915/display/skl_watermark.c  | 38 ++++++++++++++++---
 5 files changed, 48 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index afa78774eaeb..54ed36183ebe 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6455,6 +6455,10 @@ int intel_atomic_check(struct drm_device *dev,
 			return ret;
 	}
 
+	ret = intel_compute_global_watermarks_late(state);
+	if (ret)
+		goto fail;
+
 	ret = intel_pmdemand_atomic_check(state);
 	if (ret)
 		goto fail;
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index df4da52cbdb3..62bd894a72f9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -89,6 +89,7 @@ struct intel_wm_funcs {
 	void (*optimize_watermarks)(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc);
 	int (*compute_global_watermarks)(struct intel_atomic_state *state);
+	int (*compute_global_watermarks_late)(struct intel_atomic_state *state);
 	void (*get_hw_state)(struct intel_display *display);
 	void (*sanitize)(struct intel_display *display);
 };
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index f887a664fe22..3035d9879d83 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -104,6 +104,16 @@ int intel_compute_global_watermarks(struct intel_atomic_state *state)
 	return 0;
 }
 
+int intel_compute_global_watermarks_late(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+
+	if (display->funcs.wm->compute_global_watermarks_late)
+		return display->funcs.wm->compute_global_watermarks_late(state);
+
+	return 0;
+}
+
 void intel_wm_get_hw_state(struct intel_display *display)
 {
 	if (display->funcs.wm->get_hw_state)
diff --git a/drivers/gpu/drm/i915/display/intel_wm.h b/drivers/gpu/drm/i915/display/intel_wm.h
index 9ad4e9eae5ca..9f69dc5dfda5 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.h
+++ b/drivers/gpu/drm/i915/display/intel_wm.h
@@ -24,6 +24,7 @@ void intel_atomic_update_watermarks(struct intel_atomic_state *state,
 void intel_optimize_watermarks(struct intel_atomic_state *state,
 			       struct intel_crtc *crtc);
 int intel_compute_global_watermarks(struct intel_atomic_state *state);
+int intel_compute_global_watermarks_late(struct intel_atomic_state *state);
 void intel_wm_get_hw_state(struct intel_display *display);
 void intel_wm_sanitize(struct intel_display *display);
 bool intel_wm_plane_visible(const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index aac3ca8f6c0f..5c18fe9a5237 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2433,7 +2433,7 @@ static int skl_build_pipe_wm(struct intel_atomic_state *state,
 
 	crtc_state->wm.skl.optimal = crtc_state->wm.skl.raw;
 
-	return skl_wm_check_vblank(crtc_state);
+	return 0;
 }
 
 static bool skl_wm_level_equals(const struct skl_wm_level *l1,
@@ -3002,11 +3002,6 @@ skl_compute_wm(struct intel_atomic_state *state)
 	if (ret)
 		return ret;
 
-	/*
-	 * skl_compute_ddb() will have adjusted the final watermarks
-	 * based on how much ddb is available. Now we can actually
-	 * check if the final watermarks changed.
-	 */
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
 		struct skl_pipe_wm *pipe_wm = &new_crtc_state->wm.skl.optimal;
 
@@ -3030,6 +3025,36 @@ skl_compute_wm(struct intel_atomic_state *state)
 		pipe_wm->use_sagv_wm = !HAS_HW_SAGV_WM(display) &&
 			DISPLAY_VER(display) >= 12 &&
 			intel_crtc_can_enable_sagv(new_crtc_state);
+	}
+
+	return 0;
+}
+
+static int
+skl_compute_wm_late(struct intel_atomic_state *state)
+{
+	struct intel_crtc *crtc;
+	struct intel_crtc_state __maybe_unused *new_crtc_state;
+	int i;
+
+	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
+		int ret;
+
+		/*
+		 * FIXME we need something along the lins of the following order:
+		 * 1. intel_atomic_setup_scalers() (needed by skl_wm_check_vblank())
+		 * 2. intel_modeset_calc_cdclk() (needed by skl_wm_check_vblank())
+		 * 3. skl_compute_wm() (skl_wm_check_vblank() + update use_sagv_wm)
+		 * 4. intel_bw_atomic_check() (needs use_sagv_wm)
+		 * but shuffling all that needs a lot more work...
+		 *
+		 * For now hack it by deferreing skl_wm_check_vblank() until
+		 * intel_modeset_calc_cdclk() has been done. Scalers are still
+		 * completely broken wrt. skl_wm_check_vblank().
+		 */
+		ret = skl_wm_check_vblank(new_crtc_state);
+		if (ret)
+			return ret;
 
 		ret = skl_wm_add_affected_planes(state, crtc);
 		if (ret)
@@ -4060,6 +4085,7 @@ void intel_wm_state_verify(struct intel_atomic_state *state,
 
 static const struct intel_wm_funcs skl_wm_funcs = {
 	.compute_global_watermarks = skl_compute_wm,
+	.compute_global_watermarks_late = skl_compute_wm_late,
 	.get_hw_state = skl_wm_get_hw_state,
 	.sanitize = skl_wm_sanitize,
 };
-- 
2.49.1

