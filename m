Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E23BF195639
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 12:22:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C43D6E9FE;
	Fri, 27 Mar 2020 11:22:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 958956E9FE
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 11:22:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20711647-1500050 
 for multiple; Fri, 27 Mar 2020 11:22:13 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 11:22:11 +0000
Message-Id: <20200327112212.16046-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200327112212.16046-1-chris@chris-wilson.co.uk>
References: <20200327112212.16046-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/3] drm/i915: Wrap i915_active in a simple
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
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_active.c | 53 ++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/i915_active.h |  4 +++
 2 files changed, 57 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
index 7b685032cc1e..5df7704369fd 100644
--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -939,6 +939,59 @@ void i915_active_noop(struct dma_fence *fence, struct dma_fence_cb *cb)
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
index 4f9aa7bab514..b526d310a585 100644
--- a/drivers/gpu/drm/i915/i915_active.h
+++ b/drivers/gpu/drm/i915/i915_active.h
@@ -225,4 +225,8 @@ void i915_request_add_active_barriers(struct i915_request *rq);
 void i915_active_print(struct i915_active *ref, struct drm_printer *m);
 void i915_active_unlock_wait(struct i915_active *ref);
 
+struct i915_active *i915_active_create(void);
+struct i915_active *i915_active_get(struct i915_active *ref);
+void i915_active_put(struct i915_active *ref);
+
 #endif /* _I915_ACTIVE_H_ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
