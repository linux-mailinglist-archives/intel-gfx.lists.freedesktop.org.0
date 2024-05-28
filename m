Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 502978D238F
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 20:56:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84EF810E8B2;
	Tue, 28 May 2024 18:56:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NfPSxvdc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 206B110E8B2
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716922613; x=1748458613;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rg/GGCHaH6DEqwmWJUtKW76DCUFtTGEtKJLWoTR9hI0=;
 b=NfPSxvdckT1N5oXWNkmnJ1eg1LL8udaFpk4RhqyR85fbs8TQA15Byltp
 i9lmzDiQOTFedheLHdidpjs/w01W9VBXnph/mNyb70aeceuWngqfBmPkf
 6/VJgHZeCYUllDgdEgTHmfunB+NUn4im29z7jyfTdpkUCeOsSPaYMjeeJ
 DZv0n9Z5kK+OQ5hIiS8XfwOxrfK0xy5pGILynfEi9cNTINOhnRZu43k6V
 lY1pAS6mFw98Ty7lMfLog13zZQKJcLvWdlmV7QXtvLH931Sg4CbpIpiul
 W3ZPdaztk2aFGKqyYGD+TsP4OEgbA2+3FSGLNydCFbXHc90Do+pohyQRi Q==;
X-CSE-ConnectionGUID: VBfKsl66QUKaBv7jwkabBw==
X-CSE-MsgGUID: nFCt6UteRFuk8R+wCRDK9Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35815203"
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35815203"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 11:56:52 -0700
X-CSE-ConnectionGUID: fu+Dssu4Tqiivo94Fyskig==
X-CSE-MsgGUID: EElOMyZyQ/+mWzxAL7j7DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35144436"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 May 2024 11:56:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 May 2024 21:56:50 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/7] drm/i915: Reuse intel_mode_vblank_start()
Date: Tue, 28 May 2024 21:56:41 +0300
Message-ID: <20240528185647.7765-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
In-Reply-To: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
References: <20240528185647.7765-1-ville.syrjala@linux.intel.com>
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

Replace a few hand rolled copies of intel_mode_vblank_start() with
the real thing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c    | 10 +++-------
 drivers/gpu/drm/i915/display/intel_vblank.c |  9 +++------
 drivers/gpu/drm/i915/display/intel_vblank.h |  3 +++
 3 files changed, 9 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 4baaa92ceaec..319fbebd7008 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -328,14 +328,10 @@ static int intel_dsb_dewake_scanline(const struct intel_crtc_state *crtc_state)
 	unsigned int latency = skl_watermark_max_latency(i915, 0);
 	int vblank_start;
 
-	if (crtc_state->vrr.enable) {
+	if (crtc_state->vrr.enable)
 		vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
-	} else {
-		vblank_start = adjusted_mode->crtc_vblank_start;
-
-		if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
-			vblank_start = DIV_ROUND_UP(vblank_start, 2);
-	}
+	else
+		vblank_start = intel_mode_vblank_start(adjusted_mode);
 
 	return max(0, vblank_start - intel_usecs_to_scanlines(adjusted_mode, latency));
 }
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 951190bcbc50..1f57596f8208 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -89,9 +89,7 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
 
 	htotal = mode->crtc_htotal;
 	hsync_start = mode->crtc_hsync_start;
-	vbl_start = mode->crtc_vblank_start;
-	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
-		vbl_start = DIV_ROUND_UP(vbl_start, 2);
+	vbl_start = intel_mode_vblank_start(mode);
 
 	/* Convert to pixel count */
 	vbl_start *= htotal;
@@ -313,11 +311,10 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
 	htotal = mode->crtc_htotal;
 	hsync_start = mode->crtc_hsync_start;
 	vtotal = mode->crtc_vtotal;
-	vbl_start = mode->crtc_vblank_start;
+	vbl_start = intel_mode_vblank_start(mode);
 	vbl_end = mode->crtc_vblank_end;
 
 	if (mode->flags & DRM_MODE_FLAG_INTERLACE) {
-		vbl_start = DIV_ROUND_UP(vbl_start, 2);
 		vbl_end /= 2;
 		vtotal /= 2;
 	}
@@ -577,7 +574,7 @@ void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
 	spin_unlock_irqrestore(&i915->drm.vblank_time_lock, irqflags);
 }
 
-static int intel_mode_vblank_start(const struct drm_display_mode *mode)
+int intel_mode_vblank_start(const struct drm_display_mode *mode)
 {
 	int vblank_start = mode->crtc_vblank_start;
 
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index ec6c3da3eeac..08825a4d8fb7 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -10,6 +10,7 @@
 #include <linux/types.h>
 
 struct drm_crtc;
+struct drm_display_mode;
 struct intel_crtc;
 struct intel_crtc_state;
 
@@ -19,6 +20,8 @@ struct intel_vblank_evade_ctx {
 	bool need_vlv_dsi_wa;
 };
 
+int intel_mode_vblank_start(const struct drm_display_mode *mode);
+
 void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
 			     const struct intel_crtc_state *new_crtc_state,
 			     struct intel_vblank_evade_ctx *evade);
-- 
2.44.1

