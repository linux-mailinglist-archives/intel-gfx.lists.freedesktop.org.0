Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFA85ABB6D
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Sep 2022 01:53:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D4FE10E941;
	Fri,  2 Sep 2022 23:53:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0610A10E949
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 23:53:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662162790; x=1693698790;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=SAIcBvjkcuXKn2txIMkuBhV9Y3Ps6zt2P0JSmq+nmDE=;
 b=L9mFKOzrzFgGHvbJQfZyn9drolxjfT29GusKhjXPuGwZ57L2qfDWL3iL
 T1SBX8TFAmxu3Rb2+bBm+mU6uV0yakfvofREoqk10QPp9SmFQQF1JOLSN
 S/glVsE/Agm05xKxX3ZEqqBkxAXMXUkLJi0JTfIqjkcgQvOm76d5L2XAw
 6bxA7A9AUJ2lhpe06Hvi9b4kGzyisggR0HMYWcVhS3At8VIkwL5u6eiSX
 VNxGoiG8l2Ie4JquJMKny1XqJSC6qrB/mHrUNSnGqEt2OMJJRS6moS4Ct
 RiXILWOY2EQUOq/rNps+TxDuNs2VkhJP8hsA2eb1NMT0U11Abkc2zI0ej g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="279125070"
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="279125070"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 16:53:08 -0700
X-IronPort-AV: E=Sophos;i="5.93,285,1654585200"; d="scan'208";a="564135555"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 16:53:08 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Sep 2022 16:53:00 -0700
Message-Id: <20220902235302.1112388-5-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220902235302.1112388-1-ashutosh.dixit@intel.com>
References: <20220902235302.1112388-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/debugfs: Add perf_limit_reasons in
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

Add perf_limit_reasons in debugfs. Unlike the lower 16 perf_limit_reasons
status bits, the upper 16 log bits remain set until cleared, thereby
ensuring the throttling occurrence is not missed. The clear fop clears
the upper 16 log bits, the get fop gets all 32 log and status bits.

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 27 +++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h               |  1 +
 2 files changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 108b9e76c32e..5c95cba5e5df 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -655,6 +655,32 @@ static bool rps_eval(void *data)
 
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
+	/* Clear the upper 16 log bits, the lower 16 status bits are read-only */
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
@@ -664,6 +690,7 @@ void intel_gt_pm_debugfs_register(struct intel_gt *gt, struct dentry *root)
 		{ "forcewake_user", &forcewake_user_fops, NULL},
 		{ "llc", &llc_fops, llc_eval },
 		{ "rps_boost", &rps_boost_fops, rps_eval },
+		{ "perf_limit_reasons", &perf_limit_reasons_fops, NULL },
 	};
 
 	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5e6239864c35..10126995e1f6 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1802,6 +1802,7 @@
 #define   POWER_LIMIT_4_MASK		REG_BIT(9)
 #define   POWER_LIMIT_1_MASK		REG_BIT(11)
 #define   POWER_LIMIT_2_MASK		REG_BIT(12)
+#define   GT0_PERF_LIMIT_REASONS_LOG_MASK REG_GENMASK(31, 16)
 
 #define CHV_CLK_CTL1			_MMIO(0x101100)
 #define VLV_CLK_CTL2			_MMIO(0x101104)
-- 
2.34.1

