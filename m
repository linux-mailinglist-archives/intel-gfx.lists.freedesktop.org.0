Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8593A44251A
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 02:26:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DB686F562;
	Tue,  2 Nov 2021 01:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EACD6F562;
 Tue,  2 Nov 2021 01:26:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="231117053"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="231117053"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 18:26:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="531385688"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga001.jf.intel.com with ESMTP; 01 Nov 2021 18:26:45 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon,  1 Nov 2021 18:26:07 -0700
Message-Id: <20211102012608.8609-3-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20211102012608.8609-1-vinay.belgaumkar@intel.com>
References: <20211102012608.8609-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/guc/slpc: Add waitboost
 functionality for SLPC
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

Add helper in RPS code for handling SLPC and non-SLPC paths.
When boost is requested in the SLPC path, we can ask GuC to ramp
up the frequency req by setting the minimum frequency to boost freq.
Reset freq back to the min softlimit when there are no more waiters.

v2: Schedule a worker thread which can boost freq from within
an interrupt context as well.

v3: No need to check against requested freq before scheduling boost
work (Ashutosh)

Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c         | 25 +++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_rps.h         |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 20 +++++++++++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h |  1 +
 drivers/gpu/drm/i915/i915_request.c         |  2 +-
 5 files changed, 48 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 5e275f8dda8c..6f310c9d9765 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -936,8 +936,23 @@ void intel_rps_park(struct intel_rps *rps)
 	GT_TRACE(rps_to_gt(rps), "park:%x\n", rps->cur_freq);
 }
 
+void intel_rps_dec_waiters(struct intel_rps *rps)
+{
+	struct intel_guc_slpc *slpc;
+
+	if (rps_uses_slpc(rps)) {
+		slpc = rps_to_slpc(rps);
+
+		intel_guc_slpc_dec_waiters(slpc);
+	} else {
+		atomic_dec(&rps->num_waiters);
+	}
+}
+
 void intel_rps_boost(struct i915_request *rq)
 {
+	struct intel_guc_slpc *slpc;
+
 	if (i915_request_signaled(rq) || i915_request_has_waitboost(rq))
 		return;
 
@@ -945,6 +960,16 @@ void intel_rps_boost(struct i915_request *rq)
 	if (!test_and_set_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags)) {
 		struct intel_rps *rps = &READ_ONCE(rq->engine)->gt->rps;
 
+		if (rps_uses_slpc(rps)) {
+			slpc = rps_to_slpc(rps);
+
+			/* Return if old value is non zero */
+			if (!atomic_fetch_inc(&slpc->num_waiters))
+				schedule_work(&slpc->boost_work);
+
+			return;
+		}
+
 		if (atomic_fetch_inc(&rps->num_waiters))
 			return;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_rps.h b/drivers/gpu/drm/i915/gt/intel_rps.h
index 11960d64ca82..407e878d5006 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps.h
@@ -23,6 +23,7 @@ void intel_rps_disable(struct intel_rps *rps);
 void intel_rps_park(struct intel_rps *rps);
 void intel_rps_unpark(struct intel_rps *rps);
 void intel_rps_boost(struct i915_request *rq);
+void intel_rps_dec_waiters(struct intel_rps *rps);
 
 int intel_rps_set(struct intel_rps *rps, u8 val);
 void intel_rps_mark_interactive(struct intel_rps *rps, bool interactive);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 3a9750af0bdf..db418396a145 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -446,7 +446,11 @@ int intel_guc_slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 val)
 	    val > slpc->max_freq_softlimit)
 		return -EINVAL;
 
+	/* Need a lock now since waitboost can be modifying min as well */
+	mutex_lock(&slpc->lock);
+
 	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
+
 		ret = slpc_set_param(slpc,
 				     SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ,
 				     val);
@@ -459,6 +463,8 @@ int intel_guc_slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 val)
 	if (!ret)
 		slpc->min_freq_softlimit = val;
 
+	mutex_unlock(&slpc->lock);
+
 	return ret;
 }
 
@@ -644,6 +650,20 @@ int intel_guc_slpc_enable(struct intel_guc_slpc *slpc)
 	return 0;
 }
 
+void intel_guc_slpc_dec_waiters(struct intel_guc_slpc *slpc)
+{
+	/*
+	 * Return min back to the softlimit.
+	 * This is called during request retire,
+	 * so we don't need to fail that if the
+	 * set_param fails.
+	 */
+	mutex_lock(&slpc->lock);
+	if (atomic_dec_and_test(&slpc->num_waiters))
+		slpc_force_min_freq(slpc, slpc->min_freq_softlimit);
+	mutex_unlock(&slpc->lock);
+}
+
 int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p)
 {
 	struct drm_i915_private *i915 = slpc_to_i915(slpc);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
index b62528647770..d74d6d749bdc 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
@@ -39,5 +39,6 @@ int intel_guc_slpc_get_min_freq(struct intel_guc_slpc *slpc, u32 *val);
 int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p);
 void intel_guc_pm_intrmsk_enable(struct intel_gt *gt);
 void intel_guc_slpc_boost(struct intel_guc_slpc *slpc);
+void intel_guc_slpc_dec_waiters(struct intel_guc_slpc *slpc);
 
 #endif
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index 2c3cd6e635b5..08f38e86231d 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -339,7 +339,7 @@ bool i915_request_retire(struct i915_request *rq)
 	}
 
 	if (test_and_set_bit(I915_FENCE_FLAG_BOOST, &rq->fence.flags))
-		atomic_dec(&rq->engine->gt->rps.num_waiters);
+		intel_rps_dec_waiters(&rq->engine->gt->rps);
 
 	/*
 	 * We only loosely track inflight requests across preemption,
-- 
2.25.0

