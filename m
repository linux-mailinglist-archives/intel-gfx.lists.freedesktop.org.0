Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D0FF317C064
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Mar 2020 15:39:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21F3B6E463;
	Fri,  6 Mar 2020 14:38:59 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A55FA89B11;
 Fri,  6 Mar 2020 14:38:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Mar 2020 06:38:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,522,1574150400"; d="scan'208";a="230084891"
Received: from srware-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.25.112])
 by orsmga007.jf.intel.com with ESMTP; 06 Mar 2020 06:38:54 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Fri,  6 Mar 2020 14:38:50 +0000
Message-Id: <20200306143850.673-2-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200306143850.673-1-tvrtko.ursulin@linux.intel.com>
References: <20200306143850.673-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/2] gem_wsim: Mark contexts as
 non-persistent
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

We want to mark workload contexts as non-persistent if possible so that we
do not have to worry about leaving long (or infinite!) batches running
post exit.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 benchmarks/gem_wsim.c | 50 ++++++++++++++++++++++++++++++++++++-------
 1 file changed, 42 insertions(+), 8 deletions(-)

diff --git a/benchmarks/gem_wsim.c b/benchmarks/gem_wsim.c
index c196b25317ce..7cb8ea5b18ba 100644
--- a/benchmarks/gem_wsim.c
+++ b/benchmarks/gem_wsim.c
@@ -1431,16 +1431,48 @@ alloc_step_batch(struct workload *wrk, struct w_step *w, unsigned int flags)
 #endif
 }
 
-static void __ctx_set_prio(uint32_t ctx_id, unsigned int prio)
+static bool has_persistence(int i915)
 {
-	struct drm_i915_gem_context_param param = {
-		.ctx_id = ctx_id,
-		.param = I915_CONTEXT_PARAM_PRIORITY,
-		.value = prio,
+	struct drm_i915_gem_context_param p = {
+		.param = I915_CONTEXT_PARAM_PERSISTENCE,
 	};
+	uint64_t saved;
+
+	if (__gem_context_get_param(i915, &p))
+		return false;
+
+	saved = p.value;
+	p.value = 0;
+	if (__gem_context_set_param(i915, &p))
+		return false;
+
+	p.value = saved;
+	return __gem_context_set_param(i915, &p) == 0;
+}
+
+static bool __has_persistence;
+
+static void __configure_context(uint32_t ctx_id, unsigned int prio)
+{
+	if (prio) {
+		struct drm_i915_gem_context_param param = {
+			.ctx_id = ctx_id,
+			.param = I915_CONTEXT_PARAM_PRIORITY,
+			.value = prio,
+		};
 
-	if (prio)
 		gem_context_set_param(fd, &param);
+	}
+
+	/* Mark as non-persistent if supported. */
+	if (__has_persistence) {
+		struct drm_i915_gem_context_param param = {
+			.ctx_id = ctx_id,
+			.param = I915_CONTEXT_PARAM_PERSISTENCE,
+		};
+
+		gem_context_set_param(fd, &param);
+	}
 }
 
 static int __vm_destroy(int i915, uint32_t vm_id)
@@ -1743,7 +1775,7 @@ prepare_workload(unsigned int id, struct workload *wrk, unsigned int flags)
 			ctx_vcs ^= 1;
 		}
 
-		__ctx_set_prio(ctx_id, wrk->prio);
+		__configure_context(ctx_id, wrk->prio);
 
 		/*
 		 * Do we need a separate context to satisfy this workloads which
@@ -1772,7 +1804,7 @@ prepare_workload(unsigned int id, struct workload *wrk, unsigned int flags)
 			ctx_id = args.ctx_id;
 			wrk->ctx_list[i + 1].id = args.ctx_id;
 
-			__ctx_set_prio(ctx_id, wrk->prio);
+			__configure_context(ctx_id, wrk->prio);
 		}
 
 		if (ctx->engine_map) {
@@ -3280,6 +3312,8 @@ int main(int argc, char **argv)
 	fd = __drm_open_driver(DRIVER_INTEL);
 	igt_require(fd);
 
+	__has_persistence = has_persistence(fd);
+
 	intel_register_access_init(&mmio_data, intel_get_pci_device(), false, fd);
 
 	init_clocks();
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
