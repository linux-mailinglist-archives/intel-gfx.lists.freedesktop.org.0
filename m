Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB75A34442
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 16:02:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3B1B10EAFF;
	Thu, 13 Feb 2025 15:02:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gK8ALSLt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D51C310EB12
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 15:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739458960; x=1770994960;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2OJjojGysEjPPH4JeTYfsTQS3OpDkHB/WbJI6UVUsN8=;
 b=gK8ALSLtBMC1j0i0IMO6MEcJ/XG9/at28IfW0B730c7xnZbJAoPZMdg7
 /ih9RaNYVHdNhBe4RPiT5ntjjcaA/rOTgCzSPgGgVL6rZ71ROYJamOxb3
 vG0Os/rkBedcVH1tq/vr/B9Qdz4hxh4dbv3Neze+9wnQjfeCdyqibMPIk
 7aTsJBQ9DhXFxaAwTb351zku9vnMxcPUxTYARcuiWq/jtjKK80XMRkzgd
 bPM4nE8uxVyvvkaheC4CnjN60UJg1YvdxLDG0f6Ua2slY5WQ5Ripech4k
 SSYiUyxcEj7UppcZqQcKM7X8dVJwd9vXfNk2fuFRAg5h/KlC615Sie5yJ A==;
X-CSE-ConnectionGUID: FzHF4V7RTgO1Iu6PuDvusA==
X-CSE-MsgGUID: NPQ3O3pJT1K4hgOzeYtEBw==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57567545"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57567545"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 07:02:40 -0800
X-CSE-ConnectionGUID: ZgtL9f5MRK2NqDBdVN5esg==
X-CSE-MsgGUID: dJNwIFgUTguD1lPkWq+gjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113349606"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 Feb 2025 07:02:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Feb 2025 17:02:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/12] drm/i915: Move intel_plane_destroy() into
 intel_atomic_plane.c
Date: Thu, 13 Feb 2025 17:02:14 +0200
Message-ID: <20250213150220.13580-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
References: <20250213150220.13580-1-ville.syrjala@linux.intel.com>
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

intel_atomic_plane.c (should rename it really) has become our
standard place for generic plane code. Move intel_plane_destroy()
there so it doesn't clutter intel_display.c.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_atomic_plane.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_atomic_plane.h |  1 +
 drivers/gpu/drm/i915/display/intel_display.c      | 13 -------------
 drivers/gpu/drm/i915/display/intel_display.h      |  1 -
 4 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 8a49d87d9bd9..7e87c052be45 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -92,6 +92,19 @@ void intel_plane_free(struct intel_plane *plane)
 	kfree(plane);
 }
 
+/**
+ * intel_plane_destroy - destroy a plane
+ * @plane: plane to destroy
+ *
+ * Common destruction function for all types of planes (primary, cursor,
+ * sprite).
+ */
+void intel_plane_destroy(struct drm_plane *plane)
+{
+	drm_plane_cleanup(plane);
+	kfree(to_intel_plane(plane));
+}
+
 /**
  * intel_plane_duplicate_state - duplicate plane state
  * @plane: drm plane
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index fb87b3353ab0..e965ea0cb15c 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -52,6 +52,7 @@ void intel_plane_disable_arm(struct intel_dsb *dsb,
 			     const struct intel_crtc_state *crtc_state);
 struct intel_plane *intel_plane_alloc(void);
 void intel_plane_free(struct intel_plane *plane);
+void intel_plane_destroy(struct drm_plane *plane);
 struct drm_plane_state *intel_plane_duplicate_state(struct drm_plane *plane);
 void intel_plane_destroy_state(struct drm_plane *plane,
 			       struct drm_plane_state *state);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0807a4979ea2..4278212a2496 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8117,19 +8117,6 @@ int intel_atomic_commit(struct drm_device *dev, struct drm_atomic_state *_state,
 	return 0;
 }
 
-/**
- * intel_plane_destroy - destroy a plane
- * @plane: plane to destroy
- *
- * Common destruction function for all types of planes (primary, cursor,
- * sprite).
- */
-void intel_plane_destroy(struct drm_plane *plane)
-{
-	drm_plane_cleanup(plane);
-	kfree(to_intel_plane(plane));
-}
-
 static u32 intel_encoder_possible_clones(struct intel_encoder *encoder)
 {
 	struct drm_device *dev = encoder->base.dev;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index e14aa773323e..2e11fc2ba1f4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -450,7 +450,6 @@ bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 			       const struct intel_crtc_state *pipe_config,
 			       bool fastset);
 
-void intel_plane_destroy(struct drm_plane *plane);
 void i9xx_set_pipeconf(const struct intel_crtc_state *crtc_state);
 void ilk_set_pipeconf(const struct intel_crtc_state *crtc_state);
 void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state);
-- 
2.45.3

