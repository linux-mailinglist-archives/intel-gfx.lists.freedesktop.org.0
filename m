Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BEC12E968B
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Jan 2021 15:01:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B684289F2D;
	Mon,  4 Jan 2021 14:01:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A9C589F2D
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Jan 2021 14:01:43 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23496926-1500050 
 for multiple; Mon, 04 Jan 2021 14:01:35 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Jan 2021 14:01:35 +0000
Message-Id: <20210104140135.26285-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210104140135.26285-1-chris@chris-wilson.co.uk>
References: <20210104140135.26285-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gem: Almagamate clflushes on freeze
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

When flushing objects larger than the CPU cache it is preferrable to use
a single wbinvd() rather than overlapping clflush(). At runtime, we
avoid wbinvd() due to its system-wide latencies, but during
singlethreaded suspend, no one will observe the imposed latency and we
can opt for the faster wbinvd to clear all objects in a single hit.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/i915_gem.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gem.c b/drivers/gpu/drm/i915/i915_gem.c
index 17a4636ee542..21194ebfc31e 100644
--- a/drivers/gpu/drm/i915/i915_gem.c
+++ b/drivers/gpu/drm/i915/i915_gem.c
@@ -1277,19 +1277,13 @@ int i915_gem_freeze_late(struct drm_i915_private *i915)
 	 * the objects as well, see i915_gem_freeze()
 	 */
 
-	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
-
-	i915_gem_shrink(i915, -1UL, NULL, ~0);
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
+		i915_gem_shrink(i915, -1UL, NULL, ~0);
 	i915_gem_drain_freed_objects(i915);
 
-	list_for_each_entry(obj, &i915->mm.shrink_list, mm.link) {
-		i915_gem_object_lock(obj, NULL);
-		drm_WARN_ON(&i915->drm,
-			    i915_gem_object_set_to_cpu_domain(obj, true));
-		i915_gem_object_unlock(obj);
-	}
-
-	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
+	wbinvd_on_all_cpus();
+	list_for_each_entry(obj, &i915->mm.shrink_list, mm.link)
+		__start_cpu_write(obj);
 
 	return 0;
 }
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
