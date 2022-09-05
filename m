Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF4FB5AD914
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 20:36:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD60410E4AA;
	Mon,  5 Sep 2022 18:35:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A24B10E4A6
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 18:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662402949; x=1693938949;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KphQRE++GhXWFEKEn2ffs5RUHbKP/zKBwhfAyf2/nZE=;
 b=QbaqWS5kJ81xt1LQ/R0NrRTxRj1KxsBW7miB9ZqFeV6uu7uDA4xfHBZ5
 5WFhn6OsLaMYQx/UUue8SxDHaN+pozNlbCLo7dn07//G9kpqugM9ioERw
 ctHtEP13joGrfUS/dmWi/XQ/MnXRUuxY8O+H3B4zdKB+DbM9FTrtJWqRF
 etsU6gwSAmzxx2LmOrqIMJRGp9PoUWzX28xAJ2xi8p26eVd4WKqmLxqIg
 pTNkvPMd8rG+akW4q/Kgnl7+xFU1viLQ3YhYXxAdPO76uCQMQ8n+vxMoL
 kLLV8jqgpgH63HQMcJa/wmBSfXCijQAkLMlZl6WE6DP5F9OuIZlD3//D1 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="294024614"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="294024614"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:35:49 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="675375692"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 11:35:47 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Sep 2022 00:08:01 +0530
Message-Id: <20220905183801.2126693-6-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220905183801.2126693-1-badal.nilawar@intel.com>
References: <20220905183801.2126693-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/mtl: Add C6 residency support for
 MTL SAMedia
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

For MTL SAMedia updated relevant functions and places in the code to get
Media C6 residency.

Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Cc: Chris Wilson <chris.p.wilson@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 56 +++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 10 ++++
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   |  9 ++-
 drivers/gpu/drm/i915/gt/intel_rc6.c           |  5 +-
 drivers/gpu/drm/i915/gt/selftest_rc6.c        |  9 ++-
 drivers/gpu/drm/i915/i915_pmu.c               |  8 ++-
 6 files changed, 93 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 108b9e76c32e..29b89b980648 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -269,6 +269,60 @@ static int ilk_drpc(struct seq_file *m)
 	return 0;
 }
 
+static int mtl_drpc(struct seq_file *m)
+{
+	struct intel_gt *gt = m->private;
+	struct intel_uncore *uncore = gt->uncore;
+	u32 gt_core_status, rcctl1;
+	u32 mtl_powergate_enable = 0, mtl_powergate_status = 0;
+	i915_reg_t reg;
+
+	gt_core_status = intel_uncore_read(uncore, MTL_MIRROR_TARGET_WP1);
+
+	rcctl1 = intel_uncore_read(uncore, GEN6_RC_CONTROL);
+	mtl_powergate_enable = intel_uncore_read(uncore, GEN9_PG_ENABLE);
+	mtl_powergate_status = intel_uncore_read(uncore,
+						 GEN9_PWRGT_DOMAIN_STATUS);
+
+	seq_printf(m, "RC6 Enabled: %s\n",
+		   str_yes_no(rcctl1 & GEN6_RC_CTL_RC6_ENABLE));
+	if (gt->type == GT_MEDIA) {
+		seq_printf(m, "Media Well Gating Enabled: %s\n",
+			   str_yes_no(mtl_powergate_enable & GEN9_MEDIA_PG_ENABLE));
+	} else {
+		seq_printf(m, "Render Well Gating Enabled: %s\n",
+			   str_yes_no(mtl_powergate_enable & GEN9_RENDER_PG_ENABLE));
+	}
+
+	seq_puts(m, "Current RC state: ");
+
+	switch ((gt_core_status & MTL_CC_MASK) >> MTL_CC_SHIFT) {
+	case MTL_CC0:
+		seq_puts(m, "on\n");
+		break;
+	case MTL_CC6:
+		seq_puts(m, "RC6\n");
+		break;
+	default:
+		seq_puts(m, "Unknown\n");
+		break;
+	}
+
+	if (gt->type == GT_MEDIA)
+		seq_printf(m, "Media Power Well: %s\n",
+			   (mtl_powergate_status &
+			    GEN9_PWRGT_MEDIA_STATUS_MASK) ? "Up" : "Down");
+	else
+		seq_printf(m, "Render Power Well: %s\n",
+			   (mtl_powergate_status &
+			    GEN9_PWRGT_RENDER_STATUS_MASK) ? "Up" : "Down");
+
+	reg = (gt->type == GT_MEDIA) ? MTL_MEDIA_MC6 : GEN6_GT_GFX_RC6;
+	print_rc6_res(m, "RC6 residency since boot:", reg);
+
+	return fw_domains_show(m, NULL);
+}
+
 static int drpc_show(struct seq_file *m, void *unused)
 {
 	struct intel_gt *gt = m->private;
@@ -279,6 +333,8 @@ static int drpc_show(struct seq_file *m, void *unused)
 	with_intel_runtime_pm(gt->uncore->rpm, wakeref) {
 		if (IS_VALLEYVIEW(i915) || IS_CHERRYVIEW(i915))
 			err = vlv_drpc(m);
+		else if (MEDIA_VER(i915) >= 13)
+			err = mtl_drpc(m);
 		else if (GRAPHICS_VER(i915) >= 6)
 			err = gen6_drpc(m);
 		else
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 67b58d572941..b14048da9b0c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1517,6 +1517,16 @@
  */
 #define MTL_MIRROR_TARGET_WP1          _MMIO(0x0C60)
 #define   MTL_CAGF_MASK                REG_GENMASK(8, 0)
+#define   MTL_CC0                      0x0
+#define   MTL_CC6                      0x3
+#define   MTL_CC_SHIFT                 9
+#define   MTL_CC_MASK                  (0xf << MTL_CC_SHIFT)
+
+/*
+ * MTL: This register contains the total MC6 residency time that SAMedia was
+ * since boot
+ */
+#define MTL_MEDIA_MC6                          _MMIO(0x138048)
 
 #define GEN11_GT_INTR_DW(x)			_MMIO(0x190018 + ((x) * 4))
 #define   GEN11_CSME				(31)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index e066cc33d9f2..fb2cf8ee2eeb 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -138,7 +138,14 @@ static ssize_t rc6_residency_ms_show(struct device *dev,
 
 static u32 __rc6p_residency_ms_show(struct intel_gt *gt)
 {
-	return get_residency(gt, GEN6_GT_GFX_RC6p);
+	i915_reg_t reg;
+
+	if (gt->type == GT_MEDIA)
+		reg = MTL_MEDIA_MC6;
+	else
+		reg = GEN6_GT_GFX_RC6;
+
+	return get_residency(gt, reg);
 }
 
 static ssize_t rc6p_residency_ms_show(struct device *dev,
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index f8d0523f4c18..26f71f7f07c6 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -745,6 +745,7 @@ u64 intel_rc6_residency_ns(struct intel_rc6 *rc6, const i915_reg_t reg)
 	unsigned long flags;
 	unsigned int i;
 	u32 mul, div;
+	i915_reg_t base;
 
 	if (!rc6->supported)
 		return 0;
@@ -756,8 +757,10 @@ u64 intel_rc6_residency_ns(struct intel_rc6 *rc6, const i915_reg_t reg)
 	 * other so we can use the relative address, compared to the smallest
 	 * one as the index into driver storage.
 	 */
+	base = (rc6_to_gt(rc6)->type == GT_MEDIA) ?
+	       MTL_MEDIA_MC6 : GEN6_GT_GFX_RC6_LOCKED;
 	i = (i915_mmio_reg_offset(reg) -
-	     i915_mmio_reg_offset(GEN6_GT_GFX_RC6_LOCKED)) / sizeof(u32);
+	     i915_mmio_reg_offset(base)) / sizeof(u32);
 	if (drm_WARN_ON_ONCE(&i915->drm, i >= ARRAY_SIZE(rc6->cur_residency)))
 		return 0;
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 8c70b7e12074..28c6a4b6b8d1 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -15,11 +15,18 @@
 
 static u64 rc6_residency(struct intel_rc6 *rc6)
 {
+	struct intel_gt *gt = rc6_to_gt(rc6);
+	i915_reg_t reg;
 	u64 result;
 
 	/* XXX VLV_GT_MEDIA_RC6? */
 
-	result = intel_rc6_residency_ns(rc6, GEN6_GT_GFX_RC6);
+	if (gt->type == GT_MEDIA)
+		reg = MTL_MEDIA_MC6;
+	else
+		reg = GEN6_GT_GFX_RC6;
+
+	result = intel_rc6_residency_ns(rc6, reg);
 	if (HAS_RC6p(rc6_to_i915(rc6)))
 		result += intel_rc6_residency_ns(rc6, GEN6_GT_GFX_RC6p);
 	if (HAS_RC6pp(rc6_to_i915(rc6)))
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 958b37123bf1..6ec139668641 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -146,9 +146,15 @@ static bool pmu_needs_timer(struct i915_pmu *pmu, bool gpu_active)
 static u64 __get_rc6(struct intel_gt *gt)
 {
 	struct drm_i915_private *i915 = gt->i915;
+	i915_reg_t reg;
 	u64 val;
 
-	val = intel_rc6_residency_ns(&gt->rc6, GEN6_GT_GFX_RC6);
+	if (gt->type == GT_MEDIA)
+		reg = MTL_MEDIA_MC6;
+	else
+		reg = GEN6_GT_GFX_RC6;
+
+	val = intel_rc6_residency_ns(&gt->rc6, reg);
 
 	if (HAS_RC6p(i915))
 		val += intel_rc6_residency_ns(&gt->rc6, GEN6_GT_GFX_RC6p);
-- 
2.25.1

