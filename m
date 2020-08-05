Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FCDB23CA92
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Aug 2020 14:23:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37D236E5C0;
	Wed,  5 Aug 2020 12:23:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0854F6E59F
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Aug 2020 12:22:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 22039476-1500050 
 for multiple; Wed, 05 Aug 2020 13:22:33 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Aug 2020 13:22:11 +0100
Message-Id: <20200805122231.23313-18-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200805122231.23313-1-chris@chris-wilson.co.uk>
References: <20200805122231.23313-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/37] drm/i915/gem: Assign context id for async
 work
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Allocate a few dma fence context id that we can use to associate async work
[for the CPU] launched on behalf of this context. For extra fun, we allow
a configurable concurrency width.

A current example would be that we spawn an unbound worker for every
userptr get_pages. In the future, we wish to charge this work to the
context that initiated the async work and to impose concurrency limits
based on the context.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c       | 4 ++++
 drivers/gpu/drm/i915/gem/i915_gem_context.h       | 6 ++++++
 drivers/gpu/drm/i915/gem/i915_gem_context_types.h | 6 ++++++
 3 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index db893f6c516b..bc80e7d3c50a 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -721,6 +721,10 @@ __create_context(struct drm_i915_private *i915)
 	mutex_init(&ctx->mutex);
 	INIT_LIST_HEAD(&ctx->link);
 
+	ctx->async.width = rounddown_pow_of_two(num_online_cpus());
+	ctx->async.context = dma_fence_context_alloc(ctx->async.width);
+	ctx->async.width--;
+
 	spin_lock_init(&ctx->stale.lock);
 	INIT_LIST_HEAD(&ctx->stale.engines);
 
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.h b/drivers/gpu/drm/i915/gem/i915_gem_context.h
index a133f92bbedb..f254458a795e 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.h
@@ -134,6 +134,12 @@ int i915_gem_context_setparam_ioctl(struct drm_device *dev, void *data,
 int i915_gem_context_reset_stats_ioctl(struct drm_device *dev, void *data,
 				       struct drm_file *file);
 
+static inline u64 i915_gem_context_async_id(struct i915_gem_context *ctx)
+{
+	return (ctx->async.context +
+		(atomic_fetch_inc(&ctx->async.cur) & ctx->async.width));
+}
+
 static inline struct i915_gem_context *
 i915_gem_context_get(struct i915_gem_context *ctx)
 {
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index ae14ca24a11f..52561f98000f 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -85,6 +85,12 @@ struct i915_gem_context {
 
 	struct intel_timeline *timeline;
 
+	struct {
+		u64 context;
+		atomic_t cur;
+		unsigned int width;
+	} async;
+
 	/**
 	 * @vm: unique address space (GTT)
 	 *
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
