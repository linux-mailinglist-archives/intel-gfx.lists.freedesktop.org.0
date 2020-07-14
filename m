Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E15A21F2FB
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jul 2020 15:50:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF1FD6E14F;
	Tue, 14 Jul 2020 13:50:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 686846E14F
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jul 2020 13:50:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21815925-1500050 
 for multiple; Tue, 14 Jul 2020 14:50:05 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 14 Jul 2020 14:50:02 +0100
Message-Id: <20200714135002.17508-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Trace placement of timeline HWSP
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Track the position of the HWSP for each timeline.

References: https://gitlab.freedesktop.org/drm/intel/-/issues/2169
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_timeline.c    |  7 +++++++
 drivers/gpu/drm/i915/gt/selftest_timeline.c | 13 ++++++++-----
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_timeline.c b/drivers/gpu/drm/i915/gt/intel_timeline.c
index 4546284fede1..46d20f5f3ddc 100644
--- a/drivers/gpu/drm/i915/gt/intel_timeline.c
+++ b/drivers/gpu/drm/i915/gt/intel_timeline.c
@@ -73,6 +73,8 @@ hwsp_alloc(struct intel_timeline *timeline, unsigned int *cacheline)
 			return vma;
 		}
 
+		GT_TRACE(timeline->gt, "new HWSP allocated\n");
+
 		vma->private = hwsp;
 		hwsp->gt = timeline->gt;
 		hwsp->vma = vma;
@@ -327,6 +329,8 @@ int intel_timeline_pin(struct intel_timeline *tl)
 	tl->hwsp_offset =
 		i915_ggtt_offset(tl->hwsp_ggtt) +
 		offset_in_page(tl->hwsp_offset);
+	GT_TRACE(tl->gt, "timeline:%llx using HWSP offset:%x\n",
+		 tl->fence_context, tl->hwsp_offset);
 
 	cacheline_acquire(tl->hwsp_cacheline);
 	if (atomic_fetch_inc(&tl->pin_count)) {
@@ -434,6 +438,7 @@ __intel_timeline_get_seqno(struct intel_timeline *tl,
 	int err;
 
 	might_lock(&tl->gt->ggtt->vm.mutex);
+	GT_TRACE(tl->gt, "timeline:%llx wrapped\n", tl->fence_context);
 
 	/*
 	 * If there is an outstanding GPU reference to this cacheline,
@@ -497,6 +502,8 @@ __intel_timeline_get_seqno(struct intel_timeline *tl,
 		memset(vaddr + tl->hwsp_offset, 0, CACHELINE_BYTES);
 
 	tl->hwsp_offset += i915_ggtt_offset(vma);
+	GT_TRACE(tl->gt, "timeline:%llx using HWSP offset:%x\n",
+		 tl->fence_context, tl->hwsp_offset);
 
 	cacheline_acquire(cl);
 	tl->hwsp_cacheline = cl;
diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index fcdee951579b..fb5b7d3498a6 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -562,8 +562,9 @@ static int live_hwsp_engine(void *arg)
 		struct intel_timeline *tl = timelines[n];
 
 		if (!err && *tl->hwsp_seqno != n) {
-			pr_err("Invalid seqno stored in timeline %lu, found 0x%x\n",
-			       n, *tl->hwsp_seqno);
+			pr_err("Invalid seqno stored in timeline %lu @ %x, found 0x%x\n",
+			       n, tl->hwsp_offset, *tl->hwsp_seqno);
+			GEM_TRACE_DUMP();
 			err = -EINVAL;
 		}
 		intel_timeline_put(tl);
@@ -633,8 +634,9 @@ static int live_hwsp_alternate(void *arg)
 		struct intel_timeline *tl = timelines[n];
 
 		if (!err && *tl->hwsp_seqno != n) {
-			pr_err("Invalid seqno stored in timeline %lu, found 0x%x\n",
-			       n, *tl->hwsp_seqno);
+			pr_err("Invalid seqno stored in timeline %lu @ %x, found 0x%x\n",
+			       n, tl->hwsp_offset, *tl->hwsp_seqno);
+			GEM_TRACE_DUMP();
 			err = -EINVAL;
 		}
 		intel_timeline_put(tl);
@@ -965,8 +967,9 @@ static int live_hwsp_recycle(void *arg)
 			}
 
 			if (*tl->hwsp_seqno != count) {
-				pr_err("Invalid seqno stored in timeline %lu, found 0x%x\n",
+				pr_err("Invalid seqno stored in timeline %lu @ tl->hwsp_offset, found 0x%x\n",
 				       count, *tl->hwsp_seqno);
+				GEM_TRACE_DUMP();
 				err = -EINVAL;
 			}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
