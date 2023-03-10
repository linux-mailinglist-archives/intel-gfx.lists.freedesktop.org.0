Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E44586B561A
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Mar 2023 00:58:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31DDB10EA34;
	Fri, 10 Mar 2023 23:58:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A9A710EA34
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 23:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678492722; x=1710028722;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fJV4d3CUMIDCbPuCFi4bgVezqXdClN4RhjYYf5zFfNQ=;
 b=k/L4xeHhqgN+RikhkZoear5+BgWONsJTjY2ocHb+utVkNbXTp0a8f5+m
 +K6FEzWZ3HDXbe5YsyZg7Q+4FdRTFQFsKQoNMplqXmvkxFLYS4RRcR9bu
 ak0sXw+QWD37wZBam+QzULJyMsd3R8q8aOErXhrPGMescglPMPGjCaz+L
 PIlwVw1OiMn1MjyJbycw59g52pHkh3qyLBZk2LbeTBOnY9M1T38PLORPp
 Uog2hH3Derd5eg5+omYox6ItfZ7QxrHk8p7Hd14OmwUVhRjV8OLnJ+/5E
 2N91eN626nrXW5O23cVbhfm4F/qIv4eUO+iXMDitsq2bw0EA/gaWLRpqF Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="399453139"
X-IronPort-AV: E=Sophos;i="5.98,251,1673942400"; d="scan'208";a="399453139"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 15:58:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10645"; a="710469174"
X-IronPort-AV: E=Sophos;i="5.98,251,1673942400"; d="scan'208";a="710469174"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 10 Mar 2023 15:58:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 11 Mar 2023 01:58:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 11 Mar 2023 01:58:28 +0200
Message-Id: <20230310235828.17439-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230310235828.17439-1-ville.syrjala@linux.intel.com>
References: <20230310235828.17439-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915: Extract
 intel_crtc_scanline_offset()
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the scanline_offset calculation into its own function. Might
have further use for this later with DSB scanline waits.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 89 +++++++++++----------
 1 file changed, 48 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 48bf3923af11..f8bf9810527d 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -441,6 +441,53 @@ void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc)
 	wait_for_pipe_scanline_moving(crtc, true);
 }
 
+static int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	/*
+	 * The scanline counter increments at the leading edge of hsync.
+	 *
+	 * On most platforms it starts counting from vtotal-1 on the
+	 * first active line. That means the scanline counter value is
+	 * always one less than what we would expect. Ie. just after
+	 * start of vblank, which also occurs at start of hsync (on the
+	 * last active line), the scanline counter will read vblank_start-1.
+	 *
+	 * On gen2 the scanline counter starts counting from 1 instead
+	 * of vtotal-1, so we have to subtract one (or rather add vtotal-1
+	 * to keep the value positive), instead of adding one.
+	 *
+	 * On HSW+ the behaviour of the scanline counter depends on the output
+	 * type. For DP ports it behaves like most other platforms, but on HDMI
+	 * there's an extra 1 line difference. So we need to add two instead of
+	 * one to the value.
+	 *
+	 * On VLV/CHV DSI the scanline counter would appear to increment
+	 * approx. 1/3 of a scanline before start of vblank. Unfortunately
+	 * that means we can't tell whether we're in vblank or not while
+	 * we're on that particular line. We must still set scanline_offset
+	 * to 1 so that the vblank timestamps come out correct when we query
+	 * the scanline counter from within the vblank interrupt handler.
+	 * However if queried just before the start of vblank we'll get an
+	 * answer that's slightly in the future.
+	 */
+	if (DISPLAY_VER(i915) == 2) {
+		int vtotal;
+
+		vtotal = adjusted_mode->crtc_vtotal;
+		if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
+			vtotal /= 2;
+
+		return vtotal - 1;
+	} else if (HAS_DDI(i915) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
+		return 2;
+	} else {
+		return 1;
+	}
+}
+
 void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -479,47 +526,7 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state)
 
 	crtc->mode_flags = crtc_state->mode_flags;
 
-	/*
-	 * The scanline counter increments at the leading edge of hsync.
-	 *
-	 * On most platforms it starts counting from vtotal-1 on the
-	 * first active line. That means the scanline counter value is
-	 * always one less than what we would expect. Ie. just after
-	 * start of vblank, which also occurs at start of hsync (on the
-	 * last active line), the scanline counter will read vblank_start-1.
-	 *
-	 * On gen2 the scanline counter starts counting from 1 instead
-	 * of vtotal-1, so we have to subtract one (or rather add vtotal-1
-	 * to keep the value positive), instead of adding one.
-	 *
-	 * On HSW+ the behaviour of the scanline counter depends on the output
-	 * type. For DP ports it behaves like most other platforms, but on HDMI
-	 * there's an extra 1 line difference. So we need to add two instead of
-	 * one to the value.
-	 *
-	 * On VLV/CHV DSI the scanline counter would appear to increment
-	 * approx. 1/3 of a scanline before start of vblank. Unfortunately
-	 * that means we can't tell whether we're in vblank or not while
-	 * we're on that particular line. We must still set scanline_offset
-	 * to 1 so that the vblank timestamps come out correct when we query
-	 * the scanline counter from within the vblank interrupt handler.
-	 * However if queried just before the start of vblank we'll get an
-	 * answer that's slightly in the future.
-	 */
-	if (DISPLAY_VER(i915) == 2) {
-		int vtotal;
-
-		vtotal = adjusted_mode.crtc_vtotal;
-		if (adjusted_mode.flags & DRM_MODE_FLAG_INTERLACE)
-			vtotal /= 2;
-
-		crtc->scanline_offset = vtotal - 1;
-	} else if (HAS_DDI(i915) &&
-		   intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
-		crtc->scanline_offset = 2;
-	} else {
-		crtc->scanline_offset = 1;
-	}
+	crtc->scanline_offset = intel_crtc_scanline_offset(crtc_state);
 
 	spin_unlock(&i915->uncore.lock);
 	spin_unlock_irqrestore(&i915->drm.vblank_time_lock, irqflags);
-- 
2.39.2

