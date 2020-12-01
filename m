Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0152C9B0C
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Dec 2020 10:07:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D828B6E4D2;
	Tue,  1 Dec 2020 09:07:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7CF06E4B7
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Dec 2020 09:07:41 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23172171-1500050 
 for multiple; Tue, 01 Dec 2020 09:07:32 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 09:07:23 +0000
Message-Id: <20201201090729.24777-6-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201201090729.24777-1-chris@chris-wilson.co.uk>
References: <20201201090729.24777-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 06/12] drm/i915: Track runtime spent in closed
 and unreachable GEM contexts
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

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

As contexts are abandoned we want to remember how much GPU time they used
(per class) so later we can used it for smarter purposes.

As GEM contexts are closed we want to have the DRM client remember how
much GPU time they used (per class) so later we can used it for smarter
purposes.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 24 +++++++++++++++++++--
 drivers/gpu/drm/i915/i915_drm_client.h      |  7 ++++++
 2 files changed, 29 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index b0bcfce2a1e4..e9bfedf9da84 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -258,23 +258,43 @@ static void free_engines_rcu(struct rcu_head *rcu)
 	free_engines(engines);
 }
 
+static void accumulate_runtime(struct i915_drm_client *client,
+			       struct i915_gem_engines *engines)
+{
+	struct i915_gem_engines_iter it;
+	struct intel_context *ce;
+
+	if (!client)
+		return;
+
+	/* Transfer accumulated runtime to the parent GEM context. */
+	for_each_gem_engine(ce, engines, it) {
+		unsigned int class = ce->engine->uabi_class;
+
+		GEM_BUG_ON(class >= ARRAY_SIZE(client->past_runtime));
+		atomic64_add(ce->runtime.total,
+			     &client->past_runtime[class]);
+	}
+}
+
 static int __i915_sw_fence_call
 engines_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
 {
 	struct i915_gem_engines *engines =
 		container_of(fence, typeof(*engines), fence);
+	struct i915_gem_context *ctx = engines->ctx;
 
 	switch (state) {
 	case FENCE_COMPLETE:
 		if (!list_empty(&engines->link)) {
-			struct i915_gem_context *ctx = engines->ctx;
 			unsigned long flags;
 
 			spin_lock_irqsave(&ctx->stale.lock, flags);
 			list_del(&engines->link);
 			spin_unlock_irqrestore(&ctx->stale.lock, flags);
 		}
-		i915_gem_context_put(engines->ctx);
+		accumulate_runtime(ctx->client, engines);
+		i915_gem_context_put(ctx);
 		break;
 
 	case FENCE_FREE:
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index d4d3c0af5793..c2ca28335c15 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -15,6 +15,8 @@
 #include <linux/sched.h>
 #include <linux/xarray.h>
 
+#include "gt/intel_engine_types.h"
+
 struct drm_i915_private;
 
 struct i915_drm_clients {
@@ -51,6 +53,11 @@ struct i915_drm_client {
 		struct device_attribute pid;
 		struct device_attribute name;
 	} attr;
+
+	/**
+	 * @past_runtime: Accumulation of pphwsp runtimes from closed contexts.
+	 */
+	atomic64_t past_runtime[MAX_ENGINE_CLASS + 1];
 };
 
 void i915_drm_clients_init(struct i915_drm_clients *clients,
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
