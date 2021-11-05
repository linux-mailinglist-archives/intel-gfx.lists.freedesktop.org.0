Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEB6B44656F
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 16:05:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15F346EB76;
	Fri,  5 Nov 2021 15:05:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A810B6EB74
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Nov 2021 15:05:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="231756607"
X-IronPort-AV: E=Sophos;i="5.87,212,1631602800"; d="scan'208";a="231756607"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 08:01:56 -0700
X-IronPort-AV: E=Sophos;i="5.87,212,1631602800"; d="scan'208";a="730548404"
Received: from inechita-mobl1.ger.corp.intel.com (HELO
 thellstr-mobl1.intel.com) ([10.249.254.167])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 08:01:54 -0700
From: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 Nov 2021 16:01:45 +0100
Message-Id: <20211105150146.834052-1-thomas.hellstrom@linux.intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 1/2] drm/i915/selftests: Use
 clear_and_wake_up_bit() for the per-engine reset bitlocks
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Some selftests assume that nothing will attempt to grab these bitlocks
while they are held by the selftests. With GuC, for example, that is
not true because the hanging workloads may cause the GuC code to attempt
to grab them for a global reset, and that may cause it to end up
sleeping on the bit never waking up. Regardless whether that will be
the final solution for GuC, use clear_and_wake_up_bit() pending a more
thorough investigation on how this should be handled moving forward.

To be clear this needs to be a temporary solution. If we can't find
an in-kernel locking primitive to use here, we should at the very least
add lockdep annotation to these bitlocks with a thorough explanation
as to why we need to use bits.

v3:
- Use GEM_BUG_ON(test_and_set_bit()) rather than set_bit() to verify
  the assumption that nothing is holding the reset locks when we
  attempt to grab them. (Chris Wilson)

Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 20 ++++++++++++--------
 drivers/gpu/drm/i915/selftests/igt_reset.c   |  2 +-
 2 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 7e2d99dd012d..e5ad4d5a91c0 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -471,7 +471,8 @@ static int igt_reset_nop_engine(void *arg)
 		count = 0;
 
 		st_engine_heartbeat_disable(engine);
-		set_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
+		GEM_BUG_ON(test_and_set_bit(I915_RESET_ENGINE + id,
+					    &gt->reset.flags));
 		do {
 			int i;
 
@@ -528,7 +529,7 @@ static int igt_reset_nop_engine(void *arg)
 				break;
 			}
 		} while (time_before(jiffies, end_time));
-		clear_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
+		clear_and_wake_up_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
 		st_engine_heartbeat_enable(engine);
 
 		pr_info("%s(%s): %d resets\n", __func__, engine->name, count);
@@ -582,7 +583,8 @@ static int igt_reset_fail_engine(void *arg)
 		}
 
 		st_engine_heartbeat_disable(engine);
-		set_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
+		GEM_BUG_ON(test_and_set_bit(I915_RESET_ENGINE + id,
+					    &gt->reset.flags));
 
 		force_reset_timeout(engine);
 		err = intel_engine_reset(engine, NULL);
@@ -679,7 +681,7 @@ static int igt_reset_fail_engine(void *arg)
 out:
 		pr_info("%s(%s): %d resets\n", __func__, engine->name, count);
 skip:
-		clear_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
+		clear_and_wake_up_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
 		st_engine_heartbeat_enable(engine);
 		intel_context_put(ce);
 
@@ -734,7 +736,8 @@ static int __igt_reset_engine(struct intel_gt *gt, bool active)
 		reset_engine_count = i915_reset_engine_count(global, engine);
 
 		st_engine_heartbeat_disable(engine);
-		set_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
+		GEM_BUG_ON(test_and_set_bit(I915_RESET_ENGINE + id,
+					    &gt->reset.flags));
 		count = 0;
 		do {
 			struct i915_request *rq = NULL;
@@ -824,7 +827,7 @@ static int __igt_reset_engine(struct intel_gt *gt, bool active)
 			if (err)
 				break;
 		} while (time_before(jiffies, end_time));
-		clear_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
+		clear_and_wake_up_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
 		st_engine_heartbeat_enable(engine);
 		pr_info("%s: Completed %lu %s resets\n",
 			engine->name, count, active ? "active" : "idle");
@@ -1042,7 +1045,8 @@ static int __igt_reset_engines(struct intel_gt *gt,
 		yield(); /* start all threads before we begin */
 
 		st_engine_heartbeat_disable_no_pm(engine);
-		set_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
+		GEM_BUG_ON(test_and_set_bit(I915_RESET_ENGINE + id,
+					    &gt->reset.flags));
 		do {
 			struct i915_request *rq = NULL;
 			struct intel_selftest_saved_policy saved;
@@ -1165,7 +1169,7 @@ static int __igt_reset_engines(struct intel_gt *gt,
 			if (err)
 				break;
 		} while (time_before(jiffies, end_time));
-		clear_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
+		clear_and_wake_up_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
 		st_engine_heartbeat_enable_no_pm(engine);
 
 		pr_info("i915_reset_engine(%s:%s): %lu resets\n",
diff --git a/drivers/gpu/drm/i915/selftests/igt_reset.c b/drivers/gpu/drm/i915/selftests/igt_reset.c
index 9f8590b868a9..a2838c65f8a5 100644
--- a/drivers/gpu/drm/i915/selftests/igt_reset.c
+++ b/drivers/gpu/drm/i915/selftests/igt_reset.c
@@ -36,7 +36,7 @@ void igt_global_reset_unlock(struct intel_gt *gt)
 	enum intel_engine_id id;
 
 	for_each_engine(engine, gt, id)
-		clear_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
+		clear_and_wake_up_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
 
 	clear_bit(I915_RESET_BACKOFF, &gt->reset.flags);
 	wake_up_all(&gt->reset.queue);
-- 
2.31.1

