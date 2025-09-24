Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69013B99889
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 13:05:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8E0C10E704;
	Wed, 24 Sep 2025 11:05:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NSF9v56D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B87D10E6F7;
 Wed, 24 Sep 2025 11:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758711936; x=1790247936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PnAHJwg0QzjdGneRLn8GDL0s4SwIY9ypMsl9zBvIaRY=;
 b=NSF9v56DBMfbPcWSmvMbrmKJv7DNrtmmgLWxNlsSf+XfsihbqvQIQQAP
 nbjUaTctLIpyE6Q1Dxoy78Qy5SPkkZG0gh5Ws36JPzx3aiZP6GkTHEJ/H
 p2dxRraRWevLAbMU2EiRPdUQErZ0l52y2fhb4VP15mUO9HXmDiP6v+Vro
 JJ6GfueNsn4QwH5cPjBN3MR9/s1Xh7wU+sDQ6/JnL9kn3nwfWC4vDLuoT
 GW7vMuSqJYIzZh/zDMYdm+lENrXnNXxJrj1kpofdlbxLHZJdUppyHm68t
 3Zm3vheayl25rQC3/PruUereWPVRjmCtrB6pvlcORsjunINWf9b59H0iP g==;
X-CSE-ConnectionGUID: fccWSFJqRGCVZjrUeN6qJA==
X-CSE-MsgGUID: N2ECTIWlQ9We7gWsdGIyQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="71247829"
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="71247829"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 04:04:56 -0700
X-CSE-ConnectionGUID: ZJo1qcwWTQ6X8vvnvcnNcA==
X-CSE-MsgGUID: LPW2HW1wR5eRWr0QIFjEFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,290,1751266800"; d="scan'208";a="176944087"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2025 04:04:54 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/9] drm/i915/vrr: Use set_context_latency instead of
 intel_vrr_real_vblank_delay()
Date: Wed, 24 Sep 2025 16:21:23 +0530
Message-ID: <20250924105129.2771196-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
References: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
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

