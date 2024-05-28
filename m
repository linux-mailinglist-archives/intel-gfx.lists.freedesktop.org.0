Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8204B8D2393
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2024 20:57:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1323010EED8;
	Tue, 28 May 2024 18:57:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qtl3zLg1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 523D210EED8
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2024 18:57:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716922624; x=1748458624;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KJL8bk58yp4IngxgJE6WV0qmHF+lyMua/k1oLGcWO5Y=;
 b=Qtl3zLg1pjpW+lZLzMw6PP4LFZZhzYZgaPTMoEce+9E4HuMNMPMpIMTY
 IeOziH69oolTGsAtQKDA+BBkdk+l8x+7982zfq9edQ0Rd2atDN6QcgZ5m
 UFdCtfnTt5Hdv9zsHtp108tctNyn5M9MrVPiLQX3IqdgD0vcZJJohhoYc
 NsbH7BSiMwI73+QarMZ2r8CyEPgTPvcLZQ/BDA5BuOHvZj4gvUKDzAuEQ
 5nnACfBYfs91O5uop5sZFM8s0iFY5WWOcbgkIrMmfKOLhnk3sFEPBoeKb
 28vjApiK9zpxLYaKTX5+eHMbNn6ictLPQW0IB8QTbAWRCUIRVSP/ZUsPP w==;
X-CSE-ConnectionGUID: mYT0MNOkQaWzJLVQm+0e1Q==
X-CSE-MsgGUID: 41kWAJT2T2CMQlrU/qy8Nw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="35815244"
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35815244"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 11:57:04 -0700
X-CSE-ConnectionGUID: Fvu/tgKNTg6XJ+hFgrzXuQ==
X-CSE-MsgGUID: T2WtWuU5RH2/r/0S2H90/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,196,1712646000"; d="scan'208";a="35144521"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 28 May 2024 11:57:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 May 2024 21:57:01 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/7] drm/i915: Move intel_crtc_scanline_offset()
Date: Tue, 28 May 2024 21:56:45 +0300
Message-ID: <20240528185647.7765-6-ville.syrjala@linux.intel.com>
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

I want to use intel_crtc_scanline_offset() in
intel_crtc_scanline_to_hw(). Relocate intel_crtc_scanline_offset()
a bit to avoid a forward declaration.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c | 76 ++++++++++-----------
 1 file changed, 38 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index b0e95a4c680d..eb80952b0cfd 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -188,6 +188,44 @@ static u32 __intel_get_crtc_scanline_from_timestamp(struct intel_crtc *crtc)
 	return scanline;
 }
 
+static int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
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
+	 * of vtotal-1, so we have to subtract one.
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
+	if (DISPLAY_VER(i915) == 2)
+		return -1;
+	else if (HAS_DDI(i915) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
+		return 2;
+	else
+		return 1;
+}
+
 /*
  * intel_de_read_fw(), only for fast reads of display block, no need for
  * forcewake etc.
@@ -467,44 +505,6 @@ void intel_wait_for_pipe_scanline_moving(struct intel_crtc *crtc)
 	wait_for_pipe_scanline_moving(crtc, true);
 }
 
-static int intel_crtc_scanline_offset(const struct intel_crtc_state *crtc_state)
-{
-	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-
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
-	 * of vtotal-1, so we have to subtract one.
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
-	if (DISPLAY_VER(i915) == 2)
-		return -1;
-	else if (HAS_DDI(i915) && intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
-		return 2;
-	else
-		return 1;
-}
-
 void intel_crtc_update_active_timings(const struct intel_crtc_state *crtc_state,
 				      bool vrr_enable)
 {
-- 
2.44.1

