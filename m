Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1095556BB94
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jul 2022 16:20:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 133DA10E1DA;
	Fri,  8 Jul 2022 14:20:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F00710E1DA
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jul 2022 14:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657290025; x=1688826025;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tUS8vVbFiJ5TqeECWfq0SeFOMgXCwmCx7SNhOgphXpQ=;
 b=PiwROihOqAO50U72SOMOjTYGKI/zPEptnoYwidSumldShKDk1LNqei1v
 P5yK6hUxpodCH9tym6O+m/IKH2T9ivLJN+83jjf24xaqlUQfASPicnjA9
 QXLvJeaY6aEe0t2sKZuJ4ZijJw9FQ5CuEk5r8aemvK/oYdW8vUNeRM0q2
 JCXlv9iaExklb22W9RrSeSb4qIbLliIKQzUiKmIAE9DYZjZq2cDXqTdca
 YRGcqqb69Bm7iJeeVDm3LAJI1L5+wPXB3J+WBKHx4dW6MfbBwA1c6BL6+
 KFshGuH5ZLV02sE2IMcve3rnoRh7jtD4nvBne1mlvnoR5mOC0vgwA22Mp A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10401"; a="267321198"
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="267321198"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 07:20:25 -0700
X-IronPort-AV: E=Sophos;i="5.92,255,1650956400"; d="scan'208";a="621232097"
Received: from dgrynia-mobl.ger.corp.intel.com (HELO
 kdrobnik-desk.toya.net.pl) ([10.213.5.81])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2022 07:20:22 -0700
From: Karolina Drobnik <karolina.drobnik@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jul 2022 16:20:11 +0200
Message-Id: <07e05518d9f6620d20cc1101ec1849203fe973f9.1657289332.git.karolina.drobnik@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1657289332.git.karolina.drobnik@intel.com>
References: <cover.1657289332.git.karolina.drobnik@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915/gem: Look for waitboosting
 across the whole object prior to individual waits
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
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_wait.c | 34 ++++++++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_wait.c b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
index 319936f91ac5..e6e01c2a74a6 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_wait.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_wait.c
@@ -9,6 +9,7 @@
 #include <linux/jiffies.h>
 
 #include "gt/intel_engine.h"
+#include "gt/intel_rps.h"
 
 #include "i915_gem_ioctls.h"
 #include "i915_gem_object.h"
@@ -31,6 +32,37 @@ i915_gem_object_wait_fence(struct dma_fence *fence,
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
+	dma_resv_for_each_fence_unlocked(&cursor, fence)
+		if (dma_fence_is_i915(fence) &&
+		    !i915_request_started(to_request(fence)))
+			intel_rps_boost(to_request(fence));
+	dma_resv_iter_end(&cursor);
+}
+
 static long
 i915_gem_object_wait_reservation(struct dma_resv *resv,
 				 unsigned int flags,
@@ -40,6 +72,8 @@ i915_gem_object_wait_reservation(struct dma_resv *resv,
 	struct dma_fence *fence;
 	long ret = timeout ?: 1;
 
+	i915_gem_object_boost(resv, flags);
+
 	dma_resv_iter_begin(&cursor, resv,
 			    dma_resv_usage_rw(flags & I915_WAIT_ALL));
 	dma_resv_for_each_fence_unlocked(&cursor, fence) {
-- 
2.25.1

