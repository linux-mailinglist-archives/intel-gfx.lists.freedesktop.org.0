Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D155458FC2
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 14:51:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7343B6E14F;
	Mon, 22 Nov 2021 13:51:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 851046E134
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 13:51:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10175"; a="258606052"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="258606052"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 05:51:35 -0800
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="456287833"
Received: from rmcdonax-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.19.217])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 05:51:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Nov 2021 15:51:05 +0200
Message-Id: <b77969b20b495eec96e8f8cd1d48459b623e8bea.1637588831.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1637588831.git.jani.nikula@intel.com>
References: <cover.1637588831.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/8] drm/i915/fb: move intel_fb_uses_dpt to
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
index 06edc92e4f7c..338ac3bd08ac 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1987,16 +1987,6 @@ intel_crtc_needs_modeset(const struct intel_crtc_state *crtc_state)
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

