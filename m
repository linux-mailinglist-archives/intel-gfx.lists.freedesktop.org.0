Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 90721410063
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Sep 2021 22:47:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 037086E048;
	Fri, 17 Sep 2021 20:47:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FD5D6E047
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Sep 2021 20:47:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10110"; a="222923333"
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="222923333"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 13:47:17 -0700
X-IronPort-AV: E=Sophos;i="5.85,302,1624345200"; d="scan'208";a="510073010"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2021 13:47:17 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Fri, 17 Sep 2021 13:52:40 -0700
Message-Id: <20210917205241.231527-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210917205241.231527-1-jose.souza@intel.com>
References: <20210917205241.231527-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display: Wait PSR2 get out of deep
 sleep to update pipe
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

Alderlake-P was getting 'max time under evasion' messages when PSR2
was enabled, this is due PIPE_SCANLINE/PIPEDSL returning 0 over a
period of time longer than VBLANK_EVASION_TIME_US.

For PSR1 we had the same issue so intel_psr_wait_for_idle() was
implemented to wait for PSR1 to get into idle state but nothing was
done for PSR2.

For PSR2 we can't only wait for idle state as PSR2 tends to keep
into sleep state that means it is ready to send selective updates.

To do so it was necessary to add intel_wait_for_condition(), this
takes as parameter a function that will return true when the desidered
condition is meet.

Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |  3 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 64 ++++++++++++-------
 drivers/gpu/drm/i915/i915_reg.h               |  5 +-
 drivers/gpu/drm/i915/intel_uncore.c           | 47 ++++++++++++++
 drivers/gpu/drm/i915/intel_uncore.h           |  7 ++
 5 files changed, 100 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 68f4ba8c46e75..662596adb1da6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -303,8 +303,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 		};
 		val = intel_de_read(dev_priv,
 				    EDP_PSR2_STATUS(intel_dp->psr.transcoder));
-		status_val = (val & EDP_PSR2_STATUS_STATE_MASK) >>
-			      EDP_PSR2_STATUS_STATE_SHIFT;
+		status_val = REG_FIELD_GET(EDP_PSR2_STATUS_STATE_MASK, val);
 		if (status_val < ARRAY_SIZE(live_status))
 			status = live_status[status_val];
 	} else {
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index c1894b056d6c1..bd13325782f11 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1763,15 +1763,33 @@ void intel_psr_update(struct intel_dp *intel_dp,
 	mutex_unlock(&intel_dp->psr.lock);
 }
 
-/**
- * psr_wait_for_idle - wait for PSR1 to idle
- * @intel_dp: Intel DP
- * @out_value: PSR status in case of failure
- *
- * Returns: 0 on success or -ETIMEOUT if PSR status does not idle.
- *
- */
-static int psr_wait_for_idle(struct intel_dp *intel_dp, u32 *out_value)
+static bool _is_psr2_read_for_pipe_update(void *data)
+{
+	struct intel_dp *intel_dp = data;
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	u32 val;
+
+	val = intel_uncore_read_fw(&dev_priv->uncore,
+				   EDP_PSR2_STATUS(intel_dp->psr.transcoder));
+	val &= EDP_PSR2_STATUS_STATE_MASK;
+
+	return val == EDP_PSR2_STATUS_STATE_SLEEP || val == EDP_PSR2_STATUS_STATE_IDLE;
+}
+
+static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+	unsigned int fw;
+
+	fw = intel_uncore_forcewake_for_reg(&dev_priv->uncore,
+					    EDP_PSR2_STATUS(intel_dp->psr.transcoder),
+					    FW_REG_READ);
+	return intel_wait_for_condition(&dev_priv->uncore,
+					_is_psr2_read_for_pipe_update,
+					intel_dp, fw, 50);
+}
+
+static int _psr1_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
@@ -1781,15 +1799,13 @@ static int psr_wait_for_idle(struct intel_dp *intel_dp, u32 *out_value)
 	 * exit training time + 1.5 ms of aux channel handshake. 50 ms is
 	 * defensive enough to cover everything.
 	 */
-	return __intel_wait_for_register(&dev_priv->uncore,
-					 EDP_PSR_STATUS(intel_dp->psr.transcoder),
-					 EDP_PSR_STATUS_STATE_MASK,
-					 EDP_PSR_STATUS_STATE_IDLE, 2, 50,
-					 out_value);
+	return intel_de_wait_for_clear(dev_priv,
+				       EDP_PSR_STATUS(intel_dp->psr.transcoder),
+				       EDP_PSR_STATUS_STATE_MASK, 50);
 }
 
 /**
- * intel_psr_wait_for_idle - wait for PSR1 to idle
+ * intel_psr_wait_for_idle - wait for PSR be ready for a pipe update
  * @new_crtc_state: new CRTC state
  *
  * This function is expected to be called from pipe_update_start() where it is
@@ -1806,19 +1822,23 @@ void intel_psr_wait_for_idle(const struct intel_crtc_state *new_crtc_state)
 	for_each_intel_encoder_mask_with_psr(&dev_priv->drm, encoder,
 					     new_crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-		u32 psr_status;
+		int ret;
 
 		mutex_lock(&intel_dp->psr.lock);
-		if (!intel_dp->psr.enabled || intel_dp->psr.psr2_enabled) {
+
+		if (!intel_dp->psr.enabled) {
 			mutex_unlock(&intel_dp->psr.lock);
 			continue;
 		}
 
-		/* when the PSR1 is enabled */
-		if (psr_wait_for_idle(intel_dp, &psr_status))
-			drm_err(&dev_priv->drm,
-				"PSR idle timed out 0x%x, atomic update may fail\n",
-				psr_status);
+		if (intel_dp->psr.psr2_enabled)
+			ret = _psr2_ready_for_pipe_update_locked(intel_dp);
+		else
+			ret = _psr1_ready_for_pipe_update_locked(intel_dp);
+
+		if (ret)
+			drm_err(&dev_priv->drm, "PSR wait timed out, atomic update may fail\n");
+
 		mutex_unlock(&intel_dp->psr.lock);
 	}
 }
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c3a21f7c003de..7aaa0bc9a8fe7 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4698,8 +4698,9 @@ enum {
 #define _PSR2_STATUS_A			0x60940
 #define _PSR2_STATUS_EDP		0x6f940
 #define EDP_PSR2_STATUS(tran)		_MMIO_TRANS2(tran, _PSR2_STATUS_A)
-#define EDP_PSR2_STATUS_STATE_MASK     (0xf << 28)
-#define EDP_PSR2_STATUS_STATE_SHIFT    28
+#define EDP_PSR2_STATUS_STATE_MASK     REG_GENMASK(31, 28)
+#define EDP_PSR2_STATUS_STATE_SLEEP    REG_FIELD_PREP(EDP_PSR2_STATUS_STATE_MASK, 0x3)
+#define EDP_PSR2_STATUS_STATE_IDLE     REG_FIELD_PREP(EDP_PSR2_STATUS_STATE_MASK, 0x0)
 
 #define _PSR2_SU_STATUS_A		0x60914
 #define _PSR2_SU_STATUS_EDP		0x6f914
diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index f9767054dbdf9..1467b7709ca3a 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2379,6 +2379,28 @@ int __intel_wait_for_register_fw(struct intel_uncore *uncore,
 #undef done
 }
 
+static int __intel_wait_for_condition_fw(bool (*func)(void *data), void *data,
+					 unsigned int fast_timeout_us,
+					 unsigned int slow_timeout_ms)
+{
+#define done (func(data))
+	int ret;
+
+	/* Catch any overuse of this function */
+	might_sleep_if(slow_timeout_ms);
+	GEM_BUG_ON(fast_timeout_us > 20000);
+	GEM_BUG_ON(!fast_timeout_us && !slow_timeout_ms);
+
+	ret = -ETIMEDOUT;
+	if (fast_timeout_us && fast_timeout_us <= 20000)
+		ret = _wait_for_atomic(done, fast_timeout_us, 0);
+	if (ret && slow_timeout_ms)
+		ret = wait_for(done, slow_timeout_ms);
+
+	return ret;
+#undef done
+}
+
 /**
  * __intel_wait_for_register - wait until register matches expected state
  * @uncore: the struct intel_uncore
@@ -2438,6 +2460,31 @@ int __intel_wait_for_register(struct intel_uncore *uncore,
 	return ret;
 }
 
+int intel_wait_for_condition(struct intel_uncore *uncore,
+			     bool (*func)(void *data),
+			     void *data,
+			     unsigned int fw,
+			     unsigned int slow_timeout_ms)
+{
+	unsigned int fast_timeout_us = 2;
+	int ret;
+
+	might_sleep_if(slow_timeout_ms);
+
+	spin_lock_irq(&uncore->lock);
+	intel_uncore_forcewake_get__locked(uncore, fw);
+
+	ret = __intel_wait_for_condition_fw(func, data, fast_timeout_us, 0);
+
+	intel_uncore_forcewake_put__locked(uncore, fw);
+	spin_unlock_irq(&uncore->lock);
+
+	if (ret && slow_timeout_ms)
+		ret = __wait_for(, (func(data)), slow_timeout_ms * 1000, 10, 1000);
+
+	return ret;
+}
+
 bool intel_uncore_unclaimed_mmio(struct intel_uncore *uncore)
 {
 	bool ret;
diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
index 531665b08039c..e3041525a6db8 100644
--- a/drivers/gpu/drm/i915/intel_uncore.h
+++ b/drivers/gpu/drm/i915/intel_uncore.h
@@ -275,6 +275,7 @@ int __intel_wait_for_register_fw(struct intel_uncore *uncore,
 				 unsigned int fast_timeout_us,
 				 unsigned int slow_timeout_ms,
 				 u32 *out_value);
+
 static inline int
 intel_wait_for_register_fw(struct intel_uncore *uncore,
 			   i915_reg_t reg,
@@ -286,6 +287,12 @@ intel_wait_for_register_fw(struct intel_uncore *uncore,
 					    2, timeout_ms, NULL);
 }
 
+int intel_wait_for_condition(struct intel_uncore *uncore,
+			     bool (*func)(void *data),
+			     void *data,
+			     unsigned int fw,
+			     unsigned int timeout_ms);
+
 /* register access functions */
 #define __raw_read(x__, s__) \
 static inline u##x__ __raw_uncore_read##x__(const struct intel_uncore *uncore, \
-- 
2.33.0

