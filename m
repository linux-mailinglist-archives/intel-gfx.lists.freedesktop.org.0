Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A6CBD740C
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Oct 2025 06:30:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2805C10E53C;
	Tue, 14 Oct 2025 04:29:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UjNzQx/8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B46E410E538;
 Tue, 14 Oct 2025 04:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760416195; x=1791952195;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=m8F6LZdFqCmwF4rgYVHI36HwO2bKb+LY0xjkd5d5dyw=;
 b=UjNzQx/8WK7LMUlPbrW4DY4qYXwVad06TKOTHplyEJG8K/NLB+940Ge7
 dOYAOP2Ds0V3gRq5u3CX2E79zZludaeA8JDSXcv3bjWHTpG8D/g63ySNp
 LTBgVCk8eSWIPfMekWfW5jh1lw+e0qrKtmrT3ZvOG6M+cCCcwGnKGqXPL
 V1WQvIEuvf6JXB/T3wfc9HxzRy4FlKGnBz6tw5nlIE2EZqUwLl+Zk7ozh
 zFMgCkInUsGBvDbrA24QF96FafnvRG88sAg9LDGTPqqBXmtkHU93FAet1
 3ieMyw1gFLN0Gwx8nOqtB7ZwX4L/YzKHnnPXVWcixNMBtFPSj93GNp0Os g==;
X-CSE-ConnectionGUID: 4OGbhM4+RD+CUNFmsUZuCA==
X-CSE-MsgGUID: 7VUMAV1GQge5p3zxP9952A==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="88029792"
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="88029792"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 21:29:55 -0700
X-CSE-ConnectionGUID: rorUhurrTGiYERSMLph7NA==
X-CSE-MsgGUID: l62dcgA8RNG7bVDqVJZR2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="212399845"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 21:29:54 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 7/8] drm/i915/display: Add vblank_start adjustment logic for
 always-on VRR TG
Date: Tue, 14 Oct 2025 09:46:27 +0530
Message-ID: <20251014041628.1291117-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251014041628.1291117-1-ankit.k.nautiyal@intel.com>
References: <20251014041628.1291117-1-ankit.k.nautiyal@intel.com>
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

