Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF7D3879D4
	for <lists+intel-gfx@lfdr.de>; Tue, 18 May 2021 15:24:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07B286EB72;
	Tue, 18 May 2021 13:24:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65F446EB74
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 May 2021 13:24:34 +0000 (UTC)
IronPort-SDR: oNn+exTVQN2ptXY5DdHCnTMLEMfzLVPZL0blZprsyvEH1NAw1U3Gu4oXbckMTlkXYTVd7MO0hb
 ftnS5lGdcOaQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="180987328"
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="180987328"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 06:24:33 -0700
IronPort-SDR: veD5TZ/ho1Jb9q8ej1mFD8wWz97sIFjlvLDuVZKcx26tz2TuboL4vfYm7VIe1MtMm3nV6eXu/V
 Yibudvc1gDBg==
X-IronPort-AV: E=Sophos;i="5.82,310,1613462400"; d="scan'208";a="439434363"
Received: from lmrad-mobl.ger.corp.intel.com (HELO localhost) ([10.252.52.115])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2021 06:24:31 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 May 2021 16:24:26 +0300
Message-Id: <20210518132426.7567-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Subject: [Intel-gfx] [PATCH] drm/i915/plane: add intel_plane_helper_add()
 helper
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a small helper to keep intel_plane_helper_funcs static.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_plane.c          | 2 +-
 drivers/gpu/drm/i915/display/intel_atomic_plane.c  | 7 ++++++-
 drivers/gpu/drm/i915/display/intel_atomic_plane.h  | 3 +--
 drivers/gpu/drm/i915/display/intel_cursor.c        | 2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c        | 2 +-
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 2 +-
 6 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 9643c45a2209..b1439ba78f67 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -912,7 +912,7 @@ intel_primary_plane_create(struct drm_i915_private *dev_priv, enum pipe pipe)
 	zpos = 0;
 	drm_plane_create_zpos_immutable_property(&plane->base, zpos);
 
-	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);
+	intel_plane_helper_add(plane);
 
 	return plane;
 
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
index 36f52a1d7552..47234d898549 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
@@ -601,7 +601,12 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 	return 0;
 }
 
-const struct drm_plane_helper_funcs intel_plane_helper_funcs = {
+static const struct drm_plane_helper_funcs intel_plane_helper_funcs = {
 	.prepare_fb = intel_prepare_plane_fb,
 	.cleanup_fb = intel_cleanup_plane_fb,
 };
+
+void intel_plane_helper_add(struct intel_plane *plane)
+{
+	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.h b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
index dc4d05e75e1c..62e5a2a77fd4 100644
--- a/drivers/gpu/drm/i915/display/intel_atomic_plane.h
+++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.h
@@ -17,8 +17,6 @@ struct intel_crtc_state;
 struct intel_plane;
 struct intel_plane_state;
 
-extern const struct drm_plane_helper_funcs intel_plane_helper_funcs;
-
 unsigned int intel_adjusted_rate(const struct drm_rect *src,
 				 const struct drm_rect *dst,
 				 unsigned int rate);
@@ -65,5 +63,6 @@ int intel_atomic_plane_check_clipping(struct intel_plane_state *plane_state,
 				      bool can_position);
 void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
 			       struct intel_plane_state *plane_state);
+void intel_plane_helper_add(struct intel_plane *plane);
 
 #endif /* __INTEL_ATOMIC_PLANE_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index 2ab389b38694..08fa844e1342 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -797,7 +797,7 @@ intel_cursor_plane_create(struct drm_i915_private *dev_priv,
 	if (DISPLAY_VER(dev_priv) >= 12)
 		drm_plane_enable_fb_damage_clips(&cursor->base);
 
-	drm_plane_helper_add(&cursor->base, &intel_plane_helper_funcs);
+	intel_plane_helper_add(cursor);
 
 	return cursor;
 
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 4ae9a7455b23..08116f41da26 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -1856,7 +1856,7 @@ intel_sprite_plane_create(struct drm_i915_private *dev_priv,
 	zpos = sprite + 1;
 	drm_plane_create_zpos_immutable_property(&plane->base, zpos);
 
-	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);
+	intel_plane_helper_add(plane);
 
 	return plane;
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 59e032f3687a..e9ad050c8a06 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2152,7 +2152,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 						BIT(DRM_SCALING_FILTER_DEFAULT) |
 						BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
 
-	drm_plane_helper_add(&plane->base, &intel_plane_helper_funcs);
+	intel_plane_helper_add(plane);
 
 	return plane;
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
