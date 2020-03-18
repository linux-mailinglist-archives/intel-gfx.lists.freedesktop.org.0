Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6330F189A28
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Mar 2020 12:02:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D62B6E8CB;
	Wed, 18 Mar 2020 11:02:11 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA7606E8C3
 for <Intel-gfx@lists.freedesktop.org>; Wed, 18 Mar 2020 11:02:02 +0000 (UTC)
IronPort-SDR: gVEkKKbLeWIS9K/2tpMNq/Qoj/otTOLzw9JkbOHskWRJXRLlx3eWhgPUjGFELKSAGvRAzb41/7
 BF0xVL9n+ylg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 04:02:02 -0700
IronPort-SDR: wRvXdTT6uHWlpM501sZZ10uOmLQWiMRXzEc4Sp4CuRRB2g9E1acDuQxfw1FjTNzL+RLfp0bbH5
 D3RbQqYEPQog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,567,1574150400"; d="scan'208";a="244790997"
Received: from unknown (HELO localhost.localdomain) ([10.214.196.8])
 by orsmga003.jf.intel.com with ESMTP; 18 Mar 2020 04:02:01 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 18 Mar 2020 11:01:41 +0000
Message-Id: <20200318110146.22339-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200318110146.22339-1-tvrtko.ursulin@linux.intel.com>
References: <20200318110146.22339-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/9] drm/i915: Track runtime spent in
 unreachable intel_contexts
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

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c       | 13 ++++++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_context_types.h |  5 +++++
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 7c119a3a2cbd..5edf79ed6247 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -257,7 +257,19 @@ static void free_engines_rcu(struct rcu_head *rcu)
 {
 	struct i915_gem_engines *engines =
 		container_of(rcu, struct i915_gem_engines, rcu);
+	struct i915_gem_context *ctx = engines->ctx;
+	struct i915_gem_engines_iter it;
+	struct intel_context *ce;
+
+	/* Transfer accumulated runtime to the parent GEM context. */
+	for_each_gem_engine(ce, engines, it) {
+		unsigned int class = ce->engine->uabi_class;
 
+		GEM_BUG_ON(class >= ARRAY_SIZE(ctx->past_runtime));
+		atomic64_add(ce->runtime.total, &ctx->past_runtime[class]);
+	}
+
+	i915_gem_context_put(ctx);
 	i915_sw_fence_fini(&engines->fence);
 	free_engines(engines);
 }
@@ -278,7 +290,6 @@ engines_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
 			list_del(&engines->link);
 			spin_unlock_irqrestore(&ctx->stale.lock, flags);
 		}
-		i915_gem_context_put(engines->ctx);
 		break;
 
 	case FENCE_FREE:
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index b0e03380c690..f0d7441aafc8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -177,6 +177,11 @@ struct i915_gem_context {
 		spinlock_t lock;
 		struct list_head engines;
 	} stale;
+
+	/**
+	 * @past_runtime: Accumulation of freed intel_context pphwsp runtimes.
+	 */
+	atomic64_t past_runtime[MAX_ENGINE_CLASS + 1];
 };
 
 #endif /* __I915_GEM_CONTEXT_TYPES_H__ */
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
