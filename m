Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B36378D3D1
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Aug 2023 10:04:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E192D10E4D0;
	Wed, 30 Aug 2023 08:04:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF46210E4D3
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Aug 2023 08:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693382672; x=1724918672;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=d+KOU0DIbeLMCrcGL5O3ROJa1FIJrDsm+aFynBWBYBk=;
 b=ip6mPo4C9upHeYHzi+WlIp8GqpoefYsze1cKmcOSUIDtcyHaKlLeQ15O
 6SiDi0kxFYuxCe5NiAX22pihJpTzt7AEJ7Xv0GXow/INPl/fW+ike+s3Y
 6pXzi+9D22WQkMudTDenQf+z3Ie98+rweIou+1RnXYIhNutOUR1xCoNCP
 35cHnZvkqafUaCYQZ12JCuu1ihJpdWMBWDOSypi8yplmxLJpCfN0PvJAI
 gzxrmidy0gqomFJQbyCpNpLmFuYEMRChOTc3EGr+zc8orSNr3vYpmPyMf
 DBYh11RnmhCQq38nwULwa86SbkFdEbRD3fp/0ZndjThHCIQhhSWgqVZqa g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10817"; a="439526932"
X-IronPort-AV: E=Sophos;i="6.02,213,1688454000"; d="scan'208";a="439526932"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 01:02:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="882646743"
Received: from alorinti-mobl3.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.33.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Aug 2023 01:02:46 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 30 Aug 2023 11:02:19 +0300
Message-Id: <20230830080219.2529281-5-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230830080219.2529281-1-jouni.hogander@intel.com>
References: <20230830080219.2529281-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 4/4] drm/i915: Handle dma fences in dirtyfb
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

v3:
 - Check frontbuffer bits before adding any fence fb
 - Flush only when adding fence cb succeeds
v2: Use dma_resv_get_singleton

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 60 +++++++++++++++++++++++--
 1 file changed, 57 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 446bbf7986b6..b5b9d6d9c9c5 100644
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
@@ -1903,11 +1921,47 @@ static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
 					unsigned int num_clips)
 {
 	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
+	struct intel_frontbuffer *front = to_intel_frontbuffer(fb);
+	struct dma_fence *fence;
+	struct frontbuffer_fence_cb *cb;
+	int ret = 0;
 
-	i915_gem_object_flush_if_display(obj);
-	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
+	if (!atomic_read(&front->bits))
+		return 0;
 
-	return 0;
+	if (dma_resv_test_signaled(obj->base.resv, dma_resv_usage_rw(false)))
+		goto flush;
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
+
+	cb->front = front;
+
+	ret = dma_fence_add_callback(fence, &cb->base,
+				     intel_user_framebuffer_fence_wake);
+	if (ret) {
+		intel_user_framebuffer_fence_wake(fence, &cb->base);
+		if (ret == -ENOENT)
+			ret = 0;
+	} else {
+		intel_frontbuffer_invalidate(front, ORIGIN_DIRTYFB);
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

