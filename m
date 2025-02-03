Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB29A259E8
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 13:50:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00E8C10E4D4;
	Mon,  3 Feb 2025 12:50:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sva+t9e8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C47EE10E4D4;
 Mon,  3 Feb 2025 12:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738587040; x=1770123040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rMvmIZdrWQLNgwza+o0Lod5rVKvUf21ZOyld5VgyBco=;
 b=Sva+t9e855Nyf98wHl4kEGL2tP0eXxNVYxdgL5z0PqIvRTz/FcKjbhiK
 r47izUrebA07WtU30/VzhnBhjNsx/fr4rXFL4RzheFHysyGN+xxDIMRdk
 5V4wIkSUzHEmXJggZ0hdhJPMKdV5nj6tIJ4Wj5ycFfhWx551MgRJGGmL+
 MrMoZ0VmWW0dlyMpnHRIpCpSUTtixMvRnX8M6mcNHmLv5yxltUmzwGHN2
 oZ5K9Aa5iAt+Kbmxt1Y7rvTWlagJVuXA5k/9iPk/kH299f5tTOZAEW0zo
 EI2d+Pf48IeUB3tmYUogOk98oAerTC/9dK7ywwn8RIA6lV5txSW8Yt4Mw Q==;
X-CSE-ConnectionGUID: +PiYlWWaSVG66yLniq6p6A==
X-CSE-MsgGUID: gY+d17k7Q8eRRRgZMySWFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="61548124"
X-IronPort-AV: E=Sophos;i="6.13,255,1732608000"; d="scan'208";a="61548124"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:40 -0800
X-CSE-ConnectionGUID: UW6t+F6HRI2xmD/Vau6koQ==
X-CSE-MsgGUID: dsSlaB1VRxyIC7uqB9e+WQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133529081"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 04:50:37 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 23/28] drm/i915/display: Pass vrr.mode to
 intel_crtc_update_active_timings()
Date: Mon,  3 Feb 2025 18:08:35 +0530
Message-ID: <20250203123840.3855874-24-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
References: <20250203123840.3855874-1-ankit.k.nautiyal@intel.com>
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

Modify the helper intel_crtc_update_active_timings() to update the
timings based on the given vrr.mode.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c |  6 +++---
 drivers/gpu/drm/i915/display/intel_vblank.c  | 22 ++++++++++++--------
 drivers/gpu/drm/i915/display/intel_vblank.h  |  4 +++-
 3 files changed, 19 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a920d06278fe..2127888d459e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1319,7 +1319,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 
 	if (intel_crtc_vrr_disabling(state, crtc)) {
 		intel_vrr_disable(old_crtc_state);
-		intel_crtc_update_active_timings(old_crtc_state, false);
+		intel_crtc_update_active_timings(old_crtc_state, INTEL_VRRTG_MODE_NONE);
 	}
 
 	if (audio_disabling(old_crtc_state, new_crtc_state))
@@ -7189,7 +7189,7 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
 			intel_atomic_get_new_crtc_state(state, pipe_crtc);
 
 		/* VRR will be enable later, if required */
-		intel_crtc_update_active_timings(pipe_crtc_state, false);
+		intel_crtc_update_active_timings(pipe_crtc_state, INTEL_VRRTG_MODE_NONE);
 	}
 
 	dev_priv->display.funcs.display->crtc_enable(state, crtc);
@@ -7281,7 +7281,7 @@ static void intel_update_crtc(struct intel_atomic_state *state,
 	if (intel_crtc_vrr_enabling(state, crtc) ||
 	    new_crtc_state->update_m_n || new_crtc_state->update_lrr)
 		intel_crtc_update_active_timings(new_crtc_state,
-						 intel_vrr_is_enabled(new_crtc_state));
+						 new_crtc_state->vrr.mode);
 
 	/*
 	 * We usually enable FIFO underrun interrupts as part of the
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 4efd4f7d497a..3ed814245b61 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -510,22 +510,26 @@ void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc)
 static void intel_crtc_active_timings(struct drm_display_mode *mode,
 				      int *vmax_vblank_start,
 				      const struct intel_crtc_state *crtc_state,
-				      bool vrr_enable)
+				      enum intel_vrrtg_mode vrr_mode)
 {
 	drm_mode_init(mode, &crtc_state->hw.adjusted_mode);
 	*vmax_vblank_start = 0;
 
-	if (!vrr_enable)
+	if (vrr_mode == INTEL_VRRTG_MODE_NONE)
 		return;
 
-	mode->crtc_vtotal = intel_vrr_vmax_vtotal(crtc_state);
-	mode->crtc_vblank_end = intel_vrr_vmax_vtotal(crtc_state);
-	mode->crtc_vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
-	*vmax_vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
+	if (vrr_mode == INTEL_VRRTG_MODE_VRR) {
+		mode->crtc_vtotal = intel_vrr_vmax_vtotal(crtc_state);
+		mode->crtc_vblank_end = intel_vrr_vmax_vtotal(crtc_state);
+		mode->crtc_vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
+		*vmax_vblank_start = intel_vrr_vmax_vblank_start(crtc_state);
+	} else {
+		MISSING_CASE(vrr_mode);
+	}
 }
 
 void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
-				      bool vrr_enable)
+				      enum intel_vrrtg_mode vrr_mode)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
@@ -535,9 +539,9 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
 	unsigned long irqflags;
 
 	intel_crtc_active_timings(&adjusted_mode, &vmax_vblank_start,
-				  crtc_state, vrr_enable);
+				  crtc_state, vrr_mode);
 
-	if (vrr_enable)
+	if (vrr_mode != INTEL_VRRTG_MODE_NONE)
 		drm_WARN_ON(display->drm, (mode_flags & I915_MODE_FLAG_VRR) == 0);
 	else
 		mode_flags &= ~I915_MODE_FLAG_VRR;
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index 21fbb08d61d5..addd6db14df2 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -9,6 +9,8 @@
 #include <linux/ktime.h>
 #include <linux/types.h>
 
+enum intel_vrrtg_mode;
+
 struct drm_crtc;
 struct drm_display_mode;
 struct intel_atomic_state;
@@ -41,7 +43,7 @@ int intel_get_crtc_scanline(struct intel_crtc *crtc);
 void intel_wait_for_pipe_scanline_stopped(struct intel_crtc *crtc);
 void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc);
 void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
-				      bool vrr_enable);
+				      enum intel_vrrtg_mode vrr_mode);
 int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state);
 
 const struct intel_crtc_state *
-- 
2.45.2

