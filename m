Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDEC3A1DB30
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 18:22:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 189AC10E590;
	Mon, 27 Jan 2025 17:22:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M2x2xCFu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27BA210E591
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2025 17:22:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737998528; x=1769534528;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=yGYJoa3a7Q0LGrXPTatGzxwrtNvDRW2abTf8cNb4r94=;
 b=M2x2xCFu9qt+slaKZuxtYO54zPRB4QPzxtFHj8SSUq0xCYh0bzUPXvun
 6o0IQV+EKTT0OWeUohFreO5fEqxDGSaq6LhPjD4z5YWvP7zN2jmJzizlW
 +wOb1L7RaahXeoJ41XxvdImkYkMayquNIugne2oIVdjNgMuMG3aYbY7il
 ujusNqX1YcUAB0U8UY7isj0TAs6OQ9WNMWBTXAb9F12yrbhbzhngx6A0d
 mdlAPQnR1AorD0i/BFenuJ8ICeWoLV7tg0HeARyd8vHXfBG1Js7tZNnyy
 VOe8l063r+P0IkcwY5hL5QTDme/dNA1/MPILnKRsAis+t48CVTtTzwoMm A==;
X-CSE-ConnectionGUID: BqF7Y1xURom65/iMiZBMog==
X-CSE-MsgGUID: P0EEYr/vRP2/CVE6SOBRsA==
X-IronPort-AV: E=McAfee;i="6700,10204,11328"; a="38501383"
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="38501383"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 09:22:08 -0800
X-CSE-ConnectionGUID: n1DjwkFxSuCZxUXX/NTg1g==
X-CSE-MsgGUID: WttMWXcrSECfjpJQfC4oiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,239,1732608000"; d="scan'208";a="108610192"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 27 Jan 2025 09:22:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 27 Jan 2025 19:22:05 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/11] drm/i915: Rework joiner and Y plane dependency handling
Date: Mon, 27 Jan 2025 19:21:48 +0200
Message-ID: <20250127172156.21928-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
References: <20250127172156.21928-1-ville.syrjala@linux.intel.com>
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

The current code tries to handle joiner vs. Y planes completely
independently. That does not really work since each pipe selects
its Y planes completely independently, and any plane pulled into
the state by one of the secondary pipes needs to have the plane
on the primary pipe also included in the state (for the uapi
state copy). The current code sometimes forgets to pull in planes
that we need, leading to weird things like the Y<->UV plane link
only getting torn down from one side but not the other.

Remedy the situation by pulling in the exact same set planes
on all the joined pipes. To calculate the set we simply
look through each joined crtc and any plane in the state gets
added to the set. However due to the way the Y plane selection
works we may not be able to determine the set in one go. One
plane on one pipe may pull in a Y plane, which may have to pull
in another plane because it's not acting in the same role on
another pipe, etc. The simple approach taken here is to keep
looping and adding planes to the set until it stops growing.

I suppose if we tracked more of this Y plane stuff in the
crtc state rather than the plane state we might be able to
do it in one go. But this works, and it's not going to loop
for long anyway since we only have so many pipes and Y planes
to consider.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 104 ++++++++++---------
 1 file changed, 53 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 2b31c8f4b7cd..68ae8770dc4f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4402,31 +4402,6 @@ static bool check_single_encoder_cloning(struct intel_atomic_state *state,
 	return true;
 }
 
-static int icl_add_linked_planes(struct intel_atomic_state *state)
-{
-	struct intel_plane *plane, *linked;
-	struct intel_plane_state *plane_state, *linked_plane_state;
-	int i;
-
-	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		linked = plane_state->planar_linked_plane;
-
-		if (!linked)
-			continue;
-
-		linked_plane_state = intel_atomic_get_plane_state(state, linked);
-		if (IS_ERR(linked_plane_state))
-			return PTR_ERR(linked_plane_state);
-
-		drm_WARN_ON(state->base.dev,
-			    linked_plane_state->planar_linked_plane != plane);
-		drm_WARN_ON(state->base.dev,
-			    linked_plane_state->planar_slave == plane_state->planar_slave);
-	}
-
-	return 0;
-}
-
 static int icl_check_nv12_planes(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc)
 {
@@ -6172,44 +6147,75 @@ static bool active_planes_affects_min_cdclk(struct drm_i915_private *dev_priv)
 		IS_IVYBRIDGE(dev_priv);
 }
 
-static int intel_crtc_add_joiner_planes(struct intel_atomic_state *state,
-					struct intel_crtc *crtc,
-					struct intel_crtc *other)
+static u8 intel_joiner_affected_planes(struct intel_atomic_state *state,
+				       u8 joined_pipes)
 {
-	const struct intel_plane_state __maybe_unused *plane_state;
+	const struct intel_plane_state *plane_state;
 	struct intel_plane *plane;
-	u8 plane_ids = 0;
+	u8 affected_planes = 0;
 	int i;
 
 	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
-		if (plane->pipe == crtc->pipe)
-			plane_ids |= BIT(plane->id);
+		struct intel_plane *linked = plane_state->planar_linked_plane;
+
+		if ((joined_pipes & BIT(plane->pipe)) == 0)
+			continue;
+
+		affected_planes |= BIT(plane->id);
+		if (linked)
+			affected_planes |= BIT(linked->id);
 	}
 
-	return intel_crtc_add_planes_to_state(state, other, plane_ids);
+	return affected_planes;
 }
 
-static int intel_joiner_add_affected_planes(struct intel_atomic_state *state)
+static int intel_joiner_add_affected_planes(struct intel_atomic_state *state,
+					    u8 joined_pipes)
 {
-	struct drm_i915_private *i915 = to_i915(state->base.dev);
-	const struct intel_crtc_state *crtc_state;
-	struct intel_crtc *crtc;
-	int i;
+	u8 prev_affected_planes, affected_planes = 0;
 
-	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
-		struct intel_crtc *other;
+	/*
+	 * We want all the joined pipes to have the same
+	 * set of planes in the atomic state, to make sure
+	 * state copying always works correctly, and the
+	 * UV<->Y plane linkage is always up to date.
+	 * Keep pulling planes in until we've determined
+	 * the full set of affected plane. A bit complicated
+	 * on account of each pipe being capable of selecting
+	 * their own Y planes independently of the other pipes,
+	 * and the selection being done from the set of
+	 * inactive planes.
+	 */
+	do {
+		struct intel_crtc *crtc;
 
-		for_each_intel_crtc_in_pipe_mask(&i915->drm, other,
-						 crtc_state->joiner_pipes) {
+		for_each_intel_crtc_in_pipe_mask(state->base.dev, crtc, joined_pipes) {
 			int ret;
 
-			if (crtc == other)
-				continue;
-
-			ret = intel_crtc_add_joiner_planes(state, crtc, other);
+			ret = intel_crtc_add_planes_to_state(state, crtc, affected_planes);
 			if (ret)
 				return ret;
 		}
+
+		prev_affected_planes = affected_planes;
+		affected_planes = intel_joiner_affected_planes(state, joined_pipes);
+	} while (affected_planes != prev_affected_planes);
+
+	return 0;
+}
+
+static int intel_add_affected_planes(struct intel_atomic_state *state)
+{
+	const struct intel_crtc_state *crtc_state;
+	struct intel_crtc *crtc;
+	int i;
+
+	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
+		int ret;
+
+		ret = intel_joiner_add_affected_planes(state, intel_crtc_joined_pipe_mask(crtc_state));
+		if (ret)
+			return ret;
 	}
 
 	return 0;
@@ -6224,11 +6230,7 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
 	struct intel_crtc *crtc;
 	int i, ret;
 
-	ret = icl_add_linked_planes(state);
-	if (ret)
-		return ret;
-
-	ret = intel_joiner_add_affected_planes(state);
+	ret = intel_add_affected_planes(state);
 	if (ret)
 		return ret;
 
-- 
2.45.3

