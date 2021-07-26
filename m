Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 87EC03D6769
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jul 2021 21:09:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D78472E38;
	Mon, 26 Jul 2021 19:09:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCA3272C96;
 Mon, 26 Jul 2021 19:09:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10057"; a="212022561"
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="212022561"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2021 12:09:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,270,1620716400"; d="scan'208";a="566278311"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga004.jf.intel.com with ESMTP; 26 Jul 2021 12:09:18 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 26 Jul 2021 12:07:58 -0700
Message-Id: <20210726190800.26762-14-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210726190800.26762-1-vinay.belgaumkar@intel.com>
References: <20210726190800.26762-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 13/15] drm/i915/guc/slpc: Sysfs hooks for SLPC
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
SLPC case as well. Consolidate helpers for requested/min/max
frequency get/set to intel_rps where the proper action can
be taken depending on whether SLPC is enabled.

v2: Add wrappers for getting rp0/1/n frequencies, update
softlimits in set min/max SLPC functions. Also check for
boundary conditions before setting them.

v3: Address review comments (Michal W)

Acked-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c         | 165 ++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rps.h         |  11 ++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c |  14 ++
 drivers/gpu/drm/i915/i915_pmu.c             |   2 +-
 drivers/gpu/drm/i915/i915_reg.h             |   2 +
 drivers/gpu/drm/i915/i915_sysfs.c           |  77 ++-------
 6 files changed, 207 insertions(+), 64 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index e858eeb2c59d..48d4147165a9 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -37,6 +37,13 @@ static struct intel_uncore *rps_to_uncore(struct intel_rps *rps)
 	return rps_to_gt(rps)->uncore;
 }
 
+static struct intel_guc_slpc *rps_to_slpc(struct intel_rps *rps)
+{
+	struct intel_gt *gt = rps_to_gt(rps);
+
+	return &gt->uc.guc.slpc;
+}
+
 static bool rps_uses_slpc(struct intel_rps *rps)
 {
 	struct intel_gt *gt = rps_to_gt(rps);
@@ -1960,6 +1967,164 @@ u32 intel_rps_read_actual_frequency(struct intel_rps *rps)
 	return freq;
 }
 
+u32 intel_rps_read_punit_req(struct intel_rps *rps)
+{
+	struct intel_uncore *uncore = rps_to_uncore(rps);
+
+	return intel_uncore_read(uncore, GEN6_RPNSWREQ);
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
+u32 intel_rps_get_rp0_frequency(struct intel_rps *rps)
+{
+	struct intel_guc_slpc *slpc = rps_to_slpc(rps);
+
+	if (rps_uses_slpc(rps))
+		return slpc->rp0_freq;
+	else
+		return intel_gpu_freq(rps, rps->rp0_freq);
+}
+
+u32 intel_rps_get_rp1_frequency(struct intel_rps *rps)
+{
+	struct intel_guc_slpc *slpc = rps_to_slpc(rps);
+
+	if (rps_uses_slpc(rps))
+		return slpc->rp1_freq;
+	else
+		return intel_gpu_freq(rps, rps->rp1_freq);
+}
+
+u32 intel_rps_get_rpn_frequency(struct intel_rps *rps)
+{
+	struct intel_guc_slpc *slpc = rps_to_slpc(rps);
+
+	if (rps_uses_slpc(rps))
+		return slpc->min_freq;
+	else
+		return intel_gpu_freq(rps, rps->min_freq);
+}
+
+int intel_rps_set_max_frequency(struct intel_rps *rps, u32 val)
+{
+	struct drm_i915_private *i915 = rps_to_i915(rps);
+	struct intel_guc_slpc *slpc = rps_to_slpc(rps);
+	int ret = 0;
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
+		drm_dbg(&i915->drm, "User requested overclocking to %d\n",
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
+	int ret = 0;
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
index 1d2cfc98b510..6a66690dfb0f 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps.h
@@ -31,6 +31,17 @@ int intel_gpu_freq(struct intel_rps *rps, int val);
 int intel_freq_opcode(struct intel_rps *rps, int val);
 u32 intel_rps_get_cagf(struct intel_rps *rps, u32 rpstat1);
 u32 intel_rps_read_actual_frequency(struct intel_rps *rps);
+u32 intel_rps_get_requested_frequency(struct intel_rps *rps);
+u32 intel_rps_get_min_frequency(struct intel_rps *rps);
+int intel_rps_set_min_frequency(struct intel_rps *rps, u32 val);
+u32 intel_rps_get_max_frequency(struct intel_rps *rps);
+int intel_rps_set_max_frequency(struct intel_rps *rps, u32 val);
+u32 intel_rps_get_rp0_frequency(struct intel_rps *rps);
+u32 intel_rps_get_rp1_frequency(struct intel_rps *rps);
+u32 intel_rps_get_rpn_frequency(struct intel_rps *rps);
+u32 intel_rps_read_punit_req(struct intel_rps *rps);
+u32 intel_rps_get_req(struct intel_rps *rps, u32 pureq);
+u32 intel_rps_read_punit_req_frequency(struct intel_rps *rps);
 
 void gen5_rps_irq_handler(struct intel_rps *rps);
 void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index a98cbf274862..03861eb913d1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -316,6 +316,11 @@ int intel_guc_slpc_set_max_freq(struct intel_guc_slpc *slpc, u32 val)
 	intel_wakeref_t wakeref;
 	int ret;
 
+	if ((val < slpc->min_freq) ||
+	    (val > slpc->rp0_freq) ||
+	    (val < slpc->min_freq_softlimit))
+		return -EINVAL;
+
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
 		ret = slpc_set_param(slpc,
 			       SLPC_PARAM_GLOBAL_MAX_GT_UNSLICE_FREQ_MHZ,
@@ -328,6 +333,8 @@ int intel_guc_slpc_set_max_freq(struct intel_guc_slpc *slpc, u32 val)
 		}
 	}
 
+	slpc->max_freq_softlimit = val;
+
 	return ret;
 }
 
@@ -375,6 +382,11 @@ int intel_guc_slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 val)
 	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 	intel_wakeref_t wakeref;
 
+	if ((val < slpc->min_freq) ||
+	    (val > slpc->rp0_freq) ||
+	    (val > slpc->max_freq_softlimit))
+		return -EINVAL;
+
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
 		ret = slpc_set_param(slpc,
 			       SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ,
@@ -387,6 +399,8 @@ int intel_guc_slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 val)
 		}
 	}
 
+	slpc->min_freq_softlimit = val;
+
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index eca92076f31d..0b488d49694c 100644
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
index f3a445f79a36..b4527ca027e3 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9229,6 +9229,8 @@ enum {
 #define   GEN9_FREQUENCY(x)			((x) << 23)
 #define   GEN6_OFFSET(x)			((x) << 19)
 #define   GEN6_AGGRESSIVE_TURBO			(0 << 15)
+#define   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT 	23
+
 #define GEN6_RC_VIDEO_FREQ			_MMIO(0xA00C)
 #define GEN6_RC_CONTROL				_MMIO(0xA090)
 #define   GEN6_RC_CTL_RC6pp_ENABLE		(1 << 16)
diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index 873bf996ceb5..346646a0b43b 100644
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
@@ -448,11 +399,11 @@ static ssize_t gt_rp_mhz_show(struct device *kdev, struct device_attribute *attr
 	u32 val;
 
 	if (attr == &dev_attr_gt_RP0_freq_mhz)
-		val = intel_gpu_freq(rps, rps->rp0_freq);
+		val = intel_rps_get_rp0_frequency(rps);
 	else if (attr == &dev_attr_gt_RP1_freq_mhz)
-		val = intel_gpu_freq(rps, rps->rp1_freq);
+		val = intel_rps_get_rp1_frequency(rps);
 	else if (attr == &dev_attr_gt_RPn_freq_mhz)
-		val = intel_gpu_freq(rps, rps->min_freq);
+		val = intel_rps_get_rpn_frequency(rps);
 	else
 		BUG();
 
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
