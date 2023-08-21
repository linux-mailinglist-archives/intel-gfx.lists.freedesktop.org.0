Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A235782D4A
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 17:30:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4711310E0EF;
	Mon, 21 Aug 2023 15:30:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12CA510E0EF
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 15:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692631850; x=1724167850;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=R35zCmWbxXUBoAyVuZw/MA9I4oHjfQ0kbk6pgJ9oZ+4=;
 b=fMDU+8MJnsLqKcK2vEIWyjcJjoooBVaRYy5OGf1rMNxnAklylP/tcBkt
 QQu+A412h8tLBhezMlu8Ap7DKIkfRdfczvucmKdLw5ssPuorawoCgSbRv
 db1wdRaNKbHGONovXP2//S4gXRS1i//wq6zx7ZN8BrQAFkqMQ19ubAhQ3
 eH25PXxXFwVaNrEikvVyoE0096ta/cso3ZxjYnc0XBXByOqMOI6TaRrKv
 urUtMJRlNaie2tsGkbZvV8Qtu+BV+xxFcolE11liz6BU49gps00DE8swc
 zxjxFBes0JH3I5BfEq91ewkfH7XT5nm3AWyClzYhfrDKnBJMamm0FXX0g g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="437550878"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="437550878"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 08:30:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="685696618"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="685696618"
Received: from lab-ah.igk.intel.com (HELO lab-ah.corp.intel.com)
 ([10.102.138.202])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 08:30:47 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Aug 2023 17:30:35 +0200
Message-Id: <20230821153035.3903006-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: mark requests for GuC virtual engines
 to avoid use-after-free
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

References to i915_requests may be trapped by userspace inside a
sync_file or dmabuf (dma-resv) and held indefinitely across different
proceses. To counter-act the memory leaks, we try to not to keep
references from the request past their completion.
On the other side on fence release we need to know if rq->engine
is valid and points to hw engine (true for non-virtual requests).
To make it possible extra bit has been added to rq->execution_mask,
for marking virtual engines.

Fixes: bcb9aa45d5a0 ("Revert "drm/i915: Hold reference to intel_context over life of i915_request"")
Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
Hi all,

This is squash of revert of fixed patch with Chris fix for internal
branch with expanded description.

I wondered if we should mark requests for non-guc virtual engines.
I have decided to not as for them rq->engine points to real engine at rq release,
so we can reuse this rq safely.

Regards
Andrzej
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h      | 1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 3 +++
 drivers/gpu/drm/i915/i915_request.c               | 7 ++-----
 3 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
index e99a6fa03d4539..a7e6775980043c 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
@@ -58,6 +58,7 @@ struct i915_perf_group;
 
 typedef u32 intel_engine_mask_t;
 #define ALL_ENGINES ((intel_engine_mask_t)~0ul)
+#define VIRTUAL_ENGINES BIT(BITS_PER_TYPE(intel_engine_mask_t) - 1)
 
 struct intel_hw_status_page {
 	struct list_head timelines;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index a0e3ef1c65d246..b5b7f2fe8c78e4 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -5470,6 +5470,9 @@ guc_create_virtual(struct intel_engine_cs **siblings, unsigned int count,
 
 	ve->base.flags = I915_ENGINE_IS_VIRTUAL;
 
+	BUILD_BUG_ON(ilog2(VIRTUAL_ENGINES) < I915_NUM_ENGINES);
+	ve->base.mask = VIRTUAL_ENGINES;
+
 	intel_context_init(&ve->context, &ve->base);
 
 	for (n = 0; n < count; n++) {
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 7c7da284990df7..f59081066a197a 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -134,9 +134,7 @@ static void i915_fence_release(struct dma_fence *fence)
 	i915_sw_fence_fini(&rq->semaphore);
 
 	/*
-	 * Keep one request on each engine for reserved use under mempressure
-	 * do not use with virtual engines as this really is only needed for
-	 * kernel contexts.
+	 * Keep one request on each engine for reserved use under mempressure.
 	 *
 	 * We do not hold a reference to the engine here and so have to be
 	 * very careful in what rq->engine we poke. The virtual engine is
@@ -166,8 +164,7 @@ static void i915_fence_release(struct dma_fence *fence)
 	 * know that if the rq->execution_mask is a single bit, rq->engine
 	 * can be a physical engine with the exact corresponding mask.
 	 */
-	if (!intel_engine_is_virtual(rq->engine) &&
-	    is_power_of_2(rq->execution_mask) &&
+	if (is_power_of_2(rq->execution_mask) &&
 	    !cmpxchg(&rq->engine->request_pool, NULL, rq))
 		return;
 
-- 
2.34.1

