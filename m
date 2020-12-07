Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E87922D1148
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 14:04:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 802006E7D4;
	Mon,  7 Dec 2020 13:04:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 071026E7D4
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 13:04:00 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23240936-1500050 
 for multiple; Mon, 07 Dec 2020 13:03:48 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Dec 2020 13:03:46 +0000
Message-Id: <20201207130346.11849-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20201207130201.8492-1-chris@chris-wilson.co.uk>
References: <20201207130201.8492-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Improve error reporting for
 igt_mock_max_segment
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
Cc: Matthew Auld <matthew.auld@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When we fail to find a single block large enough to require splitting,
report the largest block we did find.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Ramalingam C <ramalingam.c@intel.com>
---
 .../gpu/drm/i915/selftests/intel_memory_region.c  | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index a0b518c255de..a55079a061dd 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -384,16 +384,15 @@ static int igt_mock_max_segment(void *arg)
 		goto out_put;
 	}
 
-	err = -EINVAL;
+	size = 0;
 	list_for_each_entry(block, &obj->mm.blocks, link) {
-		if (i915_buddy_block_size(&mem->mm, block) > max_segment) {
-			err = 0;
-			break;
-		}
+		if (i915_buddy_block_size(&mem->mm, block) > size)
+			size = i915_buddy_block_size(&mem->mm, block);
 	}
-	if (err) {
-		pr_err("%s: Failed to create a huge contiguous block\n",
-		       __func__);
+	if (size < max_segment) {
+		pr_err("%s: Failed to create a huge contiguous block [> %u], largest block %lld\n",
+		       __func__, max_segment, size);
+		err = -EINVAL;
 		goto out_close;
 	}
 
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
