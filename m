Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 692C0B526CA
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 04:59:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC8FA10EA11;
	Thu, 11 Sep 2025 02:59:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ePhuLgBV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1397210EA07;
 Thu, 11 Sep 2025 02:59:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757559586; x=1789095586;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3VocqVsc2nRGmD8lo0ln6Ws6tx5ahkiBE83PijvbdMg=;
 b=ePhuLgBViC/lD0cLcrl2s/4bMJElPvJUUH1CMVhzFXHvSSOvp2Q8EkKP
 Vj05lnR2n+fx8vPthJKPUtjLfFTfXA8AZxMed5gUDnz61KS/DutgajH12
 31xsO6s4BVPbZlWL1tWfvjWJW86G6amKhgawi4kpzJhgUHwDuJmw5guje
 /GHbs8itNFNvYBxnp0d0nhEAzyeRu+OX5DGXWbICp9WjQtxy8DxMGeKQP
 xeQ+9v+BfZW05Xbn8GaBHx3o1O2W3ip0AJepnL8f3/jEoM58y82fAjxDz
 WVwwgI+iNqfu3u2mq5aKO7uzvLrc5Fx9/zOQ8+68Ed4zAZbt08xv8nT4a Q==;
X-CSE-ConnectionGUID: r9qx2xttQE+PiUOLvRpk4Q==
X-CSE-MsgGUID: vqi6kfd8Qi6yE/7AGCwrfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11549"; a="85327085"
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="85327085"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 19:59:46 -0700
X-CSE-ConnectionGUID: B0uAhVLsQ86j86exlIXRhA==
X-CSE-MsgGUID: GXVooou8TrWBsp5eHjjRzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,256,1751266800"; d="scan'208";a="173955555"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 19:59:44 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 11/15] drm/i915/display: Use vrr.guardband to derive
 vblank_start
Date: Thu, 11 Sep 2025 08:15:50 +0530
Message-ID: <20250911024554.692469-12-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
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

When VRR TG is always enabled and an optimized guardband is used, the pipe
vblank start is derived from the guardband.
Currently TRANS_SET_CONTEXT_LATENCY is programmed with crtc_vblank_start -
crtc_vdisplay, which is ~1 when guardband matches the vblank length.
With shorter guardband this become a large window.

To avoid misprogramming TRANS_SET_CONTEXT_LATENCY, clamp the scl value to 1
when using optimized guardband.

Also update the VRR get config logic to set crtc_vblank_start based on
vtotal - guardband, during readback.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 36 ++++++++++++++++----
 drivers/gpu/drm/i915/display/intel_vrr.c     |  9 ++++-
 2 files changed, 38 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 55bea1374dc4..73aec6d4686a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2638,6 +2638,30 @@ transcoder_has_vrr(const struct intel_crtc_state *crtc_state)
 	return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
 }
 
+static int intel_set_context_latency(const struct intel_crtc_state *crtc_state,
+				     int crtc_vblank_start,
+				     int crtc_vdisplay)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	/*
+	 * When VRR TG is always on and optimized guardband is used,
+	 * the pipe vblank start is based on the guardband,
+	 * TRANS_SET_CONTEXT_LATENCY cannot be used to configure it.
+	 */
+	if (intel_vrr_always_use_vrr_tg(display))
+		return clamp(crtc_vblank_start - crtc_vdisplay, 0, 1);
+
+	/*
+	 * VBLANK_START no longer works on ADL+, instead we must use
+	 * TRANS_SET_CONTEXT_LATENCY to configure the pipe vblank start.
+	 */
+	if (DISPLAY_VER(display) >= 13)
+		return crtc_vblank_start - crtc_vdisplay;
+
+	return 0;
+}
+
 static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
@@ -2671,14 +2695,12 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
 			vsyncshift += adjusted_mode->crtc_htotal;
 	}
 
-	/*
-	 * VBLANK_START no longer works on ADL+, instead we must use
-	 * TRANS_SET_CONTEXT_LATENCY to configure the pipe vblank start.
-	 */
 	if (DISPLAY_VER(display) >= 13) {
 		intel_de_write(display,
 			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
-			       crtc_vblank_start - crtc_vdisplay);
+			       intel_set_context_latency(crtc_state,
+							 crtc_vblank_start,
+							 crtc_vdisplay));
 
 		/*
 		 * VBLANK_START not used by hw, just clear it
@@ -2768,7 +2790,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
 	if (DISPLAY_VER(display) >= 13) {
 		intel_de_write(display,
 			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
-			       crtc_vblank_start - crtc_vdisplay);
+			       intel_set_context_latency(crtc_state,
+							 crtc_vblank_start,
+							 crtc_vdisplay));
 
 		/*
 		 * VBLANK_START not used by hw, just clear it
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 855974174afd..e124ef4e0ff4 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -749,11 +749,18 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 		 * bits are not filled. Since vrr.vsync_start is computed as:
 		 * crtc_vtotal - crtc_vsync_start, we can derive vtotal from
 		 * vrr.vsync_start and crtc_vsync_start.
+		 *
+		 * With Optimized guardband, the vblank start is Vtotal - guardband
 		 */
-		if (intel_vrr_always_use_vrr_tg(display))
+		if (intel_vrr_always_use_vrr_tg(display)) {
 			crtc_state->hw.adjusted_mode.crtc_vtotal =
 				crtc_state->hw.adjusted_mode.crtc_vsync_start +
 				crtc_state->vrr.vsync_start;
+
+			crtc_state->hw.adjusted_mode.crtc_vblank_start =
+				crtc_state->hw.adjusted_mode.crtc_vtotal -
+				crtc_state->vrr.guardband;
+		}
 	}
 
 	vrr_enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
-- 
2.45.2

