Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 709DF4FFD89
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 20:11:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5722710E19F;
	Wed, 13 Apr 2022 18:11:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF94310E1A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 18:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649873478; x=1681409478;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5pEwXV4/A+tF2LgSX4PwuROY4TVMj8Jq27nvEH0SN5c=;
 b=I+6vZcRhmysWlWpVL9JSvBUmPaE/9iI4etlRT9g9tEviyDgguWwjGQBx
 QtMifuGlzKKH6lRlvcRwpxlf+MRqY7Wyo6uPS621KXUQmhCdCrVo+fghO
 Cg7oekdgVGGXIZ4ytS/k/wd3gwH4pcnSMJ2dJAfKnGKbWe/jg0TsLjKil
 WDenpY0+WqrGzgOt36woiE2kbHjacQXiveNmniLOdtikbtoVgtw3KTwtW
 hZaVON3X1+UNyyUYztmShNm++WLIiRWAtjgPB4FmfAkqqMhPXlvtPw/7y
 6nJjb8JN/p8o3J8fIp9TpLOj+LPLISzH03qvxIcijbm1G4euLsfiM7BIU A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="323181898"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="323181898"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 11:11:15 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="802788708"
Received: from orsosgc001.jf.intel.com (HELO unerlige-ril-10.165.21.154.com)
 ([10.165.21.154])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 11:11:15 -0700
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Apr 2022 11:11:03 -0700
Message-Id: <7cc5bde23aa12ae6e329fc8719c62f16c95b02e6.1649871650.git.ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1649871650.git.ashutosh.dixit@intel.com>
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/8] drm/i915/gt: Add media freq factor to
 per-gt sysfs
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

Expose new sysfs to program and retrieve media freq factor. Factor values
of 0 (dynamic), 0.5 and 1.0 are supported via a u8.8 fixed point
representation (corresponding to integer values of 0, 128 and 256
respectively).

Media freq factor is converted to media_ratio_mode for GuC. It is
programmed into GuC using H2G SLPC interface. It is retrieved from GuC
through a register read. A cached media_ratio_mode is maintained to
preserve set values across GuC resets.

This patch adds the following sysfs files to gt/gtN sysfs:
* media_freq_factor
* media_freq_factor.scale

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Signed-off-by: Dale B Stimson <dale.b.stimson@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h       |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c   | 130 ++++++++++++++++++
 .../drm/i915/gt/uc/abi/guc_actions_slpc_abi.h |   6 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   |  20 +++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |   1 +
 .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |   3 +
 6 files changed, 161 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 0a5c2648aaf0..2c140ab7b0d0 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -732,6 +732,7 @@
 #define   GEN6_AGGRESSIVE_TURBO			(0 << 15)
 #define   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT	23
 #define   GEN9_IGNORE_SLICE_RATIO		(0 << 0)
+#define   GEN12_MEDIA_FREQ_RATIO		REG_BIT(13)
 
 #define GEN6_RC_VIDEO_FREQ			_MMIO(0xa00c)
 #define   GEN6_RC_CTL_RC6pp_ENABLE		(1 << 16)
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
index 26cbfa6477d1..2b1cd6a01724 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_sysfs_pm.c
@@ -557,6 +557,128 @@ static const struct attribute *freq_attrs[] = {
 	NULL
 };
 
+/*
+ * Scaling for multipliers (aka frequency factors).
+ * The format of the value in the register is u8.8.
+ *
+ * The presentation to userspace is inspired by the perf event framework.
+ * See:
+ *   Documentation/ABI/testing/sysfs-bus-event_source-devices-events
+ * for description of:
+ *   /sys/bus/event_source/devices/<pmu>/events/<event>.scale
+ *
+ * Summary: Expose two sysfs files for each multiplier.
+ *
+ * 1. File <attr> contains a raw hardware value.
+ * 2. File <attr>.scale contains the multiplicative scale factor to be
+ *    used by userspace to compute the actual value.
+ *
+ * So userspace knows that to get the frequency_factor it multiplies the
+ * provided value by the specified scale factor and vice-versa.
+ *
+ * That way there is no precision loss in the kernel interface and API
+ * is future proof should one day the hardware register change to u16.u16,
+ * on some platform. (Or any other fixed point representation.)
+ *
+ * Example:
+ * File <attr> contains the value 2.5, represented as u8.8 0x0280, which
+ * is comprised of:
+ * - an integer part of 2
+ * - a fractional part of 0x80 (representing 0x80 / 2^8 == 0x80 / 256).
+ * File <attr>.scale contains a string representation of floating point
+ * value 0.00390625 (which is (1 / 256)).
+ * Userspace computes the actual value:
+ *   0x0280 * 0.00390625 -> 2.5
+ * or converts an actual value to the value to be written into <attr>:
+ *   2.5 / 0.00390625 -> 0x0280
+ */
+
+#define U8_8_VAL_MASK           0xffff
+#define U8_8_SCALE_TO_VALUE     "0.00390625"
+
+static ssize_t freq_factor_scale_show(struct device *dev,
+				      struct device_attribute *attr,
+				      char *buff)
+{
+	return sysfs_emit(buff, "%s\n", U8_8_SCALE_TO_VALUE);
+}
+
+static u32 media_ratio_mode_to_factor(u32 mode)
+{
+	/* 0 -> 0, 1 -> 256, 2 -> 128 */
+	return !mode ? mode : 256 / mode;
+}
+
+static ssize_t media_freq_factor_show(struct device *dev,
+				      struct device_attribute *attr,
+				      char *buff)
+{
+	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
+	struct intel_guc_slpc *slpc = &gt->uc.guc.slpc;
+	intel_wakeref_t wakeref;
+	u32 mode;
+
+	/*
+	 * Retrieve media_ratio_mode from GEN6_RPNSWREQ bit 13 set by
+	 * GuC. GEN6_RPNSWREQ:13 value 0 represents 1:2 and 1 represents 1:1
+	 */
+	if (IS_XEHPSDV(gt->i915) &&
+	    slpc->media_ratio_mode == SLPC_MEDIA_RATIO_MODE_DYNAMIC_CONTROL) {
+		/*
+		 * For XEHPSDV dynamic mode GEN6_RPNSWREQ:13 does not contain
+		 * the media_ratio_mode, just return the cached media ratio
+		 */
+		mode = slpc->media_ratio_mode;
+	} else {
+		with_intel_runtime_pm(gt->uncore->rpm, wakeref)
+			mode = intel_uncore_read(gt->uncore, GEN6_RPNSWREQ);
+		mode = REG_FIELD_GET(GEN12_MEDIA_FREQ_RATIO, mode) ?
+			SLPC_MEDIA_RATIO_MODE_FIXED_ONE_TO_ONE :
+			SLPC_MEDIA_RATIO_MODE_FIXED_ONE_TO_TWO;
+	}
+
+	return sysfs_emit(buff, "%u\n", media_ratio_mode_to_factor(mode));
+}
+
+static ssize_t media_freq_factor_store(struct device *dev,
+				       struct device_attribute *attr,
+				       const char *buff, size_t count)
+{
+	struct intel_gt *gt = intel_gt_sysfs_get_drvdata(dev, attr->attr.name);
+	struct intel_guc_slpc *slpc = &gt->uc.guc.slpc;
+	u32 factor, mode;
+	int err;
+
+	err = kstrtou32(buff, 0, &factor);
+	if (err)
+		return err;
+
+	for (mode = SLPC_MEDIA_RATIO_MODE_DYNAMIC_CONTROL;
+	     mode <= SLPC_MEDIA_RATIO_MODE_FIXED_ONE_TO_TWO; mode++)
+		if (factor == media_ratio_mode_to_factor(mode))
+			break;
+
+	if (mode > SLPC_MEDIA_RATIO_MODE_FIXED_ONE_TO_TWO)
+		return -EINVAL;
+
+	err = intel_guc_slpc_set_media_ratio_mode(slpc, mode);
+	if (!err) {
+		slpc->media_ratio_mode = mode;
+		DRM_DEBUG("Set slpc->media_ratio_mode to %d", mode);
+	}
+	return err ?: count;
+}
+
+static DEVICE_ATTR_RW(media_freq_factor);
+static struct device_attribute dev_attr_media_freq_factor_scale =
+	__ATTR(media_freq_factor.scale, 0444, freq_factor_scale_show, NULL);
+
+static const struct attribute *media_perf_power_attrs[] = {
+	&dev_attr_media_freq_factor.attr,
+	&dev_attr_media_freq_factor_scale.attr,
+	NULL
+};
+
 static int intel_sysfs_rps_init(struct intel_gt *gt, struct kobject *kobj,
 				const struct attribute * const *attrs)
 {
@@ -598,4 +720,12 @@ void intel_gt_sysfs_pm_init(struct intel_gt *gt, struct kobject *kobj)
 		drm_warn(&gt->i915->drm,
 			 "failed to create gt%u throttle sysfs files (%pe)",
 			 gt->info.id, ERR_PTR(ret));
+
+	if (HAS_MEDIA_RATIO_MODE(gt->i915) && intel_uc_uses_guc_slpc(&gt->uc)) {
+		ret = sysfs_create_files(kobj, media_perf_power_attrs);
+		if (ret)
+			drm_warn(&gt->i915->drm,
+				 "failed to create add gt%u media_perf_power_attrs sysfs (%pe)\n",
+				 gt->info.id, ERR_PTR(ret));
+	}
 }
diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h
index 62cb4254a77a..4c840a2639dc 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_slpc_abi.h
@@ -122,6 +122,12 @@ enum slpc_param_id {
 	SLPC_MAX_PARAM = 32,
 };
 
+enum slpc_media_ratio_mode {
+	SLPC_MEDIA_RATIO_MODE_DYNAMIC_CONTROL = 0,
+	SLPC_MEDIA_RATIO_MODE_FIXED_ONE_TO_ONE = 1,
+	SLPC_MEDIA_RATIO_MODE_FIXED_ONE_TO_TWO = 2,
+};
+
 enum slpc_event_id {
 	SLPC_EVENT_RESET = 0,
 	SLPC_EVENT_SHUTDOWN = 1,
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 9e02355e44f1..a2ced71491af 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -260,6 +260,7 @@ int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
 	slpc->boost_freq = 0;
 	atomic_set(&slpc->num_waiters, 0);
 	slpc->num_boosts = 0;
+	slpc->media_ratio_mode = SLPC_MEDIA_RATIO_MODE_DYNAMIC_CONTROL;
 
 	mutex_init(&slpc->lock);
 	INIT_WORK(&slpc->boost_work, slpc_boost_work);
@@ -506,6 +507,22 @@ int intel_guc_slpc_get_min_freq(struct intel_guc_slpc *slpc, u32 *val)
 	return ret;
 }
 
+int intel_guc_slpc_set_media_ratio_mode(struct intel_guc_slpc *slpc, u32 val)
+{
+	struct drm_i915_private *i915 = slpc_to_i915(slpc);
+	intel_wakeref_t wakeref;
+	int ret = 0;
+
+	if (!HAS_MEDIA_RATIO_MODE(i915))
+		return -ENODEV;
+
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
+		ret = slpc_set_param(slpc,
+				     SLPC_PARAM_MEDIA_FF_RATIO_MODE,
+				     val);
+	return ret;
+}
+
 void intel_guc_pm_intrmsk_enable(struct intel_gt *gt)
 {
 	u32 pm_intrmsk_mbz = 0;
@@ -654,6 +671,9 @@ int intel_guc_slpc_enable(struct intel_guc_slpc *slpc)
 		return ret;
 	}
 
+	/* Set cached media freq ratio mode */
+	intel_guc_slpc_set_media_ratio_mode(slpc, slpc->media_ratio_mode);
+
 	return 0;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
index 0caa8fee3c04..82a98f78f96c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
@@ -38,6 +38,7 @@ int intel_guc_slpc_set_boost_freq(struct intel_guc_slpc *slpc, u32 val);
 int intel_guc_slpc_get_max_freq(struct intel_guc_slpc *slpc, u32 *val);
 int intel_guc_slpc_get_min_freq(struct intel_guc_slpc *slpc, u32 *val);
 int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p);
+int intel_guc_slpc_set_media_ratio_mode(struct intel_guc_slpc *slpc, u32 val);
 void intel_guc_pm_intrmsk_enable(struct intel_gt *gt);
 void intel_guc_slpc_boost(struct intel_guc_slpc *slpc);
 void intel_guc_slpc_dec_waiters(struct intel_guc_slpc *slpc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
index bf5b9a563c09..73d208123528 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
@@ -29,6 +29,9 @@ struct intel_guc_slpc {
 	u32 min_freq_softlimit;
 	u32 max_freq_softlimit;
 
+	/* cached media ratio mode */
+	u32 media_ratio_mode;
+
 	/* Protects set/reset of boost freq
 	 * and value of num_waiters
 	 */
-- 
2.34.1

