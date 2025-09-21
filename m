Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6056B8D504
	for <lists+intel-gfx@lfdr.de>; Sun, 21 Sep 2025 06:49:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52F4310E336;
	Sun, 21 Sep 2025 04:49:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I0PRDqZs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E8A210E336;
 Sun, 21 Sep 2025 04:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758430147; x=1789966147;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=i//fpKgl0NgySzin8lN7rdu89QlhONbKaRs+dTdiwEQ=;
 b=I0PRDqZseB91HglHcoq83/QHte0IFj0wknR9L0SgBlsxwZ/yLHOkekMd
 Xi6MkfD+OCX7TVaTCkITZeaGYyiGdirSb0L7oUp3DpyalGyWKNJFRceVg
 YQXf53o3N1gYFq9VNcCKjOlvD1RYnZo0WtkICtFbVmGADU0mEXEsiwyAn
 seHWA7VZedXKeBsST7MtaXw5vQB/rz/2VT1UgQc0AgfkKKv3G1ovaeUMh
 1DlRr2hHoJT7T8ABuH8OSzE7MpMhHqwqE8Q4xGxHIWjV+m0XqiavW6bb2
 WcM6ZklQTNCsNQPXaI/2df2Mqxwf9sKv46twdDTRYtCNdsjwKZFIT0Gy4 w==;
X-CSE-ConnectionGUID: QnkMGmfQTIqlvBDYGlbyCQ==
X-CSE-MsgGUID: vZdDpuInTrKkhJhcx8CCbg==
X-IronPort-AV: E=McAfee;i="6800,10657,11559"; a="72154737"
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="72154737"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:49:06 -0700
X-CSE-ConnectionGUID: Bmdkm1WhRkeLxvV/4GFhhA==
X-CSE-MsgGUID: DumT72EfR92cANeeNT+cTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,282,1751266800"; d="scan'208";a="176097712"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2025 21:49:04 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 4/9] drm/i915/vrr: Use set_context_latency instead of
 intel_vrr_real_vblank_delay()
Date: Sun, 21 Sep 2025 10:05:30 +0530
Message-ID: <20250921043535.2012978-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
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

The helper intel_vrr_real_vblank_delay() was added to account for the
SCL lines for TGL where we do not have the TRANS_SET_CONTEXT_LATENCY.

Now, since we already are tracking the SCL with new member
`set_context_latency` use it directly instead of the helper.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 9e007aab1452..698b33b5b326 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -79,12 +79,6 @@ intel_vrr_check_modeset(struct intel_atomic_state *state)
 	}
 }
 
-static int intel_vrr_real_vblank_delay(const struct intel_crtc_state *crtc_state)
-{
-	return crtc_state->hw.adjusted_mode.crtc_vblank_start -
-		crtc_state->hw.adjusted_mode.crtc_vdisplay;
-}
-
 static int intel_vrr_extra_vblank_delay(struct intel_display *display)
 {
 	/*
@@ -102,7 +96,7 @@ int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 
-	return intel_vrr_real_vblank_delay(crtc_state) +
+	return crtc_state->set_context_latency +
 		intel_vrr_extra_vblank_delay(display);
 }
 
@@ -263,7 +257,7 @@ static int intel_vrr_hw_value(const struct intel_crtc_state *crtc_state,
 	if (DISPLAY_VER(display) >= 13)
 		return value;
 	else
-		return value - intel_vrr_real_vblank_delay(crtc_state);
+		return value - crtc_state->set_context_latency;
 }
 
 /*
@@ -761,9 +755,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
 
 		if (DISPLAY_VER(display) < 13) {
 			/* undo what intel_vrr_hw_value() does when writing the values */
-			crtc_state->vrr.flipline += intel_vrr_real_vblank_delay(crtc_state);
-			crtc_state->vrr.vmax += intel_vrr_real_vblank_delay(crtc_state);
-			crtc_state->vrr.vmin += intel_vrr_real_vblank_delay(crtc_state);
+			crtc_state->vrr.flipline += crtc_state->set_context_latency;
+			crtc_state->vrr.vmax += crtc_state->set_context_latency;
+			crtc_state->vrr.vmin += crtc_state->set_context_latency;
 
 			crtc_state->vrr.vmin += intel_vrr_vmin_flipline_offset(display);
 		}
-- 
2.45.2

