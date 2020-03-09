Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DB217E739
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 19:31:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0857B6E50B;
	Mon,  9 Mar 2020 18:31:49 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 060C36E503
 for <Intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 18:31:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 11:31:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,534,1574150400"; d="scan'208";a="231027960"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.21.27])
 by orsmga007.jf.intel.com with ESMTP; 09 Mar 2020 11:31:44 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon,  9 Mar 2020 18:31:27 +0000
Message-Id: <20200309183129.2296-11-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 10/12] drm/i915: Carry over past software tracked
 context runtime
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

Accumulate software tracked runtime from abandoned engines and destroyed
contexts (same as we previously did for pphwsp runtimes).

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c       | 11 ++++++++++-
 drivers/gpu/drm/i915/gem/i915_gem_context_types.h |  5 +++++
 drivers/gpu/drm/i915/i915_drm_client.h            |  5 +++++
 3 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index d3887712f8c3..abf8c777041d 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -267,6 +267,10 @@ static void free_engines_rcu(struct rcu_head *rcu)
 
 		GEM_BUG_ON(class >= ARRAY_SIZE(ctx->past_runtime));
 		atomic64_add(ce->runtime.total, &ctx->past_runtime[class]);
+
+		GEM_BUG_ON(class >= ARRAY_SIZE(ctx->past_sw_runtime));
+		atomic64_add(ktime_to_ns(intel_context_get_busy_time(ce)),
+			     &ctx->past_sw_runtime[class]);
 	}
 
 	i915_gem_context_put(ctx);
@@ -326,9 +330,14 @@ static void i915_gem_context_free(struct i915_gem_context *ctx)
 		/* Transfer accumulated runtime to the parent drm client. */
 		BUILD_BUG_ON(ARRAY_SIZE(client->past_runtime) !=
 			     ARRAY_SIZE(ctx->past_runtime));
-		for (i = 0; i < ARRAY_SIZE(client->past_runtime); i++)
+		BUILD_BUG_ON(ARRAY_SIZE(client->past_sw_runtime) !=
+			     ARRAY_SIZE(ctx->past_sw_runtime));
+		for (i = 0; i < ARRAY_SIZE(client->past_runtime); i++) {
 			atomic64_add(atomic64_read(&ctx->past_runtime[i]),
 				     &client->past_runtime[i]);
+			atomic64_add(atomic64_read(&ctx->past_sw_runtime[i]),
+				     &client->past_sw_runtime[i]);
+		}
 
 		i915_drm_client_put(client);
 	}
diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
index 255fcc469d9b..fac11b208ea9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
@@ -185,6 +185,11 @@ struct i915_gem_context {
 	 * @past_runtime: Accumulation of freed intel_context pphwsp runtimes.
 	 */
 	atomic64_t past_runtime[MAX_ENGINE_CLASS + 1];
+
+	/**
+	 * @past_sw_runtime: Accumulation of freed intel_context runtimes.
+	 */
+	atomic64_t past_sw_runtime[MAX_ENGINE_CLASS + 1];
 };
 
 #endif /* __I915_GEM_CONTEXT_TYPES_H__ */
diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
index da83259170e7..aa1e446d0376 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.h
+++ b/drivers/gpu/drm/i915/i915_drm_client.h
@@ -66,6 +66,11 @@ struct i915_drm_client {
 	 * @past_runtime: Accumulation of pphwsp runtimes from closed contexts.
 	 */
 	atomic64_t past_runtime[MAX_ENGINE_CLASS + 1];
+
+	/**
+	 * @past_sw_runtime: Accumulation of runtimes from closed contexts.
+	 */
+	atomic64_t past_sw_runtime[MAX_ENGINE_CLASS + 1];
 };
 
 static inline struct i915_drm_client *
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
