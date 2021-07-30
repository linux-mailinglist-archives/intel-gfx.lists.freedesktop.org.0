Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 977283DBFAF
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 22:22:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20D026F49C;
	Fri, 30 Jul 2021 20:22:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F10056F495;
 Fri, 30 Jul 2021 20:22:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10061"; a="276939771"
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; d="scan'208";a="276939771"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 13:22:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; d="scan'208";a="499741690"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga001.jf.intel.com with ESMTP; 30 Jul 2021 13:22:08 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
Date: Fri, 30 Jul 2021 13:21:17 -0700
Message-Id: <20210730202119.23810-13-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20210730202119.23810-1-vinay.belgaumkar@intel.com>
References: <20210730202119.23810-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 12/14] drm/i915/guc/slpc: Sysfs hooks for SLPC
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

Update the get/set min/max freq hooks to work for
SLPC case as well. Consolidate helpers for requested/min/max
frequency get/set to intel_rps where the proper action can
be taken depending on whether SLPC is enabled.

v2: Add wrappers for getting rp0/1/n frequencies, update
softlimits in set min/max SLPC functions. Also check for
boundary conditions before setting them.

v3: Address review comments (Michal W)

v4: Add helper for host part of intel_rps_set_freq helpers (Michal W)

v5: checkpatch()

Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Acked-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Signed-off-by: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 177 ++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rps.h |  10 ++
 drivers/gpu/drm/i915/i915_pmu.c     |   2 +-
 drivers/gpu/drm/i915/i915_reg.h     |   2 +
 drivers/gpu/drm/i915/i915_sysfs.c   |  83 +++----------
 5 files changed, 207 insertions(+), 67 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index a92da4b3bd42..847c6313c1e7 100644
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
@@ -1963,6 +1970,176 @@ u32 intel_rps_read_actual_frequency(struct intel_rps *rps)
 	return freq;
 }
 
+u32 intel_rps_read_punit_req(struct intel_rps *rps)
+{
+	struct intel_uncore *uncore = rps_to_uncore(rps);
+
+	return intel_uncore_read(uncore, GEN6_RPNSWREQ);
+}
+
+static u32 intel_rps_get_req(u32 pureq)
+{
+	u32 req = pureq >> GEN9_SW_REQ_UNSLICE_RATIO_SHIFT;
+
+	return req;
+}
+
+u32 intel_rps_read_punit_req_frequency(struct intel_rps *rps)
+{
+	u32 freq = intel_rps_get_req(intel_rps_read_punit_req(rps));
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
+static int set_max_freq(struct intel_rps *rps, u32 val)
+{
+	struct drm_i915_private *i915 = rps_to_i915(rps);
+	int ret = 0;
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
+			intel_gpu_freq(rps, val));
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
+int intel_rps_set_max_frequency(struct intel_rps *rps, u32 val)
+{
+	struct intel_guc_slpc *slpc = rps_to_slpc(rps);
+
+	if (rps_uses_slpc(rps))
+		return intel_guc_slpc_set_max_freq(slpc, val);
+	else
+		return set_max_freq(rps, val);
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
+static int set_min_freq(struct intel_rps *rps, u32 val)
+{
+	int ret = 0;
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
+int intel_rps_set_min_frequency(struct intel_rps *rps, u32 val)
+{
+	struct intel_guc_slpc *slpc = rps_to_slpc(rps);
+
+	if (rps_uses_slpc(rps))
+		return intel_guc_slpc_set_min_freq(slpc, val);
+	else
+		return set_min_freq(rps, val);
+}
+
 /* External interface for intel_ips.ko */
 
 static struct drm_i915_private __rcu *ips_mchdev;
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
index 1d2cfc98b510..4213bcce1667 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps.h
@@ -31,6 +31,16 @@ int intel_gpu_freq(struct intel_rps *rps, int val);
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
+u32 intel_rps_read_punit_req_frequency(struct intel_rps *rps);
 
 void gen5_rps_irq_handler(struct intel_rps *rps);
 void gen6_rps_irq_handler(struct intel_rps *rps, u32 pm_iir);
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
index f3a445f79a36..2416a5e63f2a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9229,6 +9229,8 @@ enum {
 #define   GEN9_FREQUENCY(x)			((x) << 23)
 #define   GEN6_OFFSET(x)			((x) << 19)
 #define   GEN6_AGGRESSIVE_TURBO			(0 << 15)
+#define   GEN9_SW_REQ_UNSLICE_RATIO_SHIFT	23
+
 #define GEN6_RC_VIDEO_FREQ			_MMIO(0xA00C)
 #define GEN6_RC_CONTROL				_MMIO(0xA090)
 #define   GEN6_RC_CTL_RC6pp_ENABLE		(1 << 16)
diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
index 873bf996ceb5..cdf0e9c6fd73 100644
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
 
@@ -344,53 +346,26 @@ static ssize_t gt_max_freq_mhz_store(struct device *kdev,
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
 
 static ssize_t gt_min_freq_mhz_show(struct device *kdev, struct device_attribute *attr, char *buf)
 {
-	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
-	struct intel_rps *rps = &dev_priv->gt.rps;
+	struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
+	struct intel_gt *gt = &i915->gt;
+	struct intel_rps *rps = &gt->rps;
 
-	return sysfs_emit(buf, "%d\n", intel_gpu_freq(rps, rps->min_freq_softlimit));
+	return sysfs_emit(buf, "%d\n", intel_rps_get_min_frequency(rps));
 }
 
 static ssize_t gt_min_freq_mhz_store(struct device *kdev,
 				     struct device_attribute *attr,
 				     const char *buf, size_t count)
 {
-	struct drm_i915_private *dev_priv = kdev_minor_to_i915(kdev);
-	struct intel_rps *rps = &dev_priv->gt.rps;
+	struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
+	struct intel_rps *rps = &i915->gt.rps;
 	ssize_t ret;
 	u32 val;
 
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

