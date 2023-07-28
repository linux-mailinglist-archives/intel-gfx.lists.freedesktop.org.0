Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 549477665D2
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jul 2023 09:55:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4B8410E665;
	Fri, 28 Jul 2023 07:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34A9D10E665
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jul 2023 07:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690530910; x=1722066910;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YPE71pCUXn7j2j1WFNra/TYkxCx3fCEVGA0qFbd/WOk=;
 b=cg0/Ohij1L6PjO5bwx6gfNiik6xpo+n0jGbKZ4jESHGtoSCEn7Xo0PVR
 n4OG+ink9/Ncqa2/DLSEc+vTz10Gx1TjVEDG6zDgnj5S50VhupfIwPWL5
 tHB3JuCji2YpHfW/eeagn21cfFglDQ9Cp9tAW+pm9w3tqXXgOQRWNWK2k
 jOCoh2RJDsshtrohPjB5qNPYACB7hYAtSX8KhGJaTN+CBUW6bEL2D+ut0
 qpN+t4gVC0DmVZnWrCUrjernPa45rqXjz5LUBY31ztUvaDETz3ffFJtdZ
 rI08/FQdGwKNgDhCJiWPZyL9+LKn/pOD3qdM+QdC0aBhk5yVy48huFoVX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="365993497"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="365993497"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 00:55:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10784"; a="1058035532"
X-IronPort-AV: E=Sophos;i="6.01,236,1684825200"; d="scan'208";a="1058035532"
Received: from lab-ah.igk.intel.com (HELO lab-ah.corp.intel.com)
 ([10.102.138.202])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2023 00:55:07 -0700
From: Andrzej Hajda <andrzej.hajda@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jul 2023 09:54:50 +0200
Message-Id: <20230728075450.1877745-1-andrzej.hajda@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Hold reference to intel_context over
 life of i915_request
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
---
Hi all,

This is squash of revert of fixed patch with Chris fix for internal
branch with expanded description.

Regards
Andrzej

Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_types.h      | 1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 1 +
 drivers/gpu/drm/i915/i915_request.c               | 7 ++-----
 3 files changed, 4 insertions(+), 5 deletions(-)

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
index a0e3ef1c65d246..e7f748b2102263 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -5469,6 +5469,7 @@ guc_create_virtual(struct intel_engine_cs **siblings, unsigned int count,
 	ve->base.submit_request = guc_submit_request;
 
 	ve->base.flags = I915_ENGINE_IS_VIRTUAL;
+	ve->base.mask = VIRTUAL_ENGINES;
 
 	intel_context_init(&ve->context, &ve->base);
 
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 721e6aefec6b4d..0679863d10244f 100644
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

