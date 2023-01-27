Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD1867DE91
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 08:34:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73D8210E3F6;
	Fri, 27 Jan 2023 07:34:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2365110E3F6
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 07:34:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674804853; x=1706340853;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rePQY2Es/suzvQYfAP1qKMqZBH3AQtn/rf7oljbhPMQ=;
 b=fhfmJQUcESnq91CBJN/Gtc0wXG7Dr4xqT2Z0PYkiwdO0CSOlITxjdtUz
 BqNprgNWm3FAZ1+bIBwO1MKARYI/bnELaLzGIpmC59tP4Yovg5xURUiDT
 vSunHdBoPAjTx2hAceJFb8K8HdIvmndOQOuFE4iOzTGIOIJxA7tuQii4n
 JDOiPKDPaXnN50xrdkWKc6gGpb7TrXDKnDLaU3RQEVFp7CFPhcVu+Hps/
 apT3cNcDyHSuYin7kyuBiIjdFtE5Y79YouH8sGtIvtYF6oRHWRxjuxBlb
 zZFxUysM1CzBPlrAB/1IFdNG76GGPPnZi9+osKdw2yXCKlrg1biTi+t7P g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="324729846"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="324729846"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 23:34:12 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="837033545"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="837033545"
Received: from lab-ah.igk.intel.com ([10.102.42.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2023 23:34:11 -0800
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Jan 2023 08:34:03 +0100
Message-Id: <20230127073403.1306050-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915: implement async_flip mode per
 plane tracking
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Current implementation of async flip w/a relies on assumption that
previous atomic commit contains valid information if async_flip is still
enabled on the plane. It is incorrect. If previous commit did not modify
the plane its state->uapi.async_flip can be false. As a result DMAR/PIPE
errors can be observed:
i915 0000:00:02.0: [drm] *ERROR* Fault errors on pipe A: 0x00000080
i915 0000:00:02.0: [drm] *ERROR* Fault errors on pipe A: 0x00000080
DMAR: DRHD: handling fault status reg 2
DMAR: [DMA Read NO_PASID] Request device [00:02.0] fault addr 0x0 [fault reason 0x06] PTE Read access is not set

v2: update async_flip_planes in more reliable places (Ville)
v3: reset async_flip_planes and do_async_flip in more scenarios (Ville)

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 5 ++++-
 drivers/gpu/drm/i915/display/intel_color.c         | 3 +++
 drivers/gpu/drm/i915/display/intel_display.c       | 9 ++++++---
 drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
 drivers/gpu/drm/i915/display/skl_watermark.c       | 5 +++++
 5 files changed, 21 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 1409bcfb6fd3d9..3bd8f7eb75a60b 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -363,6 +363,7 @@ void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 	crtc_state->scaled_planes &= ~BIT(plane->id);
 	crtc_state->nv12_planes &= ~BIT(plane->id);
 	crtc_state->c8_planes &= ~BIT(plane->id);
+	crtc_state->async_flip_planes &= ~BIT(plane->id);
 	crtc_state->data_rate[plane->id] = 0;
 	crtc_state->data_rate_y[plane->id] = 0;
 	crtc_state->rel_data_rate[plane->id] = 0;
@@ -582,8 +583,10 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state *old_cr
 			 intel_plane_is_scaled(new_plane_state))))
 		new_crtc_state->disable_lp_wm = true;
 
-	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state))
+	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state)) {
 		new_crtc_state->do_async_flip = true;
+		new_crtc_state->async_flip_planes |= BIT(plane->id);
+	}
 
 	return 0;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 8d97c299e6577b..5162b2b4ede080 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1506,6 +1506,9 @@ intel_color_add_affected_planes(struct intel_crtc_state *new_crtc_state)
 			new_crtc_state->disable_cxsr = true;
 	}
 
+	new_crtc_state->do_async_flip = false;
+	new_crtc_state->async_flip_planes = 0;
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 717ca3d7890d34..8581b32c9cf0eb 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1252,7 +1252,8 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
 		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	u8 update_planes = new_crtc_state->update_planes;
+	u8 disable_async_flip_planes = old_crtc_state->async_flip_planes &
+				       ~new_crtc_state->async_flip_planes;
 	const struct intel_plane_state *old_plane_state;
 	struct intel_plane *plane;
 	bool need_vbl_wait = false;
@@ -1261,7 +1262,7 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
 	for_each_old_intel_plane_in_state(state, plane, old_plane_state, i) {
 		if (plane->need_async_flip_disable_wa &&
 		    plane->pipe == crtc->pipe &&
-		    update_planes & BIT(plane->id)) {
+		    disable_async_flip_planes & BIT(plane->id)) {
 			/*
 			 * Apart from the async flip bit we want to
 			 * preserve the old state for the plane.
@@ -1378,7 +1379,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	 * WA for platforms where async address update enable bit
 	 * is double buffered and only latched at start of vblank.
 	 */
-	if (old_crtc_state->uapi.async_flip && !new_crtc_state->uapi.async_flip)
+	if (old_crtc_state->async_flip_planes & ~new_crtc_state->async_flip_planes)
 		intel_crtc_async_flip_disable_wa(state, crtc);
 }
 
@@ -5939,6 +5940,8 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
 			return ret;
 
 		crtc_state->update_planes |= crtc_state->active_planes;
+		crtc_state->do_async_flip = false;
+		crtc_state->async_flip_planes = 0;
 	}
 
 	return 0;
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 54c517ca9632fb..9ccae7a4602009 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1249,6 +1249,9 @@ struct intel_crtc_state {
 	/* bitmask of planes that will be updated during the commit */
 	u8 update_planes;
 
+	/* bitmask of planes with async flip active */
+	u8 async_flip_planes;
+
 	u8 framestart_delay; /* 1-4 */
 	u8 msa_timing_delay; /* 0-3 */
 
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index ae4e9e680c2e30..eb5e07647a348f 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -2397,6 +2397,8 @@ skl_ddb_add_affected_planes(const struct intel_crtc_state *old_crtc_state,
 			return PTR_ERR(plane_state);
 
 		new_crtc_state->update_planes |= BIT(plane_id);
+		new_crtc_state->do_async_flip = false;
+		new_crtc_state->async_flip_planes = 0;
 	}
 
 	return 0;
@@ -2756,6 +2758,9 @@ static int skl_wm_add_affected_planes(struct intel_atomic_state *state,
 		new_crtc_state->update_planes |= BIT(plane_id);
 	}
 
+	new_crtc_state->do_async_flip = false;
+	new_crtc_state->async_flip_planes = 0;
+
 	return 0;
 }
 
-- 
2.34.1

