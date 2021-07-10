Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92FF83C2C7A
	for <lists+intel-gfx@lfdr.de>; Sat, 10 Jul 2021 03:24:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A8186EAC6;
	Sat, 10 Jul 2021 01:24:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B91D6EAC6;
 Sat, 10 Jul 2021 01:24:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10040"; a="207979496"
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="207979496"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2021 18:24:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,228,1620716400"; d="scan'208";a="411439995"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga006.jf.intel.com with ESMTP; 09 Jul 2021 18:24:02 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Fri,  9 Jul 2021 18:20:24 -0700
Message-Id: <20210710012026.19705-15-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210710012026.19705-1-vinay.belgaumkar@intel.com>
References: <20210710012026.19705-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 14/16] drm/i915/guc/slpc: Sysfs hooks for slpc
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Update the get/set min/max freq hooks to work for
slpc case as well. Consolidate helpers for requested/min/max
frequency get/set to intel_rps where the proper action can
be taken depending on whether slpc is enabled.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 135 ++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rps.h |   5 ++
 drivers/gpu/drm/i915/i915_pmu.c     |   2 +-
 drivers/gpu/drm/i915/i915_reg.h     |   2 +
 drivers/gpu/drm/i915/i915_sysfs.c   |  71 +++------------
 5 files changed, 154 insertions(+), 61 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index e858eeb2c59d..88ffc5d90730 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -37,6 +37,12 @@ static struct intel_uncore *rps_to_uncore(struct intel_rps *rps)
 	return rps_to_gt(rps)->uncore;
 }
 
+static struct intel_guc_slpc *rps_to_slpc(struct intel_rps *rps)
+{
+	struct intel_gt *gt = rps_to_gt(rps);
+	return &gt->uc.guc.slpc;
+}
+
 static bool rps_uses_slpc(struct intel_rps *rps)
 {
 	struct intel_gt *gt = rps_to_gt(rps);
@@ -1960,6 +1966,135 @@ u32 intel_rps_read_actual_frequency(struct intel_rps *rps)
 	return freq;
 }
 
+u32 intel_rps_read_punit_req(struct intel_rps *rps)
+{
+	struct intel_uncore *uncore = rps_to_uncore(rps);
+
+	u32 pureq = intel_uncore_read(uncore, GEN6_RPNSWREQ);
+
+	return pureq;
+}
+
+u32 intel_rps_get_req(struct intel_rps *rps, u32 pureq)
+{
+	u32 req = pureq >> GEN9_SW_REQ_UNSLICE_RATIO_SHIFT;
+
+	return req;
+}
+
+u32 intel_rps_read_punit_req_frequency(struct intel_rps *rps)
+{
+	u32 freq = intel_rps_get_req(rps, intel_rps_read_punit_req(rps));
+
+	return intel_gpu_freq(rps, freq);
+}
+
+u32 intel_rps_get_requested_frequency(struct intel_rps *rps)
+{
+	if (rps_uses_slpc(rps))
+		return intel_rps_read_punit_req_frequency(rps);
+	else
+		return intel_gpu_freq(rps, rps->cur_freq);
+}
+
+u32 intel_rps_get_max_frequency(struct intel_rps *rps)
+{
+	struct intel_guc_slpc *slpc = rps_to_slpc(rps);
+
+	if (rps_uses_slpc(rps))
+		return slpc->max_freq_softlimit;
+	else
+		return intel_gpu_freq(rps, rps->max_freq_softlimit);
+}
+
+int intel_rps_set_max_frequency(struct intel_rps *rps, u32 val)
+{
+	struct intel_guc_slpc *slpc = rps_to_slpc(rps);
+	int ret;
+
+	if (rps_uses_slpc(rps))
+		return intel_guc_slpc_set_max_freq(slpc, val);
+
+	mutex_lock(&rps->lock);
+
+	val = intel_freq_opcode(rps, val);
+	if (val < rps->min_freq ||
+	    val > rps->max_freq ||
+	    val < rps->min_freq_softlimit) {
+		ret = -EINVAL;
+		goto unlock;
+	}
+
+	if (val > rps->rp0_freq)
+		DRM_DEBUG("User requested overclocking to %d\n",
+			  intel_gpu_freq(rps, val));
+
+	rps->max_freq_softlimit = val;
+
+	val = clamp_t(int, rps->cur_freq,
+		      rps->min_freq_softlimit,
+		      rps->max_freq_softlimit);
+
+	/*
+	 * We still need *_set_rps to process the new max_delay and
+	 * update the interrupt limits and PMINTRMSK even though
+	 * frequency request may be unchanged.
+	 */
+	intel_rps_set(rps, val);
+
+unlock:
+	mutex_unlock(&rps->lock);
+
+	return ret;
+}
+
+u32 intel_rps_get_min_frequency(struct intel_rps *rps)
+{
+	struct intel_guc_slpc *slpc = rps_to_slpc(rps);
+
+	if (rps_uses_slpc(rps))
+		return slpc->min_freq_softlimit;
+	else
+		return intel_gpu_freq(rps, rps->min_freq_softlimit);
+}
+
+int intel_rps_set_min_frequency(struct intel_rps *rps, u32 val)
+{
+	struct intel_guc_slpc *slpc = rps_to_slpc(rps);
+	int ret;
+
+	if (rps_uses_slpc(rps))
+		return intel_guc_slpc_set_min_freq(slpc, val);
+
+	mutex_lock(&rps->lock);
+
+	val = intel_freq_opcode(rps, val);
+	if (val < rps->min_freq ||
+	    val > rps->max_freq ||
+	    val > rps->max_freq_softlimit) {
+		ret = -EINVAL;
+		goto unlock;
+	}
+
+	rps->min_freq_softlimit = val;
+
+	val = clamp_t(int, rps->cur_freq,
+		      rps->min_freq_softlimit,
+		      rps->max_freq_softlimit);
+
+	/*
+	 * We still need *_set_rps to process the new min_delay and
+	 * update the interrupt limits and PMINTRMSK even though
+	 * frequency request may be unchanged.
+	 */
+	intel_rps_set(rps, val);
+
+unlock:
+	mutex_unlock(&rps->lock);
+
+	return ret;
+}
+
 /* External interface for intel_ips.ko */
 
 static struct drm_i915_private __rcu *ips_mchdev;
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
index 1d2cfc98b510..9a09ff5ebf64 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps.h
@@ -31,6 +31,11 @@ int intel_gpu_freq(struct intel_rps *rps, int val);
 int intel_freq_opcode(struct intel_rps *rps, int val);
 u32 intel_rps_get_cagf(struct intel_rps *rps, u32 rpstat1);
 u32 intel_rps_read_actual_frequency(struct intel_rps *rps);
+u32 intel_rps_get_requested_frequency(struct intel_rps *rps);
+u32 intel_rps_get_min_frequency(struct intel_rps *rps);
+int intel_rps_set_min_frequency(struct intel_rps *rps, u32 val);
+u32 intel_rps_get_max_frequency(struct intel_rps *rps);
+int intel_rps_set_max_frequency(struct intel_rps *rps, u32 val);
 
 void gen5_rps_irq_handler(struct intel_rps *rps);
 void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir);
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 34d37d46a126..a896bec18255 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -407,7 +407,7 @@ frequency_sample(struct intel_gt *gt, unsigned int period_ns)
 
 	if (pmu->enable & config_mask(I915_PMU_REQUESTED_FREQUENCY)) {
 		add_sample_mult(&pmu->sample[__I915_SAMPLE_FREQ_REQ],
-				intel_gpu_freq(rps, rps->cur_freq),
+				intel_rps_get_requested_frequency(rps),
 				period_ns / 1000);
 	}
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 7d9e90aa3ec0..8ab3c2f8f8e4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9195,6 +9195,8 @@ enum {
 #define   GEN9_FREQUENCY(x)			((x) << 23)
 #define   GEN6_OFFSET(x)			((x) << 19)
 #define   GEN6_AGGRESSIVE_TURBO			(0 << 15)
+#define   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT 	23
+
 #define GEN6_RC_VIDEO_FREQ			_MMIO(0xA00C)
 #define GEN6_RC_CONTROL				_MMIO(0xA090)
 #define   GEN6_RC_CTL_RC6pp_ENABLE		(1 << 16)
diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index 873bf996ceb5..f2eee8491b19 100644
--- a/drivers/gpu/drm/i915/i915_sysfs.c
+++ b/drivers/gpu/drm/i915/i915_sysfs.c
@@ -272,7 +272,7 @@ static ssize_t gt_cur_freq_mhz_show(struct device *kdev,
 	struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
 	struct intel_rps *rps = &i915->gt.rps;
 
-	return sysfs_emit(buf, "%d\n", intel_gpu_freq(rps, rps->cur_freq));
+	return sysfs_emit(buf, "%d\n", intel_rps_get_requested_frequency(rps));
 }
 
 static ssize_t gt_boost_freq_mhz_show(struct device *kdev, struct device_attribute *attr, char *buf)
@@ -326,9 +326,10 @@ static ssize_t vlv_rpe_freq_mhz_show(struct device *kdev,
 static ssize_t gt_max_freq_mhz_show(struct device *kdev, struct device_attribute *attr, char *buf)
 {
 	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
-	struct intel_rps *rps = &dev_priv->gt.rps;
+	struct intel_gt *gt = &dev_priv->gt;
+	struct intel_rps *rps = &gt->rps;
 
-	return sysfs_emit(buf, "%d\n", intel_gpu_freq(rps, rps->max_freq_softlimit));
+	return sysfs_emit(buf, "%d\n", intel_rps_get_max_frequency(rps));
 }
 
 static ssize_t gt_max_freq_mhz_store(struct device *kdev,
@@ -336,7 +337,8 @@ static ssize_t gt_max_freq_mhz_store(struct device *kdev,
 				     const char *buf, size_t count)
 {
 	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
-	struct intel_rps *rps = &dev_priv->gt.rps;
+	struct intel_gt *gt = &dev_priv->gt;
+	struct intel_rps *rps = &gt->rps;
 	ssize_t ret;
 	u32 val;
 
@@ -344,35 +346,7 @@ static ssize_t gt_max_freq_mhz_store(struct device *kdev,
 	if (ret)
 		return ret;
 
-	mutex_lock(&rps->lock);
-
-	val = intel_freq_opcode(rps, val);
-	if (val < rps->min_freq ||
-	    val > rps->max_freq ||
-	    val < rps->min_freq_softlimit) {
-		ret = -EINVAL;
-		goto unlock;
-	}
-
-	if (val > rps->rp0_freq)
-		DRM_DEBUG("User requested overclocking to %d\n",
-			  intel_gpu_freq(rps, val));
-
-	rps->max_freq_softlimit = val;
-
-	val = clamp_t(int, rps->cur_freq,
-		      rps->min_freq_softlimit,
-		      rps->max_freq_softlimit);
-
-	/*
-	 * We still need *_set_rps to process the new max_delay and
-	 * update the interrupt limits and PMINTRMSK even though
-	 * frequency request may be unchanged.
-	 */
-	intel_rps_set(rps, val);
-
-unlock:
-	mutex_unlock(&rps->lock);
+	ret = intel_rps_set_max_frequency(rps, val);
 
 	return ret ?: count;
 }
@@ -380,9 +354,10 @@ static ssize_t gt_max_freq_mhz_store(struct device *kdev,
 static ssize_t gt_min_freq_mhz_show(struct device *kdev, struct device_attribute *attr, char *buf)
 {
 	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
-	struct intel_rps *rps = &dev_priv->gt.rps;
+	struct intel_gt *gt = &dev_priv->gt;
+	struct intel_rps *rps = &gt->rps;
 
-	return sysfs_emit(buf, "%d\n", intel_gpu_freq(rps, rps->min_freq_softlimit));
+	return sysfs_emit(buf, "%d\n", intel_rps_get_min_frequency(rps));
 }
 
 static ssize_t gt_min_freq_mhz_store(struct device *kdev,
@@ -398,31 +373,7 @@ static ssize_t gt_min_freq_mhz_store(struct device *kdev,
 	if (ret)
 		return ret;
 
-	mutex_lock(&rps->lock);
-
-	val = intel_freq_opcode(rps, val);
-	if (val < rps->min_freq ||
-	    val > rps->max_freq ||
-	    val > rps->max_freq_softlimit) {
-		ret = -EINVAL;
-		goto unlock;
-	}
-
-	rps->min_freq_softlimit = val;
-
-	val = clamp_t(int, rps->cur_freq,
-		      rps->min_freq_softlimit,
-		      rps->max_freq_softlimit);
-
-	/*
-	 * We still need *_set_rps to process the new min_delay and
-	 * update the interrupt limits and PMINTRMSK even though
-	 * frequency request may be unchanged.
-	 */
-	intel_rps_set(rps, val);
-
-unlock:
-	mutex_unlock(&rps->lock);
+	ret = intel_rps_set_min_frequency(rps, val);
 
 	return ret ?: count;
 }
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
