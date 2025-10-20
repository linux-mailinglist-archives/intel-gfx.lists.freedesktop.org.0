Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDD9BF3030
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Oct 2025 20:50:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1BC810E4B7;
	Mon, 20 Oct 2025 18:50:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S+rGv+Nn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E14910E4B7;
 Mon, 20 Oct 2025 18:50:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760986250; x=1792522250;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/5f6BQty/6BPfqONjMKbI1qqLHYDFGCv5sVbpLRbeJ8=;
 b=S+rGv+NnLi341ysnBZvbUkGce0+EwAImg3lHklRdD2711p83WbtvLaF+
 4W7GT6ewTQEh9pzL8AFWbuV3j6opsPpT0I+qtmgIB78BHQ+FrCgBZxQwz
 augeO3dO4PqgUMaElFWsqm2p5AyWcoualGhfSCFB4cG+jezZD41XTqqK/
 1mV0LMnIJp0FGJboC2YOTqiDbJ/YUy6t5HaM0Cv8k81DOnsZBmtI8ueiv
 lqGiP7E9GLrT5Zedd21mp2dIimulCQy3T9Sqish4Jn+ia+NfyGuUNsaTL
 0SVE8Qgb52uKMXhTulUq8QBgGWLPvci5+7A2SzfrJSeuf8UCilYVRskXJ w==;
X-CSE-ConnectionGUID: OtoRT/XkTC63iMnDKjwpQw==
X-CSE-MsgGUID: pgBsNe7nS3ibDnbufzphRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63203963"
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="63203963"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:50:50 -0700
X-CSE-ConnectionGUID: fEpv1AxpTrGPzsHGeQZI4w==
X-CSE-MsgGUID: o0jNQ2iwTgeAQEejyQy0lQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,243,1754982000"; d="scan'208";a="214362154"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.58])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2025 11:50:49 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 02/22] drm/i915/lrr: Include SCL in lrr_params_changed()
Date: Mon, 20 Oct 2025 21:50:18 +0300
Message-ID: <20251020185038.4272-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

If SCL is changing we need to take the LRR codepath to update
it during a fastset. Account for that in lrr_params_changed().

The current code will only notice the SCL change if the position
of the delayed vblank also changes. But that might not happen
when using the VRR timing generator because the delayed vblank
is then defined by the guardband instead of the SCL.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 09d3eb422ad4..490b4f2907e1 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5711,12 +5711,16 @@ static int intel_modeset_checks(struct intel_atomic_state *state)
 	return 0;
 }
 
-static bool lrr_params_changed(const struct drm_display_mode *old_adjusted_mode,
-			       const struct drm_display_mode *new_adjusted_mode)
+static bool lrr_params_changed(const struct intel_crtc_state *old_crtc_state,
+			       const struct intel_crtc_state *new_crtc_state)
 {
+	const struct drm_display_mode *old_adjusted_mode = &old_crtc_state->hw.adjusted_mode;
+	const struct drm_display_mode *new_adjusted_mode = &new_crtc_state->hw.adjusted_mode;
+
 	return old_adjusted_mode->crtc_vblank_start != new_adjusted_mode->crtc_vblank_start ||
 		old_adjusted_mode->crtc_vblank_end != new_adjusted_mode->crtc_vblank_end ||
-		old_adjusted_mode->crtc_vtotal != new_adjusted_mode->crtc_vtotal;
+		old_adjusted_mode->crtc_vtotal != new_adjusted_mode->crtc_vtotal ||
+		old_crtc_state->set_context_latency != new_crtc_state->set_context_latency;
 }
 
 static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_state,
@@ -5742,8 +5746,7 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
 				   &new_crtc_state->dp_m_n))
 		new_crtc_state->update_m_n = false;
 
-	if (!lrr_params_changed(&old_crtc_state->hw.adjusted_mode,
-				&new_crtc_state->hw.adjusted_mode))
+	if (!lrr_params_changed(old_crtc_state, new_crtc_state))
 		new_crtc_state->update_lrr = false;
 
 	if (intel_crtc_needs_modeset(new_crtc_state))
-- 
2.49.1

