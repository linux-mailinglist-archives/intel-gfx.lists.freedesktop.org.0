Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E57917137A
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 09:58:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2720D6EC50;
	Thu, 27 Feb 2020 08:57:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4BBA6EC52
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 08:57:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20366827-1500050 
 for multiple; Thu, 27 Feb 2020 08:57:26 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 27 Feb 2020 08:57:07 +0000
Message-Id: <20200227085723.1961649-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
References: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 04/20] drm/i915/perf: Wait for lrc_reconfigure
 on disable
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

Wait for the last request (and so waits for all context updates) when
disabling OA. This prevents a rather bizarre error seen on Skylake
where the context is subsequently corrupted. Let's play safe and assume
it may impact all.

Reported-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 2334c45f1d08..20c68b5dea63 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2191,7 +2191,8 @@ static int gen8_modify_context(struct intel_context *ce,
 }
 
 static int gen8_modify_self(struct intel_context *ce,
-			    const struct flex *flex, unsigned int count)
+			    const struct flex *flex, unsigned int count,
+			    bool sync)
 {
 	struct i915_request *rq;
 	int err;
@@ -2204,7 +2205,12 @@ static int gen8_modify_self(struct intel_context *ce,
 
 	err = gen8_load_flex(rq, ce, flex, count);
 
+	i915_request_get(rq);
 	i915_request_add(rq);
+	if (sync && i915_request_wait(rq, 0, HZ) < 0)
+		err = -ETIME;
+	i915_request_put(rq);
+
 	return err;
 }
 
@@ -2281,7 +2287,7 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream, bool ena
 		return err;
 
 	/* Apply regs_lri using LRI with pinned context */
-	return gen8_modify_self(ce, regs_lri, ARRAY_SIZE(regs_lri));
+	return gen8_modify_self(ce, regs_lri, ARRAY_SIZE(regs_lri), false);
 }
 
 /*
@@ -2311,7 +2317,8 @@ static int gen12_configure_oar_context(struct i915_perf_stream *stream, bool ena
  */
 static int oa_configure_all_contexts(struct i915_perf_stream *stream,
 				     struct flex *regs,
-				     size_t num_regs)
+				     size_t num_regs,
+				     bool enable)
 {
 	struct drm_i915_private *i915 = stream->perf->i915;
 	struct intel_engine_cs *engine;
@@ -2368,7 +2375,7 @@ static int oa_configure_all_contexts(struct i915_perf_stream *stream,
 
 		regs[0].value = intel_sseu_make_rpcs(i915, &ce->sseu);
 
-		err = gen8_modify_self(ce, regs, num_regs);
+		err = gen8_modify_self(ce, regs, num_regs, !enable);
 		if (err)
 			return err;
 	}
@@ -2386,7 +2393,9 @@ static int gen12_configure_all_contexts(struct i915_perf_stream *stream,
 		},
 	};
 
-	return oa_configure_all_contexts(stream, regs, ARRAY_SIZE(regs));
+	return oa_configure_all_contexts(stream,
+					 regs, ARRAY_SIZE(regs),
+					 oa_config);
 }
 
 static int lrc_configure_all_contexts(struct i915_perf_stream *stream,
@@ -2423,7 +2432,9 @@ static int lrc_configure_all_contexts(struct i915_perf_stream *stream,
 	for (i = 2; i < ARRAY_SIZE(regs); i++)
 		regs[i].value = oa_config_flex_reg(oa_config, regs[i].reg);
 
-	return oa_configure_all_contexts(stream, regs, ARRAY_SIZE(regs));
+	return oa_configure_all_contexts(stream,
+					 regs, ARRAY_SIZE(regs),
+					 oa_config);
 }
 
 static int gen8_enable_metric_set(struct i915_perf_stream *stream)
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
