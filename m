Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 112A35B13FD
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Sep 2022 07:23:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0E4B10E958;
	Thu,  8 Sep 2022 05:22:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 097BF10E958
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Sep 2022 05:22:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662614574; x=1694150574;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lNZ1yBhLxY4g0F+J9L8t83ajZ/WprlpF3zRpNvVbTko=;
 b=hLUmVZwj1XKueX327lYOcCl+U6GuePtcJ9FBbD1rkjUWCrhBrbI+9OlN
 QvmDVsId+YcanaECRRiQpBhX1e2ceWHhmvv+xFSxJ85kozx0oRGHP8cnF
 +YICl2c324sdcuU9hK+n+ochwOE4PUrDnc2aNHrC4Qt4izhTfuMhrJcmu
 qHUWbRat7gFR/aV+tMtY1O1GV/5iSWei9r7+/85S1uJNumh/tEd+/57D7
 va/rcenaI0PYvc5krd6NO5DUz+mFRNbgoCE6BFDaNEZ8YejIsHLQCjsbJ
 HQSXI3MwkPgKIgYEm/x5eiyr6Qs8f6g6e+2TiAlAKA42EMU/54j2eaeGt Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10463"; a="298408392"
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="298408392"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 22:22:53 -0700
X-IronPort-AV: E=Sophos;i="5.93,299,1654585200"; d="scan'208";a="718416748"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2022 22:22:52 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Sep 2022 22:22:49 -0700
Message-Id: <aba9305853caa054dc598a0f559495d3e4e2b1be.1662613377.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1662613377.git.ashutosh.dixit@intel.com>
References: <cover.1662613377.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/8] drm/i915/debugfs: Add perf_limit_reasons in
 debugfs
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

From: Tilak Tangudu <tilak.tangudu@intel.com>

Add perf_limit_reasons in debugfs. The upper 16 perf_limit_reasons RW "log"
bits are identical to the lower 16 RO "status" bits except that the "log"
bits remain set until cleared, thereby ensuring the throttling occurrence
is not missed. The clear fop clears the upper 16 "log" bits, the get fop
gets all 32 "log" and "status" bits.

v2: Expand commit message and clarify "log" and "status" bits in
    comment (Rodrigo)

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 31 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               |  1 +
 2 files changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 108b9e76c32e..a009cf69103a 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -655,6 +655,36 @@ static bool rps_eval(void *data)
 
 DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(rps_boost);
 
+static int perf_limit_reasons_get(void *data, u64 *val)
+{
+	struct intel_gt *gt = data;
+	intel_wakeref_t wakeref;
+
+	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
+		*val = intel_uncore_read(gt->uncore, GT0_PERF_LIMIT_REASONS);
+
+	return 0;
+}
+
+static int perf_limit_reasons_clear(void *data, u64 val)
+{
+	struct intel_gt *gt = data;
+	intel_wakeref_t wakeref;
+
+	/*
+	 * Clear the upper 16 "log" bits, the lower 16 "status" bits are
+	 * read-only. The upper 16 "log" bits are identical to the lower 16
+	 * "status" bits except that the "log" bits remain set until cleared.
+	 */
+	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
+		intel_uncore_rmw(gt->uncore, GT0_PERF_LIMIT_REASONS,
+				 GT0_PERF_LIMIT_REASONS_LOG_MASK, 0);
+
+	return 0;
+}
+DEFINE_SIMPLE_ATTRIBUTE(perf_limit_reasons_fops, perf_limit_reasons_get,
+			perf_limit_reasons_clear, "%llu\n");
+
 void intel_gt_pm_debugfs_register(struct intel_gt *gt, struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
@@ -664,6 +694,7 @@ void intel_gt_pm_debugfs_register(struct intel_gt *gt, struct dentry *root)
 		{ "forcewake_user", &forcewake_user_fops, NULL},
 		{ "llc", &llc_fops, llc_eval },
 		{ "rps_boost", &rps_boost_fops, rps_eval },
+		{ "perf_limit_reasons", &perf_limit_reasons_fops, NULL },
 	};
 
 	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 24009786f88b..9492f8f43b25 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1802,6 +1802,7 @@
 #define   POWER_LIMIT_4_MASK		REG_BIT(8)
 #define   POWER_LIMIT_1_MASK		REG_BIT(10)
 #define   POWER_LIMIT_2_MASK		REG_BIT(11)
+#define   GT0_PERF_LIMIT_REASONS_LOG_MASK REG_GENMASK(31, 16)
 
 #define CHV_CLK_CTL1			_MMIO(0x101100)
 #define VLV_CLK_CTL2			_MMIO(0x101104)
-- 
2.34.1

