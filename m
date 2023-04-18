Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 560456E587D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Apr 2023 07:23:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6F4810E66C;
	Tue, 18 Apr 2023 05:22:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3985310E044
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Apr 2023 05:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681795377; x=1713331377;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2cAQTdE2tTiX38UIHigDQu3agvjsIXtoSS8o4E/I6MY=;
 b=WXVKNBf3UaviiWTuRRRzMo/kmSQBw+2pjMa1ao3aM1WT8S19s5eHMAWp
 Dj+WfSuVklT8PCXWfnfnmZBPCB2aJHU+IlMusqZ1YPBdoueADO24+LlyZ
 /gjju+iSlJCFdAA/scy+dcw27kkl7lZGwjHEGETPzb4H68R3NG7T3u/05
 YGBKOxHmbejgwOtITbUGUEHVFRWLABjwPs1N+fhheocZ5ErKckUaH0hMe
 7WfwRyZDIIj+fR1zsx0mLSjUrDPstuwfxFhycjMItpP489XS6xFQb9MeH
 IyAnXYA4NripI6rkfTACAgTfRPpehvDO0K42j9+wp5PyxZfyJb8OGVgSo Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="372957640"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="372957640"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 22:22:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="760227729"
X-IronPort-AV: E=Sophos;i="5.99,206,1677571200"; d="scan'208";a="760227729"
Received: from rboza-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.212.229])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 22:22:55 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 18 Apr 2023 08:22:21 +0300
Message-Id: <20230418052221.593983-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230418052221.593983-1-jouni.hogander@intel.com>
References: <20230418052221.593983-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Handle dma fences in dirtyfb
 callback
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

Take into account dma fences in dirtyfb callback. If there is no
unsignaled dma fences perform flush immediately. If there are
unsignaled dma fences perform invalidate and add callback which will
queue flush when the fence gets signaled.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 54 +++++++++++++++++++++++--
 1 file changed, 51 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index e5f637897b5e..c8707d331bf1 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -7,6 +7,9 @@
 #include <drm/drm_framebuffer.h>
 #include <drm/drm_modeset_helper.h>
 
+#include <linux/dma-fence.h>
+#include <linux/dma-resv.h>
+
 #include "i915_drv.h"
 #include "intel_display.h"
 #include "intel_display_types.h"
@@ -1854,6 +1857,20 @@ static int intel_user_framebuffer_create_handle(struct drm_framebuffer *fb,
 	return drm_gem_handle_create(file, &obj->base, handle);
 }
 
+struct frontbuffer_fence_cb {
+	struct dma_fence_cb base;
+	struct intel_frontbuffer *front;
+};
+
+static void intel_user_framebuffer_fence_wake(struct dma_fence *dma,
+					      struct dma_fence_cb *data)
+{
+	struct frontbuffer_fence_cb *cb = container_of(data, typeof(*cb), base);
+
+	intel_frontbuffer_queue_flush(cb->front);
+	kfree(cb);
+}
+
 static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
 					struct drm_file *file,
 					unsigned int flags, unsigned int color,
@@ -1861,11 +1878,42 @@ static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
 					unsigned int num_clips)
 {
 	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
+	struct intel_frontbuffer *front = to_intel_frontbuffer(fb);
+	struct dma_resv_iter cursor;
+	struct dma_fence *fence;
+	int ret;
+
+	if (dma_resv_test_signaled(obj->base.resv, dma_resv_usage_rw(false))) {
+		i915_gem_object_flush_if_display(obj);
+		intel_frontbuffer_flush(front, ORIGIN_DIRTYFB);
+		return 0;
+	}
 
-	i915_gem_object_flush_if_display(obj);
-	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
+	intel_frontbuffer_invalidate(front, ORIGIN_DIRTYFB);
 
-	return 0;
+	dma_resv_iter_begin(&cursor, obj->base.resv, dma_resv_usage_rw(false));
+	dma_resv_for_each_fence_unlocked(&cursor, fence) {
+		struct frontbuffer_fence_cb *cb =
+			kmalloc(sizeof(struct frontbuffer_fence_cb), GFP_KERNEL);
+		if (!cb) {
+			ret = -ENOMEM;
+			break;
+		}
+		cb->front = front;
+
+		ret = dma_fence_add_callback(fence, &cb->base,
+					     intel_user_framebuffer_fence_wake);
+		if (ret) {
+			intel_user_framebuffer_fence_wake(fence, &cb->base);
+			if (ret == -ENOENT)
+				ret = 0;
+			else
+				break;
+		}
+	}
+	dma_resv_iter_end(&cursor);
+
+	return ret;
 }
 
 static const struct drm_framebuffer_funcs intel_fb_funcs = {
-- 
2.34.1

