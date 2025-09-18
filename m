Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34562B87598
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 01:22:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC07110E20A;
	Thu, 18 Sep 2025 23:22:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LNTR9qP6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D72510E20A;
 Thu, 18 Sep 2025 23:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758237754; x=1789773754;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PPT2zSP1pp3R5Bb/I2kx66ygW31yi9Qe6p8kf2MWz/c=;
 b=LNTR9qP6fyFJpz8LrcCx8LTSnVN1uD0N6fWLQkSRT9tQ56bZcIjLckJu
 SA55yObfmkwrSclmHRmvDtBP/ywsi7+vuRPfAkxi5QKavGLxdF0Yllx6h
 rnKOkaEfFNF/zq/518N1zboKCcLG4FBrMPfUz3CGshTuywqd3aGey9XTU
 lyLqCegDFcxsoivlGZxQAcL1PVZb9fTlIttNpLJRZHS9M5u5GyVnoPDpQ
 KAUsJd2UHKYNYJhYzCXKAzRsBXd54H6RPl+l6gy7RxD9hz/VCg8YpUTp1
 nW6sCeLtCADq7htzYTnZJn3nYe20QSE3mYCSLAa8glcd4M5Ej9z1Zp1XS g==;
X-CSE-ConnectionGUID: RKa1CNK1QPSX7IxeqeMLaw==
X-CSE-MsgGUID: 2CeBf6W6QkSVMFIzrKturw==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60735324"
X-IronPort-AV: E=Sophos;i="6.18,276,1751266800"; d="scan'208";a="60735324"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 16:22:34 -0700
X-CSE-ConnectionGUID: QXV69QUORwa5c7MLbvsamw==
X-CSE-MsgGUID: x59tlv6DSLW+2L+gEKr7cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,276,1751266800"; d="scan'208";a="176491281"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 16:22:32 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/2] drm/i915/vrr: Hide the ICL/TGL
 intel_vrr_flipline_offset() mangling better
Date: Fri, 19 Sep 2025 02:22:25 +0300
Message-ID: <20250918232226.25295-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250918232226.25295-1-ville.syrjala@linux.intel.com>
References: <20250918232226.25295-1-ville.syrjala@linux.intel.com>
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

ICL/TGL VRR hardware won't allow us to program flipline==vmin. If we do
that the actual effect will be the same as if we had programmed
flipline=vmin+1, which would make the minimum vtotal one scanline taller
than expected.

To compensate for this we reduce vmin by one, and then program
flipline=vmin+1. So we end up with a flipline value that matches
the expected minimum vtotal. Currently this adjustment happens
in intel_vrr_compute_config() which means that crtc_state->vrr.vmin
will no longer be directly usable for the remainder of the high
level VRR code. That is annoying at best, fragile at worst.

Hide the adjustment in low level code instead. This will allow most
of the higher level VRR code to remain blissfully ignorant about this
fact. Afterwards crtc_state->vrr.{vmin,flipline} will be equal
and match the minimum vtotal, exactly how things already work
on ADL+.

The only slight downside is that the actual register value will no
longer match crtc_state->vrr.vmin on ICL/TGL, but that may already
be the case on TGL because the register value will also have been
adjusted by the SCL.

Note that we must change the guardband calculation to account
for intel_vrr_extra_vblank_delay() explicitly. Previously that
was accidentally handled by the earlier vmin reduction by
intel_vrr_flipline_offset().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 30 ++++++++++++++----------
 1 file changed, 17 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 71a985d00604..e725b4581e81 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -108,15 +108,20 @@ int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
 
 static int intel_vrr_flipline_offset(struct intel_display *display)
 {
-	/* ICL/TGL hardware imposes flipline>=vmin+1 */
+	/*
+	 * ICL/TGL hardware imposes flipline>=vmin+1
+	 *
+	 * We reduce the vmin value to compensate when programming the
+	 * hardware. This approach allows flipline to remain set at the
+	 * original value, and thus the frame will have the desired
+	 * minimum vtotal.
+	 */
 	return DISPLAY_VER(display) < 13 ? 1 : 0;
 }
 
 static int intel_vrr_vmin_flipline(const struct intel_crtc_state *crtc_state)
 {
-	struct intel_display *display = to_intel_display(crtc_state);
-
-	return crtc_state->vrr.vmin + intel_vrr_flipline_offset(display);
+	return crtc_state->vrr.vmin;
 }
 
 static int intel_vrr_guardband_to_pipeline_full(const struct intel_crtc_state *crtc_state,
@@ -400,13 +405,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
 	else
 		intel_vrr_compute_fixed_rr_timings(crtc_state);
 
-	/*
-	 * flipline determines the min vblank length the hardware will
-	 * generate, and on ICL/TGL flipline>=vmin+1, hence we reduce
-	 * vmin by one to make sure we can get the actual min vblank length.
-	 */
-	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
-
 	if (HAS_AS_SDP(display)) {
 		crtc_state->vrr.vsync_start =
 			(crtc_state->hw.adjusted_mode.crtc_vtotal -
@@ -426,7 +424,8 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 		return;
 
 	crtc_state->vrr.guardband =
-		crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
+		crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
+		intel_vrr_extra_vblank_delay(display);
 
 	if (DISPLAY_VER(display) < 13) {
 		/* FIXME handle the limit in a proper way */
@@ -597,7 +596,10 @@ void intel_vrr_set_db_point_and_transmission_line(const struct intel_crtc_state
 
 static int intel_vrr_hw_vmin(const struct intel_crtc_state *crtc_state)
 {
-	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.vmin);
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.vmin) -
+		intel_vrr_flipline_offset(display);
 }
 
 static int intel_vrr_hw_vmax(const struct intel_crtc_state *crtc_state)
@@ -762,6 +764,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 			crtc_state->vrr.flipline += intel_vrr_real_vblank_delay(crtc_state);
 			crtc_state->vrr.vmax += intel_vrr_real_vblank_delay(crtc_state);
 			crtc_state->vrr.vmin += intel_vrr_real_vblank_delay(crtc_state);
+
+			crtc_state->vrr.vmin += intel_vrr_flipline_offset(display);
 		}
 
 		/*
-- 
2.49.1

