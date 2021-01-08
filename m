Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1AD2EF49F
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 16:15:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 535DA89A61;
	Fri,  8 Jan 2021 15:15:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26B6B89A61
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 15:14:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23539714-1500050 
 for multiple; Fri, 08 Jan 2021 15:14:50 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  8 Jan 2021 15:14:49 +0000
Message-Id: <20210108151449.11809-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210108132835.4564-1-chris@chris-wilson.co.uk>
References: <20210108132835.4564-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Skip unstable timing
 measurements
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

If any of the perf tests run into 0 time, not only are we liable to
divide by zero, but the result would be highly questionable.
Nevertheless, let's not have a div-by-zero error.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Andi Shyti <andi.shyti@intel.com>
---
 .../drm/i915/selftests/intel_memory_region.c  | 20 +++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index 75839db63bea..ce7adfa3bca0 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -852,14 +852,22 @@ static int _perf_memcpy(struct intel_memory_region *src_mr,
 		}
 
 		sort(t, ARRAY_SIZE(t), sizeof(*t), wrap_ktime_compare, NULL);
+		if (t[0] <= 0) {
+			/* ignore the impossible to protect our sanity */
+			pr_debug("Skipping %s src(%s, %s) -> dst(%s, %s) %14s %4lluKiB copy, unstable measurement [%lld, %lld]\n",
+				 __func__,
+				 src_mr->name, repr_type(src_type),
+				 dst_mr->name, repr_type(dst_type),
+				 tests[i].name, size >> 10,
+				 t[0], t[4]);
+			continue;
+		}
+
 		pr_info("%s src(%s, %s) -> dst(%s, %s) %14s %4llu KiB copy: %5lld MiB/s\n",
 			__func__,
-			src_mr->name,
-			repr_type(src_type),
-			dst_mr->name,
-			repr_type(dst_type),
-			tests[i].name,
-			size >> 10,
+			src_mr->name, repr_type(src_type),
+			dst_mr->name, repr_type(dst_type),
+			tests[i].name, size >> 10,
 			div64_u64(mul_u32_u32(4 * size,
 					      1000 * 1000 * 1000),
 				  t[1] + 2 * t[2] + t[3]) >> 20);
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
