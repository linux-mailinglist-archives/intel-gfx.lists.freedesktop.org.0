Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 70BE8427310
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 23:29:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E12F36E0EC;
	Fri,  8 Oct 2021 21:29:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A4DF6E0EC
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 21:29:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10131"; a="224000639"
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200"; d="scan'208";a="224000639"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 14:29:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,358,1624345200"; d="scan'208";a="440775270"
Received: from sujaritha-z170x-ud5.fm.intel.com ([10.1.27.182])
 by orsmga003.jf.intel.com with ESMTP; 08 Oct 2021 14:29:35 -0700
From: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>,
 Dale B Stimson <dale.b.stimson@intel.com>
Date: Fri,  8 Oct 2021 13:44:54 -0700
Message-Id: <20211008204454.11680-1-sujaritha.sundaresan@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] RFC : drm/i915: Adding new sysfs frequency
 attributes
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

This patch adds the following new sysfs frequency attributes;
	- punit_req_freq_mhz
	- throttle_reason_status
	- throttle_reason_pl1
	- throttle_reason_pl2
	- throttle_reason_pl4
	- throttle_reason_thermal
	- throttle_reason_prochot
	- throttle_reason_ratl
	- throttle_reason_vr_thermalert
	- throttle_reason_vr_tdc

Signed-off-by: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
Cc: Dale B Stimson <dale.b.stimson@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c |  83 +++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rps.h |  10 +++
 drivers/gpu/drm/i915/i915_reg.h     |  11 +++
 drivers/gpu/drm/i915/i915_sysfs.c   | 135 ++++++++++++++++++++++++++++
 4 files changed, 239 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 172de6c9f949..c03d99f2608c 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -2153,6 +2153,89 @@ u32 intel_rps_read_state_cap(struct intel_rps *rps)
 		return intel_uncore_read(uncore, GEN6_RP_STATE_CAP);
 }
 
+static u32 __rps_read_mmio(struct intel_gt *gt, i915_reg_t reg32)
+{
+	intel_wakeref_t wakeref;
+	u32 val;
+
+	with_intel_runtime_pm(gt->uncore->rpm, wakeref)
+		val = intel_uncore_read(gt->uncore, reg32);
+
+	return val;
+}
+
+u32 intel_rps_read_throttle_reason_status(struct intel_rps *rps)
+{
+	struct intel_gt *gt = rps_to_gt(rps);
+	u32 status = __rps_read_mmio(gt, GT0_PERF_LIMIT_REASONS) & GT0_PERF_LIMIT_REASONS_MASK;
+
+	return status;
+}
+
+u32 intel_rps_read_throttle_reason_pl1(struct intel_rps *rps)
+{
+	struct intel_gt *gt = rps_to_gt(rps);
+	u32 pl1 = __rps_read_mmio(gt, GT0_PERF_LIMIT_REASONS) & POWER_LIMIT_1_MASK;
+
+	return pl1;
+}
+
+u32 intel_rps_read_throttle_reason_pl2(struct intel_rps *rps)
+{
+	struct intel_gt *gt = rps_to_gt(rps);
+	u32 pl2 = __rps_read_mmio(gt, GT0_PERF_LIMIT_REASONS) & POWER_LIMIT_2_MASK;
+
+	return pl2;
+}
+
+u32 intel_rps_read_throttle_reason_pl4(struct intel_rps *rps)
+{
+	struct intel_gt *gt = rps_to_gt(rps);
+	u32 pl4 = __rps_read_mmio(gt, GT0_PERF_LIMIT_REASONS) & POWER_LIMIT_4_MASK;
+
+	return pl4;
+}
+
+u32 intel_rps_read_throttle_reason_thermal(struct intel_rps *rps)
+{
+	struct intel_gt *gt = rps_to_gt(rps);
+	u32 thermal = __rps_read_mmio(gt, GT0_PERF_LIMIT_REASONS) & THERMAL_LIMIT_MASK;
+
+	return thermal;
+}
+
+u32 intel_rps_read_throttle_reason_prochot(struct intel_rps *rps)
+{
+	struct intel_gt *gt = rps_to_gt(rps);
+	u32 prochot = __rps_read_mmio(gt, GT0_PERF_LIMIT_REASONS) & PROCHOT_MASK;
+
+	return prochot;
+}
+
+u32 intel_rps_read_throttle_reason_ratl(struct intel_rps *rps)
+{
+	struct intel_gt *gt = rps_to_gt(rps);
+	u32 ratl = __rps_read_mmio(gt, GT0_PERF_LIMIT_REASONS) & RATL_MASK;
+
+	return ratl;
+}
+
+u32 intel_rps_read_throttle_reason_vr_thermalert(struct intel_rps *rps)
+{
+	struct intel_gt *gt = rps_to_gt(rps);
+	u32 thermalert = __rps_read_mmio(gt, GT0_PERF_LIMIT_REASONS) & VR_THERMALERT_MASK;
+
+	return thermalert;
+}
+
+u32 intel_rps_read_throttle_reason_vr_tdc(struct intel_rps *rps)
+{
+	struct intel_gt *gt = rps_to_gt(rps);
+	u32 tdc = __rps_read_mmio(gt, GT0_PERF_LIMIT_REASONS) & VR_TDC_MASK;
+
+	return tdc;
+}
+
 /* External interface for intel_ips.ko */
 
 static struct drm_i915_private __rcu *ips_mchdev;
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
index 11960d64ca82..d6ac97f1facd 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps.h
@@ -42,6 +42,16 @@ u32 intel_rps_get_rpn_frequency(struct intel_rps *rps);
 u32 intel_rps_read_punit_req(struct intel_rps *rps);
 u32 intel_rps_read_punit_req_frequency(struct intel_rps *rps);
 u32 intel_rps_read_state_cap(struct intel_rps *rps);
+u32 intel_rps_read_throttle_reason(struct intel_rps *rps);
+u32 intel_rps_read_throttle_reason_status(struct intel_rps *rps);
+u32 intel_rps_read_throttle_reason_pl1(struct intel_rps *rps);
+u32 intel_rps_read_throttle_reason_pl2(struct intel_rps *rps);
+u32 intel_rps_read_throttle_reason_pl4(struct intel_rps *rps);
+u32 intel_rps_read_throttle_reason_thermal(struct intel_rps *rps);
+u32 intel_rps_read_throttle_reason_prochot(struct intel_rps *rps);
+u32 intel_rps_read_throttle_reason_ratl(struct intel_rps *rps);
+u32 intel_rps_read_throttle_reason_vr_thermalert(struct intel_rps *rps);
+u32 intel_rps_read_throttle_reason_vr_tdc(struct intel_rps *rps);
 
 void gen5_rps_irq_handler(struct intel_rps *rps);
 void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a897f4abea0c..9ac322269d49 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4152,6 +4152,17 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
 #define GEN9_RP_STATE_LIMITS	_MMIO(0x138148)
 #define XEHPSDV_RP_STATE_CAP	_MMIO(0x250014)
 
+#define GT0_PERF_LIMIT_REASONS	_MMIO(0x1381A8)
+#define GT0_PERF_LIMIT_REASONS_MASK    0x00000de3
+#define POWER_LIMIT_1_MASK     0x00000400
+#define POWER_LIMIT_2_MASK     0x00000800
+#define POWER_LIMIT_4_MASK     0x00000100
+#define THERMAL_LIMIT_MASK     0x00000002
+#define PROCHOT_MASK   0x00000001
+#define RATL_MASK      0x00000020
+#define VR_THERMALERT_MASK     0x00000040
+#define VR_TDC_MASK    0x00000080
+
 /*
  * Logical Context regs
  */
diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index cdf0e9c6fd73..b2938029eed6 100644
--- a/drivers/gpu/drm/i915/i915_sysfs.c
+++ b/drivers/gpu/drm/i915/i915_sysfs.c
@@ -435,6 +435,141 @@ static const struct attribute * const vlv_attrs[] = {
 	NULL,
 };
 
+static ssize_t punit_req_freq_mhz_show(struct device *kdev,
+				       struct device_attribute *attr,
+				       char *buff)
+{
+	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
+	struct intel_rps *rps = &dev_priv->gt.rps;
+	u32 preq = intel_rps_read_punit_req_frequency(rps);
+
+	return scnprintf(buff, PAGE_SIZE, "%d\n", preq);
+}
+
+static ssize_t throttle_reason_status_show(struct device *kdev,
+					   struct device_attribute *attr,
+					   char *buff)
+{
+	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
+	struct intel_rps *rps = &dev_priv->gt.rps;
+	bool status = !!intel_rps_read_throttle_reason_status(rps);
+
+	return scnprintf(buff, PAGE_SIZE, "%u\n", status);
+}
+
+static ssize_t throttle_reason_pl1_show(struct device *kdev,
+					struct device_attribute *attr,
+					char *buff)
+{
+	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
+	struct intel_rps *rps = &dev_priv->gt.rps;
+	bool pl1 = !!intel_rps_read_throttle_reason_pl1(rps);
+
+	return scnprintf(buff, PAGE_SIZE, "%u\n", pl1);
+}
+
+static ssize_t throttle_reason_pl2_show(struct device *kdev,
+					struct device_attribute *attr,
+					char *buff)
+{
+	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
+	struct intel_rps *rps = &dev_priv->gt.rps;
+	bool pl2 = !!intel_rps_read_throttle_reason_pl2(rps);
+
+	return scnprintf(buff, PAGE_SIZE, "%u\n", pl2);
+}
+
+static ssize_t throttle_reason_pl4_show(struct device *kdev,
+					struct device_attribute *attr,
+					char *buff)
+{
+	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
+	struct intel_rps *rps = &dev_priv->gt.rps;
+	bool pl4 = !!intel_rps_read_throttle_reason_pl4(rps);
+
+	return scnprintf(buff, PAGE_SIZE, "%u\n", pl4);
+}
+
+static ssize_t throttle_reason_thermal_show(struct device *kdev,
+					    struct device_attribute *attr,
+					    char *buff)
+{
+	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
+	struct intel_rps *rps = &dev_priv->gt.rps;
+	bool thermal = !!intel_rps_read_throttle_reason_thermal(rps);
+
+	return scnprintf(buff, PAGE_SIZE, "%u\n", thermal);
+}
+
+static ssize_t throttle_reason_prochot_show(struct device *kdev,
+					    struct device_attribute *attr,
+					    char *buff)
+{
+	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
+	struct intel_rps *rps = &dev_priv->gt.rps;
+	bool prochot = !!intel_rps_read_throttle_reason_prochot(rps);
+
+	return scnprintf(buff, PAGE_SIZE, "%u\n", prochot);
+}
+
+static ssize_t throttle_reason_ratl_show(struct device *kdev,
+					 struct device_attribute *attr,
+					 char *buff)
+{
+	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
+	struct intel_rps *rps = &dev_priv->gt.rps;
+	bool ratl = !!intel_rps_read_throttle_reason_ratl(rps);
+
+	return scnprintf(buff, PAGE_SIZE, "%u\n", ratl);
+}
+
+static ssize_t throttle_reason_vr_thermalert_show(struct device *kdev,
+						  struct device_attribute *attr,
+						  char *buff)
+{
+	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
+	struct intel_rps *rps = &dev_priv->gt.rps;
+	bool thermalert = !!intel_rps_read_throttle_reason_vr_thermalert(rps);
+
+	return scnprintf(buff, PAGE_SIZE, "%u\n", thermalert);
+}
+
+static ssize_t throttle_reason_vr_tdc_show(struct device *kdev,
+					   struct device_attribute *attr,
+					   char *buff)
+{
+	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
+	struct intel_rps *rps = &dev_priv->gt.rps;
+	bool tdc = !!intel_rps_read_throttle_reason_vr_tdc(rps);
+
+	return scnprintf(buff, PAGE_SIZE, "%u\n", tdc);
+}
+
+static DEVICE_ATTR_RO(punit_req_freq_mhz);
+static DEVICE_ATTR_RO(throttle_reason_status);
+static DEVICE_ATTR_RO(throttle_reason_pl1);
+static DEVICE_ATTR_RO(throttle_reason_pl2);
+static DEVICE_ATTR_RO(throttle_reason_pl4);
+static DEVICE_ATTR_RO(throttle_reason_thermal);
+static DEVICE_ATTR_RO(throttle_reason_prochot);
+static DEVICE_ATTR_RO(throttle_reason_ratl);
+static DEVICE_ATTR_RO(throttle_reason_vr_thermalert);
+static DEVICE_ATTR_RO(throttle_reason_vr_tdc);
+
+static const struct attribute *freq_attrs[] = {
+	&dev_attr_punit_req_freq_mhz.attr,
+	&dev_attr_throttle_reason_status.attr,
+	&dev_attr_throttle_reason_pl1.attr,
+	&dev_attr_throttle_reason_pl2.attr,
+	&dev_attr_throttle_reason_pl4.attr,
+	&dev_attr_throttle_reason_thermal.attr,
+	&dev_attr_throttle_reason_prochot.attr,
+	&dev_attr_throttle_reason_ratl.attr,
+	&dev_attr_throttle_reason_vr_thermalert.attr,
+	&dev_attr_throttle_reason_vr_tdc.attr,
+	NULL
+};
+
 #if IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERROR)
 
 static ssize_t error_state_read(struct file *filp, struct kobject *kobj,
-- 
2.22.0

