Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B680FBC83C7
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 11:14:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E16610E99E;
	Thu,  9 Oct 2025 09:14:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YzHxPy/1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E90310E998;
 Thu,  9 Oct 2025 09:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760001274; x=1791537274;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0+lj+L/3LErUr9enCkzFRYSV9Lf83biJcOf74BblguU=;
 b=YzHxPy/1gZqaWWh0J+R5BznzZSPt9+6CrcvcaM3NufZfYFMM2p99TGfH
 PQsYPfE1mQ/x8lBg3nqaqa2api55gDZ/XzaySQ69yKOEN2bbZzURZMzgP
 U/h/h18fkn+pD9AicUlV//YLwITFepKAzsHWJ3ZM/MbYK5Jt5Is7cNgH5
 OL87gv6hoz75yWMDiFkj37Dj5H9h9zIP2EFPHL1wbXPC9FCnEDrvATZx3
 cgY3rJU7KJbMwHrR+d9dstoCwkyQRdntQV84h07xOZOROa9V6HDH6zSHk
 wjrDD/l5roVGMXaJxRa0r30+tRsoquo4oMqAslvFHiGbSm2R7uFunfuR8 w==;
X-CSE-ConnectionGUID: cTZjCaAMSruFKtAhBj81+w==
X-CSE-MsgGUID: Hfd/AZT3SGKB+TecPZJ3HQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62123496"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62123496"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 02:14:33 -0700
X-CSE-ConnectionGUID: T3WQ2+fOTU26eoBv+VljIQ==
X-CSE-MsgGUID: tZHa9skzR8S0oISwsdeIJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="179918074"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 02:14:29 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 6/8] drm/i915/vrr: Recompute vblank_start for platforms with
 always-on VRR TG
Date: Thu,  9 Oct 2025 14:31:00 +0530
Message-ID: <20251009090102.850344-7-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
References: <20251009090102.850344-1-ankit.k.nautiyal@intel.com>
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

