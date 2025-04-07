Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDC1A7F136
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 01:44:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80D9710E58F;
	Mon,  7 Apr 2025 23:44:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OveUN6Rc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 999D210E58D;
 Mon,  7 Apr 2025 23:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744069480; x=1775605480;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=chfDW+EeSG47nUgjIEhnPaZWHVaaNrkSzsIJ72MhAKk=;
 b=OveUN6RcvynV9shMKDurmBu4FNfRKklNsTh8jtGJKDbJbjhcECeiprJO
 ETtA4QB7cXCPnGbKUV5AltiB7l9uy03GG0m9x2cRla4lRdQ6UhLJoORWd
 DURZ4JZjiE4SasO6oJmTdvdU/o9eEQ/IPC3OJhxGD7M4AxTyVez/KJsSa
 vfvEfjY23S9g4TQAh/0JpozwbF0j2qjtfa2GTRUyPVPxTk+NUKIzh6+Es
 tjhabPCXmU3q+hwaJNAnnVV9ZY7QMPv4K/gMGwAg/k1ieKQ2NPLbU0RW3
 dhmQUtINxBCId270Avsb9bIxPW4JFpjyEnQ2qcjXmreqJ9zuvmNrw6TUT A==;
X-CSE-ConnectionGUID: pPKFaW3gQ2um279vKIUKhQ==
X-CSE-MsgGUID: oxhZ7Q24Ry+r7OGwiTcm/g==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="49276493"
X-IronPort-AV: E=Sophos;i="6.15,196,1739865600"; d="scan'208";a="49276493"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 16:44:40 -0700
X-CSE-ConnectionGUID: +oHbAlVJQjGZn+xNwZTDrw==
X-CSE-MsgGUID: erEGvnGyTMyBxI+69hVo8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,196,1739865600"; d="scan'208";a="133267226"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.39.141])
 by fmviesa004.fm.intel.com with ESMTP; 07 Apr 2025 16:44:39 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	igt-dev@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Riana Tauro <riana.tauro@intel.com>
Subject: [PATCH i-g-t 2/2] tests/xe_pmu: Add frequency test
Date: Mon,  7 Apr 2025 16:44:06 -0700
Message-Id: <20250407234406.4084642-3-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20250407234406.4084642-1-vinay.belgaumkar@intel.com>
References: <20250407234406.4084642-1-vinay.belgaumkar@intel.com>
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

v2: Rebase and comments (Riana)

Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Riana Tauro <riana.tauro@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 tests/intel/xe_pmu.c | 128 ++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 127 insertions(+), 1 deletion(-)

diff --git a/tests/intel/xe_pmu.c b/tests/intel/xe_pmu.c
index 175bbf374..fbac9c798 100644
--- a/tests/intel/xe_pmu.c
+++ b/tests/intel/xe_pmu.c
@@ -376,6 +376,94 @@ static void test_gt_c6_idle(int xe, unsigned int gt)
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
+	config_rq_freq = get_event_config(gt, NULL, "gt-requested-frequency");
+	pmu_fd[0] = open_group(fd, config_rq_freq, -1);
+
+	config_act_freq = get_event_config(gt, NULL, "gt-actual-frequency");
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
+	xe_cork_sync_end(fd, cork);
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
 static unsigned int enable_and_provision_vfs(int fd)
 {
 	unsigned int gt, num_vfs;
@@ -429,8 +517,9 @@ static void disable_vfs(int fd)
 
 igt_main
 {
-	int fd, gt;
+	int fd, gt, num_gts;
 	struct drm_xe_engine_class_instance *eci;
+	uint32_t *stash_min, *stash_max;
 
 	igt_fixture {
 		fd = drm_open_driver(DRIVER_XE);
@@ -482,6 +571,43 @@ igt_main
 			disable_vfs(fd);
 	}
 
+	igt_subtest_group {
+		igt_fixture {
+			igt_require(xe_sysfs_gt_has_node(fd, 0, "freq0"));
+			num_gts = xe_number_gt(fd);
+
+			stash_min = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
+			stash_max = (uint32_t *) malloc(sizeof(uint32_t) * num_gts);
+
+			xe_for_each_gt(fd, gt) {
+				stash_min[gt] = xe_gt_get_freq(fd, gt, "min");
+				stash_max[gt] = xe_gt_get_freq(fd, gt, "max");
+			}
+		}
+
+		igt_describe("Validate PMU GT freq measured is within the tolerance");
+		igt_subtest_with_dynamic("gt-frequency") {
+			xe_for_each_gt(fd, gt) {
+				igt_dynamic_f("gt%u", gt)
+				xe_for_each_engine(fd, eci) {
+					if (gt == eci->gt_id) {
+						test_gt_frequency(fd, eci);
+						break;
+					}
+				}
+			}
+		}
+
+		igt_fixture {
+			xe_for_each_gt(fd, gt) {
+				xe_gt_set_freq(fd, gt, "max", stash_max[gt]);
+				xe_gt_set_freq(fd, gt, "min", stash_min[gt]);
+			}
+			free(stash_min);
+			free(stash_max);
+		}
+	}
+
 	igt_fixture {
 		close(fd);
 	}
-- 
2.38.1

