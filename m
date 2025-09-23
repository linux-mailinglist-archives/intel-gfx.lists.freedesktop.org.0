Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D216B95FFB
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Sep 2025 15:24:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 116A310E627;
	Tue, 23 Sep 2025 13:24:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cvCGgD/+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BEA710E608;
 Tue, 23 Sep 2025 13:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758633850; x=1790169850;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PnAHJwg0QzjdGneRLn8GDL0s4SwIY9ypMsl9zBvIaRY=;
 b=cvCGgD/++UXMyftHCkZ6VbIHfLuvFFJu4CssRkW8GWkjZPnfe60PDpTj
 v86owZ16OrwBFyIMN8j6fHoEz3/zi0WJcGqKPhlr2ut3F+x2CWhIJGHF9
 aBqmT5U8fDNRK5fnhc4LbvaE659iqW+w+1/IGh9ubmM2SSGItm8orGDLc
 pDQU/W+f3X9V4AEhBTkqNLze7r7nBszH+kkyKcGbbhzMGTM0RwbnAa5x4
 PEn2RZewTUEWjEV/yuXABnXY+Vm5eGn2ibxXZ7QdSaec1KOZzZo45rQBk
 GZdd1HMaNERgK0JkvDYXiMbJwA/UWLb4DkF5+PxLx2Cf4LzqMn4zdHCLl g==;
X-CSE-ConnectionGUID: KsS89JVaQH+EAat/RhkQWw==
X-CSE-MsgGUID: qm3DEEdsRa2TKptR1+nM4g==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="48480540"
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="48480540"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 06:24:10 -0700
X-CSE-ConnectionGUID: V6sTi3DARUm+0hToBAuAfg==
X-CSE-MsgGUID: k7qXbXcLRB+VYVjuhOcRSg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,288,1751266800"; d="scan'208";a="207689548"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2025 06:24:08 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/9] drm/i915/vrr: Use set_context_latency instead of
 intel_vrr_real_vblank_delay()
Date: Tue, 23 Sep 2025 18:40:37 +0530
Message-ID: <20250923131043.2628282-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
References: <20250923131043.2628282-1-ankit.k.nautiyal@intel.com>
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

The helper intel_vrr_real_vblank_delay() was added to account for the
SCL lines for TGL where we do not have the TRANS_SET_CONTEXT_LATENCY.

Now, since we already are tracking the SCL with new member
`set_context_latency` use it directly instead of the helper.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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

