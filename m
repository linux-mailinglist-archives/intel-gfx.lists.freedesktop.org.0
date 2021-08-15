Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 601733EC6B4
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Aug 2021 04:07:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B58A89DDF;
	Sun, 15 Aug 2021 02:07:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B76D089DA4
 for <intel-gfx@lists.freedesktop.org>; Sun, 15 Aug 2021 02:07:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10076"; a="202911130"
X-IronPort-AV: E=Sophos;i="5.84,322,1620716400"; d="scan'208";a="202911130"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2021 19:07:04 -0700
X-IronPort-AV: E=Sophos;i="5.84,322,1620716400"; d="scan'208";a="518782886"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.59])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2021 19:07:04 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Sat, 14 Aug 2021 19:11:52 -0700
Message-Id: <20210815021152.410835-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210815021152.410835-1-jose.souza@intel.com>
References: <20210815021152.410835-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/psr: Drop frontbuffer rendering
 support
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

After commit "drm/i915/display/skl+: Drop frontbuffer rendering
support" frontbuffer rendering is not supported for display 9 and
newer and as PSR is only supported by default in display 9 and newer
we can now drop all frontbuffer rendering support for PSR code.

Some DC3CO code was commented with a macro, because the function
caller is being dropped. As DC3CO is already disabled by default
because it requires changes in its sequences

Two DC3CO functions lost their callers while dropping frontbuffer
rendering but as DC3CO is already disabled by default because it
requires fixes, will leave this task to whoever will fix DC3CO.

Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |   2 -
 .../drm/i915/display/intel_display_types.h    |   2 -
 .../gpu/drm/i915/display/intel_frontbuffer.c  |   2 -
 drivers/gpu/drm/i915/display/intel_psr.c      | 186 ++----------------
 drivers/gpu/drm/i915/display/intel_psr.h      |   6 -
 5 files changed, 17 insertions(+), 181 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 8fdacb252bb19..4621ee2efed0f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -373,8 +373,6 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	seq_printf(m, "Source PSR ctl: %s [0x%08x]\n",
 		   enableddisabled(enabled), val);
 	psr_source_status(intel_dp, m);
-	seq_printf(m, "Busy frontbuffer bits: 0x%08x\n",
-		   psr->busy_frontbuffer_bits);
 
 	/*
 	 * SKL+ Perf counter is reset to 0 everytime DC state is entered
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 6beeeeba1bed2..a6b08032917a7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1512,7 +1512,6 @@ struct intel_psr {
 	enum transcoder transcoder;
 	bool active;
 	struct work_struct work;
-	unsigned int busy_frontbuffer_bits;
 	bool sink_psr2_support;
 	bool link_standby;
 	bool colorimetry_support;
@@ -1523,7 +1522,6 @@ struct intel_psr {
 	ktime_t last_entry_attempt;
 	ktime_t last_exit;
 	bool sink_not_reliable;
-	bool irq_aux_error;
 	u16 su_w_granularity;
 	u16 su_y_granularity;
 	u32 dc3co_exitline;
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 8bae2db721ef9..64d794abcfd71 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -95,7 +95,6 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
 
 	might_sleep();
 	intel_edp_drrs_flush(i915, frontbuffer_bits);
-	intel_psr_flush(i915, frontbuffer_bits, origin);
 	intel_fbc_flush(i915, frontbuffer_bits, origin);
 }
 
@@ -185,7 +184,6 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
 		return;
 
 	might_sleep();
-	intel_psr_invalidate(i915, frontbuffer_bits, origin);
 	intel_edp_drrs_invalidate(i915, frontbuffer_bits);
 	intel_fbc_invalidate(i915, frontbuffer_bits, origin);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5726f8dd8e8e3..7d6d69daba58a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -224,15 +224,12 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 		drm_warn(&dev_priv->drm, "[transcoder %s] PSR aux error\n",
 			 transcoder_name(cpu_transcoder));
 
-		intel_dp->psr.irq_aux_error = true;
-
 		/*
 		 * If this interruption is not masked it will keep
 		 * interrupting so fast that it prevents the scheduled
 		 * work to run.
 		 * Also after a PSR error, we don't want to arm PSR
 		 * again so we don't care about unmask the interruption
-		 * or unset irq_aux_error.
 		 */
 		val = intel_de_read(dev_priv, imr_reg);
 		val |= EDP_PSR_ERROR(trans_shift);
@@ -614,14 +611,6 @@ static void psr2_program_idle_frames(struct intel_dp *intel_dp,
 	intel_de_write(dev_priv, EDP_PSR2_CTL(intel_dp->psr.transcoder), val);
 }
 
-static void tgl_psr2_enable_dc3co(struct intel_dp *intel_dp)
-{
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-
-	psr2_program_idle_frames(intel_dp, 0);
-	intel_display_power_set_target_dc_state(dev_priv, DC_STATE_EN_DC3CO);
-}
-
 static void tgl_psr2_disable_dc3co(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
@@ -1177,7 +1166,6 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	drm_WARN_ON(&dev_priv->drm, intel_dp->psr.enabled);
 
 	intel_dp->psr.psr2_enabled = crtc_state->has_psr2;
-	intel_dp->psr.busy_frontbuffer_bits = 0;
 	intel_dp->psr.pipe = to_intel_crtc(crtc_state->uapi.crtc)->pipe;
 	intel_dp->psr.transcoder = crtc_state->cpu_transcoder;
 	/* DC5/DC6 requires at least 6 idle frames */
@@ -1788,36 +1776,6 @@ void intel_psr_wait_for_idle(const struct intel_crtc_state *new_crtc_state)
 	}
 }
 
-static bool __psr_wait_for_idle_locked(struct intel_dp *intel_dp)
-{
-	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	i915_reg_t reg;
-	u32 mask;
-	int err;
-
-	if (!intel_dp->psr.enabled)
-		return false;
-
-	if (intel_dp->psr.psr2_enabled) {
-		reg = EDP_PSR2_STATUS(intel_dp->psr.transcoder);
-		mask = EDP_PSR2_STATUS_STATE_MASK;
-	} else {
-		reg = EDP_PSR_STATUS(intel_dp->psr.transcoder);
-		mask = EDP_PSR_STATUS_STATE_MASK;
-	}
-
-	mutex_unlock(&intel_dp->psr.lock);
-
-	err = intel_de_wait_for_clear(dev_priv, reg, mask, 50);
-	if (err)
-		drm_err(&dev_priv->drm,
-			"Timed out waiting for PSR Idle for re-enable\n");
-
-	/* After the unlocked wait, verify that PSR is still wanted! */
-	mutex_lock(&intel_dp->psr.lock);
-	return err == 0 && intel_dp->psr.enabled;
-}
-
 static int intel_psr_fastset_force(struct drm_i915_private *dev_priv)
 {
 	struct drm_connector_list_iter conn_iter;
@@ -1916,16 +1874,6 @@ int intel_psr_debug_set(struct intel_dp *intel_dp, u64 val)
 	return ret;
 }
 
-static void intel_psr_handle_irq(struct intel_dp *intel_dp)
-{
-	struct intel_psr *psr = &intel_dp->psr;
-
-	intel_psr_disable_locked(intel_dp);
-	psr->sink_not_reliable = true;
-	/* let's make sure that sink is awaken */
-	drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
-}
-
 static void intel_psr_work(struct work_struct *work)
 {
 	struct intel_dp *intel_dp =
@@ -1933,75 +1881,30 @@ static void intel_psr_work(struct work_struct *work)
 
 	mutex_lock(&intel_dp->psr.lock);
 
-	if (!intel_dp->psr.enabled)
-		goto unlock;
-
-	if (READ_ONCE(intel_dp->psr.irq_aux_error))
-		intel_psr_handle_irq(intel_dp);
-
-	/*
-	 * We have to make sure PSR is ready for re-enable
-	 * otherwise it keeps disabled until next full enable/disable cycle.
-	 * PSR might take some time to get fully disabled
-	 * and be ready for re-enable.
-	 */
-	if (!__psr_wait_for_idle_locked(intel_dp))
-		goto unlock;
-
-	/*
-	 * The delayed work can race with an invalidate hence we need to
-	 * recheck. Since psr_flush first clears this and then reschedules we
-	 * won't ever miss a flush when bailing out here.
-	 */
-	if (intel_dp->psr.busy_frontbuffer_bits || intel_dp->psr.active)
-		goto unlock;
+	/* Handling PSR error interruption */
+	intel_psr_disable_locked(intel_dp);
+	intel_dp->psr.sink_not_reliable = true;
+	/* let's make sure that sink is awaken */
+	drm_dp_dpcd_writeb(&intel_dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
 
-	intel_psr_activate(intel_dp);
-unlock:
 	mutex_unlock(&intel_dp->psr.lock);
 }
 
-/**
- * intel_psr_invalidate - Invalidade PSR
- * @dev_priv: i915 device
- * @frontbuffer_bits: frontbuffer plane tracking bits
- * @origin: which operation caused the invalidate
- *
- * Since the hardware frontbuffer tracking has gaps we need to integrate
- * with the software frontbuffer tracking. This function gets called every
- * time frontbuffer rendering starts and a buffer gets dirtied. PSR must be
- * disabled if the frontbuffer mask contains a buffer relevant to PSR.
- *
- * Dirty frontbuffers relevant to PSR are tracked in busy_frontbuffer_bits."
+/*
+ * TODO: Functions below lost their callers to a refactor but as DC3CO is
+ * already disabled by default because it requires fixes, will leave this task
+ * to whoever will fix DC3CO.
  */
-void intel_psr_invalidate(struct drm_i915_private *dev_priv,
-			  unsigned frontbuffer_bits, enum fb_op_origin origin)
-{
-	struct intel_encoder *encoder;
-
-	if (origin == ORIGIN_FLIP)
-		return;
-
-	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
-		unsigned int pipe_frontbuffer_bits = frontbuffer_bits;
-		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-
-		mutex_lock(&intel_dp->psr.lock);
-		if (!intel_dp->psr.enabled) {
-			mutex_unlock(&intel_dp->psr.lock);
-			continue;
-		}
-
-		pipe_frontbuffer_bits &=
-			INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe);
-		intel_dp->psr.busy_frontbuffer_bits |= pipe_frontbuffer_bits;
+#if 0
 
-		if (pipe_frontbuffer_bits)
-			intel_psr_exit(intel_dp);
+static void tgl_psr2_enable_dc3co(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-		mutex_unlock(&intel_dp->psr.lock);
-	}
+	psr2_program_idle_frames(intel_dp, 0);
+	intel_display_power_set_target_dc_state(dev_priv, DC_STATE_EN_DC3CO);
 }
+
 /*
  * When we will be completely rely on PSR2 S/W tracking in future,
  * intel_psr_flush() will invalidate and flush the PSR for ORIGIN_FLIP
@@ -2036,62 +1939,7 @@ tgl_dc3co_flush(struct intel_dp *intel_dp, unsigned int frontbuffer_bits,
 	mutex_unlock(&intel_dp->psr.lock);
 }
 
-/**
- * intel_psr_flush - Flush PSR
- * @dev_priv: i915 device
- * @frontbuffer_bits: frontbuffer plane tracking bits
- * @origin: which operation caused the flush
- *
- * Since the hardware frontbuffer tracking has gaps we need to integrate
- * with the software frontbuffer tracking. This function gets called every
- * time frontbuffer rendering has completed and flushed out to memory. PSR
- * can be enabled again if no other frontbuffer relevant to PSR is dirty.
- *
- * Dirty frontbuffers relevant to PSR are tracked in busy_frontbuffer_bits.
- */
-void intel_psr_flush(struct drm_i915_private *dev_priv,
-		     unsigned frontbuffer_bits, enum fb_op_origin origin)
-{
-	struct intel_encoder *encoder;
-
-	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
-		unsigned int pipe_frontbuffer_bits = frontbuffer_bits;
-		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-
-		if (origin == ORIGIN_FLIP) {
-			tgl_dc3co_flush(intel_dp, frontbuffer_bits, origin);
-			continue;
-		}
-
-		mutex_lock(&intel_dp->psr.lock);
-		if (!intel_dp->psr.enabled) {
-			mutex_unlock(&intel_dp->psr.lock);
-			continue;
-		}
-
-		pipe_frontbuffer_bits &=
-			INTEL_FRONTBUFFER_ALL_MASK(intel_dp->psr.pipe);
-		intel_dp->psr.busy_frontbuffer_bits &= ~pipe_frontbuffer_bits;
-
-		/*
-		 * If the PSR is paused by an explicit intel_psr_paused() call,
-		 * we have to ensure that the PSR is not activated until
-		 * intel_psr_resume() is called.
-		 */
-		if (intel_dp->psr.paused) {
-			mutex_unlock(&intel_dp->psr.lock);
-			continue;
-		}
-
-		/* By definition flush = invalidate + flush */
-		if (pipe_frontbuffer_bits)
-			psr_force_hw_tracking_exit(intel_dp);
-
-		if (!intel_dp->psr.active && !intel_dp->psr.busy_frontbuffer_bits)
-			schedule_work(&intel_dp->psr.work);
-		mutex_unlock(&intel_dp->psr.lock);
-	}
-}
+#endif
 
 /**
  * intel_psr_init - Init basic PSR work and mutex.
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index 641521b101c82..6b7f22f782e6a 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -29,12 +29,6 @@ void intel_psr_update(struct intel_dp *intel_dp,
 		      const struct intel_crtc_state *crtc_state,
 		      const struct drm_connector_state *conn_state);
 int intel_psr_debug_set(struct intel_dp *intel_dp, u64 value);
-void intel_psr_invalidate(struct drm_i915_private *dev_priv,
-			  unsigned frontbuffer_bits,
-			  enum fb_op_origin origin);
-void intel_psr_flush(struct drm_i915_private *dev_priv,
-		     unsigned frontbuffer_bits,
-		     enum fb_op_origin origin);
 void intel_psr_init(struct intel_dp *intel_dp);
 void intel_psr_compute_config(struct intel_dp *intel_dp,
 			      struct intel_crtc_state *crtc_state);
-- 
2.32.0

