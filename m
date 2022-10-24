Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 293E060B6EB
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 21:13:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 185CF10E771;
	Mon, 24 Oct 2022 19:13:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 845A310E756;
 Mon, 24 Oct 2022 19:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666638798; x=1698174798;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2jzBKb/Madudb0FTeKsHZR+auU1fY7xYjQ4BhTMqbl8=;
 b=Rjh2C7SZ64j3d68z5H7bU2agqMn927u05jnnMtQjqLADB4rQ3Q1MwBOC
 7MnMWEtdM0apfePHStTQTYI2+EzZNI34T2/aZRIM/bQwuKZ1lwh3txZ1W
 835dNYeXJi7sO41i8qQH9L05+m7ufQAiERu7c3TssKJlZO+coOSvXHcBu
 3L3pub00aY94U6tPyMR+1n1DqYxBDYI/ZJfriCWeW8DvpZy7+eRfXqNgT
 DdRH0+XrcwEq/RD6Fl5fKLQk1j7BQbXHLxm/T3BKIsw37y7CTtR8iuKmd
 0KvlS4jiLIdfGwism0PXeI4HQpEsuv2dsevjw3h5PsY1eFl9ZiXgXyj1N Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="305113237"
X-IronPort-AV: E=Sophos;i="5.95,210,1661842800"; d="scan'208";a="305113237"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 12:13:17 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10510"; a="582514357"
X-IronPort-AV: E=Sophos;i="5.95,210,1661842800"; d="scan'208";a="582514357"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril.jf.intel.com)
 ([10.165.21.138])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 12:13:17 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 24 Oct 2022 12:13:12 -0700
Message-Id: <20221024191313.3840311-5-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.38.0
In-Reply-To: <20221024191313.3840311-1-ashutosh.dixit@intel.com>
References: <20221024191313.3840311-1-ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/5] drm/i915/gt: Use RC6 residency types as
 arguments to residency functions
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
Cc: dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Previously RC6 residency functions directly accepted RC6 residency register
MMIO offsets (there are four RC6 residency registers). This worked but
required an assumption on the residency register layout so was not future
proof.

Therefore change RC6 residency functions to accept RC6 residency types
instead of register MMIO offsets. The knowledge of register offsets as well
as ID to offset mapping is now maintained solely in intel_rc6 and can be
tailored for different platforms and different register layouts as need
arises.

v2: Address review comments by Jani N
    - Change residency functions to accept RC6 residency types instead of
      register ID's
    - s/intel_rc6_print_rc5_res/intel_rc6_print_residency/
    - Remove "const enum" in function arguments
    - Naming: intel_rc6_* for enum
    - Use INTEL_RC6_RES_MAX and other minor changes
v3: Don't include intel_rc6_types.h in intel_rc6.h (Jani)

Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
Reported-by: Jani Nikula <jani.nikula@linux.intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 27 +++------
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   | 12 ++--
 drivers/gpu/drm/i915/gt/intel_rc6.c           | 55 +++++++++++--------
 drivers/gpu/drm/i915/gt/intel_rc6.h           | 11 ++--
 drivers/gpu/drm/i915/gt/intel_rc6_types.h     | 15 ++++-
 drivers/gpu/drm/i915/gt/selftest_rc6.c        |  6 +-
 drivers/gpu/drm/i915/i915_pmu.c               |  6 +-
 7 files changed, 72 insertions(+), 60 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 979e602946549..5d6b346831393 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -83,19 +83,6 @@ static int fw_domains_show(struct seq_file *m, void *data)
 }
 DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(fw_domains);
 
-static void print_rc6_res(struct seq_file *m,
-			  const char *title,
-			  const i915_reg_t reg)
-{
-	struct intel_gt *gt = m->private;
-	intel_wakeref_t wakeref;
-
-	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
-		seq_printf(m, "%s %u (%llu us)\n", title,
-			   intel_uncore_read(gt->uncore, reg),
-			   intel_rc6_residency_us(&gt->rc6, reg));
-}
-
 static int vlv_drpc(struct seq_file *m)
 {
 	struct intel_gt *gt = m->private;
@@ -115,8 +102,8 @@ static int vlv_drpc(struct seq_file *m)
 	seq_printf(m, "Media Power Well: %s\n",
 		   (pw_status & VLV_GTLC_PW_MEDIA_STATUS_MASK) ? "Up" : "Down");
 
-	print_rc6_res(m, "Render RC6 residency since boot:", GEN6_GT_GFX_RC6);
-	print_rc6_res(m, "Media RC6 residency since boot:", VLV_GT_MEDIA_RC6);
+	intel_rc6_print_residency(m, "Render RC6 residency since boot:", INTEL_RC6_RES_RC6);
+	intel_rc6_print_residency(m, "Media RC6 residency since boot:", INTEL_RC6_RES_VLV_MEDIA);
 
 	return fw_domains_show(m, NULL);
 }
@@ -192,11 +179,11 @@ static int gen6_drpc(struct seq_file *m)
 	}
 
 	/* Not exactly sure what this is */
-	print_rc6_res(m, "RC6 \"Locked to RPn\" residency since boot:",
-		      GEN6_GT_GFX_RC6_LOCKED);
-	print_rc6_res(m, "RC6 residency since boot:", GEN6_GT_GFX_RC6);
-	print_rc6_res(m, "RC6+ residency since boot:", GEN6_GT_GFX_RC6p);
-	print_rc6_res(m, "RC6++ residency since boot:", GEN6_GT_GFX_RC6pp);
+	intel_rc6_print_residency(m, "RC6 \"Locked to RPn\" residency since boot:",
+				  INTEL_RC6_RES_RC6_LOCKED);
+	intel_rc6_print_residency(m, "RC6 residency since boot:", INTEL_RC6_RES_RC6);
+	intel_rc6_print_residency(m, "RC6+ residency since boot:", INTEL_RC6_RES_RC6p);
+	intel_rc6_print_residency(m, "RC6++ residency since boot:", INTEL_RC6_RES_RC6pp);
 
 	if (GRAPHICS_VER(i915) <= 7) {
 		seq_printf(m, "RC6   voltage: %dmV\n",
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index 9041609523697..19a60000e052c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -93,13 +93,13 @@ sysfs_gt_attribute_r_func(struct device *dev, struct device_attribute *attr,
 		sysfs_gt_attribute_r_func(d, a, f, INTEL_GT_SYSFS_MAX)
 
 #ifdef CONFIG_PM
-static u32 get_residency(struct intel_gt *gt, i915_reg_t reg)
+static u32 get_residency(struct intel_gt *gt, enum intel_rc6_res_type id)
 {
 	intel_wakeref_t wakeref;
 	u64 res = 0;
 
 	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
-		res = intel_rc6_residency_us(&gt->rc6, reg);
+		res = intel_rc6_residency_us(&gt->rc6, id);
 
 	return DIV_ROUND_CLOSEST_ULL(res, 1000);
 }
@@ -123,7 +123,7 @@ static ssize_t rc6_enable_show(struct device *dev,
 
 static u32 __rc6_residency_ms_show(struct intel_gt *gt)
 {
-	return get_residency(gt, GEN6_GT_GFX_RC6);
+	return get_residency(gt, INTEL_RC6_RES_RC6);
 }
 
 static ssize_t rc6_residency_ms_show(struct device *dev,
@@ -138,7 +138,7 @@ static ssize_t rc6_residency_ms_show(struct device *dev,
 
 static u32 __rc6p_residency_ms_show(struct intel_gt *gt)
 {
-	return get_residency(gt, GEN6_GT_GFX_RC6p);
+	return get_residency(gt, INTEL_RC6_RES_RC6p);
 }
 
 static ssize_t rc6p_residency_ms_show(struct device *dev,
@@ -153,7 +153,7 @@ static ssize_t rc6p_residency_ms_show(struct device *dev,
 
 static u32 __rc6pp_residency_ms_show(struct intel_gt *gt)
 {
-	return get_residency(gt, GEN6_GT_GFX_RC6pp);
+	return get_residency(gt, INTEL_RC6_RES_RC6pp);
 }
 
 static ssize_t rc6pp_residency_ms_show(struct device *dev,
@@ -168,7 +168,7 @@ static ssize_t rc6pp_residency_ms_show(struct device *dev,
 
 static u32 __media_rc6_residency_ms_show(struct intel_gt *gt)
 {
-	return get_residency(gt, VLV_GT_MEDIA_RC6);
+	return get_residency(gt, INTEL_RC6_RES_VLV_MEDIA);
 }
 
 static ssize_t media_rc6_residency_ms_show(struct device *dev,
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index f8d0523f4c18e..6db4e60d5fba5 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -551,6 +551,14 @@ static void __intel_rc6_disable(struct intel_rc6 *rc6)
 	intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
 }
 
+static void rc6_res_reg_init(struct intel_rc6 *rc6)
+{
+	rc6->res_reg[INTEL_RC6_RES_RC6_LOCKED] = GEN6_GT_GFX_RC6_LOCKED;
+	rc6->res_reg[INTEL_RC6_RES_RC6] = GEN6_GT_GFX_RC6;
+	rc6->res_reg[INTEL_RC6_RES_RC6p] = GEN6_GT_GFX_RC6p;
+	rc6->res_reg[INTEL_RC6_RES_RC6pp] = GEN6_GT_GFX_RC6pp;
+}
+
 void intel_rc6_init(struct intel_rc6 *rc6)
 {
 	struct drm_i915_private *i915 = rc6_to_i915(rc6);
@@ -562,6 +570,8 @@ void intel_rc6_init(struct intel_rc6 *rc6)
 	if (!rc6_supported(rc6))
 		return;
 
+	rc6_res_reg_init(rc6);
+
 	if (IS_CHERRYVIEW(i915))
 		err = chv_rc6_init(rc6);
 	else if (IS_VALLEYVIEW(i915))
@@ -736,31 +746,19 @@ static u64 vlv_residency_raw(struct intel_uncore *uncore, const i915_reg_t reg)
 	return lower | (u64)upper << 8;
 }
 
-u64 intel_rc6_residency_ns(struct intel_rc6 *rc6, const i915_reg_t reg)
+u64 intel_rc6_residency_ns(struct intel_rc6 *rc6, enum intel_rc6_res_type id)
 {
 	struct drm_i915_private *i915 = rc6_to_i915(rc6);
 	struct intel_uncore *uncore = rc6_to_uncore(rc6);
 	u64 time_hw, prev_hw, overflow_hw;
+	i915_reg_t reg = rc6->res_reg[id];
 	unsigned int fw_domains;
 	unsigned long flags;
-	unsigned int i;
 	u32 mul, div;
 
 	if (!rc6->supported)
 		return 0;
 
-	/*
-	 * Store previous hw counter values for counter wrap-around handling.
-	 *
-	 * There are only four interesting registers and they live next to each
-	 * other so we can use the relative address, compared to the smallest
-	 * one as the index into driver storage.
-	 */
-	i = (i915_mmio_reg_offset(reg) -
-	     i915_mmio_reg_offset(GEN6_GT_GFX_RC6_LOCKED)) / sizeof(u32);
-	if (drm_WARN_ON_ONCE(&i915->drm, i >= ARRAY_SIZE(rc6->cur_residency)))
-		return 0;
-
 	fw_domains = intel_uncore_forcewake_for_reg(uncore, reg, FW_REG_READ);
 
 	spin_lock_irqsave(&uncore->lock, flags);
@@ -789,11 +787,11 @@ u64 intel_rc6_residency_ns(struct intel_rc6 *rc6, const i915_reg_t reg)
 	/*
 	 * Counter wrap handling.
 	 *
-	 * But relying on a sufficient frequency of queries otherwise counters
-	 * can still wrap.
+	 * Store previous hw counter values for counter wrap-around handling. But
+	 * relying on a sufficient frequency of queries otherwise counters can still wrap.
 	 */
-	prev_hw = rc6->prev_hw_residency[i];
-	rc6->prev_hw_residency[i] = time_hw;
+	prev_hw = rc6->prev_hw_residency[id];
+	rc6->prev_hw_residency[id] = time_hw;
 
 	/* RC6 delta from last sample. */
 	if (time_hw >= prev_hw)
@@ -802,8 +800,8 @@ u64 intel_rc6_residency_ns(struct intel_rc6 *rc6, const i915_reg_t reg)
 		time_hw += overflow_hw - prev_hw;
 
 	/* Add delta to RC6 extended raw driver copy. */
-	time_hw += rc6->cur_residency[i];
-	rc6->cur_residency[i] = time_hw;
+	time_hw += rc6->cur_residency[id];
+	rc6->cur_residency[id] = time_hw;
 
 	intel_uncore_forcewake_put__locked(uncore, fw_domains);
 	spin_unlock_irqrestore(&uncore->lock, flags);
@@ -811,9 +809,22 @@ u64 intel_rc6_residency_ns(struct intel_rc6 *rc6, const i915_reg_t reg)
 	return mul_u64_u32_div(time_hw, mul, div);
 }
 
-u64 intel_rc6_residency_us(struct intel_rc6 *rc6, i915_reg_t reg)
+u64 intel_rc6_residency_us(struct intel_rc6 *rc6, enum intel_rc6_res_type id)
+{
+	return DIV_ROUND_UP_ULL(intel_rc6_residency_ns(rc6, id), 1000);
+}
+
+void intel_rc6_print_residency(struct seq_file *m, const char *title,
+			       enum intel_rc6_res_type id)
 {
-	return DIV_ROUND_UP_ULL(intel_rc6_residency_ns(rc6, reg), 1000);
+	struct intel_gt *gt = m->private;
+	i915_reg_t reg = gt->rc6.res_reg[id];
+	intel_wakeref_t wakeref;
+
+	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
+		seq_printf(m, "%s %u (%llu us)\n", title,
+			   intel_uncore_read(gt->uncore, reg),
+			   intel_rc6_residency_us(&gt->rc6, id));
 }
 
 #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.h b/drivers/gpu/drm/i915/gt/intel_rc6.h
index b6fea71afc223..456fa668a2769 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.h
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.h
@@ -6,10 +6,11 @@
 #ifndef INTEL_RC6_H
 #define INTEL_RC6_H
 
-#include "i915_reg_defs.h"
+#include <linux/types.h>
 
-struct intel_engine_cs;
+enum intel_rc6_res_type;
 struct intel_rc6;
+struct seq_file;
 
 void intel_rc6_init(struct intel_rc6 *rc6);
 void intel_rc6_fini(struct intel_rc6 *rc6);
@@ -21,7 +22,9 @@ void intel_rc6_sanitize(struct intel_rc6 *rc6);
 void intel_rc6_enable(struct intel_rc6 *rc6);
 void intel_rc6_disable(struct intel_rc6 *rc6);
 
-u64 intel_rc6_residency_ns(struct intel_rc6 *rc6, i915_reg_t reg);
-u64 intel_rc6_residency_us(struct intel_rc6 *rc6, i915_reg_t reg);
+u64 intel_rc6_residency_ns(struct intel_rc6 *rc6, enum intel_rc6_res_type id);
+u64 intel_rc6_residency_us(struct intel_rc6 *rc6, enum intel_rc6_res_type id);
+void intel_rc6_print_residency(struct seq_file *m, const char *title,
+			       enum intel_rc6_res_type id);
 
 #endif /* INTEL_RC6_H */
diff --git a/drivers/gpu/drm/i915/gt/intel_rc6_types.h b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
index e747492b2f46e..fa23c4dce00b4 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_rc6_types.h
@@ -13,9 +13,20 @@
 
 struct drm_i915_gem_object;
 
+/* RC6 residency types */
+enum intel_rc6_res_type {
+	INTEL_RC6_RES_RC6_LOCKED,
+	INTEL_RC6_RES_RC6,
+	INTEL_RC6_RES_RC6p,
+	INTEL_RC6_RES_RC6pp,
+	INTEL_RC6_RES_MAX,
+	INTEL_RC6_RES_VLV_MEDIA = INTEL_RC6_RES_RC6p,
+};
+
 struct intel_rc6 {
-	u64 prev_hw_residency[4];
-	u64 cur_residency[4];
+	i915_reg_t res_reg[INTEL_RC6_RES_MAX];
+	u64 prev_hw_residency[INTEL_RC6_RES_MAX];
+	u64 cur_residency[INTEL_RC6_RES_MAX];
 
 	u32 ctl_enable;
 
diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
index 8c70b7e120749..2ceeadecc639c 100644
--- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
+++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
@@ -19,11 +19,11 @@ static u64 rc6_residency(struct intel_rc6 *rc6)
 
 	/* XXX VLV_GT_MEDIA_RC6? */
 
-	result = intel_rc6_residency_ns(rc6, GEN6_GT_GFX_RC6);
+	result = intel_rc6_residency_ns(rc6, INTEL_RC6_RES_RC6);
 	if (HAS_RC6p(rc6_to_i915(rc6)))
-		result += intel_rc6_residency_ns(rc6, GEN6_GT_GFX_RC6p);
+		result += intel_rc6_residency_ns(rc6, INTEL_RC6_RES_RC6p);
 	if (HAS_RC6pp(rc6_to_i915(rc6)))
-		result += intel_rc6_residency_ns(rc6, GEN6_GT_GFX_RC6pp);
+		result += intel_rc6_residency_ns(rc6, INTEL_RC6_RES_RC6pp);
 
 	return result;
 }
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 67140a87182f8..52531ab28c5f5 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -148,13 +148,13 @@ static u64 __get_rc6(struct intel_gt *gt)
 	struct drm_i915_private *i915 = gt->i915;
 	u64 val;
 
-	val = intel_rc6_residency_ns(&gt->rc6, GEN6_GT_GFX_RC6);
+	val = intel_rc6_residency_ns(&gt->rc6, INTEL_RC6_RES_RC6);
 
 	if (HAS_RC6p(i915))
-		val += intel_rc6_residency_ns(&gt->rc6, GEN6_GT_GFX_RC6p);
+		val += intel_rc6_residency_ns(&gt->rc6, INTEL_RC6_RES_RC6p);
 
 	if (HAS_RC6pp(i915))
-		val += intel_rc6_residency_ns(&gt->rc6, GEN6_GT_GFX_RC6pp);
+		val += intel_rc6_residency_ns(&gt->rc6, INTEL_RC6_RES_RC6pp);
 
 	return val;
 }
-- 
2.38.0

