Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDDD7598DB
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 16:53:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3F8B10E0AB;
	Wed, 19 Jul 2023 14:53:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0709910E4C2
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 14:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689778413; x=1721314413;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iUYoW7wl0iv7Bv3JHk30a8XeeptPyrYltDAlNCmcf0c=;
 b=k6v3rOrdFgRtzVos+rBZfbKObhE916WHs/3EBim0a8HuweQO7YVT/dlu
 8mutzZzIj9dqKfzMl8CbMIwQwqOlDbR6phNXjmSouulpo6BaRWDMRbUT1
 Gix2dIkfQ92E2k6vaVVinQKEWm/KW7SOleohDiObhu64+alSWHWRWuNTd
 cGtU5QC7TFg4tyFBdHfb7zOE0lVIMAXucvuCMafxCe6yKZyUnLStfrd7j
 6xkbvNRogqXC82rJJ022gnVhS668GESyXsFPJ77fp0YUWUA0KoGylSCO7
 ftdQrvVqE6oQfW69BPNvOPBAAHZPa7Ne3EVO3hi7faHJZqaj0abXROKiy g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="363947565"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="363947565"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 07:53:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="897942614"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="897942614"
Received: from lab-ah.igk.intel.com (HELO lab-ah.corp.intel.com)
 ([10.102.138.202])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 07:53:29 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 19 Jul 2023 16:53:17 +0200
Message-Id: <20230719145317.1485514-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] Revert "Revert "drm/i915: Hold reference to
 intel_context over life of i915_request""
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
Cc: Ramalingam C <ramalingam.c@intel.com>,
 Chris Wilson <chris.p.wilson@intel.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit bcb9aa45d5a0e11ef91245330c53cde214d15e8d.

The problem with this patch is that it makes rq->engine dangling pointer
after context removal. At least two places were located where it ends
with errors:
- i915_fence_release: intel_engine_is_virtual(rq->engine),
- i915_request_wait_timeout: mutex_(acquire|release)(&rq->engine->gt...)
It is possible there are more such places.
Taking context reference prevents this behaviour.

Commit message suggested the patch prevented reference loop in VM_BIND,
but since VM_BIND was dropped the revert hopefuly should be safe.

The patch fixes bug detected by KASAN with following signature:
i915 0000:00:02.0: [drm:i915_drop_caches_set [i915]] Dropping caches: 0x0000005c [0x0000005c]
BUG: KASAN: slab-use-after-free in i915_fence_release+0x2a2/0x2f0 [i915]
Read of size 4 at addr ffff88813ffda6e8 by task kworker/u32:10/157
...
Allocated by task 1184:
...
guc_create_virtual+0x4d/0x1160 [i915]
i915_gem_create_context+0x11ee/0x18c0 [i915]
...
Freed by task 151:
...
intel_guc_deregister_done_process_msg+0x324/0x6d0 [i915]
...

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7926
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
Hi Niranjana, Matt,

Could you look at this revert, to verify if situation described in
reverted patch will not happen now, without VM_BIND.

Regards
Andrzej
---
 drivers/gpu/drm/i915/i915_request.c | 52 +++++++++++------------------
 1 file changed, 20 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 894068bb37b6f1..c5fe199b046d01 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -134,42 +134,17 @@ static void i915_fence_release(struct dma_fence *fence)
 	i915_sw_fence_fini(&rq->semaphore);
 
 	/*
-	 * Keep one request on each engine for reserved use under mempressure
+	 * Keep one request on each engine for reserved use under mempressure,
 	 * do not use with virtual engines as this really is only needed for
 	 * kernel contexts.
-	 *
-	 * We do not hold a reference to the engine here and so have to be
-	 * very careful in what rq->engine we poke. The virtual engine is
-	 * referenced via the rq->context and we released that ref during
-	 * i915_request_retire(), ergo we must not dereference a virtual
-	 * engine here. Not that we would want to, as the only consumer of
-	 * the reserved engine->request_pool is the power management parking,
-	 * which must-not-fail, and that is only run on the physical engines.
-	 *
-	 * Since the request must have been executed to be have completed,
-	 * we know that it will have been processed by the HW and will
-	 * not be unsubmitted again, so rq->engine and rq->execution_mask
-	 * at this point is stable. rq->execution_mask will be a single
-	 * bit if the last and _only_ engine it could execution on was a
-	 * physical engine, if it's multiple bits then it started on and
-	 * could still be on a virtual engine. Thus if the mask is not a
-	 * power-of-two we assume that rq->engine may still be a virtual
-	 * engine and so a dangling invalid pointer that we cannot dereference
-	 *
-	 * For example, consider the flow of a bonded request through a virtual
-	 * engine. The request is created with a wide engine mask (all engines
-	 * that we might execute on). On processing the bond, the request mask
-	 * is reduced to one or more engines. If the request is subsequently
-	 * bound to a single engine, it will then be constrained to only
-	 * execute on that engine and never returned to the virtual engine
-	 * after timeslicing away, see __unwind_incomplete_requests(). Thus we
-	 * know that if the rq->execution_mask is a single bit, rq->engine
-	 * can be a physical engine with the exact corresponding mask.
 	 */
 	if (!intel_engine_is_virtual(rq->engine) &&
-	    is_power_of_2(rq->execution_mask) &&
-	    !cmpxchg(&rq->engine->request_pool, NULL, rq))
+	    !cmpxchg(&rq->engine->request_pool, NULL, rq)) {
+		intel_context_put(rq->context);
 		return;
+	}
+
+	intel_context_put(rq->context);
 
 	kmem_cache_free(slab_requests, rq);
 }
@@ -946,7 +921,19 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 		}
 	}
 
-	rq->context = ce;
+	/*
+	 * Hold a reference to the intel_context over life of an i915_request.
+	 * Without this an i915_request can exist after the context has been
+	 * destroyed (e.g. request retired, context closed, but user space holds
+	 * a reference to the request from an out fence). In the case of GuC
+	 * submission + virtual engine, the engine that the request references
+	 * is also destroyed which can trigger bad pointer dref in fence ops
+	 * (e.g. i915_fence_get_driver_name). We could likely change these
+	 * functions to avoid touching the engine but let's just be safe and
+	 * hold the intel_context reference. In execlist mode the request always
+	 * eventually points to a physical engine so this isn't an issue.
+	 */
+	rq->context = intel_context_get(ce);
 	rq->engine = ce->engine;
 	rq->ring = ce->ring;
 	rq->execution_mask = ce->engine->mask;
@@ -1022,6 +1009,7 @@ __i915_request_create(struct intel_context *ce, gfp_t gfp)
 	GEM_BUG_ON(!list_empty(&rq->sched.waiters_list));
 
 err_free:
+	intel_context_put(ce);
 	kmem_cache_free(slab_requests, rq);
 err_unreserve:
 	intel_context_unpin(ce);
-- 
2.34.1

