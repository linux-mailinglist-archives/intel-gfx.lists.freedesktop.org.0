Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4573D17AFEC
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Mar 2020 21:47:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EBD96E3B2;
	Thu,  5 Mar 2020 20:47:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A3FC6E3AC
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Mar 2020 20:47:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Mar 2020 12:47:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,519,1574150400"; d="scan'208";a="413651533"
Received: from ntitus-mobl1.ti.intel.com (HELO mwahaha-bdw.ger.corp.intel.com)
 ([10.252.24.210])
 by orsmga005.jf.intel.com with ESMTP; 05 Mar 2020 12:47:13 -0800
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  5 Mar 2020 20:47:11 +0000
Message-Id: <20200305204711.217783-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200305204711.217783-1-matthew.auld@intel.com>
References: <20200305204711.217783-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/selftests: try to rein in
 alloc_smoke
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

Depending on RNG we might try to fill an 8G region for every possible
order, using the smallest possible chunk size of 4K, which seems to be
very slow. Try to remedy the situation by adding an overall timeout for
the test, while also selecting each order level in a random fashion.

Closes: https://gitlab.freedesktop.org/drm/intel/issues/1310
Signed-off-by: Matthew Auld <matthew.auld@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/selftests/i915_buddy.c | 25 ++++++++++++++++-----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/i915_buddy.c b/drivers/gpu/drm/i915/selftests/i915_buddy.c
index 1b856bae67b5..939a6caebb03 100644
--- a/drivers/gpu/drm/i915/selftests/i915_buddy.c
+++ b/drivers/gpu/drm/i915/selftests/i915_buddy.c
@@ -298,10 +298,12 @@ static void igt_mm_config(u64 *size, u64 *chunk_size)
 static int igt_buddy_alloc_smoke(void *arg)
 {
 	struct i915_buddy_mm mm;
-	int max_order;
+	IGT_TIMEOUT(end_time);
+	I915_RND_STATE(prng);
 	u64 chunk_size;
 	u64 mm_size;
-	int err;
+	int *order;
+	int err, i;
 
 	igt_mm_config(&mm_size, &chunk_size);
 
@@ -313,10 +315,16 @@ static int igt_buddy_alloc_smoke(void *arg)
 		return err;
 	}
 
-	for (max_order = mm.max_order; max_order >= 0; max_order--) {
+	order = i915_random_order(mm.max_order + 1, &prng);
+	if (!order)
+		goto out_fini;
+
+	for (i = 0; i <= mm.max_order; ++i) {
 		struct i915_buddy_block *block;
-		int order;
+		int max_order = order[i];
+		bool timeout = false;
 		LIST_HEAD(blocks);
+		int order;
 		u64 total;
 
 		err = igt_check_mm(&mm);
@@ -360,6 +368,11 @@ static int igt_buddy_alloc_smoke(void *arg)
 			}
 
 			total += i915_buddy_block_size(&mm, block);
+
+			if (__igt_timeout(end_time, NULL)) {
+				timeout = true;
+				break;
+			}
 		} while (total < mm.size);
 
 		if (!err)
@@ -373,7 +386,7 @@ static int igt_buddy_alloc_smoke(void *arg)
 				pr_err("post-mm check failed\n");
 		}
 
-		if (err)
+		if (err || timeout)
 			break;
 
 		cond_resched();
@@ -382,6 +395,8 @@ static int igt_buddy_alloc_smoke(void *arg)
 	if (err == -ENOMEM)
 		err = 0;
 
+	kfree(order);
+out_fini:
 	i915_buddy_fini(&mm);
 
 	return err;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
