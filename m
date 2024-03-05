Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7290E871887
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 09:47:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C8F0112955;
	Tue,  5 Mar 2024 08:47:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k9B335GT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F0A8112955
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 08:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709628456; x=1741164456;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NlTwewarQDherdK37fYzgVzzelU0UAjWPs0NUHMsz5w=;
 b=k9B335GTPPZfxUqAjnlZRH0Gomv+x1K78MBzY3J7ShPtjzgBKBN4QlI6
 WAk3F5U1Ba3ZpoHc8apTLUz3BC8nV4Gn4iDAMyXm4Io9cividmigT8eW9
 xe5o1QB5GJy6qrDmquj1BzkpXMYB+bZr5MXsWOUna31Z2Blc3S0ZBfztG
 1UwJUpO2/+yeiRPLB3DOqiy2tUTdk7bYqSyOdZkRPw3lM6vsZtHIJ8Nt2
 tMjk6VAu0+vV3FT68u/QRtVfoa3aJGSo+QJ3mwGCaW0PM9Kr/hWr9Im6Z
 veFmop5eo+8R4ZzmOqflk7LVtZNYqRimba8zklyEvdg1n15ebGgGrFsQv A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="7112466"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; 
   d="scan'208";a="7112466"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2024 00:47:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="827773663"
X-IronPort-AV: E=Sophos;i="6.06,205,1705392000"; d="scan'208";a="827773663"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 05 Mar 2024 00:47:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 05 Mar 2024 10:47:33 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915: Precompute disable_pipes bitmask in
 intel_commit_modeset_disables()
Date: Tue,  5 Mar 2024 10:47:28 +0200
Message-ID: <20240305084730.19182-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240305084730.19182-1-ville.syrjala@linux.intel.com>
References: <20240305084730.19182-1-ville.syrjala@linux.intel.com>
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
index ab2f52d21bad..d1c947a310a3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -6768,9 +6768,10 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 
 static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 {
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
-	u32 handled = 0;
+	u8 disable_pipes = 0;
 	int i;
 
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
@@ -6778,21 +6779,24 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
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
@@ -6807,22 +6811,23 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 
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

