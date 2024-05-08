Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A85B8BF759
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 09:45:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A78C112868;
	Wed,  8 May 2024 07:45:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GMS1u5qT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77F85112866;
 Wed,  8 May 2024 07:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715154303; x=1746690303;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8MMSC5XrIp2ckRPjKPA0INzI25I8YWYX/IfSzF6ePJ0=;
 b=GMS1u5qTELlvBQaJr6FDjE3GzxzvJ4ZL/23XFthdtmg5TWUSjmyCLNoj
 Nzicf00Ga4PWq59UIceYltapX0LYyTgoR+EGie1UR1yKQtb7aUDXYQ5LH
 HtUApEscNsHeDC490KCasSkRob01YKq5eX3gos3wPVBvr4A/jq4awDiLG
 0z+kbq/kYGGPWQG2UaS7dbpvobkaguB7uagrockz4MzTPqdpimBDKJ2Qs
 KpEauhUpENCLt40ddWxMyt7EEnSGJF+IJ7QxR9hDN/0kMcgtvRSWpA4Rl
 W/WxvFztLHscurJ7KN7fnOJdml5Zm5nA7uhSseQOjRMXk2S4YnR3n8zWA w==;
X-CSE-ConnectionGUID: m4op5IVCTLaGvE/Y5ARlcg==
X-CSE-MsgGUID: VYpWt/8RT+2VA1vS0+wKeQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11066"; a="21665442"
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="21665442"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 00:45:03 -0700
X-CSE-ConnectionGUID: +ZSam5GfRAC/lMDeoxztYQ==
X-CSE-MsgGUID: 1FPRE0IYTSuqH7VhQKR4jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,144,1712646000"; d="scan'208";a="33273820"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa005.fm.intel.com with ESMTP; 08 May 2024 00:45:01 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, ville.syrjala@linux.intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [PATCH 3/4] drm/i915: Use vblank worker to unpin old legacy cursor fb
 safely
Date: Wed,  8 May 2024 13:09:03 +0530
Message-Id: <20240508073904.1661848-4-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240508073904.1661848-1-chaitanya.kumar.borah@intel.com>
References: <20240508073904.1661848-1-chaitanya.kumar.borah@intel.com>
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

The cursor hardware only does sync updates, and thus the hardware
will be scanning out from the old fb until the next start of vblank.
So in order to make the legacy cursor fastpath actually safe we
should not unpin the old fb until we're sure the hardware has
ceased accessing it. The simplest approach is to just use a vblank
work here to do the delayed unpin.

Not 100% sure it's a good idea to put this onto the same high
priority vblank worker as eg. our timing critical gamma updates.
But let's keep it simple for now, and it we later discover that
this is causing problems we can think about adding a lower
priority worker for such things.

In case we are shutting down the crtc after vblank workers are
scheduled and before vblank arrives, drm_handle_vblank_works()
never gets called. This will lead to cancellation of the vblank
worker during drm_crtc_vblank_off(), therefore, wait one vblank
if there are pending vblank workers.

This patch is slightly reworked by Maarten.

Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c   | 26 +++++++++++++++++--
 drivers/gpu/drm/i915/display/intel_display.c  |  6 +++++
 .../drm/i915/display/intel_display_types.h    |  3 +++
 3 files changed, 33 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 2118b87ccb10..c9963f5d546e 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -674,6 +674,17 @@ static bool intel_cursor_format_mod_supported(struct drm_plane *_plane,
 	return format == DRM_FORMAT_ARGB8888;
 }
 
+static void intel_cursor_unpin_work(struct kthread_work *base)
+{
+	struct drm_vblank_work *work = to_drm_vblank_work(base);
+	struct intel_plane_state *plane_state =
+		container_of(work, typeof(*plane_state), unpin_work);
+	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
+
+	intel_plane_unpin_fb(plane_state);
+	intel_plane_destroy_state(&plane->base, &plane_state->uapi);
+}
+
 static int
 intel_legacy_cursor_update(struct drm_plane *_plane,
 			   struct drm_crtc *_crtc,
@@ -817,14 +828,25 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 
 	intel_psr_unlock(crtc_state);
 
-	intel_plane_unpin_fb(old_plane_state);
+	if (old_plane_state->ggtt_vma != new_plane_state->ggtt_vma) {
+		drm_vblank_work_init(&old_plane_state->unpin_work, &crtc->base,
+				     intel_cursor_unpin_work);
+
+		drm_vblank_work_schedule(&old_plane_state->unpin_work,
+					 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
+					 false);
+
+		old_plane_state = NULL;
+	} else {
+		intel_plane_unpin_fb(old_plane_state);
+	}
 
 out_free:
 	if (new_crtc_state)
 		intel_crtc_destroy_state(&crtc->base, &new_crtc_state->uapi);
 	if (ret)
 		intel_plane_destroy_state(&plane->base, &new_plane_state->uapi);
-	else
+	else if (old_plane_state)
 		intel_plane_destroy_state(&plane->base, &old_plane_state->uapi);
 	return ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ef986b508431..bd428e04236f 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -65,6 +65,7 @@
 #include "intel_crt.h"
 #include "intel_crtc.h"
 #include "intel_crtc_state_dump.h"
+#include "intel_cursor.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
 #include "intel_display_driver.h"
@@ -6923,6 +6924,11 @@ static void intel_commit_modeset_disables(struct intel_atomic_state *state)
 			continue;
 
 		intel_crtc_disable_planes(state, crtc);
+
+		if(drm_vblank_has_pending_work(&crtc->base)) {
+			intel_crtc_wait_for_next_vblank(crtc);
+			drm_vblank_work_flush_all(&crtc->base);
+		}
 	}
 
 	/* Only disable port sync and MST slaves */
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 00eba3fbcdc6..e2ccec8d36ff 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -730,6 +730,9 @@ struct intel_plane_state {
 	struct intel_fb_view view;
 	u32 phys_dma_addr; /* for cursor_needs_physical */
 
+	/* for legacy cursor fb unpin */
+	struct drm_vblank_work unpin_work;
+
 	/* Plane pxp decryption state */
 	bool decrypt;
 
-- 
2.25.1

