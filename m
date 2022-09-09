Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9195B2C42
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 04:54:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3216A10E244;
	Fri,  9 Sep 2022 02:54:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72C5110E244
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 02:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662692074; x=1694228074;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eb2HW+SrIQq0xdeiTOXTI4jTLRV8NgftrmIXzgKw0nU=;
 b=Yo9gSYI7hwog5bJ0Wt4V0yfj0xRn/9cmOx4YPDYI729zZi9PEvGQWITo
 UxqF/utaxRER0kMhP09ujaDekxoBvuetsLUAf1UEF95abJUcpB4Fv+azZ
 6sXQHlfT9DiQoYx7NOo0shye8io6KmzWALktY7LUIXtiOG4jnzUbsrV/5
 nDfvozuCy3k0ZUP6eigu9DksS0jenrcvdp7R2BXvopU8Et7w3HECv5fpe
 sXedy7cbTkitl4y9R/HSqJtEe8zo5+Os8rrtGd+TmBfNiNTOtWbCGJ1hZ
 kT7oH4HDJFC5VpwcwMBtnQ/l2vqu+QQNVKuoh5RkXDdjDYF1DJgsID7FN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="280407146"
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="280407146"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 19:54:34 -0700
X-IronPort-AV: E=Sophos;i="5.93,300,1654585200"; d="scan'208";a="943609613"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.158])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2022 19:54:32 -0700
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  9 Sep 2022 08:26:46 +0530
Message-Id: <20220909025646.3397620-7-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220909025646.3397620-1-badal.nilawar@intel.com>
References: <20220909025646.3397620-1-badal.nilawar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/mtl: Add C6 residency support for
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
index 96c03a1258e1..6913c0a2ba33 100644
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
index ab9a5e66ab34..2c6cf29888e0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1522,6 +1522,16 @@
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
index a24704ec2c18..3653e542cbf8 100644
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

