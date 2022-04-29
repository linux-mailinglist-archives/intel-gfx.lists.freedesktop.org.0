Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EA75150F8
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Apr 2022 18:36:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93BF710EA45;
	Fri, 29 Apr 2022 16:36:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3239E10E3F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 29 Apr 2022 15:11:41 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: alarumbe) with ESMTPSA id D5D4D1F46793
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1651245099;
 bh=Qeej3HM/ahc/WMGGfhMJSe64cx2xxuV/Bazi9v80ed4=;
 h=From:To:Cc:Subject:Date:From;
 b=L16G8rHukXOYdgGSTnvsTyVBtmIJSKeXchOcymFYdAH5/6A5pbEEgxP6AH6tQOeXc
 jdGveUcTg+rfmSaSotIG+6irSZcuw5dPxbMGDDBj9dL4GsYEsyDqrD3MhSfuztMLd+
 hQS3n7p0nsHBG1kQcsc6LfoxE8UNVsHsAfeInYsHlN/bfwBts749qWN63jG0PomRhR
 VfD7Z4AYSxdhn4YwDTBGKXyILYJNBwDv+x0OBUQglia4XJGJV1epKpXcewB1xqKD4O
 Nr/HkEsUmPI/vASkec0UyJu+vL86rfJoH7+am6n+uONs9QgZfQZfkaGWpkqJzIf0NL
 yaRtuayIbNhXg==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch,
	intel-gfx@lists.freedesktop.org
Date: Fri, 29 Apr 2022 16:11:12 +0100
Message-Id: <20220429151112.1041959-1-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 29 Apr 2022 16:36:46 +0000
Subject: [Intel-gfx] [PATCH] drm/i915: Change semantics of context isolation
 reporting to UM
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
Cc: adrian.larumbe@collabora.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I915_PARAM_HAS_CONTEXT_ISOLATION was already being used as a boolean by
both Iris and Vulkan , and stood for the guarantee that, when creating a
new context, all state set by it will not leak to any other context.

However the actual return value was a bitmask where every bit stood for an
initialised engine, and IGT test gem_ctx_isolation makes use of this mask
for deciding on the actual context engine isolation status.

However, we do not provide UAPI for IGT tests, so the value returned by the
PARAM ioctl has to reflect Mesa usage as a boolean.

This change only made sense after compute engine support was added to the
driver in commit 944823c9463916dd53f3 ("drm/i915/xehp: Define compute class
and engine") because no context isolation can be assumed on any device with
both RCS annd CCS engines.

Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_user.c | 13 ++++++++++++-
 drivers/gpu/drm/i915/gt/intel_engine_user.h |  1 +
 drivers/gpu/drm/i915/i915_drm_client.h      |  2 +-
 drivers/gpu/drm/i915/i915_getparam.c        |  2 +-
 include/uapi/drm/i915_drm.h                 | 14 +++-----------
 5 files changed, 18 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
index 0f6cd96b459f..2d6bd36d6150 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
@@ -47,7 +47,7 @@ static const u8 uabi_classes[] = {
 	[COPY_ENGINE_CLASS] = I915_ENGINE_CLASS_COPY,
 	[VIDEO_DECODE_CLASS] = I915_ENGINE_CLASS_VIDEO,
 	[VIDEO_ENHANCEMENT_CLASS] = I915_ENGINE_CLASS_VIDEO_ENHANCE,
-	/* TODO: Add COMPUTE_CLASS mapping once ABI is available */
+	[COMPUTE_CLASS] = I915_ENGINE_CLASS_COMPUTE,
 };
 
 static int engine_cmp(void *priv, const struct list_head *A,
@@ -306,3 +306,14 @@ unsigned int intel_engines_has_context_isolation(struct drm_i915_private *i915)
 
 	return which;
 }
+
+bool intel_cross_engine_isolated(struct drm_i915_private *i915)
+{
+	unsigned int which = intel_engines_has_context_isolation(i915);
+
+	if ((which & BIT(I915_ENGINE_CLASS_RENDER)) &&
+	    (which & BIT(I915_ENGINE_CLASS_COMPUTE)))
+		return false;
+
+	return !!which;
+}
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.h b/drivers/gpu/drm/i915/gt/intel_engine_user.h
index 3dc7e8ab9fbc..ff21349db4d4 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_user.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_user.h
@@ -15,6 +15,7 @@ struct intel_engine_cs *
 intel_engine_lookup_user(struct drm_i915_private *i915, u8 class, u8 instance);
 
 unsigned int intel_engines_has_context_isolation(struct drm_i915_private *i915);
+bool intel_cross_engine_isolated(struct drm_i915_private *i915);
 
 void intel_engine_add_user(struct intel_engine_cs *engine);
 void intel_engines_driver_register(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index 5f5b02b01ba0..f796c5e8e060 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -13,7 +13,7 @@
 
 #include "gt/intel_engine_types.h"
 
-#define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_VIDEO_ENHANCE
+#define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_COMPUTE
 
 struct drm_i915_private;
 
diff --git a/drivers/gpu/drm/i915/i915_getparam.c b/drivers/gpu/drm/i915/i915_getparam.c
index c12a0adefda5..3d5120d2d78a 100644
--- a/drivers/gpu/drm/i915/i915_getparam.c
+++ b/drivers/gpu/drm/i915/i915_getparam.c
@@ -145,7 +145,7 @@ int i915_getparam_ioctl(struct drm_device *dev, void *data,
 		value = 1;
 		break;
 	case I915_PARAM_HAS_CONTEXT_ISOLATION:
-		value = intel_engines_has_context_isolation(i915);
+		value = intel_cross_engine_isolated(i915);
 		break;
 	case I915_PARAM_SLICE_MASK:
 		value = sseu->slice_mask;
diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
index 35ca528803fd..84c0af77cc1f 100644
--- a/include/uapi/drm/i915_drm.h
+++ b/include/uapi/drm/i915_drm.h
@@ -166,6 +166,7 @@ enum drm_i915_gem_engine_class {
 	I915_ENGINE_CLASS_COPY		= 1,
 	I915_ENGINE_CLASS_VIDEO		= 2,
 	I915_ENGINE_CLASS_VIDEO_ENHANCE	= 3,
+	I915_ENGINE_CLASS_COMPUTE	= 4,
 
 	/* should be kept compact */
 
@@ -635,17 +636,8 @@ typedef struct drm_i915_irq_wait {
 #define I915_PARAM_HAS_EXEC_FENCE_ARRAY  49
 
 /*
- * Query whether every context (both per-file default and user created) is
- * isolated (insofar as HW supports). If this parameter is not true, then
- * freshly created contexts may inherit values from an existing context,
- * rather than default HW values. If true, it also ensures (insofar as HW
- * supports) that all state set by this context will not leak to any other
- * context.
- *
- * As not every engine across every gen support contexts, the returned
- * value reports the support of context isolation for individual engines by
- * returning a bitmask of each engine class set to true if that class supports
- * isolation.
+ * Query whether the device can make cross-engine isolation guarantees for
+ * all the engines whose default state has been initialised.
  */
 #define I915_PARAM_HAS_CONTEXT_ISOLATION 50
 
-- 
2.35.1

