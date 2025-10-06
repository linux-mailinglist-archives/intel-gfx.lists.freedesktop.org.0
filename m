Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AF4BBD0C9
	for <lists+intel-gfx@lfdr.de>; Mon, 06 Oct 2025 06:42:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E380F10E3C0;
	Mon,  6 Oct 2025 04:42:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B3oCKX7p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25CF710E3BB;
 Mon,  6 Oct 2025 04:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759725746; x=1791261746;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0+lj+L/3LErUr9enCkzFRYSV9Lf83biJcOf74BblguU=;
 b=B3oCKX7ppXZ1yVIyV5R06pG1RF4yeuXQtp8H5jT10UP8OAppPR7Wb/or
 YPb3WmN5CbJJadDaOBAdRhn4woIq5mCiBBQZ3MSRugKjbNiXLhM2JclKO
 ilLe+zFhlpbiYOGdN3wrKdfmzg/R3C1sfUVtT4/JKdI4NDrVY+H8Ljv9Y
 gykqYT1ue/pvuoC5k2IRt5GfM4AI8fGjh93VyR9zynRGTPkp8i6m9wS23
 BRtHSjLuX4SFq9shalSxvAOn9/wPBheNIxDNBGV9nHUswP9iuPaCWYMhs
 vzCQse9sGrXR8IxrGvt7amwfeJLwUopEmRiTE1MwORjloOKrC+Ix8V9tJ Q==;
X-CSE-ConnectionGUID: YboNV76wTYWcTJpR7SauAA==
X-CSE-MsgGUID: StXmxjvuT0CXQVH55hRVfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11573"; a="61996422"
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="61996422"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2025 21:42:26 -0700
X-CSE-ConnectionGUID: Kuie8OSzR6638o527bcukA==
X-CSE-MsgGUID: j0lnLR/DQ/6bp7VN2VBPLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,319,1751266800"; d="scan'208";a="179063027"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2025 21:42:25 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com
Subject: [PATCH 12/16] drm/i915/vrr: Recompute vblank_start for platforms with
 always-on VRR TG
Date: Mon,  6 Oct 2025 09:58:48 +0530
Message-ID: <20251006042852.263249-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
References: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
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

