Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E51A456699A
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 13:34:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55E181126ED;
	Tue,  5 Jul 2022 11:30:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22F8A10E021
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jul 2022 10:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657018655; x=1688554655;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=16Ly9k/WLWU1CCrJ2Vl7NGZiR3CttSgjCT1TZAXe44Y=;
 b=Y1L9J17svlTO6bRm+QobunANcigTCqUiMJu9IOUcRwVn8itrzI7MkNa3
 rlYdTv/2Xm6i97kWDB9d+i/BO/sXN47Lc5RmpQAqHuCM4vqa/mBsdpp0N
 6KuV2cDnMkiYhDonF/DIuyBaf4OCJVupf9q+s0GCorOeg4bEDUniX5IpG
 op9BI5Lr8GGWrkzr3/wSs3/ZJk7IzWjgTZYogZNwSDT31B2vp7mBgKT4i
 ZXpcfVGBk5cDIBx0fETgTVMdCxqYB59t+RI463N+TXg4jdpSwnGSRZ6dL
 argYe1yzgxpCmx5XCsb0cb1EzhgT6aqBhK7rluNhe3Z385alHF3WD3EBA g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="308861267"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="308861267"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 03:57:34 -0700
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="650076274"
Received: from mtyszka-mobl.ger.corp.intel.com (HELO
 kdrobnik-desk.toya.net.pl) ([10.213.16.14])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 03:57:33 -0700
From: Karolina Drobnik <karolina.drobnik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  5 Jul 2022 12:57:17 +0200
Message-Id: <b0d575e51f795d0b19ca93fbf3e796a747c961ab.1656911806.git.karolina.drobnik@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1656911806.git.karolina.drobnik@intel.com>
References: <cover.1656911806.git.karolina.drobnik@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/gem: Look for waitboosting across
 the whole object prior to individual waits
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
Cc: Thomas Voegtle <tv@lio96.de>, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

We employ a "waitboost" heuristic to detect when userspace is stalled
waiting for results from earlier execution. Under latency sensitive work
mixed between the gpu/cpu, the GPU is typically under-utilised and so
RPS sees that low utilisation as a reason to downclock the frequency,
causing longer stalls and lower throughput. The user left waiting for
the results is not impressed.

On applying commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv
workaround") it was observed that deinterlacing h264 on Haswell
performance dropped by 2-5x. The reason being that the natural workload
was not intense enough to trigger RPS (using HW evaluation intervals) to
upclock, and so it was depending on waitboosting for the throughput.

Commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")
changes the composition of dma-resv from keeping a single write fence +
multiple read fences, to a single array of multiple write and read
fences (a maximum of one pair of write/read fences per context). The
iteration order was also changed implicitly from all-read fences then
the single write fence, to a mix of write fences followed by read
fences. It is that ordering change that belied the fragility of
waitboosting.

Currently, a waitboost is inspected at the point of waiting on an
outstanding fence. If the GPU is backlogged such that we haven't yet
stated the request we need to wait on, we force the GPU to upclock until
the completion of that request. By changing the order in which we waited
upon requests, we ended up waiting on those requests in sequence and as
such we saw that each request was already started and so not a suitable
candidate for waitboosting.

Instead of asking whether to boost each fence in turn, we can look at
whether boosting is required for the dma-resv ensemble prior to waiting
on any fence, making the heuristic more robust to the order in which
fences are stored in the dma-resv.

Reported-by: Thomas Voegtle <tv@lio96.de>
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6284
Fixes: 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Karolina Drobnik <karolina.drobnik@intel.com>
Tested-by: Thomas Voegtle <tv@lio96.de>
---
 drivers/gpu/drm/i915/gem/i915_gem_wait.c | 35 ++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index 319936f91ac5..3fbb464746e1 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -9,6 +9,7 @@
 #include <linux/jiffies.h>
 
 #include "gt/intel_engine.h"
+#include "gt/intel_rps.h"
 
 #include "i915_gem_ioctls.h"
 #include "i915_gem_object.h"
@@ -31,6 +32,38 @@ i915_gem_object_wait_fence(struct dma_fence *fence,
 				      timeout);
 }
 
+static void
+i915_gem_object_boost(struct dma_resv *resv, unsigned int flags)
+{
+	struct dma_resv_iter cursor;
+	struct dma_fence *fence;
+
+	/*
+	 * Prescan all fences for potential boosting before we begin waiting.
+	 *
+	 * When we wait, we wait on outstanding fences serially. If the
+	 * dma-resv contains a sequence such as 1:1, 1:2 instead of a reduced
+	 * form 1:2, then as we look at each wait in turn we see that each
+	 * request is currently executing and not worthy of boosting. But if
+	 * we only happen to look at the final fence in the sequence (because
+	 * of request coalescing or splitting between read/write arrays by
+	 * the iterator), then we would boost. As such our decision to boost
+	 * or not is delicately balanced on the order we wait on fences.
+	 *
+	 * So instead of looking for boosts sequentially, look for all boosts
+	 * upfront and then wait on the outstanding fences.
+	 */
+
+	dma_resv_iter_begin(&cursor, resv,
+			    dma_resv_usage_rw(flags & I915_WAIT_ALL));
+	dma_resv_for_each_fence_unlocked(&cursor, fence) {
+		if (dma_fence_is_i915(fence) &&
+		    !i915_request_started(to_request(fence)))
+			intel_rps_boost(to_request(fence));
+	}
+	dma_resv_iter_end(&cursor);
+}
+
 static long
 i915_gem_object_wait_reservation(struct dma_resv *resv,
 				 unsigned int flags,
@@ -40,6 +73,8 @@ i915_gem_object_wait_reservation(struct dma_resv *resv,
 	struct dma_fence *fence;
 	long ret = timeout ?: 1;
 
+	i915_gem_object_boost(resv, flags);
+
 	dma_resv_iter_begin(&cursor, resv,
 			    dma_resv_usage_rw(flags & I915_WAIT_ALL));
 	dma_resv_for_each_fence_unlocked(&cursor, fence) {
-- 
2.25.1

