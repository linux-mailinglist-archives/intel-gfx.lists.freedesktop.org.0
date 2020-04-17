Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B7C1ADCCC
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Apr 2020 14:00:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98A3A6EBC8;
	Fri, 17 Apr 2020 12:00:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD40F6EBCE
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Apr 2020 12:00:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20932338-1500050 
 for multiple; Fri, 17 Apr 2020 12:59:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Apr 2020 12:59:39 +0100
Message-Id: <20200417115939.32677-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Expose an option to flush the
 tasklets via debugfs
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
Cc: Arjun Melkaveri <arjun.melkaveri@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In some IGT we have quite strict timing requirements that are trying to
measure workloads and not the latency of execution. For these, ksoftirqd
can cause quite a bit of mischief with long and unpredictable scheduling
delays, so lets explicitly flush the softirq tasklets via the
local_bh_enable() trick. This has to be done on_each_cpu() as the
tasklets when scheduled are local to a CPU.

Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Arjun Melkaveri <arjun.melkaveri@intel.com>
---
 drivers/gpu/drm/i915/i915_debugfs.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
index aa35a59f1c7d..aa0da72878a6 100644
--- a/drivers/gpu/drm/i915/i915_debugfs.c
+++ b/drivers/gpu/drm/i915/i915_debugfs.c
@@ -1429,6 +1429,7 @@ DEFINE_SIMPLE_ATTRIBUTE(i915_perf_noa_delay_fops,
 #define DROP_RESET_ACTIVE	BIT(7)
 #define DROP_RESET_SEQNO	BIT(8)
 #define DROP_RCU	BIT(9)
+#define DROP_TASKLETS	BIT(10)
 #define DROP_ALL (DROP_UNBOUND	| \
 		  DROP_BOUND	| \
 		  DROP_RETIRE	| \
@@ -1438,7 +1439,8 @@ DEFINE_SIMPLE_ATTRIBUTE(i915_perf_noa_delay_fops,
 		  DROP_IDLE	| \
 		  DROP_RESET_ACTIVE | \
 		  DROP_RESET_SEQNO | \
-		  DROP_RCU)
+		  DROP_RCU	| \
+		  DROP_TASKLETS)
 static int
 i915_drop_caches_get(void *data, u64 *val)
 {
@@ -1476,6 +1478,21 @@ gt_drop_caches(struct intel_gt *gt, u64 val)
 	return 0;
 }
 
+static void kick_softirq_tasklets(void *arg)
+{
+	/* Execute the softirq tasklets immediately */
+	local_bh_disable();
+	local_bh_enable();
+
+	/* Some tasklets may have queued others, so double check */
+	local_bh_disable();
+	local_bh_enable();
+
+	/* Third time's the charm. I don't think we recurse any deeper! */
+	local_bh_disable();
+	local_bh_enable();
+}
+
 static int
 i915_drop_caches_set(void *data, u64 val)
 {
@@ -1485,6 +1502,9 @@ i915_drop_caches_set(void *data, u64 val)
 	DRM_DEBUG("Dropping caches: 0x%08llx [0x%08llx]\n",
 		  val, val & DROP_ALL);
 
+	if (val & DROP_TASKLETS)
+		on_each_cpu(kick_softirq_tasklets, NULL, true);
+
 	ret = gt_drop_caches(&i915->gt, val);
 	if (ret)
 		return ret;
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
