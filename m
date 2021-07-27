Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12CC43D6AC1
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jul 2021 02:07:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DE4E7337A;
	Tue, 27 Jul 2021 00:07:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 757FF72C5C;
 Tue, 27 Jul 2021 00:06:06 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="191932164"
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="191932164"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 17:06:04 -0700
X-IronPort-AV: E=Sophos;i="5.84,272,1620716400"; d="scan'208";a="662339246"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 17:06:04 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Mon, 26 Jul 2021 17:23:46 -0700
Message-Id: <20210727002348.97202-32-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210727002348.97202-1-matthew.brost@intel.com>
References: <20210727002348.97202-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 31/33] drm/i915/selftest: Bump selftest timeouts
 for hangcheck
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

From: John Harrison <John.C.Harrison@Intel.com>

Some testing environments and some heavier tests are slower than
previous limits allowed for. For example, it can take multiple seconds
for the 'context has been reset' notification handler to reach the
'kill the requests' code in the 'active' version of the 'reset
engines' test. During which time the selftest gets bored, gives up
waiting and fails the test.

There is also an async thread that the selftest uses to pump work
through the hardware in parallel to the context that is marked for
reset. That also could get bored waiting for completions and kill the
test off.

Lastly, the flush at the of various test sections can also see
timeouts due to the large amount of work backed up. This is also true
of the live_hwsp_read test.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c             | 2 +-
 drivers/gpu/drm/i915/selftests/igt_flush_test.c          | 2 +-
 drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index e0e200ba77e9..08f011f893b2 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -879,7 +879,7 @@ static int active_request_put(struct i915_request *rq)
 	if (!rq)
 		return 0;
 
-	if (i915_request_wait(rq, 0, 5 * HZ) < 0) {
+	if (i915_request_wait(rq, 0, 10 * HZ) < 0) {
 		GEM_TRACE("%s timed out waiting for completion of fence %llx:%lld\n",
 			  rq->engine->name,
 			  rq->fence.context,
diff --git a/drivers/gpu/drm/i915/selftests/igt_flush_test.c b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
index 7b0939e3f007..a6c71fca61aa 100644
--- a/drivers/gpu/drm/i915/selftests/igt_flush_test.c
+++ b/drivers/gpu/drm/i915/selftests/igt_flush_test.c
@@ -19,7 +19,7 @@ int igt_flush_test(struct drm_i915_private *i915)
 
 	cond_resched();
 
-	if (intel_gt_wait_for_idle(gt, HZ / 5) == -ETIME) {
+	if (intel_gt_wait_for_idle(gt, HZ) == -ETIME) {
 		pr_err("%pS timed out, cancelling all further testing.\n",
 		       __builtin_return_address(0));
 
diff --git a/drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c b/drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c
index dac275e835c4..4b328346b48a 100644
--- a/drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c
+++ b/drivers/gpu/drm/i915/selftests/intel_scheduler_helpers.c
@@ -12,7 +12,7 @@
 
 #define REDUCED_TIMESLICE	5
 #define REDUCED_PREEMPT		10
-#define WAIT_FOR_RESET_TIME	1000
+#define WAIT_FOR_RESET_TIME	10000
 
 int intel_selftest_modify_policy(struct intel_engine_cs *engine,
 				 struct intel_selftest_saved_policy *saved,
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
