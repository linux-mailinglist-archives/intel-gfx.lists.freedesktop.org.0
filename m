Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D741FBDD1F6
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 09:35:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CEED10E709;
	Wed, 15 Oct 2025 07:35:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gami8pP1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E75F110E730;
 Wed, 15 Oct 2025 07:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760513745; x=1792049745;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m8F6LZdFqCmwF4rgYVHI36HwO2bKb+LY0xjkd5d5dyw=;
 b=Gami8pP18z25zdUEvsCWLHCXvKGrUcSAisW3XNvNsIjkTpaMBGIhBbCY
 bnHmlJLFBUzxCoNMWmLG7QEzVSnxd1L4IwR3thrvYn2s648sG8Blca7DE
 7/3Ncndvm4X+CJW2ZItgTkMVArh4h0RuGavNUwdB7kgftJpRX3cm1sf8F
 DcEKM5q8CwyLc17F8YLZr0Ic4i9US+MxPP5ns9TNQafFLs2C8/r7PpnBe
 tYIzhtMC5Iuu6NlJJEz1bWTOt2MijaBS0LPIholgxz2CLdwMmpQ/ZPJZo
 oEuoKEyJatSevFrsrpGhwXhV+RZthMsu2LGqxo7fY4UdHlC4BXxOkISNX Q==;
X-CSE-ConnectionGUID: 1bo9JnZ5Qwyssi2lrEeRAQ==
X-CSE-MsgGUID: bGl72semQ2mnIfy3F4rJfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62573644"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="62573644"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 00:35:44 -0700
X-CSE-ConnectionGUID: F+Vh5v/qQTyTb2bltHNr0g==
X-CSE-MsgGUID: Bf08JVGvSxyGXj2L/++rLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="182882367"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 00:35:43 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 09/10] drm/i915/display: Add vblank_start adjustment logic for
 always-on VRR TG
Date: Wed, 15 Oct 2025 12:52:16 +0530
Message-ID: <20251015072217.1710717-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251015072217.1710717-1-ankit.k.nautiyal@intel.com>
References: <20251015072217.1710717-1-ankit.k.nautiyal@intel.com>
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

Adjust the crtc_vblank_start using Vmin Vtotal - guardband only when
intel_vrr_always_use_vrr_tg() is true. Also update the
pipe_mode->crtc_vblank_start which is derived from
adjusted_mode->crtc_vblank_start in intel_crtc_compute_pipe_mode().

To maintain consistency between the computed and readout paths, also update
the readout logic in intel_vrr_get_config() to overwrite crtc_vblank_start
with the same value (vtotal - guardband) on platforms with always-on
VRR TG. pipe_mode is derived

This also paves way for guardband optimization, by handling the movement of
the crtc_vblank_start for platforms that have VRR TG always active.

v2: Drop the helper and add the adjustment directly to
    intel_vrr_compute_guardband(). (Ville)
v3: Use adjusted_mode.crtc_vtotal instead of vmin and include the readout
    logic to keep the compute and readout paths in sync. (Ville)
v4: Also set pipe_mode->crtc_vblank_start as its derived from
    adjusted_mode. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 8d71d7dc9d12..1cfcc31bd899 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -436,7 +436,8 @@ intel_vrr_max_guardband(struct intel_crtc_state *crtc_state)
 void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	struct drm_display_mode *pipe_mode = &crtc_state->hw.pipe_mode;
 
 	if (!intel_vrr_possible(crtc_state))
 		return;
@@ -444,6 +445,13 @@ void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
 	crtc_state->vrr.guardband = min(crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay,
 					intel_vrr_max_guardband(crtc_state));
 
+	if (intel_vrr_always_use_vrr_tg(display)) {
+		adjusted_mode->crtc_vblank_start  =
+			adjusted_mode->crtc_vtotal - crtc_state->vrr.guardband;
+		pipe_mode->crtc_vblank_start =
+			adjusted_mode->crtc_vblank_start;
+	}
+
 	if (DISPLAY_VER(display) < 13)
 		crtc_state->vrr.pipeline_full =
 			intel_vrr_guardband_to_pipeline_full(crtc_state,
@@ -821,6 +829,19 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 	 */
 	if (crtc_state->vrr.enable)
 		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
+
+	/*
+	 * For platforms that always use the VRR timing generator, we overwrite
+	 * crtc_vblank_start with vtotal - guardband to reflect the delayed
+	 * vblank start. This works for both default and optimized guardband values.
+	 * On other platforms, we keep the original value from
+	 * intel_get_transcoder_timings() and apply adjustments only in VRR-specific
+	 * paths as needed.
+	 */
+	if (intel_vrr_always_use_vrr_tg(display))
+		crtc_state->hw.adjusted_mode.crtc_vblank_start =
+			crtc_state->hw.adjusted_mode.crtc_vtotal -
+			crtc_state->vrr.guardband;
 }
 
 int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state)
-- 
2.45.2

