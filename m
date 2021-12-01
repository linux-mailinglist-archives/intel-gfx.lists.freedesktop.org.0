Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DBD464F46
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 14:57:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22CD472D97;
	Wed,  1 Dec 2021 13:57:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C279272D91
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 13:57:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="297261367"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="297261367"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 05:57:46 -0800
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="460034074"
Received: from pwedlarx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.43])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 05:57:44 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  1 Dec 2021 15:57:08 +0200
Message-Id: <4aa89f113ce6d840d62f50c989e2a1415483557c.1638366969.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1638366969.git.jani.nikula@intel.com>
References: <cover.1638366969.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/10] drm/i915/fb: move intel_fb_uses_dpt to
 intel_fb.c and un-inline
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move fb functions where they belong, and un-inline to avoid looking into
struct drm_i915_private guts in header files.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 10 ----------
 drivers/gpu/drm/i915/display/intel_fb.c            | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h            |  2 ++
 3 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index eeaaa101a7b6..5f077e8cea33 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1990,16 +1990,6 @@ intel_crtc_needs_modeset(const struct intel_crtc_state *crtc_state)
 	return drm_atomic_crtc_needs_modeset(&crtc_state->uapi);
 }
 
-static inline bool intel_modifier_uses_dpt(struct drm_i915_private *i915, u64 modifier)
-{
-	return DISPLAY_VER(i915) >= 13 && modifier != DRM_FORMAT_MOD_LINEAR;
-}
-
-static inline bool intel_fb_uses_dpt(const struct drm_framebuffer *fb)
-{
-	return fb && intel_modifier_uses_dpt(to_i915(fb->dev), fb->modifier);
-}
-
 static inline u32 intel_plane_ggtt_offset(const struct intel_plane_state *plane_state)
 {
 	return i915_ggtt_offset(plane_state->ggtt_vma);
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index c4a743d0913f..99769132c35b 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -658,6 +658,16 @@ static unsigned int intel_fb_modifier_to_tiling(u64 fb_modifier)
 	}
 }
 
+static bool intel_modifier_uses_dpt(struct drm_i915_private *i915, u64 modifier)
+{
+	return DISPLAY_VER(i915) >= 13 && modifier != DRM_FORMAT_MOD_LINEAR;
+}
+
+bool intel_fb_uses_dpt(const struct drm_framebuffer *fb)
+{
+	return fb && intel_modifier_uses_dpt(to_i915(fb->dev), fb->modifier);
+}
+
 unsigned int intel_cursor_alignment(const struct drm_i915_private *i915)
 {
 	if (IS_I830(i915))
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index b54997175d6d..ba9df8986c1e 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -90,4 +90,6 @@ intel_user_framebuffer_create(struct drm_device *dev,
 			      struct drm_file *filp,
 			      const struct drm_mode_fb_cmd2 *user_mode_cmd);
 
+bool intel_fb_uses_dpt(const struct drm_framebuffer *fb);
+
 #endif /* __INTEL_FB_H__ */
-- 
2.30.2

