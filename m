Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F2895B46DC
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Sep 2022 16:39:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BAC910E1E5;
	Sat, 10 Sep 2022 14:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4669410E1E6
 for <intel-gfx@lists.freedesktop.org>; Sat, 10 Sep 2022 14:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662820728; x=1694356728;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=78RfWuUl0nTxwRUZXnD0wJgbJPFBhzAZveX8nYpaevI=;
 b=M8TmLJ1CZV+99dIX5Y6K+UiVVMqBCiNFjvlsu/rFFmghM890NeIEoQEL
 Jylsjdq9H17EfFjmjGZnbIJyr8UlKzT5FBj6ki52HTiLHls6cIm6WaObE
 RCQKCoEzH13ZDTuo1XegfYm50brpX/f5Ie+zYlAHUaXpdBz6CPWsSyQea
 QfLnRQ1Pf1tqif1NHoh3szzRWOlmHkxYvjQTh+MTKQMMOKJQpxYIEohS1
 f2vsCFVdtKN0lZV1weB0j30/iu0Za5T+xSyGWbjMJYeBx1DyaTmDeUNdb
 haAjTcIw07/AB1UX3bDL976XD/AQbul7ypKN6dPZFQSmydSSeMub+6Cdc A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10466"; a="295231748"
X-IronPort-AV: E=Sophos;i="5.93,306,1654585200"; d="scan'208";a="295231748"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2022 07:38:47 -0700
X-IronPort-AV: E=Sophos;i="5.93,306,1654585200"; d="scan'208";a="566685278"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2022 07:38:47 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 10 Sep 2022 07:38:42 -0700
Message-Id: <20220910143844.1755324-2-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220910143844.1755324-1-ashutosh.dixit@intel.com>
References: <20220910143844.1755324-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/debugfs: Add perf_limit_reasons in
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
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
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
index 52462cbfdc66..58b0ed9dddd5 100644
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

