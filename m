Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 113C0BD30F5
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 14:49:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7280210E444;
	Mon, 13 Oct 2025 12:49:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZYqyP9g5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9961410E454;
 Mon, 13 Oct 2025 12:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760359765; x=1791895765;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=et82rihTAKFqRe2bZK36/N/mEeQ5b8qRmBWrT9mzOgg=;
 b=ZYqyP9g598JbZ3IeJ0hJIgmzLYKKT0us+8p2RvnYLlKQSFx2sMiGEJkt
 mXEdP7NiWJ0KTVMRtcruw+5ygunRmK0d21Fhn5dw6w97yuMIVp1L1fd0A
 i/TT3EDFM0W3R7vW8D+cNc6MKogPdJSF6f2YpnaPOqOY67FFjmELO3Mra
 Z3oG9Ex2npfJQyxTUFeBTSGB6AqHRTjEsV9W8fC3zPwf41UrfosiJCdxo
 1o275iWdgyQ7W3VnM9EDQGiy+ebbnP2XcszN7X7rkvDaESec0wyiX9lse
 yToIO1MOconhi/WNeHrvY7E9xGZw/jZJjMLHFFkY4lQIGVyiTfLyXyRxH A==;
X-CSE-ConnectionGUID: ScOafj8pRRCqAW5vurAoGw==
X-CSE-MsgGUID: Zi9OyD7MSGyYZn8eOlF9Pg==
X-IronPort-AV: E=McAfee;i="6800,10657,11580"; a="85121165"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="85121165"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 05:49:25 -0700
X-CSE-ConnectionGUID: zm53BHgjS2KB37KBVn3P/Q==
X-CSE-MsgGUID: Fnu3qw1oRjyZpSCuL3GMOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="182026891"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 05:49:22 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 8/8] drm/i915/display: Add vblank_start adjustment logic for
 always-on VRR TG
Date: Mon, 13 Oct 2025 18:05:59 +0530
Message-ID: <20251013123559.1055429-9-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251013123559.1055429-1-ankit.k.nautiyal@intel.com>
References: <20251013123559.1055429-1-ankit.k.nautiyal@intel.com>
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

As we move towards using a shorter, optimized guardband, we need to adjust
how the delayed vblank start is computed.

Adjust the crtc_vblank_start using Vtotal - guardband only when
intel_vrr_always_use_vrr_tg() is true.

Also update allow_vblank_delay_fastset() to permit vblank delay adjustments
while switching to lower refresh rate mode (LRR), when VRR TG is always
active. This avoids full modeset due to change in vblank start, while
maintaining consistent guardband.

These changes pave the way for future guardband optimization, by handling
the movement of the crtc_vblank_start for platforms that have VRR TG always
active.

v2: Drop the helper and add the adjustment directly to
intel_vrr_compute_guardband(). (Ville)

v3: Use adjusted_mode.crtc_vtotal instead of vmin and include the readout
logic to keep the compute and readout paths in sync. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 10 ++++++++--
 drivers/gpu/drm/i915/display/intel_vrr.c     |  6 +++++-
 2 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ceee5ae99c2c..65a7da694ef6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4958,9 +4958,15 @@ static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_s
 	 * Allow fastboot to fix up vblank delay (handled via LRR
 	 * codepaths), a bit dodgy as the registers aren't
 	 * double buffered but seems to be working more or less...
+	 *
+	 * Also allow this when the VRR timing generator is always on,
+	 * and optimized guardband is used. In such cases,
+	 * vblank delay may vary even without inherited state, but it's
+	 * still safe as VRR guardband is still same.
 	 */
-	return HAS_LRR(display) && old_crtc_state->inherited &&
-		!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
+	return HAS_LRR(display) &&
+	       (old_crtc_state->inherited || intel_vrr_always_use_vrr_tg(display)) &&
+	       !intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
 }
 
 bool
diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 221b25832e56..a4b416da53f4 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -436,7 +436,7 @@ intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
 void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 
 	if (!intel_vrr_possible(crtc_state))
 		return;
@@ -444,6 +444,10 @@ void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
 	crtc_state->vrr.guardband = min(crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay,
 					intel_vrr_max_guardband(crtc_state));
 
+	if (intel_vrr_always_use_vrr_tg(display))
+		adjusted_mode->crtc_vblank_start  =
+			adjusted_mode->crtc_vtotal - crtc_state->vrr.guardband;
+
 	if (DISPLAY_VER(display) < 13)
 		crtc_state->vrr.pipeline_full =
 			intel_vrr_guardband_to_pipeline_full(crtc_state,
-- 
2.45.2

