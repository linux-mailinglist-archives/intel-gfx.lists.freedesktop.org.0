Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C62A8A35A3D
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 10:26:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EE9510EC1A;
	Fri, 14 Feb 2025 09:26:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="E3OmgN/Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1743110EC17
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2025 09:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1739525192;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=A/iOHN4fbDXRvVOvU4QvhNnYIvEUngK4UBIFBCG6hns=;
 b=E3OmgN/QeZJdTevjvLLi5u8/Ovpe9r/b92DDOSEEHxn3IMnCLLqusEpCsJ7iienQ92PFRH
 RYFGDj6mXfwUt0uxM7ZhAHV9Jb6JJ58H+diskZl+dq+RmrEAGq/XZwn5B1fLU4QvxMCCO+
 UJoOPlP0jpKHQ038IJO0vhc0eVbmVeM=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-532-iF9t9NmBNNmvTXwZtJqDxg-1; Fri,
 14 Feb 2025 04:26:28 -0500
X-MC-Unique: iF9t9NmBNNmvTXwZtJqDxg-1
X-Mimecast-MFC-AGG-ID: iF9t9NmBNNmvTXwZtJqDxg_1739525187
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 9A7D61975AFC; Fri, 14 Feb 2025 09:26:26 +0000 (UTC)
Received: from hydra.redhat.com (unknown [10.45.225.79])
 by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTP
 id 6BB12180087C; Fri, 14 Feb 2025 09:26:22 +0000 (UTC)
From: Jocelyn Falempe <jfalempe@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org
Cc: Jocelyn Falempe <jfalempe@redhat.com>
Subject: [PATCH v5 1/8] drm/i915/fbdev: Add intel_fbdev_get_map()
Date: Fri, 14 Feb 2025 10:21:36 +0100
Message-ID: <20250214092608.2555218-2-jfalempe@redhat.com>
In-Reply-To: <20250214092608.2555218-1-jfalempe@redhat.com>
References: <20250214092608.2555218-1-jfalempe@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
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

The vaddr of the fbdev framebuffer is private to the struct
intel_fbdev, so this function is needed to access it for drm_panic.
Also the struct i915_vma is different between i915 and xe, so it
requires a few functions to access fbdev->vma->iomap.

Signed-off-by: Jocelyn Falempe <jfalempe@redhat.com>
---

v2:
 * Add intel_fb_get_vaddr() and i915_vma_get_iomap() to build with Xe driver.
 
v4:
 * rename to get_map(), and return the struct iosys_map mapping.
 * implement the Xe variant.

 drivers/gpu/drm/i915/display/intel_fb_pin.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_fb_pin.h | 2 ++
 drivers/gpu/drm/i915/display/intel_fbdev.c  | 5 +++++
 drivers/gpu/drm/i915/display/intel_fbdev.h  | 6 +++++-
 drivers/gpu/drm/i915/i915_vma.h             | 5 +++++
 drivers/gpu/drm/xe/display/xe_fb_pin.c      | 5 +++++
 6 files changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
index 204e7e3e48cac..91feb18bbb822 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
@@ -330,3 +330,8 @@ void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state)
 			intel_dpt_unpin_from_ggtt(fb->dpt_vm);
 	}
 }
+
+void intel_fb_get_map(struct i915_vma *vma, struct iosys_map *map)
+{
+	iosys_map_set_vaddr_iomem(map, i915_vma_get_iomap(vma));
+}
diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.h b/drivers/gpu/drm/i915/display/intel_fb_pin.h
index 01770dbba2e08..81ab79da1af74 100644
--- a/drivers/gpu/drm/i915/display/intel_fb_pin.h
+++ b/drivers/gpu/drm/i915/display/intel_fb_pin.h
@@ -12,6 +12,7 @@ struct drm_framebuffer;
 struct i915_vma;
 struct intel_plane_state;
 struct i915_gtt_view;
+struct iosys_map;
 
 struct i915_vma *
 intel_fb_pin_to_ggtt(const struct drm_framebuffer *fb,
@@ -27,5 +28,6 @@ void intel_fb_unpin_vma(struct i915_vma *vma, unsigned long flags);
 int intel_plane_pin_fb(struct intel_plane_state *new_plane_state,
 		       const struct intel_plane_state *old_plane_state);
 void intel_plane_unpin_fb(struct intel_plane_state *old_plane_state);
+void intel_fb_get_map(struct i915_vma *vma, struct iosys_map *map);
 
 #endif
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
index 301b5fd301a23..50c3919703cd9 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.c
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
@@ -699,3 +699,8 @@ struct i915_vma *intel_fbdev_vma_pointer(struct intel_fbdev *fbdev)
 {
 	return fbdev ? fbdev->vma : NULL;
 }
+
+void intel_fbdev_get_map(struct intel_fbdev *fbdev, struct iosys_map *map)
+{
+	intel_fb_get_map(fbdev->vma, map);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.h b/drivers/gpu/drm/i915/display/intel_fbdev.h
index 24a3434558cb6..f6ccd0a7a6836 100644
--- a/drivers/gpu/drm/i915/display/intel_fbdev.h
+++ b/drivers/gpu/drm/i915/display/intel_fbdev.h
@@ -12,13 +12,14 @@ struct drm_device;
 struct drm_i915_private;
 struct intel_fbdev;
 struct intel_framebuffer;
+struct iosys_map;
 
 #ifdef CONFIG_DRM_FBDEV_EMULATION
 void intel_fbdev_setup(struct drm_i915_private *dev_priv);
 void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous);
 struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev);
 struct i915_vma *intel_fbdev_vma_pointer(struct intel_fbdev *fbdev);
-
+void intel_fbdev_get_map(struct intel_fbdev *fbdev, struct iosys_map *map);
 #else
 static inline void intel_fbdev_setup(struct drm_i915_private *dev_priv)
 {
@@ -38,6 +39,9 @@ static inline struct i915_vma *intel_fbdev_vma_pointer(struct intel_fbdev *fbdev
 	return NULL;
 }
 
+static inline void intel_fbdev_get_map(struct intel_fbdev *fbdev, struct iosys_map *map)
+{
+}
 #endif
 
 #endif /* __INTEL_FBDEV_H__ */
diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
index 6a6be8048aa83..4ae610927fa77 100644
--- a/drivers/gpu/drm/i915/i915_vma.h
+++ b/drivers/gpu/drm/i915/i915_vma.h
@@ -353,6 +353,11 @@ static inline bool i915_node_color_differs(const struct drm_mm_node *node,
 	return drm_mm_node_allocated(node) && node->color != color;
 }
 
+static inline void __iomem *i915_vma_get_iomap(struct i915_vma *vma)
+{
+	return READ_ONCE(vma->iomap);
+}
+
 /**
  * i915_vma_pin_iomap - calls ioremap_wc to map the GGTT VMA via the aperture
  * @vma: VMA to iomap
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 11a6b996d739b..6f5ace065da01 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -462,3 +462,8 @@ u64 intel_dpt_offset(struct i915_vma *dpt_vma)
 {
 	return 0;
 }
+
+void intel_fb_get_map(struct i915_vma *vma, struct iosys_map *map)
+{
+	*map = vma->bo->vmap;
+}
-- 
2.47.1

