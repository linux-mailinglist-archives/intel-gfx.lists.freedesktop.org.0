Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 80D5EA3444D
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2025 16:02:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 270E810EB01;
	Thu, 13 Feb 2025 15:02:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MsuCoHmw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54BBF10EB01
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Feb 2025 15:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739458971; x=1770994971;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DLwT/KGU7XCBvgRQZcZj4USKzddWSlQA5D8sXSPKt4k=;
 b=MsuCoHmwz3HGhMs9G3HnZ1uiQNYc3PP2wJnUxgQ3qqBMAfE6Dx+9uHNY
 kQNhIodA8SM7obd+MkgYH0XFsLb0MrkeaPEoMDsY2jsmtHzDBkjCuRFo7
 FaFOP2LkEoPgnEwiBthfJensXyW0xPHkSGqgtaB4j8I56hDsUPPvkyD7L
 Xose5rkmIC3WWroQXfEIKfVb2EA9A68tC5aPnN5GM5eUpNFZWxH2jXgcO
 sMJ04SpGKlFj4dze9fGILEWIrW6hcIHI6wBVpMlN5/0j2hiWfQ1H/Jc8j
 1j0rYdLghB+xmwUmJhk3ZG7lv4ROqN9cKsjz5F9zjLOAP8NetJDoYOc61 w==;
X-CSE-ConnectionGUID: C2m8iHQ5TcSq5IK1b6hHXg==
X-CSE-MsgGUID: C7x6rh45SVqA6eq1lqe1Rg==
X-IronPort-AV: E=McAfee;i="6700,10204,11344"; a="57567609"
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="57567609"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2025 07:02:51 -0800
X-CSE-ConnectionGUID: PUiv+6JMQHuF+EH+gL67TQ==
X-CSE-MsgGUID: aQmBi7PhQaOrjp7WtrUuiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,282,1732608000"; d="scan'208";a="113349621"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 Feb 2025 07:02:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Feb 2025 17:02:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 10/12] drm/i915: Relocate intel_{rotation,
 remapped}_info_size()
Date: Thu, 13 Feb 2025 17:02:18 +0200
Message-ID: <20250213150220.13580-11-ville.syrjala@linux.intel.com>
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

Move intel_{rotation,remapped}_info_size() into intel_fb.c as
that seems a slightly better place than intel_display.c. I suppose
these should live somewhere outside the display code as they are
also used by the gem code.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 36 --------------------
 drivers/gpu/drm/i915/display/intel_display.h |  4 ---
 drivers/gpu/drm/i915/display/intel_fb.c      | 36 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb.h      |  5 +++
 drivers/gpu/drm/i915/i915_vma.c              |  2 +-
 5 files changed, 42 insertions(+), 41 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 4800fefd6321..c38c37afc154 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -601,42 +601,6 @@ void intel_disable_transcoder(const struct intel_crtc_state *old_crtc_state)
 		intel_wait_for_pipe_off(old_crtc_state);
 }
 
-unsigned int intel_rotation_info_size(const struct intel_rotation_info *rot_info)
-{
-	unsigned int size = 0;
-	int i;
-
-	for (i = 0 ; i < ARRAY_SIZE(rot_info->plane); i++)
-		size += rot_info->plane[i].dst_stride * rot_info->plane[i].width;
-
-	return size;
-}
-
-unsigned int intel_remapped_info_size(const struct intel_remapped_info *rem_info)
-{
-	unsigned int size = 0;
-	int i;
-
-	for (i = 0 ; i < ARRAY_SIZE(rem_info->plane); i++) {
-		unsigned int plane_size;
-
-		if (rem_info->plane[i].linear)
-			plane_size = rem_info->plane[i].size;
-		else
-			plane_size = rem_info->plane[i].dst_stride * rem_info->plane[i].height;
-
-		if (plane_size == 0)
-			continue;
-
-		if (rem_info->plane_alignment)
-			size = ALIGN(size, rem_info->plane_alignment);
-
-		size += plane_size;
-	}
-
-	return size;
-}
-
 /*
  * Convert the x/y offsets into a linear offset.
  * Only valid with 0/180 degree rotation, which is fine since linear
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index d3afd134f70e..a7bd82662adf 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -59,8 +59,6 @@ struct intel_link_m_n;
 struct intel_plane;
 struct intel_plane_state;
 struct intel_power_domain_mask;
-struct intel_remapped_info;
-struct intel_rotation_info;
 struct pci_dev;
 struct work_struct;
 
@@ -467,8 +465,6 @@ unsigned int intel_fb_xy_to_linear(int x, int y,
 				   int plane);
 void intel_add_fb_offsets(int *x, int *y,
 			  const struct intel_plane_state *state, int plane);
-unsigned int intel_rotation_info_size(const struct intel_rotation_info *rot_info);
-unsigned int intel_remapped_info_size(const struct intel_remapped_info *rem_info);
 bool intel_has_pending_fb_unpin(struct drm_i915_private *dev_priv);
 void intel_encoder_destroy(struct drm_encoder *encoder);
 struct drm_display_mode *
diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 5875af2b61e6..c1923b4c13d6 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -1891,6 +1891,42 @@ static void intel_plane_remap_gtt(struct intel_plane_state *plane_state)
 	}
 }
 
+unsigned int intel_rotation_info_size(const struct intel_rotation_info *rot_info)
+{
+	unsigned int size = 0;
+	int i;
+
+	for (i = 0 ; i < ARRAY_SIZE(rot_info->plane); i++)
+		size += rot_info->plane[i].dst_stride * rot_info->plane[i].width;
+
+	return size;
+}
+
+unsigned int intel_remapped_info_size(const struct intel_remapped_info *rem_info)
+{
+	unsigned int size = 0;
+	int i;
+
+	for (i = 0 ; i < ARRAY_SIZE(rem_info->plane); i++) {
+		unsigned int plane_size;
+
+		if (rem_info->plane[i].linear)
+			plane_size = rem_info->plane[i].size;
+		else
+			plane_size = rem_info->plane[i].dst_stride * rem_info->plane[i].height;
+
+		if (plane_size == 0)
+			continue;
+
+		if (rem_info->plane_alignment)
+			size = ALIGN(size, rem_info->plane_alignment);
+
+		size += plane_size;
+	}
+
+	return size;
+}
+
 void intel_fb_fill_view(const struct intel_framebuffer *fb, unsigned int rotation,
 			struct intel_fb_view *view)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_fb.h b/drivers/gpu/drm/i915/display/intel_fb.h
index 63728520eb06..d04d9274bb71 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.h
+++ b/drivers/gpu/drm/i915/display/intel_fb.h
@@ -19,6 +19,8 @@ struct intel_fb_view;
 struct intel_framebuffer;
 struct intel_plane;
 struct intel_plane_state;
+struct intel_remapped_info;
+struct intel_rotation_info;
 
 #define INTEL_PLANE_CAP_NONE		0
 #define INTEL_PLANE_CAP_CCS_RC		BIT(0)
@@ -80,6 +82,9 @@ bool intel_fb_needs_pot_stride_remap(const struct intel_framebuffer *fb);
 bool intel_plane_uses_fence(const struct intel_plane_state *plane_state);
 bool intel_fb_supports_90_270_rotation(const struct intel_framebuffer *fb);
 
+unsigned int intel_rotation_info_size(const struct intel_rotation_info *rot_info);
+unsigned int intel_remapped_info_size(const struct intel_remapped_info *rem_info);
+
 int intel_fill_fb_info(struct intel_display *display, struct intel_framebuffer *fb);
 void intel_fb_fill_view(const struct intel_framebuffer *fb, unsigned int rotation,
 			struct intel_fb_view *view);
diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
index 61b49007ecd4..632e316f8b05 100644
--- a/drivers/gpu/drm/i915/i915_vma.c
+++ b/drivers/gpu/drm/i915/i915_vma.c
@@ -26,7 +26,7 @@
 #include <linux/dma-fence-array.h>
 #include <drm/drm_gem.h>
 
-#include "display/intel_display.h"
+#include "display/intel_fb.h"
 #include "display/intel_frontbuffer.h"
 #include "gem/i915_gem_lmem.h"
 #include "gem/i915_gem_object_frontbuffer.h"
-- 
2.45.3

