Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BEF84903A
	for <lists+intel-gfx@lfdr.de>; Sun,  4 Feb 2024 20:59:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D42C10EB71;
	Sun,  4 Feb 2024 19:59:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fyJcsC9Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F97A10E9BB
 for <intel-gfx@lists.freedesktop.org>; Sun,  4 Feb 2024 19:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707076739; x=1738612739;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pREDIC8p3h4esMH7kiMi9LZNYxvYQOsucxJZZ8Q5DcA=;
 b=fyJcsC9QbNS6jX5pz8INoiXC4abFwhNaSFTNcJ18hXNw4hk8xSC5bLYH
 yIrjKDPf8BkTpV4LWNoVf8XDeDKIeSF3rqz0cwL55LEklJHHOFj8O67Pe
 aYt/ZZzYfo14Zmp1uKN5hEEZCk+1/ue/px03GLQzzVejQUdWgJVyISTKU
 /bUTJXYMTcNpH4e+O6/4DfkvPVA3TROWjM+c0Oh++YFKbMvIleDs1B5by
 NJ+yL8f8dR3slED1n5BkknZm63TeBH6iY1H2UUfKf0904Quq6S8tEnClg
 oqF2aotJKFq9x0XGsNznky761wFGsx2QFLzcjfTMlJr2uz6jxkKPfw/rY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10973"; a="311185"
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="311185"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2024 11:58:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,242,1701158400"; 
   d="scan'208";a="5160733"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa005.fm.intel.com with ESMTP; 04 Feb 2024 11:58:57 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, chaitanya.kumar.borah@intel.com,
 maarten.lankhorst@linux.intel.com, ville.syrjala@linux.intel.com
Subject: [PATCH 3/5] drm/i915: do not destroy plane state if cursor unpin
 worker is scheduled
Date: Mon,  5 Feb 2024 01:22:05 +0530
Message-Id: <20240204195207.3616932-4-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240204195207.3616932-1-chaitanya.kumar.borah@intel.com>
References: <20240204195207.3616932-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
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

The plane destroy hook can be called asynchronously even when vblank
worker responsible for unpinning the cursor fb is scheduled. Since
the vblank worker destroys the plane state, do not destroy the plane
state if it is scheduled.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 .../gpu/drm/i915/display/intel_atomic_plane.c | 19 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_atomic_plane.h |  2 ++
 drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
 3 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 06c5d8262443..a585e4aca309 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -136,6 +136,25 @@ intel_plane_destroy_state(struct drm_plane *plane,
 {
 	struct intel_plane_state *plane_state = to_intel_plane_state(state);
 
+	/* Do not proceed if vblank unpin worker is yet to be executed */
+	if (plane_state->unpin_work.vblank)
+		return;
+
+	drm_WARN_ON(plane->dev, plane_state->ggtt_vma);
+	drm_WARN_ON(plane->dev, plane_state->dpt_vma);
+
+	__drm_atomic_helper_plane_destroy_state(&plane_state->uapi);
+	if (plane_state->hw.fb)
+		drm_framebuffer_put(plane_state->hw.fb);
+	kfree(plane_state);
+}
+
+void
+intel_cursor_destroy_state(struct drm_plane *plane,
+			   struct drm_plane_state *state)
+{
+	struct intel_plane_state *plane_state = to_intel_plane_state(state);
+
 	drm_WARN_ON(plane->dev, plane_state->ggtt_vma);
 	drm_WARN_ON(plane->dev, plane_state->dpt_vma);
 
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index 5a897cf6fa02..1e165b709a80 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -45,6 +45,8 @@ void intel_plane_free(struct intel_plane *plane);
 struct drm_plane_state *intel_plane_duplicate_state(struct drm_plane *plane);
 void intel_plane_destroy_state(struct drm_plane *plane,
 			       struct drm_plane_state *state);
+void intel_cursor_destroy_state(struct drm_plane *plane,
+				struct drm_plane_state *state);
 void intel_crtc_planes_update_noarm(struct intel_atomic_state *state,
 				    struct intel_crtc *crtc);
 void intel_crtc_planes_update_arm(struct intel_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index dbb26a212800..32f9bb753331 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -662,7 +662,7 @@ void intel_cursor_unpin_work(struct kthread_work *base)
 	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
 
 	intel_plane_unpin_fb(plane_state);
-	intel_plane_destroy_state(&plane->base, &plane_state->uapi);
+	intel_cursor_destroy_state(&plane->base, &plane_state->uapi);
 }
 
 static int
-- 
2.25.1

