Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CA643B6BD
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Oct 2021 18:16:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AC4A6E845;
	Tue, 26 Oct 2021 16:16:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC3F989FCC
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Oct 2021 16:16:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10149"; a="290789948"
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="290789948"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 09:15:23 -0700
X-IronPort-AV: E=Sophos;i="5.87,184,1631602800"; d="scan'208";a="486254880"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2021 09:15:22 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Date: Tue, 26 Oct 2021 19:15:16 +0300
Message-Id: <20211026161517.2694067-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20211026161517.2694067-1-imre.deak@intel.com>
References: <20211026161517.2694067-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/fb: Don't store bitmasks in the
 intel_plane_caps enum
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

Variables of enum types can contain only the values listed at the enums
definition, so don't store bitmasks in intel_plane_caps enum variables.

Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c            | 4 ++--
 drivers/gpu/drm/i915/display/intel_fb.h            | 2 +-
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 9ce1d273dc7e1..6b68f69940f0b 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -309,7 +309,7 @@ static bool check_modifier_display_ver_range(const struct intel_modifier_desc *m
 }
 
 static bool plane_has_modifier(struct drm_i915_private *i915,
-			       enum intel_plane_caps plane_caps,
+			       u8 plane_caps,
 			       const struct intel_modifier_desc *md)
 {
 	if (!IS_DISPLAY_VER(i915, md->display_ver.from, md->display_ver.until))
@@ -340,7 +340,7 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
  * The caller must free the returned buffer.
  */
 u64 *intel_fb_plane_get_modifiers(struct drm_i915_private *i915,
-				  enum intel_plane_caps plane_caps)
+				  u8 plane_caps)
 {
 	u64 *list, *p;
 	int count = 1;		/* +1 for invalid modifier terminator */
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 042ad81f86082..19f46144474d8 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -35,7 +35,7 @@ bool intel_fb_is_ccs_aux_plane(const struct drm_framebuffer *fb, int color_plane
 int intel_fb_rc_ccs_cc_plane(const struct drm_framebuffer *fb);
 
 u64 *intel_fb_plane_get_modifiers(struct drm_i915_private *i915,
-				  enum intel_plane_caps plane_caps);
+				  u8 plane_caps);
 bool intel_fb_plane_supports_modifier(struct intel_plane *plane, u64 modifier);
 
 const struct drm_format_info *
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 8fa0ae89e5b3d..317108e009bba 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2023,7 +2023,7 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 	const struct drm_plane_funcs *plane_funcs;
 	struct intel_plane *plane;
 	enum drm_plane_type plane_type;
-	enum intel_plane_caps plane_caps;
+	u8 plane_caps;
 	unsigned int supported_rotations;
 	unsigned int supported_csc;
 	const u64 *modifiers;
-- 
2.27.0

