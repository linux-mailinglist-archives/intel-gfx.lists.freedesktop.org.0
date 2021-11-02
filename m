Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BAF442518
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Nov 2021 02:26:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 797F26F55F;
	Tue,  2 Nov 2021 01:26:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ABFC6F55F;
 Tue,  2 Nov 2021 01:26:43 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10155"; a="231117045"
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="231117045"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 18:26:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,201,1631602800"; d="scan'208";a="531385668"
Received: from vbelgaum-ubuntu.fm.intel.com ([10.1.27.27])
 by orsmga001.jf.intel.com with ESMTP; 01 Nov 2021 18:26:43 -0700
From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon,  1 Nov 2021 18:26:06 -0700
Message-Id: <20211102012608.8609-2-vinay.belgaumkar@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20211102012608.8609-1-vinay.belgaumkar@intel.com>
References: <20211102012608.8609-1-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/guc/slpc: Define and initialize
 boost frequency
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

Define helpers and struct members required to record boost info.
Boost frequency is initialized to RP0 at SLPC init. Also define num_waiters
which can track the pending boost requests.

Boost will be done by scheduling a worker thread. This will avoid
the need to make H2G calls inside an interrupt context. Initialize the
worker function during SLPC init as well. Had to move intel_guc_slpc_init
a few lines below to accomodate this.

v2: Add a workqueue to handle waitboost
v3: Code review comments (Ashutosh)

Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c   | 102 ++++++++++++++----
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h   |   1 +
 .../gpu/drm/i915/gt/uc/intel_guc_slpc_types.h |  13 +++
 3 files changed, 93 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 65a3e7fdb2b2..3a9750af0bdf 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -79,29 +79,6 @@ static void slpc_mem_set_disabled(struct slpc_shared_data *data,
 	slpc_mem_set_param(data, enable_id, 0);
 }
 
-int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
-{
-	struct intel_guc *guc = slpc_to_guc(slpc);
-	struct drm_i915_private *i915 = slpc_to_i915(slpc);
-	u32 size = PAGE_ALIGN(sizeof(struct slpc_shared_data));
-	int err;
-
-	GEM_BUG_ON(slpc->vma);
-
-	err = intel_guc_allocate_and_map_vma(guc, size, &slpc->vma, (void **)&slpc->vaddr);
-	if (unlikely(err)) {
-		drm_err(&i915->drm,
-			"Failed to allocate SLPC struct (err=%pe)\n",
-			ERR_PTR(err));
-		return err;
-	}
-
-	slpc->max_freq_softlimit = 0;
-	slpc->min_freq_softlimit = 0;
-
-	return err;
-}
-
 static u32 slpc_get_state(struct intel_guc_slpc *slpc)
 {
 	struct slpc_shared_data *data;
@@ -203,6 +180,82 @@ static int slpc_unset_param(struct intel_guc_slpc *slpc,
 	return guc_action_slpc_unset_param(guc, id);
 }
 
+static int slpc_force_min_freq(struct intel_guc_slpc *slpc, u32 freq)
+{
+	struct drm_i915_private *i915 = slpc_to_i915(slpc);
+	intel_wakeref_t wakeref;
+	int ret = 0;
+
+	lockdep_assert_held(&slpc->lock);
+
+	/*
+	 * This function is a little different as compared to
+	 * intel_guc_slpc_set_min_freq(). Softlimit will not be updated
+	 * here since this is used to temporarily change min freq,
+	 * for example, during a waitboost. Caller is responsible for
+	 * checking bounds.
+	 */
+
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
+		ret = slpc_set_param(slpc,
+				     SLPC_PARAM_GLOBAL_MIN_GT_UNSLICE_FREQ_MHZ,
+				     freq);
+		if (ret)
+			drm_err(&i915->drm, "Unable to force min freq to %u: %d",
+				freq, ret);
+	}
+
+	return ret;
+}
+
+static void slpc_boost_work(struct work_struct *work)
+{
+	struct intel_guc_slpc *slpc = container_of(work, typeof(*slpc), boost_work);
+
+	/*
+	 * Raise min freq to boost. It's possible that
+	 * this is greater than current max. But it will
+	 * certainly be limited by RP0. An error setting
+	 * the min param is not fatal.
+	 */
+	mutex_lock(&slpc->lock);
+	if (atomic_read(&slpc->num_waiters)) {
+		slpc_force_min_freq(slpc, slpc->boost_freq);
+		slpc->num_boosts++;
+	}
+	mutex_unlock(&slpc->lock);
+}
+
+int intel_guc_slpc_init(struct intel_guc_slpc *slpc)
+{
+	struct intel_guc *guc = slpc_to_guc(slpc);
+	struct drm_i915_private *i915 = slpc_to_i915(slpc);
+	u32 size = PAGE_ALIGN(sizeof(struct slpc_shared_data));
+	int err;
+
+	GEM_BUG_ON(slpc->vma);
+
+	err = intel_guc_allocate_and_map_vma(guc, size, &slpc->vma, (void **)&slpc->vaddr);
+	if (unlikely(err)) {
+		drm_err(&i915->drm,
+			"Failed to allocate SLPC struct (err=%pe)\n",
+			ERR_PTR(err));
+		return err;
+	}
+
+	slpc->max_freq_softlimit = 0;
+	slpc->min_freq_softlimit = 0;
+
+	slpc->boost_freq = 0;
+	atomic_set(&slpc->num_waiters, 0);
+	slpc->num_boosts = 0;
+
+	mutex_init(&slpc->lock);
+	INIT_WORK(&slpc->boost_work, slpc_boost_work);
+
+	return err;
+}
+
 static const char *slpc_global_state_to_string(enum slpc_global_state state)
 {
 	switch (state) {
@@ -522,6 +575,9 @@ static void slpc_get_rp_values(struct intel_guc_slpc *slpc)
 					GT_FREQUENCY_MULTIPLIER;
 	slpc->min_freq = REG_FIELD_GET(RPN_CAP_MASK, rp_state_cap) *
 					GT_FREQUENCY_MULTIPLIER;
+
+	if (!slpc->boost_freq)
+		slpc->boost_freq = slpc->rp0_freq;
 }
 
 /*
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
index e45054d5b9b4..b62528647770 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.h
@@ -38,5 +38,6 @@ int intel_guc_slpc_get_max_freq(struct intel_guc_slpc *slpc, u32 *val);
 int intel_guc_slpc_get_min_freq(struct intel_guc_slpc *slpc, u32 *val);
 int intel_guc_slpc_print_info(struct intel_guc_slpc *slpc, struct drm_printer *p);
 void intel_guc_pm_intrmsk_enable(struct intel_gt *gt);
+void intel_guc_slpc_boost(struct intel_guc_slpc *slpc);
 
 #endif
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
index 41d13527666f..bf5b9a563c09 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc_types.h
@@ -6,6 +6,9 @@
 #ifndef _INTEL_GUC_SLPC_TYPES_H_
 #define _INTEL_GUC_SLPC_TYPES_H_
 
+#include <linux/atomic.h>
+#include <linux/workqueue.h>
+#include <linux/mutex.h>
 #include <linux/types.h>
 
 #define SLPC_RESET_TIMEOUT_MS 5
@@ -20,10 +23,20 @@ struct intel_guc_slpc {
 	u32 min_freq;
 	u32 rp0_freq;
 	u32 rp1_freq;
+	u32 boost_freq;
 
 	/* frequency softlimits */
 	u32 min_freq_softlimit;
 	u32 max_freq_softlimit;
+
+	/* Protects set/reset of boost freq
+	 * and value of num_waiters
+	 */
+	struct mutex lock;
+
+	struct work_struct boost_work;
+	atomic_t num_waiters;
+	u32 num_boosts;
 };
 
 #endif
-- 
2.25.0

