Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2926AC4F8
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 16:29:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90A1B10E265;
	Mon,  6 Mar 2023 15:29:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38D5F10E265
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 15:29:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678116547; x=1709652547;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=VZDF+LP/kwXHi0bC9ITc09KzLkjHHSSp9JpzDkgEc8U=;
 b=Agtd6MBZoVJVv0ZKbYVy7lTJrRUfXo4pRL3qW9UwO3J3OUsEi9yVoyCm
 3ApeV6u+hY4cPh46bid0PLzlDo3/dQpaYxzkefL2EIEbMEBYwAn9LdC+p
 zo0IPFjlPLOkQ2c7BcNwECTvQvdjRn1XYRTa7gpFnuup9G6rCAbjDznxq
 t/DFbfT0prLTVL5Hyn1hgVo05AN5EgwfwysONUG2jqKWE0o2R4eP04ITQ
 LCYaDqVrxMpBUDxuxAV+tKX4ZEuUUU07ecGwVqPM14tt69CdK7IVCwMrQ
 /m+ULz/mPqXEjkPCIID30qPZLKfjZvmNg8iVE9Swug9TsP3U4fd19z5Ae g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="319412164"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="319412164"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 07:28:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="819343779"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="819343779"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 06 Mar 2023 07:28:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Mar 2023 17:28:51 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Mar 2023 17:28:41 +0200
Message-Id: <20230306152841.6563-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230306152841.6563-1-ville.syrjala@linux.intel.com>
References: <20230306152841.6563-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/4] drm/i915: Extract
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Pull the scanline_offset calculation into its own function. Might
have further use for this later with DSB scanline waits.

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

