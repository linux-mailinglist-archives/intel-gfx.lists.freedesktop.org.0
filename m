Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4702286E361
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 15:36:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0CE310F090;
	Fri,  1 Mar 2024 14:36:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e+8V8Ql5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8ABE10F088
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 14:36:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709303779; x=1740839779;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=rDX8UNAJMWCWsXKGbIoSZOjcWW/DRnpoJ4xudepMpEQ=;
 b=e+8V8Ql5V7XmGvbuiW4rTm6tOO8HnePXG1jqBE39EmptjOAILPlJO51R
 XoTaYYELRvSrqK4a809OSUz5Txej+P+lZ3tN1qAmDmpBq8h1bkSquEKPP
 OdUowAeeSzaqvTE5FcMSgDnGKy753W/6vBJevV24+izMWme9P80gA4W4j
 YYHdORaVJrAd9iWdxkOFMK0pNlyFrNsaX7WEcuQWFSUXqI1zjtshZPWa0
 vQJvzEZpx9nd8VLI2sLnAXzIcSGIxYvDEo9eEHTEEDtIUaOa3Zt9LDpXX
 p23Rs2l/DGA/Dz5REA4CYBAlCQF/tIBx4ith4ojGdh8wdPGclEVBm4Ek3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="15275842"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="15275842"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 06:36:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11000"; a="827771988"
X-IronPort-AV: E=Sophos;i="6.06,196,1705392000"; d="scan'208";a="827771988"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 01 Mar 2024 06:36:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Mar 2024 16:36:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
Subject: [PATCH 5/8] drm/i915: Precompute disable_pipes bitmask in
 intel_commit_modeset_disables()
Date: Fri,  1 Mar 2024 16:35:57 +0200
Message-ID: <20240301143600.1334-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
References: <20240301143600.1334-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Copy the pipe bitmask based approach skl_commit_modeset_enables()
into intel_commit_modeset_disables(). This avoids doing so many
duplicated checks in all the loops, and also let's us WARN at the
end if we screwed up somewhere and forgot to disable some pipe.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 27 ++++++++++++--------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 8cc5de31c1dd..2351ee52d16e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6775,9 +6775,10 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 
 static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 {
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
-	u32 handled = 0;
+	u8 disable_pipes = 0;
 	int i;
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
@@ -6785,21 +6786,24 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		if (!intel_crtc_needs_modeset(new_crtc_state))
 			continue;
 
+		/*
+		 * Needs to be done even for pipes
+		 * that weren't enabled previously.
+		 */
 		intel_pre_plane_update(state, crtc);
 
 		if (!old_crtc_state->hw.active)
 			continue;
 
 		intel_crtc_disable_planes(state, crtc);
+
+		disable_pipes |= BIT(crtc->pipe);
 	}
 
 	/* Only disable port sync and MST slaves */
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
-		if (!intel_crtc_needs_modeset(new_crtc_state))
-			continue;
-
-		if (!old_crtc_state->hw.active)
+		if ((disable_pipes & BIT(crtc->pipe)) == 0)
 			continue;
 
 		/* In case of Transcoder port Sync master slave CRTCs can be
@@ -6814,22 +6818,23 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 
 		intel_old_crtc_state_disables(state, old_crtc_state,
 					      new_crtc_state, crtc);
-		handled |= BIT(crtc->pipe);
+
+		disable_pipes &= ~BIT(crtc->pipe);
 	}
 
 	/* Disable everything else left on */
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
-		if (!intel_crtc_needs_modeset(new_crtc_state) ||
-		    (handled & BIT(crtc->pipe)))
-			continue;
-
-		if (!old_crtc_state->hw.active)
+		if ((disable_pipes & BIT(crtc->pipe)) == 0)
 			continue;
 
 		intel_old_crtc_state_disables(state, old_crtc_state,
 					      new_crtc_state, crtc);
+
+		disable_pipes &= ~BIT(crtc->pipe);
 	}
+
+	drm_WARN_ON(&i915->drm, disable_pipes);
 }
 
 static void intel_commit_modeset_enables(struct intel_atomic_state *state)
-- 
2.43.0

