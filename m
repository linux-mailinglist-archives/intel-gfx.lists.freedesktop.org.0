Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A0717E73B
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Mar 2020 19:31:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1E776E4D2;
	Mon,  9 Mar 2020 18:31:53 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FA746E4D2
 for <Intel-gfx@lists.freedesktop.org>; Mon,  9 Mar 2020 18:31:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Mar 2020 11:31:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,534,1574150400"; d="scan'208";a="231027979"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.21.27])
 by orsmga007.jf.intel.com with ESMTP; 09 Mar 2020 11:31:47 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Mon,  9 Mar 2020 18:31:29 +0000
Message-Id: <20200309183129.2296-13-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
References: <20200309183129.2296-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 12/12] compare runtimes
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

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index abf8c777041d..1c41079dcf17 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -264,13 +264,22 @@ static void free_engines_rcu(struct rcu_head *rcu)
 	/* Transfer accumulated runtime to the parent GEM context. */
 	for_each_gem_engine(ce, engines, it) {
 		unsigned int class = ce->engine->uabi_class;
+		u64 runtime[2];
 
 		GEM_BUG_ON(class >= ARRAY_SIZE(ctx->past_runtime));
-		atomic64_add(ce->runtime.total, &ctx->past_runtime[class]);
+		runtime[0] = ce->runtime.total;
+		atomic64_add(runtime[0], &ctx->past_runtime[class]);
+		runtime[0] *= RUNTIME_INFO(ctx->i915)->cs_timestamp_period_ns;
 
 		GEM_BUG_ON(class >= ARRAY_SIZE(ctx->past_sw_runtime));
-		atomic64_add(ktime_to_ns(intel_context_get_busy_time(ce)),
-			     &ctx->past_sw_runtime[class]);
+		runtime[1] = ktime_to_ns(intel_context_get_busy_time(ce));
+		atomic64_add(runtime[1], &ctx->past_sw_runtime[class]);
+
+		if (runtime[0] || runtime[1])
+			printk("%p class%u %llums vs %llums\n",
+			       ce, class,
+			       runtime[0] / 1000000,
+			       runtime[1] / 1000000);
 	}
 
 	i915_gem_context_put(ctx);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
