Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CEA0889C8C
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 12:23:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E10A10E7AB;
	Mon, 25 Mar 2024 11:23:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bqLwHSuL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E282310E1AC
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 11:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711365814; x=1742901814;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Tk7x5mmO94sAOBx6R9grkNK1u+SFdrZ0ppcPcahTOno=;
 b=bqLwHSuLM6iwmD0cMjecGsoiK809OxOzOe3Sk8EXIj7Q+TEdF2S0Lm3b
 LN6gcpJT30MfCxnWhRT9NAsw2Io/yMUlOD/8sCvZKeul2JGXNSRTo9hJJ
 X66t+aXfguUWFSa3Lyrc6GKn02Z6HtXDjXd/qdlPsydCXE07CB2JCAzph
 eSoOnxqHzGxVWsoohnEvX0MtLDFpWz8/nVpvU6VolW3wt+ZRAiNdsDHsp
 cKL4WuKTZXOSE05Hrqd/yZ6HHNAdJhTeXS2VR/QFyyTR1afEEV7TwCxcI
 pWFoMiIw/BRkFklsgK7RrzY+9u+zdWHWG8mWkziMYlY9z/AvTbrdqQxpP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11023"; a="6219231"
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; 
   d="scan'208";a="6219231"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2024 04:23:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,153,1708416000"; d="scan'208";a="15500467"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by fmviesa010.fm.intel.com with ESMTP; 25 Mar 2024 04:23:32 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com, Stanislav.Lisovskiy@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 1/4] drm/i915: Update mbus in intel_dbuf_mbus_update and do it
 properly
Date: Mon, 25 Mar 2024 13:23:26 +0200
Message-Id: <20240325112329.7922-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
In-Reply-To: <20240325112329.7922-1-stanislav.lisovskiy@intel.com>
References: <20240325112329.7922-1-stanislav.lisovskiy@intel.com>
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

According to BSpec we need to do correspondent MBUS updates before
or after DBUF reallocation, depending on whether we are enabling
or disabling mbus joining(typical scenario is swithing between
multiple and single displays).

Also we need to be able to update dbuf min tracker and mdclk ratio
separately if mbus_join state didn't change, so lets add one
degree of freedom and make it possible.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 54 +++++++++++++-------
 1 file changed, 35 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index bc341abcab2fe..2b947870527fc 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3570,16 +3570,38 @@ void intel_dbuf_mdclk_cdclk_ratio_update(struct drm_i915_private *i915, u8 ratio
 			     DBUF_MIN_TRACKER_STATE_SERVICE(ratio - 1));
 }
 
+static void intel_dbuf_mdclk_min_tracker_update(struct intel_atomic_state *state)
+{
+	struct drm_i915_private *i915 = to_i915(state->base.dev);
+	const struct intel_dbuf_state *old_dbuf_state =
+		intel_atomic_get_old_dbuf_state(state);
+	const struct intel_dbuf_state *new_dbuf_state =
+		intel_atomic_get_new_dbuf_state(state);
+
+	if (DISPLAY_VER(i915) >= 20 &&
+	    old_dbuf_state->mdclk_cdclk_ratio != new_dbuf_state->mdclk_cdclk_ratio) {
+		/*
+		 * For Xe2LPD and beyond, when there is a change in the ratio
+		 * between MDCLK and CDCLK, updates to related registers need to
+		 * happen at a specific point in the CDCLK change sequence. In
+		 * that case, we defer to the call to
+		 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK logic.
+		 */
+		return;
+	}
+
+	intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk_cdclk_ratio,
+					    new_dbuf_state->joined_mbus);
+}
+
 /*
  * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
  * update the request state of all DBUS slices.
  */
-static void update_mbus_pre_enable(struct intel_atomic_state *state)
+static void intel_dbuf_mbus_join_update(struct intel_atomic_state *state)
 {
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	u32 mbus_ctl;
-	const struct intel_dbuf_state *old_dbuf_state =
-		intel_atomic_get_old_dbuf_state(state);
 	const struct intel_dbuf_state *new_dbuf_state =
 		intel_atomic_get_new_dbuf_state(state);
 
@@ -3600,21 +3622,6 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
 	intel_de_rmw(i915, MBUS_CTL,
 		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
 		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
-
-	if (DISPLAY_VER(i915) >= 20 &&
-	    old_dbuf_state->mdclk_cdclk_ratio != new_dbuf_state->mdclk_cdclk_ratio) {
-		/*
-		 * For Xe2LPD and beyond, when there is a change in the ratio
-		 * between MDCLK and CDCLK, updates to related registers need to
-		 * happen at a specific point in the CDCLK change sequence. In
-		 * that case, we defer to the call to
-		 * intel_dbuf_mdclk_cdclk_ratio_update() to the CDCLK logic.
-		 */
-		return;
-	}
-
-	intel_dbuf_mdclk_cdclk_ratio_update(i915, new_dbuf_state->mdclk_cdclk_ratio,
-					    new_dbuf_state->joined_mbus);
 }
 
 void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
@@ -3632,7 +3639,11 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
-	update_mbus_pre_enable(state);
+	if (!old_dbuf_state->joined_mbus && new_dbuf_state->joined_mbus) {
+		intel_dbuf_mbus_join_update(state);
+		intel_dbuf_mdclk_min_tracker_update(state);
+	}
+
 	gen9_dbuf_slices_update(i915,
 				old_dbuf_state->enabled_slices |
 				new_dbuf_state->enabled_slices);
@@ -3653,6 +3664,11 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
 
 	WARN_ON(!new_dbuf_state->base.changed);
 
+	if (old_dbuf_state->joined_mbus && !new_dbuf_state->joined_mbus) {
+		intel_dbuf_mbus_join_update(state);
+		intel_dbuf_mdclk_min_tracker_update(state);
+	}
+
 	gen9_dbuf_slices_update(i915,
 				new_dbuf_state->enabled_slices);
 }
-- 
2.37.3

