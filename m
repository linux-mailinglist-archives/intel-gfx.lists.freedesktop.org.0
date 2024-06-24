Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 406219156F7
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 21:11:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7049010E55F;
	Mon, 24 Jun 2024 19:11:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZAcS3OKo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A524E10E54D
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 19:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719256260; x=1750792260;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=TNplp1OY6uhMrJdTrr5eYNlGGY9E0NEVUJjh3wo2Urs=;
 b=ZAcS3OKoQ+JKvE2RrBVn72yYJwPRYPo3WdPU3QqWHUlKb6Wpeca85bGD
 xXyf/DqnYLhbaLOXGvvAf3UGDZqvV8WWagelj1mJLJG8Lu3Ls0eiW2/x9
 UD382O/bn18/zq96p4teNTgzG5ojh1S8dXXs/2FdGOxJfRW4n834XRgtJ
 D6IdxIX7BfyQolI6vYFIbrHDlwL8+ksYEQ62ftq3YPX9w1zfpb3h9mCBG
 PJw/WziQzwtng2eUirXU7eMuyJjGH9F3HQc9jwEsFpv3HRWMnJkxpV73d
 8pru+2mpE5yJSxEKJm1OW8e2u0e1c6f8ws748U4V64XWUk9gJTArvUP/R w==;
X-CSE-ConnectionGUID: Q+wh6QQWR/SCfrlVzN0GpA==
X-CSE-MsgGUID: YtVYMxupTiCo7U2S98xtFg==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16374176"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16374176"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 12:10:49 -0700
X-CSE-ConnectionGUID: JTelRLmxRGWSsxi/N+IJGg==
X-CSE-MsgGUID: 8IKuRo5GRg+0D0861OkSZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43371950"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 12:10:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 22:10:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 05/14] drm/i915/dsb: Shuffle code around
Date: Mon, 24 Jun 2024 22:10:23 +0300
Message-ID: <20240624191032.27333-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
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

Relocate intel_dsb_dewake_scanline() and dsb_chicken() upwards
in the file. I need to reuse these while emitting DSB
commands, and I'd like to keep the DSB command emission
stuff more or less grouped together in the file.

Also drop the intel_ prefix from intel_dsb_dewake_scanline() since
it's all internal stuff and thus doesn't need so much namespacing.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 56 ++++++++++++------------
 1 file changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index cee33c66a26b..d3e5e5263603 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -83,6 +83,33 @@ struct intel_dsb {
 #define DSB_OPCODE_POLL			0xA
 /* see DSB_REG_VALUE_MASK */
 
+static int dsb_dewake_scanline(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	unsigned int latency = skl_watermark_max_latency(i915, 0);
+	int vblank_start;
+
+	if (crtc_state->vrr.enable)
+		vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
+	else
+		vblank_start = intel_mode_vblank_start(adjusted_mode);
+
+	return max(0, vblank_start - intel_usecs_to_scanlines(adjusted_mode, latency));
+}
+
+static u32 dsb_chicken(struct intel_crtc *crtc)
+{
+	if (crtc->mode_flags & I915_MODE_FLAG_VRR)
+		return DSB_SKIP_WAITS_EN |
+			DSB_CTRL_WAIT_SAFE_WINDOW |
+			DSB_CTRL_NO_WAIT_VBLANK |
+			DSB_INST_WAIT_SAFE_WINDOW |
+			DSB_INST_NO_WAIT_VBLANK;
+	else
+		return DSB_SKIP_WAITS_EN;
+}
+
 static bool assert_dsb_has_room(struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = dsb->crtc;
@@ -313,33 +340,6 @@ void intel_dsb_finish(struct intel_dsb *dsb)
 	intel_dsb_buffer_flush_map(&dsb->dsb_buf);
 }
 
-static int intel_dsb_dewake_scanline(const struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
-	unsigned int latency = skl_watermark_max_latency(i915, 0);
-	int vblank_start;
-
-	if (crtc_state->vrr.enable)
-		vblank_start = intel_vrr_vmin_vblank_start(crtc_state);
-	else
-		vblank_start = intel_mode_vblank_start(adjusted_mode);
-
-	return max(0, vblank_start - intel_usecs_to_scanlines(adjusted_mode, latency));
-}
-
-static u32 dsb_chicken(struct intel_crtc *crtc)
-{
-	if (crtc->mode_flags & I915_MODE_FLAG_VRR)
-		return DSB_SKIP_WAITS_EN |
-			DSB_CTRL_WAIT_SAFE_WINDOW |
-			DSB_CTRL_NO_WAIT_VBLANK |
-			DSB_INST_WAIT_SAFE_WINDOW |
-			DSB_INST_NO_WAIT_VBLANK;
-	else
-		return DSB_SKIP_WAITS_EN;
-}
-
 static u32 dsb_error_int_status(struct intel_display *display)
 {
 	struct drm_i915_private *i915 = to_i915(display->drm);
@@ -532,7 +532,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 	dsb->ins_start_offset = 0;
 
 	dsb->hw_dewake_scanline =
-		intel_crtc_scanline_to_hw(crtc_state, intel_dsb_dewake_scanline(crtc_state));
+		intel_crtc_scanline_to_hw(crtc_state, dsb_dewake_scanline(crtc_state));
 
 	return dsb;
 
-- 
2.44.2

