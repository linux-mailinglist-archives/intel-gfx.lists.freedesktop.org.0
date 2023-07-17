Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F4D7569E3
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jul 2023 19:12:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1352910E288;
	Mon, 17 Jul 2023 17:12:30 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB32010E296;
 Mon, 17 Jul 2023 17:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689613947; x=1721149947;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8wR3AYDxl5sMEg42nQoDPIKhPVWODMRqYEp6eIVOrbA=;
 b=FHSl2AlBDJDm72dzxpkA+KfqCLVomnbtV2PuMEbTHkov4FjXFye+MRGE
 BDLYGEAePLQXPD/guDci4PdYYwHhrMdUyqBe7vup0wBbhmKZD9HwWLFyn
 qf4VRN6NLOpReS40pVl90B5r9dCVaScBdTtmU4IjF789FjS3fWHgef3ff
 7XPfFx/w+ZKvF3yhHf+q9Gq3urAX7ncVRJoP8drK5YjVCVoEJFv8rwpNL
 Nh0oSfYPdzOfPA9ErEJnucBzdMb+GwYMbslnmSoCSnnPJ4UbZvFd4WpOR
 hpgVvu3yN+B51k4AKA+QIgGgGR0HHYWj68lCpuefMqVoyA8e5hC96cnol Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="364860106"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="364860106"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 10:12:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="758503270"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="758503270"
Received: from rgwhiteh-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.205.103])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 10:12:23 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org,
	Intel-gfx@lists.freedesktop.org
Date: Mon, 17 Jul 2023 18:12:19 +0100
Message-Id: <20230717171219.832728-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230717165318.831766-1-tvrtko.ursulin@linux.intel.com>
References: <20230717165318.831766-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH i-g-t v2] tests/i915_pm_rps: Fix test after
 silent conflict
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

A silent conflict sneaked in as I was merging
d86ca7e17b58 ("tests/i915_pm_rps: Exercise sysfs thresholds") in a way
that igt_sysfs_set_u32 has became a function returning void.

Assert is now built-in so drop it from the test.

v2:
 * Fix invalid value test.
 * Assert new values after write while at it.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: d86ca7e17b58 ("tests/i915_pm_rps: Exercise sysfs thresholds")
Reference: 54dc25efaf10 ("lib/igt_sysfs: add asserting helpers for read/write operations")
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Lukasz Laguna <lukasz.laguna@intel.com>
Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
---
 tests/i915/i915_pm_rps.c | 34 ++++++++++++++++++++++++++++------
 1 file changed, 28 insertions(+), 6 deletions(-)

diff --git a/tests/i915/i915_pm_rps.c b/tests/i915/i915_pm_rps.c
index 68bb99d62c19..15c74cc703c2 100644
--- a/tests/i915/i915_pm_rps.c
+++ b/tests/i915/i915_pm_rps.c
@@ -988,6 +988,28 @@ static igt_spin_t *spin_sync_gt(int i915, uint64_t ahnd, unsigned int gt,
 	return __igt_sync_spin(i915, ahnd, *ctx, &e);
 }
 
+static void sysfs_fail_set_u32(int dir, const char *attr, uint32_t set)
+{
+	u32 old, new;
+	bool ret;
+
+	old = igt_sysfs_get_u32(dir, attr);
+	ret = __igt_sysfs_set_u32(dir, attr, set);
+	igt_assert_eq(ret, false);
+	new = igt_sysfs_get_u32(dir, attr);
+	igt_assert_eq(old, new);
+}
+
+static void sysfs_set_u32(int dir, const char *attr, uint32_t set)
+{
+	u32 new;
+
+	igt_sysfs_set_u32(dir, attr, set);
+
+	new = igt_sysfs_get_u32(dir, attr);
+	igt_assert_eq(set, new);
+}
+
 #define TEST_IDLE 0x1
 #define TEST_PARK 0x2
 static void test_thresholds(int i915, unsigned int gt, unsigned int flags)
@@ -1010,8 +1032,8 @@ static void test_thresholds(int i915, unsigned int gt, unsigned int flags)
 	igt_require(def_up && def_down);
 
 	/* Check invalid percentages are rejected */
-	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", 101), false);
-	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", 101), false);
+	sysfs_fail_set_u32(sysfs, "rps_up_threshold_pct", 101);
+	sysfs_fail_set_u32(sysfs, "rps_down_threshold_pct", 101);
 
 	/*
 	 * Invent some random up-down thresholds, but always include 0 and 100
@@ -1034,8 +1056,8 @@ static void test_thresholds(int i915, unsigned int gt, unsigned int flags)
 	/* Exercise the thresholds with a GPU load to trigger park/unpark etc */
 	for (i = 0; i < points; i++) {
 		igt_info("Testing thresholds up %u%% and down %u%%...\n", ta[i], tb[i]);
-		igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", ta[i]), true);
-		igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", tb[i]), true);
+		sysfs_set_u32(sysfs, "rps_up_threshold_pct", ta[i]);
+		sysfs_set_u32(sysfs, "rps_down_threshold_pct", tb[i]);
 
 		if (flags & TEST_IDLE) {
 			gem_quiescent_gpu(i915);
@@ -1069,8 +1091,8 @@ static void test_thresholds(int i915, unsigned int gt, unsigned int flags)
 	gem_quiescent_gpu(i915);
 
 	/* Restore defaults */
-	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_up_threshold_pct", def_up), true);
-	igt_assert_eq(igt_sysfs_set_u32(sysfs, "rps_down_threshold_pct", def_down), true);
+	sysfs_set_u32(sysfs, "rps_up_threshold_pct", def_up);
+	sysfs_set_u32(sysfs, "rps_down_threshold_pct", def_down);
 
 	free(ta);
 	free(tb);
-- 
2.39.2

