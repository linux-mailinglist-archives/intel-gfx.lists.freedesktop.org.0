Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C56EFBA281C
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 08:13:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5982010E339;
	Fri, 26 Sep 2025 06:13:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aQgMBd1g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9EF2010E9DC;
 Fri, 26 Sep 2025 06:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758867201; x=1790403201;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rtmqEdpmWUQcIYO4b3duegk2Eq9kWiVQZFed+YW9314=;
 b=aQgMBd1gLvSQ1s/NrD5WdONcLvhlx4fOzCguGRE8KI6NEzV2pqtaDuoo
 +j2C0D+jJXfnTHqePg0NOIgRfcSKOhJC+QQ8zHnMHUnmduBZXujbmunEq
 MPsWXkOHxdgMLrKnGiB0Tzn0a90l2u6CbM3VJsThfBePtm6+kjzRdeM3c
 lnjxCrkI8qZRIFpOAY/V3AQfJc3QwAEDnb/3HWZz7EefUCVsiD4GgrfLt
 Z+y7UkNiMM1OVYL5DvlBy2AiVaZm8pHnHPxMrXUMTb96NQj6//IkSz/Qv
 Cwe8AOv4CHfLxydreE1V7RKuqIzgyZozy2KUaG9IxpXiWWlvj2sgxnIap A==;
X-CSE-ConnectionGUID: nX1WG3OHTmWgz6SRA9b9HA==
X-CSE-MsgGUID: A5Ds4BC9Q7qxLx+BL3ADGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65007606"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65007606"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:13:20 -0700
X-CSE-ConnectionGUID: ZkY8JJhbQbaMWXYeDGxsOw==
X-CSE-MsgGUID: 3894s/7vRpufMM4iDIu27Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,294,1751266800"; d="scan'208";a="177092931"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2025 23:13:20 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 12/14] drm/i915/vrr: Prepare for movement of vblank start for
 optimized guardband
Date: Fri, 26 Sep 2025 11:29:33 +0530
Message-ID: <20250926055935.3532568-13-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250926055935.3532568-1-ankit.k.nautiyal@intel.com>
References: <20250926055935.3532568-1-ankit.k.nautiyal@intel.com>
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

Currently, the guardband is computed as: vmin - vdisplay, because the
guardband matches the length of the vblank interval. We then make sure
that this value is atmost equal to the max guardband with SCL and other
delays taken into account.

However, with the optimized/reduced guardband logic, the delayed vblank
will be  positioned further away from the undelayed vblank. So with the
optimization enabled, the guardband should instead be computed as:
vmin - vblank_start.

Update the guardband calculation in intel_vrr_compute_config_late() to use
vblank_start when optimization is enabled.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 00af11efe59a..efa8fb8f012c 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -443,12 +443,17 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+	int guardband;
 
 	if (!intel_vrr_possible(crtc_state))
 		return;
 
-	crtc_state->vrr.guardband = min(crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay,
-					intel_vrr_max_guardband(crtc_state));
+	if (intel_vrr_use_optimized_guardband(crtc_state))
+		guardband = crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
+	else
+		guardband = crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay;
+
+	crtc_state->vrr.guardband = min(guardband, intel_vrr_max_guardband(crtc_state));
 
 	if (DISPLAY_VER(display) < 13)
 		crtc_state->vrr.pipeline_full =
-- 
2.45.2

