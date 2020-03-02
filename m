Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0FF175661
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 09:58:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EA186E151;
	Mon,  2 Mar 2020 08:58:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 776F16E14E
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Mar 2020 08:58:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20409414-1500050 
 for multiple; Mon, 02 Mar 2020 08:58:23 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Mar 2020 08:57:58 +0000
Message-Id: <20200302085812.4172450-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200302085812.4172450-1-chris@chris-wilson.co.uk>
References: <20200302085812.4172450-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 08/22] drm/i915: Wrap i915_active in a simple
 kreffed struct
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For conveniences of callers that just want to use an i915_active to
track a wide array of concurrent timelines, wrap the base i915_active
struct inside a kref. This i915_active will self-destruct after use.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_active.c | 53 ++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_active.h |  4 +++
 2 files changed, 57 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 7b3d6c12ad61..1826de14d2da 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -881,6 +881,59 @@ void i915_active_noop(struct dma_fence *fence, struct dma_fence_cb *cb)
 	active_fence_cb(fence, cb);
 }
 
+struct auto_active {
+	struct i915_active base;
+	struct kref ref;
+};
+
+struct i915_active *i915_active_get(struct i915_active *ref)
+{
+	struct auto_active *aa = container_of(ref, typeof(*aa), base);
+
+	kref_get(&aa->ref);
+	return &aa->base;
+}
+
+static void auto_release(struct kref *ref)
+{
+	struct auto_active *aa = container_of(ref, typeof(*aa), ref);
+
+	i915_active_fini(&aa->base);
+	kfree(aa);
+}
+
+void i915_active_put(struct i915_active *ref)
+{
+	struct auto_active *aa = container_of(ref, typeof(*aa), base);
+
+	kref_put(&aa->ref, auto_release);
+}
+
+static int auto_active(struct i915_active *ref)
+{
+	i915_active_get(ref);
+	return 0;
+}
+
+static void auto_retire(struct i915_active *ref)
+{
+	i915_active_put(ref);
+}
+
+struct i915_active *i915_active_create(void)
+{
+	struct auto_active *aa;
+
+	aa = kmalloc(sizeof(*aa), GFP_KERNEL);
+	if (!aa)
+		return NULL;
+
+	kref_init(&aa->ref);
+	i915_active_init(&aa->base, auto_active, auto_retire);
+
+	return &aa->base;
+}
+
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
 #include "selftests/i915_active.c"
 #endif
diff --git a/drivers/gpu/drm/i915/i915_active.h b/drivers/gpu/drm/i915/i915_active.h
index 973ff0447c6c..7e438501333e 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -215,4 +215,8 @@ void i915_request_add_active_barriers(struct i915_request *rq);
 void i915_active_print(struct i915_active *ref, struct drm_printer *m);
 void i915_active_unlock_wait(struct i915_active *ref);
 
+struct i915_active *i915_active_create(void);
+struct i915_active *i915_active_get(struct i915_active *ref);
+void i915_active_put(struct i915_active *ref);
+
 #endif /* _I915_ACTIVE_H_ */
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
