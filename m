Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D75FAE6D2D
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 19:01:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BFC6A10E604;
	Tue, 24 Jun 2025 17:00:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HXglT68x";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE85510E604;
 Tue, 24 Jun 2025 17:00:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750784459; x=1782320459;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UVu0viaszu7G9+Pe4z8jbxGb3lmR2WPiBQRLQNl3P44=;
 b=HXglT68xAdSGywTL13Y7RBYKEUgOUN3UUlcuJRagyZ0y0jHmWxB0FJlm
 Jtkm2gAqDnJw+Y9hojiTAVy+YvBruhdjUYjOmXDUHKigUsI0KK1rJQidw
 GtmKnVDjhJLDfZrx69bsSewuJwybGxiYh9BO7RnvuhLVX0R7SNUBVpp0I
 yb4PtACzpVhDIfntO87xOKoQbvekWO+PxkRVP48VNICiYOD0uNs3+jrE1
 +4g71bzTntb4Pf2Kt2VOEnyWugP3Z/FDimPlrSdG5D3YfF/E5bwXMs+uN
 hMmMs1g+HjD5OK+zZcxL2NUPhs5kV0aUL70IVvQzkMnrEeO2F0a4EvDYQ w==;
X-CSE-ConnectionGUID: 0xQJbBytSVyY7t24S5wYYQ==
X-CSE-MsgGUID: frtqMFXcQGO4mz85AtiL9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="56820844"
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="56820844"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 10:00:59 -0700
X-CSE-ConnectionGUID: uJ3RigDdTsCidoCbifHEMw==
X-CSE-MsgGUID: PPg+i+HSTnasrdm9UKvRhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,262,1744095600"; d="scan'208";a="157749608"
Received: from vpanait-mobl.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.73])
 by orviesa005.jf.intel.com with SMTP; 24 Jun 2025 10:00:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Jun 2025 20:00:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v5 2/9] drm/i915: Try to program PKG_C_LATENCY more correctly
Date: Tue, 24 Jun 2025 20:00:42 +0300
Message-ID: <20250624170049.27284-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250624170049.27284-1-ville.syrjala@linux.intel.com>
References: <20250624170049.27284-1-ville.syrjala@linux.intel.com>
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

The current PKG_C_LATENCY stuff looks busted in several ways:
- doesn't account for multiple pipes from different commits
  correctly
- WM_LINETIME is in units of 0.125usec, PKG_C_LATENCY wants
  units on 1 usec
- weird VRR state stuff being checked
- use of pointless RMW

Fix it all up. Note that it's still a bit unclear how all this
works, especially how the added_wake_time ties into the flipq
triggers in DMC, and how we need to sequence updates to
PKG_C_LATENCY when enabling/disabling pipes/etc. We may also
need to think what to about the WM1+ disabling and the related
PSR chicken bits when we can use PKG_C_LATENCY for early wake...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  |  1 +
 .../gpu/drm/i915/display/intel_display_core.h |  6 ++
 drivers/gpu/drm/i915/display/skl_watermark.c  | 97 +++++++++++--------
 3 files changed, 61 insertions(+), 43 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index de8bf292897c..72407cfffb60 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7393,6 +7393,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
 	display->funcs.display->commit_modeset_enables(state);
 
+	/* FIXME probably need to sequence this properly */
 	intel_program_dpkgc_latency(state);
 
 	intel_wait_for_vblank_workers(state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 32cb0e59c81e..ad4d29e2af1b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -479,6 +479,12 @@ struct intel_display {
 		u32 pipestat_irq_mask[I915_MAX_PIPES];
 	} irq;
 
+	struct {
+		/* protected by wm.wm_mutex */
+		u16 linetime[I915_MAX_PIPES];
+		bool disable[I915_MAX_PIPES];
+	} pkgc;
+
 	struct {
 		wait_queue_head_t waitqueue;
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index a71605e3a535..8184ec2611e2 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2903,64 +2903,75 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
 	return 0;
 }
 
-/*
- * If Fixed Refresh Rate or For VRR case Vmin = Vmax = Flipline:
- * Program DEEP PKG_C_LATENCY Pkg C with highest valid latency from
- * watermark level1 and up and above. If watermark level 1 is
- * invalid program it with all 1's.
- * Program PKG_C_LATENCY Added Wake Time = DSB execution time
- * If Variable Refresh Rate where Vmin != Vmax != Flipline:
- * Program DEEP PKG_C_LATENCY Pkg C with all 1's.
- * Program PKG_C_LATENCY Added Wake Time = 0
- */
+static int pkgc_max_linetime(struct intel_atomic_state *state)
+{
+	struct intel_display *display = to_intel_display(state);
+	const struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc;
+	int i, max_linetime;
+
+	/*
+	 * Apparenty the hardware uses WM_LINETIME internally for
+	 * this stuff, compute everything based on that.
+	 */
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		display->pkgc.disable[crtc->pipe] = crtc_state->vrr.enable;
+		display->pkgc.linetime[crtc->pipe] = DIV_ROUND_UP(crtc_state->linetime, 8);
+	}
+
+	max_linetime = 0;
+	for_each_intel_crtc(display->drm, crtc) {
+		if (display->pkgc.disable[crtc->pipe])
+			return 0;
+
+		max_linetime = max(display->pkgc.linetime[crtc->pipe], max_linetime);
+	}
+
+	return max_linetime;
+}
+
 void
 intel_program_dpkgc_latency(struct intel_atomic_state *state)
 {
 	struct intel_display *display = to_intel_display(state);
-	struct intel_crtc *crtc;
-	struct intel_crtc_state *new_crtc_state;
-	u32 latency = LNL_PKG_C_LATENCY_MASK;
-	u32 added_wake_time = 0;
-	u32 max_linetime = 0;
-	u32 clear, val;
-	bool fixed_refresh_rate = false;
-	int i;
+	int max_linetime, latency, added_wake_time = 0;
 
 	if (DISPLAY_VER(display) < 20)
 		return;
 
-	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
-		if (!new_crtc_state->vrr.enable ||
-		    (new_crtc_state->vrr.vmin == new_crtc_state->vrr.vmax &&
-		     new_crtc_state->vrr.vmin == new_crtc_state->vrr.flipline))
-			fixed_refresh_rate = true;
+	mutex_lock(&display->wm.wm_mutex);
 
-		max_linetime = max(new_crtc_state->linetime, max_linetime);
-	}
+	latency = skl_watermark_max_latency(display, 1);
 
-	if (fixed_refresh_rate) {
-		latency = skl_watermark_max_latency(display, 1);
+	/*
+	 * Wa_22020432604
+	 * "PKG_C_LATENCY Added Wake Time field is not working"
+	 */
+	if (latency && (DISPLAY_VER(display) == 20 || DISPLAY_VER(display) == 30)) {
+		latency += added_wake_time;
+		added_wake_time = 0;
+	}
 
-		/* Wa_22020432604 */
-		if ((DISPLAY_VER(display) == 20 || DISPLAY_VER(display) == 30) && !latency) {
-			latency += added_wake_time;
-			added_wake_time = 0;
-		}
+	max_linetime = pkgc_max_linetime(state);
 
-		/* Wa_22020299601 */
-		if ((latency && max_linetime) &&
-		    (DISPLAY_VER(display) == 20 || DISPLAY_VER(display) == 30)) {
-			latency = max_linetime * DIV_ROUND_UP(latency, max_linetime);
-		} else if (!latency) {
-			latency = LNL_PKG_C_LATENCY_MASK;
-		}
+	if (max_linetime == 0 || latency == 0) {
+		latency = REG_FIELD_GET(LNL_PKG_C_LATENCY_MASK,
+					LNL_PKG_C_LATENCY_MASK);
+		added_wake_time = 0;
+	} else {
+		/*
+		 * Wa_22020299601
+		 * "Increase the latency programmed in PKG_C_LATENCY Pkg C Latency to be a
+		 *  multiple of the pipeline time from WM_LINETIME"
+		 */
+		latency = roundup(latency, max_linetime);
 	}
 
-	clear = LNL_ADDED_WAKE_TIME_MASK | LNL_PKG_C_LATENCY_MASK;
-	val = REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, latency) |
-		REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time);
+	intel_de_write(display, LNL_PKG_C_LATENCY,
+		       REG_FIELD_PREP(LNL_ADDED_WAKE_TIME_MASK, added_wake_time) |
+		       REG_FIELD_PREP(LNL_PKG_C_LATENCY_MASK, latency));
 
-	intel_de_rmw(display, LNL_PKG_C_LATENCY, clear, val);
+	mutex_unlock(&display->wm.wm_mutex);
 }
 
 static int
-- 
2.49.0

