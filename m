Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 54E7B4095AB
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Sep 2021 16:45:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B087C6ECAF;
	Mon, 13 Sep 2021 14:45:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87F176ECAF
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Sep 2021 14:45:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10105"; a="201871153"
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="201871153"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2021 07:44:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,290,1624345200"; d="scan'208";a="551697461"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 13 Sep 2021 07:44:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Sep 2021 17:44:46 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 13 Sep 2021 17:44:26 +0300
Message-Id: <20210913144440.23008-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
References: <20210913144440.23008-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 02/16] drm/i915: Disable all planes before
 modesetting any pipes
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

Let's disable planes on all pipes affected by the modeset before
we start doing the actual modeset. This means we have less
random planes enabled during the modeset, and it also mirrors
what we already do when enabling pipes on skl+ since we enable
planes on all pipes as the very last step. As a bonus we also
nuke a bunch og bigjoiner special casing.

I've occasionally pondered about going even furher here and
doing the pre_plane_update() stuff for all pipes first, then
actually disabling the planes, and finally running the rest
of the modeset sequence. This would potentially allow
parallelizing all the extra vblank waits across multiple pipes,
and would make the plane disable even more atomic. But let's
go one step a time here.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++++-----------
 1 file changed, 13 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index cd150512d275..afa26911c236 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9785,18 +9785,13 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
 
 	drm_WARN_ON(&dev_priv->drm, old_crtc_state->bigjoiner_slave);
 
-	intel_crtc_disable_planes(state, crtc);
-
 	/*
 	 * We still need special handling for disabling bigjoiner master
 	 * and slaves since for slave we do not have encoder or plls
 	 * so we dont need to disable those.
 	 */
-	if (old_crtc_state->bigjoiner) {
-		intel_crtc_disable_planes(state,
-					  old_crtc_state->bigjoiner_linked_crtc);
+	if (old_crtc_state->bigjoiner)
 		old_crtc_state->bigjoiner_linked_crtc->active = false;
-	}
 
 	/*
 	 * We need to disable pipe CRC before disabling the pipe,
@@ -9823,6 +9818,18 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 	u32 handled = 0;
 	int i;
 
+	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
+					    new_crtc_state, i) {
+		if (!intel_crtc_needs_modeset(new_crtc_state))
+			continue;
+
+		if (!old_crtc_state->hw.active)
+			continue;
+
+		intel_pre_plane_update(state, crtc);
+		intel_crtc_disable_planes(state, crtc);
+	}
+
 	/* Only disable port sync and MST slaves */
 	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
 					    new_crtc_state, i) {
@@ -9841,7 +9848,6 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		    !intel_dp_mst_is_slave_trans(old_crtc_state))
 			continue;
 
-		intel_pre_plane_update(state, crtc);
 		intel_old_crtc_state_disables(state, old_crtc_state,
 					      new_crtc_state, crtc);
 		handled |= BIT(crtc->pipe);
@@ -9855,14 +9861,6 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 		    old_crtc_state->bigjoiner_slave)
 			continue;
 
-		intel_pre_plane_update(state, crtc);
-		if (old_crtc_state->bigjoiner) {
-			struct intel_crtc *slave =
-				old_crtc_state->bigjoiner_linked_crtc;
-
-			intel_pre_plane_update(state, slave);
-		}
-
 		if (old_crtc_state->hw.active)
 			intel_old_crtc_state_disables(state, old_crtc_state,
 						      new_crtc_state, crtc);
-- 
2.32.0

