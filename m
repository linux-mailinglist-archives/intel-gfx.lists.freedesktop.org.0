Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 676BABD30EF
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 14:49:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4BFC10E442;
	Mon, 13 Oct 2025 12:49:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Huf2NhPo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FBCF10E43F;
 Mon, 13 Oct 2025 12:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760359763; x=1791895763;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0+lj+L/3LErUr9enCkzFRYSV9Lf83biJcOf74BblguU=;
 b=Huf2NhPoVlQHRkquZ2Dm9/6xf/ySBcLwrCJUzH7D9gbjtl7dfvRG1bCZ
 FxWyrK5OXCVREI+QZOHQbjCN5NeyU+myqOJGbHEq4hJ/k/0E7+FjcLW/7
 0zhiXF8x7kTLHoOQ6N3+yd6bD9ihnyWmJgdA7Onp+HVC4bpDx8Ue0dwyX
 10XTCRTfY3lWrGLOtmgElsToiOmi3R6TXTTOnVCKyKpMBfkR7fRCvF/Q4
 kOd5nSJCMTcsLvbJTU21mINZEhaUlvp0nqs2cqukcU9UCocWfbOn3V5qn
 corI1OR8Ozplm/5TbFhGzksULTSiPPTgNv1MuJ1KSNK+jygD+2ZXbGj1J Q==;
X-CSE-ConnectionGUID: 5Y7lUUcxSrW2k1buMl1kqw==
X-CSE-MsgGUID: qQcHLHjFRNuGoLizndfJGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11580"; a="85121163"
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="85121163"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 05:49:23 -0700
X-CSE-ConnectionGUID: uc9ALS73R8i4aMLHYWqLYg==
X-CSE-MsgGUID: s+C+6ze1SMGhqV3+BXiy2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,225,1754982000"; d="scan'208";a="182026882"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 05:49:20 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jouni.hogander@intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 7/8] drm/i915/vrr: Recompute vblank_start for platforms with
 always-on VRR TG
Date: Mon, 13 Oct 2025 18:05:58 +0530
Message-ID: <20251013123559.1055429-8-ankit.k.nautiyal@intel.com>
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

Currently, crtc_vblank_start is read from either the VBLANK_START register
(on pre-ADL platforms) or computed as vdisplay + set_context_latency in
intel_get_transcoder_timings().

This works when the entire vblank region after vdisplay is treated as
guardband, i.e.:
delayed vblank start = vdisplay + SCL = vtotal - guardband.

However, with optimized guardband, the guardband becomes shorter, and the
delayed vblank_start moves further away from vdisplay.

For platforms where intel_vrr_always_use_vrr_tg == false, the delayed
vblank start is only relevant in VRR mode. We retain the original
crtc_vblank_start and apply adjustments in VRR-specific paths. Evasion
logic, push clear already use vtotal - guardband directly for VRR case.

On platforms where intel_vrr_always_use_vrr_tg == true, the delayed
vblank_start is used in both fixed and VRR modes. So we need to change the
crtc_vblank_start so that fixed rr case works properly.

Therefore for the readout, we need to overwrite crtc_vblank_start
with vtotal - guardband to ensure correct behavior across both modes.

This change prepares the pipeline for optimized guardband usage by ensuring
crtc_vblank_start reflects the correct timing on platforms with always-on
VRR TG.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 8d71d7dc9d12..221b25832e56 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -821,6 +821,20 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
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
+
 }
 
 int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state)
-- 
2.45.2

