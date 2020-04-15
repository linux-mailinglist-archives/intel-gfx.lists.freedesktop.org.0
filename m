Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB091A9A24
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2020 12:12:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95A986E951;
	Wed, 15 Apr 2020 10:12:00 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59AF26E94D
 for <Intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2020 10:11:54 +0000 (UTC)
IronPort-SDR: faGVtkEeP01qYsgYLwRUh8BPhWvJrMVftUIboKcT2Up/MwBcBkxOITOUTuVmK4utjcf0D6th63
 TOumxUgfiddw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2020 03:11:54 -0700
IronPort-SDR: 7UH9Ks40Z4MNa9pZ7keJRNRTJtJXCtoCmZiUJs9p9NMcKIpZpfhXei4Oi5JxGL3uCwXMzx7D2F
 RMiBcBat6sJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,386,1580803200"; d="scan'208";a="427385490"
Received: from idodadon-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.214.240.154])
 by orsmga005.jf.intel.com with ESMTP; 15 Apr 2020 03:11:52 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 15 Apr 2020 11:11:33 +0100
Message-Id: <20200415101138.26126-5-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415101138.26126-1-tvrtko.ursulin@linux.intel.com>
References: <20200415101138.26126-1-tvrtko.ursulin@linux.intel.com>
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
index 984abd8cc76a..d4229155853b 100644
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
