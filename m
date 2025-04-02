Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E783DA78630
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 03:39:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E80A10E697;
	Wed,  2 Apr 2025 01:39:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V8BJMEQZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 66A0D10E697;
 Wed,  2 Apr 2025 01:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743557978; x=1775093978;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=s/bpPbQTA9ESuCe2bMAhqSXWSMxcoZKpZvcyfcbtn5o=;
 b=V8BJMEQZvyGebT4r+83nzgDYrOXvFYB801bs08IVETtZRDrI+OdpRr+9
 L1JqfwsQbJwCfCLKNeWFZSXLjU91WguA1FpHjlcBQ+QHxRrhoNVeAU3M7
 +YN5QWIkZRd9i2ZJlurwz69wSV4z0emn5ELTCAZTgi/NrHGdRWAIeBgMw
 By1q8M+Ubg0k9r2m68HUyB6AdqPSJDWLHMVVNLEoqhIPh0ca6loO6gMNw
 1hpfEtWBXqz/bmWm13fWu+scXA5zMkAVzuhPtnwB37G1xyS4usgewYn5I
 f5hAAMOgQ8VtvEybT9tJQqcxvs9mWWAvEizXNBnoVDanU5THrrlTZae+c Q==;
X-CSE-ConnectionGUID: gRxoKYO0SZGFXrEmE73bgg==
X-CSE-MsgGUID: bII9NEkXSEqx/CKSpx3eXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44796294"
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="44796294"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2025 18:39:38 -0700
X-CSE-ConnectionGUID: dsuNrwKTSnSQizXxcF2TaA==
X-CSE-MsgGUID: g5O/od9jRD66LJg9QyL7Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,294,1736841600"; d="scan'208";a="131538507"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by orviesa004.jf.intel.com with ESMTP; 01 Apr 2025 18:39:38 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH i-g-t 2/2] tests/xe_pmu: Add frequency test
Date: Tue,  1 Apr 2025 18:39:12 -0700
Message-Id: <20250402013912.2981094-3-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250402013912.2981094-1-vinay.belgaumkar@intel.com>
References: <20250402013912.2981094-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Add a basic test that uses PMU to read GT actual and requested
frequencies while running a workload.

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/intel/xe_pmu.c | 93 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 93 insertions(+)

diff --git a/tests/intel/xe_pmu.c b/tests/intel/xe_pmu.c
index 66edf24ad..43085b4d0 100644
--- a/tests/intel/xe_pmu.c
+++ b/tests/intel/xe_pmu.c
@@ -226,6 +226,95 @@ static void test_gt_c6_idle(int xe, unsigned int gt)
 	close(pmu_fd);
 }
 
+/**
+ * SUBTEST: gt-frequency
+ * Description: Validate we can collect accurate frequency PMU stats
+ *		while running a workload.
+ */
+static void test_gt_frequency(int fd, struct drm_xe_engine_class_instance *eci)
+{
+	struct xe_cork *cork = NULL;
+	uint64_t end[2], start[2];
+	unsigned long config_rq_freq, config_act_freq;
+	double min[2], max[2];
+	uint32_t gt = eci->gt_id;
+	uint32_t orig_min = xe_gt_get_freq(fd, eci->gt_id, "min");
+	uint32_t orig_max = xe_gt_get_freq(fd, eci->gt_id, "max");
+	uint32_t vm;
+	int pmu_fd[2];
+
+	config_rq_freq = get_event_config(fd, gt, NULL, "gt-requested-frequency");
+	pmu_fd[0] = open_group(fd, config_rq_freq, -1);
+
+	config_act_freq = get_event_config(fd, gt, NULL, "gt-actual-frequency");
+	pmu_fd[1] = open_group(fd, config_act_freq, pmu_fd[0]);
+
+	vm = xe_vm_create(fd, 0, 0);
+
+	cork = xe_cork_create_opts(fd, eci, vm, 1, 1);
+	xe_cork_sync_start(fd, cork);
+
+	/*
+	 * Set GPU to min frequency and read PMU counters.
+	 */
+	igt_assert(xe_gt_set_freq(fd, gt, "max", orig_min) > 0);
+	igt_assert(xe_gt_get_freq(fd, gt, "max") == orig_min);
+
+	pmu_read_multi(pmu_fd[0], 2, start);
+	usleep(SLEEP_DURATION * USEC_PER_SEC);
+	pmu_read_multi(pmu_fd[0], 2, end);
+
+	min[0] = (end[0] - start[0]);
+	min[1] = (end[1] - start[1]);
+
+	/*
+	 * Set GPU to max frequency and read PMU counters.
+	 */
+	igt_assert(xe_gt_set_freq(fd, gt, "max", orig_max) > 0);
+	igt_assert(xe_gt_get_freq(fd, gt, "max") == orig_max);
+	igt_assert(xe_gt_set_freq(fd, gt, "min", orig_max) > 0);
+	igt_assert(xe_gt_get_freq(fd, gt, "min") == orig_max);
+
+	pmu_read_multi(pmu_fd[0], 2, start);
+	usleep(SLEEP_DURATION * USEC_PER_SEC);
+	pmu_read_multi(pmu_fd[0], 2, end);
+
+	max[0] = (end[0] - start[0]);
+	max[1] = (end[1] - start[1]);
+
+	if (!cork->ended)
+		xe_cork_sync_end(fd, cork);
+
+	/*
+	 * Restore min/max.
+	 */
+	igt_assert(xe_gt_set_freq(fd, gt, "min", orig_min) > 0);
+	igt_assert(xe_gt_get_freq(fd, gt, "min") == orig_min);
+
+	igt_info("Minimum frequency: requested %.1f, actual %.1f\n",
+		 min[0], min[1]);
+	igt_info("Maximum frequency: requested %.1f, actual %.1f\n",
+		 max[0], max[1]);
+
+	close(pmu_fd[0]);
+	close(pmu_fd[1]);
+
+	if (cork)
+		xe_cork_destroy(fd, cork);
+
+	xe_vm_destroy(fd, vm);
+
+	close(pmu_fd[0]);
+	close(pmu_fd[1]);
+
+	assert_within_epsilon(min[0], orig_min, tolerance);
+	/*
+	 * On thermally throttled devices we cannot be sure maximum frequency
+	 * can be reached so use larger tolerance downwards.
+	 */
+	assert_within_epsilon_up_down(max[0], orig_max, tolerance, 0.15f);
+}
+
 igt_main
 {
 	int fd, gt;
@@ -254,6 +343,10 @@ igt_main
 	test_each_engine("engine-activity-load", fd, eci)
 		engine_activity(fd, eci, TEST_LOAD);
 
+	igt_describe("Validate PMU GT freq measured is within the tolerance");
+	test_each_engine("gt-frequency", fd, eci)
+		test_gt_frequency(fd, eci);
+
 	igt_fixture {
 		close(fd);
 	}
-- 
2.38.1

