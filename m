Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 62F147645A7
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jul 2023 07:35:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A8D210E4D9;
	Thu, 27 Jul 2023 05:35:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01DFA10E4DA
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jul 2023 05:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690436151; x=1721972151;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=irDZYS/ahFVECyZroq8vwXN6EfCJrw6pXVDxH5AoWbM=;
 b=YkGIOL0zPNnnGZ14VaiTDUSIAbrJBcBg2P203frxe3w6rAALQeqgRPxC
 cHD7Dw6uC5B5wqXYMEnMv4uPiEC9xhGyrNOVwUq8+oEdXN2Aeigz/aKwF
 QJyHMl41Vyb16aZz0T74cwfK/F+jsUyj0j6Hp4pvpigVfwPoiThuoOrRw
 DOyb7uXYeIXw9lJvESXvSVpWz2RAMcUZETluMBF3gUqrIAtMhm8EEJ3l7
 RZY25D+jVmOoV/cei8i2P6m/7t7GR+Jee2w3k6ouio/8bLkgtgTR7cC9i
 uJKrQ09w/5NpRmhY7mXUkZkOSG7YSWkKoIZlGvynXZZCDQNiwv8gSeiHK Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="368227221"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="368227221"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 22:35:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="676978345"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="676978345"
Received: from vgrigo2x-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.35.8])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2023 22:35:47 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Jul 2023 08:35:18 +0300
Message-Id: <20230727053518.709345-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230727053518.709345-1-jouni.hogander@intel.com>
References: <20230727053518.709345-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/4] drm/i915: Handle dma fences in dirtyfb
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

v2: Use dma_resv_get_singleton

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 57 +++++++++++++++++++++++--
 1 file changed, 54 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 446bbf7986b6..56a21377680d 100644
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
@@ -1896,6 +1899,21 @@ static int intel_user_framebuffer_create_handle(struct drm_framebuffer *fb,
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
+	dma_fence_put(dma);
+}
+
 static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
 					struct drm_file *file,
 					unsigned int flags, unsigned int color,
@@ -1903,11 +1921,44 @@ static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
 					unsigned int num_clips)
 {
 	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
+	struct intel_frontbuffer *front = to_intel_frontbuffer(fb);
+	struct dma_fence *fence;
+	struct frontbuffer_fence_cb *cb;
+	int ret = 0;
+
+	if (dma_resv_test_signaled(obj->base.resv, dma_resv_usage_rw(false)))
+		goto flush;
+
+	intel_frontbuffer_invalidate(front, ORIGIN_DIRTYFB);
+
+	ret = dma_resv_get_singleton(obj->base.resv, dma_resv_usage_rw(false),
+				     &fence);
+	if (ret || !fence)
+		goto flush;
+
+	cb = kmalloc(sizeof(*cb), GFP_KERNEL);
+	if (!cb) {
+		dma_fence_put(fence);
+		ret = -ENOMEM;
+		goto flush;
+	}
 
-	i915_gem_object_flush_if_display(obj);
-	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
+	cb->front = front;
 
-	return 0;
+	ret = dma_fence_add_callback(fence, &cb->base,
+				     intel_user_framebuffer_fence_wake);
+	if (ret) {
+		intel_user_framebuffer_fence_wake(fence, &cb->base);
+		if (ret == -ENOENT)
+			ret = 0;
+	}
+
+	return ret;
+
+flush:
+	i915_gem_object_flush_if_display(obj);
+	intel_frontbuffer_flush(front, ORIGIN_DIRTYFB);
+	return ret;
 }
 
 static const struct drm_framebuffer_funcs intel_fb_funcs = {
-- 
2.34.1

