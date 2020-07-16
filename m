Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE406222CCB
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jul 2020 22:32:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3395F6ECDC;
	Thu, 16 Jul 2020 20:32:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B624C6ECDC
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jul 2020 20:32:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21843217-1500050 
 for multiple; Thu, 16 Jul 2020 21:32:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Jul 2020 21:32:00 +0100
Message-Id: <20200716203201.11977-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/selftests: Add compiler paranoia
 for checking HWSP values
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

Since we want to read the values from the HWSP as written to by the GPU,
warn the compiler that the values are volatile.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_timeline.c | 22 ++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
index fb5b7d3498a6..aabd46cea511 100644
--- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
+++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
@@ -491,7 +491,7 @@ checked_intel_timeline_create(struct intel_gt *gt)
 	if (IS_ERR(tl))
 		return tl;
 
-	if (*tl->hwsp_seqno != tl->seqno) {
+	if (READ_ONCE(*tl->hwsp_seqno) != tl->seqno) {
 		pr_err("Timeline created with incorrect breadcrumb, found %x, expected %x\n",
 		       *tl->hwsp_seqno, tl->seqno);
 		intel_timeline_put(tl);
@@ -561,9 +561,9 @@ static int live_hwsp_engine(void *arg)
 	for (n = 0; n < count; n++) {
 		struct intel_timeline *tl = timelines[n];
 
-		if (!err && *tl->hwsp_seqno != n) {
-			pr_err("Invalid seqno stored in timeline %lu @ %x, found 0x%x\n",
-			       n, tl->hwsp_offset, *tl->hwsp_seqno);
+		if (!err && READ_ONCE(*tl->hwsp_seqno) != n) {
+			GEM_TRACE_ERR("Invalid seqno:%lu stored in timeline %llu @ %x, found 0x%x\n",
+			       n, tl->fence_context, tl->hwsp_offset, *tl->hwsp_seqno);
 			GEM_TRACE_DUMP();
 			err = -EINVAL;
 		}
@@ -633,9 +633,9 @@ static int live_hwsp_alternate(void *arg)
 	for (n = 0; n < count; n++) {
 		struct intel_timeline *tl = timelines[n];
 
-		if (!err && *tl->hwsp_seqno != n) {
-			pr_err("Invalid seqno stored in timeline %lu @ %x, found 0x%x\n",
-			       n, tl->hwsp_offset, *tl->hwsp_seqno);
+		if (!err && READ_ONCE(*tl->hwsp_seqno) != n) {
+			GEM_TRACE_ERR("Invalid seqno:%lu stored in timeline %llu @ %x, found 0x%x\n",
+			       n, tl->fence_context, tl->hwsp_offset, *tl->hwsp_seqno);
 			GEM_TRACE_DUMP();
 			err = -EINVAL;
 		}
@@ -733,7 +733,7 @@ static int live_hwsp_wrap(void *arg)
 			goto out;
 		}
 
-		if (*hwsp_seqno[0] != seqno[0] || *hwsp_seqno[1] != seqno[1]) {
+		if (READ_ONCE(*hwsp_seqno[0]) != seqno[0] || READ_ONCE(*hwsp_seqno[1]) != seqno[1]) {
 			pr_err("Bad timeline values: found (%x, %x), expected (%x, %x)\n",
 			       *hwsp_seqno[0], *hwsp_seqno[1],
 			       seqno[0], seqno[1]);
@@ -966,9 +966,9 @@ static int live_hwsp_recycle(void *arg)
 				break;
 			}
 
-			if (*tl->hwsp_seqno != count) {
-				pr_err("Invalid seqno stored in timeline %lu @ tl->hwsp_offset, found 0x%x\n",
-				       count, *tl->hwsp_seqno);
+			if (READ_ONCE(*tl->hwsp_seqno) != count) {
+				GEM_TRACE_ERR("Invalid seqno:%lu stored in timeline %llu @ %x found 0x%x\n",
+				       count, tl->fence_context, tl->hwsp_offset, *tl->hwsp_seqno);
 				GEM_TRACE_DUMP();
 				err = -EINVAL;
 			}
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
