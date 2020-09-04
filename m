Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7518E25D914
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Sep 2020 14:59:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC1736EB9C;
	Fri,  4 Sep 2020 12:59:56 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 049686EB9C
 for <Intel-gfx@lists.freedesktop.org>; Fri,  4 Sep 2020 12:59:55 +0000 (UTC)
IronPort-SDR: 3JVQ+4JH1M4qew7NK/W25zqYN9K8V2WOSaWNwjhFPkSWhxHHFJYgy3UdtQ23LOFFrC6zR63QCm
 ododL8R4ywkQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9733"; a="175788967"
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="175788967"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 05:59:55 -0700
IronPort-SDR: 4QvRmfbu7o/57jj1+U0I36S4e8/GumZfUjE9tSq5SyfAL8ejPOEuZavWNyY45t6kFry60Pn/zw
 sKKQxxdJ7Nlw==
X-IronPort-AV: E=Sophos;i="5.76,389,1592895600"; d="scan'208";a="478478866"
Received: from arielsig-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.165.178])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2020 05:59:54 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  4 Sep 2020 13:59:29 +0100
Message-Id: <20200904125934.133475-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200904125934.133475-1-tvrtko.ursulin@linux.intel.com>
References: <20200904125934.133475-1-tvrtko.ursulin@linux.intel.com>
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
index ab8d25eda204..05f3a6fd9be4 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -253,7 +253,19 @@ static void free_engines_rcu(struct rcu_head *rcu)
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
@@ -274,7 +286,6 @@ engines_notify(struct i915_sw_fence *fence, enum i915_sw_fence_notify state)
 			list_del(&engines->link);
 			spin_unlock_irqrestore(&ctx->stale.lock, flags);
 		}
-		i915_gem_context_put(engines->ctx);
 		break;
 
 	case FENCE_FREE:
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 31a6a30f7ea8..e473984b52c8 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -178,6 +178,11 @@ struct i915_gem_context {
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
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
