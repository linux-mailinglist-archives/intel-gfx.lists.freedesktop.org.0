Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 023C569218A
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Feb 2023 16:04:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57C2310ED58;
	Fri, 10 Feb 2023 15:04:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6232F10ED58
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Feb 2023 15:04:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676041442; x=1707577442;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0GYj38948NIkvtDX7BoLJhMixIz5kgAHX5vDOvyhK0I=;
 b=PvPUBoWxiyESg3CTeA+oS3+v+jWdQkORIT+xj4cll/qMgTTuOe8GPPpS
 50DtMTLcpRc9R3DTF93+jmZ0G/HbVH9oUR4FxKDlu6QnRnFVzfBAiwrRa
 aY4MuHXwT1TkPCOVSbaPvYDYkD4JsSrad2Fpsy486bP1tZ6I3CPXERhqp
 5F5uexjfTItWWXINoy00cNkXmT75ovOmBTL+eD///mj8sNy+FA8BGDqS6
 x2IiVN9x5cVLazy2gXvQO35qZXkfmnF+3HClAM9ep2fN3EVtwtK/lc+F7
 AdDwEAG+wYgCTDT4q8qhuNIPN6F4a7ljtK5BgwRVl6wu2WlN6Vz4/qZvD Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="330443737"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="330443737"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 07:04:01 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10617"; a="670027000"
X-IronPort-AV: E=Sophos;i="5.97,287,1669104000"; d="scan'208";a="670027000"
Received: from mleshin-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.48.65])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2023 07:03:59 -0800
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Feb 2023 16:03:44 +0100
Message-Id: <20230210150344.1066991-1-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Use i915 instead of dev_priv as
 name for the private device
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

It is becoming a strong habit to call the drm_i915_private
structures "i915", but there are still many left that are called
dev_priv.

Sometimes this makes grepping a bit challenging and anyway it
keeps a coherent style.

Rename all the "dev_priv" structures in the gt/* directory to
"i915".

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
Hi,

just checking if we want something similar. I have this same
replicated patch for the rest of i915 but I want to make sure we
actually want it.

Andi

 drivers/gpu/drm/i915/gt/intel_engine_cs.c      | 18 +++++++++---------
 drivers/gpu/drm/i915/gt/intel_gsc.h            |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_mcr.c         |  2 +-
 drivers/gpu/drm/i915/gt/intel_reset_types.h    |  2 +-
 .../gpu/drm/i915/gt/intel_ring_submission.c    |  4 ++--
 drivers/gpu/drm/i915/gt/intel_rps_types.h      |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c     | 18 +++++++++---------
 7 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index d4e29da74612d..c6271440afbd3 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1939,13 +1939,13 @@ static const char *repr_timer(const struct timer_list *t)
 static void intel_engine_print_registers(struct intel_engine_cs *engine,
 					 struct drm_printer *m)
 {
-	struct drm_i915_private *dev_priv = engine->i915;
+	struct drm_i915_private *i915 = engine->i915;
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	u64 addr;
 
-	if (engine->id == RENDER_CLASS && IS_GRAPHICS_VER(dev_priv, 4, 7))
+	if (engine->id == RENDER_CLASS && IS_GRAPHICS_VER(i915, 4, 7))
 		drm_printf(m, "\tCCID: 0x%08x\n", ENGINE_READ(engine, CCID));
-	if (HAS_EXECLISTS(dev_priv)) {
+	if (HAS_EXECLISTS(i915)) {
 		drm_printf(m, "\tEL_STAT_HI: 0x%08x\n",
 			   ENGINE_READ(engine, RING_EXECLIST_STATUS_HI));
 		drm_printf(m, "\tEL_STAT_LO: 0x%08x\n",
@@ -1966,7 +1966,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 			   ENGINE_READ(engine, RING_MI_MODE) & (MODE_IDLE) ? " [idle]" : "");
 	}
 
-	if (GRAPHICS_VER(dev_priv) >= 6) {
+	if (GRAPHICS_VER(i915) >= 6) {
 		drm_printf(m, "\tRING_IMR:   0x%08x\n",
 			   ENGINE_READ(engine, RING_IMR));
 		drm_printf(m, "\tRING_ESR:   0x%08x\n",
@@ -1983,15 +1983,15 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 	addr = intel_engine_get_last_batch_head(engine);
 	drm_printf(m, "\tBBADDR: 0x%08x_%08x\n",
 		   upper_32_bits(addr), lower_32_bits(addr));
-	if (GRAPHICS_VER(dev_priv) >= 8)
+	if (GRAPHICS_VER(i915) >= 8)
 		addr = ENGINE_READ64(engine, RING_DMA_FADD, RING_DMA_FADD_UDW);
-	else if (GRAPHICS_VER(dev_priv) >= 4)
+	else if (GRAPHICS_VER(i915) >= 4)
 		addr = ENGINE_READ(engine, RING_DMA_FADD);
 	else
 		addr = ENGINE_READ(engine, DMA_FADD_I8XX);
 	drm_printf(m, "\tDMA_FADDR: 0x%08x_%08x\n",
 		   upper_32_bits(addr), lower_32_bits(addr));
-	if (GRAPHICS_VER(dev_priv) >= 4) {
+	if (GRAPHICS_VER(i915) >= 4) {
 		drm_printf(m, "\tIPEIR: 0x%08x\n",
 			   ENGINE_READ(engine, RING_IPEIR));
 		drm_printf(m, "\tIPEHR: 0x%08x\n",
@@ -2001,7 +2001,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 		drm_printf(m, "\tIPEHR: 0x%08x\n", ENGINE_READ(engine, IPEHR));
 	}
 
-	if (HAS_EXECLISTS(dev_priv) && !intel_engine_uses_guc(engine)) {
+	if (HAS_EXECLISTS(i915) && !intel_engine_uses_guc(engine)) {
 		struct i915_request * const *port, *rq;
 		const u32 *hws =
 			&engine->status_page.addr[I915_HWS_CSB_BUF0_INDEX];
@@ -2067,7 +2067,7 @@ static void intel_engine_print_registers(struct intel_engine_cs *engine,
 		}
 		rcu_read_unlock();
 		i915_sched_engine_active_unlock_bh(engine->sched_engine);
-	} else if (GRAPHICS_VER(dev_priv) > 6) {
+	} else if (GRAPHICS_VER(i915) > 6) {
 		drm_printf(m, "\tPP_DIR_BASE: 0x%08x\n",
 			   ENGINE_READ(engine, RING_PP_DIR_BASE));
 		drm_printf(m, "\tPP_DIR_BASE_READ: 0x%08x\n",
diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.h b/drivers/gpu/drm/i915/gt/intel_gsc.h
index fcac1775e9c39..7ab3ca0f9f268 100644
--- a/drivers/gpu/drm/i915/gt/intel_gsc.h
+++ b/drivers/gpu/drm/i915/gt/intel_gsc.h
@@ -33,7 +33,7 @@ struct intel_gsc {
 	} intf[INTEL_GSC_NUM_INTERFACES];
 };
 
-void intel_gsc_init(struct intel_gsc *gsc, struct drm_i915_private *dev_priv);
+void intel_gsc_init(struct intel_gsc *gsc, struct drm_i915_private *i915);
 void intel_gsc_fini(struct intel_gsc *gsc);
 void intel_gsc_irq_handler(struct intel_gt *gt, u32 iir);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
index a4a8b8bc5737e..53e6396b53eeb 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
@@ -35,7 +35,7 @@
  * ignored.
  */
 
-#define HAS_MSLICE_STEERING(dev_priv)	(INTEL_INFO(dev_priv)->has_mslice_steering)
+#define HAS_MSLICE_STEERING(i915)	(INTEL_INFO(i915)->has_mslice_steering)
 
 static const char * const intel_steering_types[] = {
 	"L3BANK",
diff --git a/drivers/gpu/drm/i915/gt/intel_reset_types.h b/drivers/gpu/drm/i915/gt/intel_reset_types.h
index 9312b29f5a97b..80351f0a856c9 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_reset_types.h
@@ -51,7 +51,7 @@ struct intel_reset {
 
 	/**
 	 * Waitqueue to signal when the reset has completed. Used by clients
-	 * that wait for dev_priv->mm.wedged to settle.
+	 * that wait for i915->mm.wedged to settle.
 	 */
 	wait_queue_head_t queue;
 
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 827adb0cfaea6..3fd795c3263fd 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1052,9 +1052,9 @@ static void gen6_bsd_set_default_submission(struct intel_engine_cs *engine)
 
 static void ring_release(struct intel_engine_cs *engine)
 {
-	struct drm_i915_private *dev_priv = engine->i915;
+	struct drm_i915_private *i915 = engine->i915;
 
-	drm_WARN_ON(&dev_priv->drm, GRAPHICS_VER(dev_priv) > 2 &&
+	drm_WARN_ON(&i915->drm, GRAPHICS_VER(i915) > 2 &&
 		    (ENGINE_READ(engine, RING_MI_MODE) & MODE_IDLE) == 0);
 
 	intel_engine_cleanup_common(engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_rps_types.h b/drivers/gpu/drm/i915/gt/intel_rps_types.h
index 9173ec75f2b87..6507fa3f6d1e8 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_rps_types.h
@@ -57,7 +57,7 @@ struct intel_rps {
 
 	/*
 	 * work, interrupts_enabled and pm_iir are protected by
-	 * dev_priv->irq_lock
+	 * i915->irq_lock
 	 */
 	struct timer_list timer;
 	struct work_struct work;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 818e9e0e66a83..195db8c9d4200 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -520,7 +520,7 @@ void intel_guc_log_init_early(struct intel_guc_log *log)
 static int guc_log_relay_create(struct intel_guc_log *log)
 {
 	struct intel_guc *guc = log_to_guc(log);
-	struct drm_i915_private *dev_priv = guc_to_gt(guc)->i915;
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 	struct rchan *guc_log_relay_chan;
 	size_t n_subbufs, subbuf_size;
 	int ret;
@@ -543,9 +543,9 @@ static int guc_log_relay_create(struct intel_guc_log *log)
 	n_subbufs = 8;
 
 	guc_log_relay_chan = relay_open("guc_log",
-					dev_priv->drm.primary->debugfs_root,
+					i915->drm.primary->debugfs_root,
 					subbuf_size, n_subbufs,
-					&relay_callbacks, dev_priv);
+					&relay_callbacks, i915);
 	if (!guc_log_relay_chan) {
 		guc_err(guc, "Couldn't create relay channel for logging\n");
 
@@ -570,7 +570,7 @@ static void guc_log_relay_destroy(struct intel_guc_log *log)
 static void guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 {
 	struct intel_guc *guc = log_to_guc(log);
-	struct drm_i915_private *dev_priv = guc_to_gt(guc)->i915;
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 	intel_wakeref_t wakeref;
 
 	_guc_log_copy_debuglogs_for_relay(log);
@@ -579,7 +579,7 @@ static void guc_log_copy_debuglogs_for_relay(struct intel_guc_log *log)
 	 * Generally device is expected to be active only at this
 	 * time, so get/put should be really quick.
 	 */
-	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref)
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
 		guc_action_flush_log_complete(guc);
 }
 
@@ -661,7 +661,7 @@ void intel_guc_log_destroy(struct intel_guc_log *log)
 int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 {
 	struct intel_guc *guc = log_to_guc(log);
-	struct drm_i915_private *dev_priv = guc_to_gt(guc)->i915;
+	struct drm_i915_private *i915 = guc_to_gt(guc)->i915;
 	intel_wakeref_t wakeref;
 	int ret = 0;
 
@@ -675,12 +675,12 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 	if (level < GUC_LOG_LEVEL_DISABLED || level > GUC_LOG_LEVEL_MAX)
 		return -EINVAL;
 
-	mutex_lock(&dev_priv->drm.struct_mutex);
+	mutex_lock(&i915->drm.struct_mutex);
 
 	if (log->level == level)
 		goto out_unlock;
 
-	with_intel_runtime_pm(&dev_priv->runtime_pm, wakeref)
+	with_intel_runtime_pm(&i915->runtime_pm, wakeref)
 		ret = guc_action_control_log(guc,
 					     GUC_LOG_LEVEL_IS_VERBOSE(level),
 					     GUC_LOG_LEVEL_IS_ENABLED(level),
@@ -693,7 +693,7 @@ int intel_guc_log_set_level(struct intel_guc_log *log, u32 level)
 	log->level = level;
 
 out_unlock:
-	mutex_unlock(&dev_priv->drm.struct_mutex);
+	mutex_unlock(&i915->drm.struct_mutex);
 
 	return ret;
 }
-- 
2.39.1

