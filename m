Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3B1FA32C18
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 17:43:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7525E10E922;
	Wed, 12 Feb 2025 16:43:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R+TdlsS3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0539310E922
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2025 16:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739378622; x=1770914622;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dzoaRbc+v9IwcWu6ynkZ59qB3Q+CyHV/gAVVD+ZtbyE=;
 b=R+TdlsS3hbef/OLaIoeLWAWUstKrGk6I+SFXSI6OYz65ZjUkpZ/7bHB0
 ul/jAlnrtHQA34eHNU4kik9RIR1XOUqJrcGFUwScxj/BooxxQd5jzhy1A
 kP23eCujg75KKieHyTm11ykUyw8il2Au1VzCXx3lWfIdZ7XRnPRmfBXwj
 BRYhmE0HuLq+H1mtaCJ74y1Al7r9W9QTnkx66cVivu6S8vpNwqwWqoXBp
 PyZ/0utDp77ZnCC0XHiTVsu6im4gHn8DREb9JlOJ2dFte2m/y+Tnhi46q
 CoiBalNbfTja/rYB6eBu1etYyVj42zps31j4UAGIsAys/lOz1H5Y+645H w==;
X-CSE-ConnectionGUID: A5V66PSzRqSWk/EXA0r3SA==
X-CSE-MsgGUID: xB6TqhT+SaWcEm5+fFbDvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="62514977"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="62514977"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 08:43:42 -0800
X-CSE-ConnectionGUID: a351mykgTeC1kUEF4oGtiQ==
X-CSE-MsgGUID: 8T5lc3bmRFmH0tK5y5culg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113082613"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 08:43:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 18:43:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Subject: [PATCH v2 03/10] drm/i915: Rework joiner and Y plane dependency
 handling
Date: Wed, 12 Feb 2025 18:43:23 +0200
Message-ID: <20250212164330.16891-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250212164330.16891-1-ville.syrjala@linux.intel.com>
References: <20250212164330.16891-1-ville.syrjala@linux.intel.com>
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

Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 104 ++++++++++---------
 1 file changed, 53 insertions(+), 51 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 22bf46be2ca9..3b4c7ab35592 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4410,31 +4410,6 @@ static bool check_single_encoder_cloning(struct intel_atomic_state *state,
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
@@ -6185,44 +6160,75 @@ static bool active_planes_affects_min_cdclk(struct drm_i915_private *dev_priv)
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
+	 * the full set of affected planes. A bit complicated
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
@@ -6237,11 +6243,7 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
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

