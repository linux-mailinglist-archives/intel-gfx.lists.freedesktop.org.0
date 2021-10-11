Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7354299FE
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Oct 2021 01:52:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84DF5899DE;
	Mon, 11 Oct 2021 23:51:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26370899D4;
 Mon, 11 Oct 2021 23:51:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10134"; a="227283919"
X-IronPort-AV: E=Sophos;i="5.85,366,1624345200"; d="scan'208";a="227283919"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 16:51:53 -0700
X-IronPort-AV: E=Sophos;i="5.85,366,1624345200"; d="scan'208";a="490688278"
Received: from jons-linux-dev-box.fm.intel.com ([10.1.27.20])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 16:51:53 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Cc: <john.c.harrison@intel.com>,
	<thomas.hellstrom@linux.intel.com>
Date: Mon, 11 Oct 2021 16:47:05 -0700
Message-Id: <20211011234705.30853-1-matthew.brost@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/selftests: Allow engine reset failure
 to do a GT reset in hangcheck selftest
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

The hangcheck selftest blocks per engine resets by setting magic bits in
the reset flags. This is incorrect for GuC submission because if the GuC
fails to reset an engine we would like to do a full GT reset. Do no set
these magic bits when using GuC submission.

Side note this lockless algorithm with magic bits to block resets really
should be ripped out.

Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
index 7e2d99dd012d..90a03c60c80c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
+++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
@@ -734,7 +734,8 @@ static int __igt_reset_engine(struct intel_gt *gt, bool active)
 		reset_engine_count = i915_reset_engine_count(global, engine);
 
 		st_engine_heartbeat_disable(engine);
-		set_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
+		if (!using_guc)
+			set_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
 		count = 0;
 		do {
 			struct i915_request *rq = NULL;
@@ -824,7 +825,8 @@ static int __igt_reset_engine(struct intel_gt *gt, bool active)
 			if (err)
 				break;
 		} while (time_before(jiffies, end_time));
-		clear_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
+		if (!using_guc)
+			clear_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
 		st_engine_heartbeat_enable(engine);
 		pr_info("%s: Completed %lu %s resets\n",
 			engine->name, count, active ? "active" : "idle");
@@ -1042,7 +1044,8 @@ static int __igt_reset_engines(struct intel_gt *gt,
 		yield(); /* start all threads before we begin */
 
 		st_engine_heartbeat_disable_no_pm(engine);
-		set_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
+		if (!using_guc)
+			set_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
 		do {
 			struct i915_request *rq = NULL;
 			struct intel_selftest_saved_policy saved;
@@ -1165,7 +1168,8 @@ static int __igt_reset_engines(struct intel_gt *gt,
 			if (err)
 				break;
 		} while (time_before(jiffies, end_time));
-		clear_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
+		if (!using_guc)
+			clear_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
 		st_engine_heartbeat_enable_no_pm(engine);
 
 		pr_info("i915_reset_engine(%s:%s): %lu resets\n",
-- 
2.32.0

