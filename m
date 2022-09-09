Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 027565B3A53
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 16:06:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 369B210ED98;
	Fri,  9 Sep 2022 14:06:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67D0010ED96
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 14:06:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662732391; x=1694268391;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=SoQXzfy1WmRYEF2Jn/W857KszJH6pgftAeo35VJt/Wo=;
 b=oEwHLACbdG9LTO5EKDv9grXRPcphZLax5FHL+b0rwjG6xyFcsgzP3FfU
 yUfRVWaVVpd2SCNtqB1recNwEib757ysktdMD0kqaVyc2tAPVSDv+5ySu
 El0wEVXPczIC9KeGE5x5PFTek6ulRklu5vJIiXdfjHwTYf7KIkxUtsEXw
 gQOozJnnw5SsTbDVc9OfXKgxAzy0MvOJbV8AXdvAXnaFQMWMsMNO3tDMW
 JWam9/OmljpVp52zSVTd51vUYpqQPYrJqdLTzra3ta8P4myAmkcqpKvt2
 GKpdSRR3DXtUJexCerwwGJkrguMLrZmQfNWLJ8yn/06TKeOAOuH97da2/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="298818949"
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="298818949"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 07:06:15 -0700
X-IronPort-AV: E=Sophos;i="5.93,303,1654585200"; d="scan'208";a="645544320"
Received: from lab-ah.igk.intel.com ([10.91.215.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 07:06:13 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Date: Fri,  9 Sep 2022 16:05:52 +0200
Message-Id: <20220909140552.110327-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: implement async_flip mode per plane
 tracking
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

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 6 ++++++
 drivers/gpu/drm/i915/display/intel_display.c       | 7 ++++---
 drivers/gpu/drm/i915/display/intel_display_types.h | 3 +++
 3 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index dd876dbbaa394d..4b4d8427b466c0 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -591,6 +591,12 @@ int intel_plane_atomic_check_with_state(const struct intel_crtc_state *old_crtc_
 	if (new_plane_state->uapi.visible || old_plane_state->uapi.visible)
 		new_crtc_state->update_planes |= BIT(plane->id);
 
+	if (new_crtc_state->uapi.async_flip && plane->async_flip)
+		new_crtc_state->async_flip_planes |= BIT(plane->id);
+	else if (new_plane_state->uapi.visible != old_plane_state->uapi.visible ||
+		 new_plane_state->uapi.fb != old_plane_state->uapi.fb)
+		new_crtc_state->async_flip_planes &= ~BIT(plane->id);
+
 	if (new_plane_state->uapi.visible &&
 	    intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier)) {
 		new_crtc_state->data_rate_y[plane->id] =
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 72e2091d9fcb59..7bab74b2a4ae2e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1292,7 +1292,8 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
 		intel_atomic_get_old_crtc_state(state, crtc);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	u8 update_planes = new_crtc_state->update_planes;
+	u8 disable_async_flip_planes = old_crtc_state->async_flip_planes &
+				       ~new_crtc_state->async_flip_planes;
 	const struct intel_plane_state *old_plane_state;
 	struct intel_plane *plane;
 	bool need_vbl_wait = false;
@@ -1301,7 +1302,7 @@ static void intel_crtc_async_flip_disable_wa(struct intel_atomic_state *state,
 	for_each_old_intel_plane_in_state(state, plane, old_plane_state, i) {
 		if (plane->need_async_flip_disable_wa &&
 		    plane->pipe == crtc->pipe &&
-		    update_planes & BIT(plane->id)) {
+		    disable_async_flip_planes & BIT(plane->id)) {
 			/*
 			 * Apart from the async flip bit we want to
 			 * preserve the old state for the plane.
@@ -1418,7 +1419,7 @@ static void intel_pre_plane_update(struct intel_atomic_state *state,
 	 * WA for platforms where async address update enable bit
 	 * is double buffered and only latched at start of vblank.
 	 */
-	if (old_crtc_state->uapi.async_flip && !new_crtc_state->uapi.async_flip)
+	if (old_crtc_state->async_flip_planes & ~new_crtc_state->async_flip_planes)
 		intel_crtc_async_flip_disable_wa(state, crtc);
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 0da9b208d56e8b..b37891a8def780 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1234,6 +1234,9 @@ struct intel_crtc_state {
 	/* bitmask of planes that will be updated during the commit */
 	u8 update_planes;
 
+	/* bitmask of planes with async flip active */
+	u8 async_flip_planes;
+
 	u8 framestart_delay; /* 1-4 */
 	u8 msa_timing_delay; /* 0-3 */
 
-- 
2.34.1

