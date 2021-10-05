Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0373423453
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 01:13:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 174306E488;
	Tue,  5 Oct 2021 23:13:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5157B6E488
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Oct 2021 23:13:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10128"; a="205999742"
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="205999742"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 16:13:09 -0700
X-IronPort-AV: E=Sophos;i="5.85,350,1624345200"; d="scan'208";a="483948640"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-mobl2.intel.com)
 ([10.24.14.60])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2021 16:13:09 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue,  5 Oct 2021 16:18:51 -0700
Message-Id: <20211005231851.67698-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211001011218.276557-1-jose.souza@intel.com>
References: <20211001011218.276557-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/display: Wait PSR2 get out of deep
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
is enabled, this is due PIPE_SCANLINE/PIPEDSL returning 0 over a
period of time longer than VBLANK_EVASION_TIME_US.

For PSR1 we had the same issue so intel_psr_wait_for_idle() was
implemented to wait for PSR1 to get into idle state but nothing was
done for PSR2.

For PSR2 we can't only wait for idle state as PSR2 tends to keep
into sleep state(ready to send selective updates).
Waiting for any state below deep sleep proved to be effective in
avoiding the evasion messages and also not wasted a lot of time.

v2:
- dropping the additional wait_for loops, only the _wait_for_atomic()
is necessary
- waiting for states below EDP_PSR2_STATUS_STATE_DEEP_SLEEP

v3:
- dropping intel_wait_for_condition_atomic() function

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 .../drm/i915/display/intel_display_debugfs.c  |  3 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 52 +++++++++++--------
 drivers/gpu/drm/i915/i915_reg.h               | 10 ++--
 3 files changed, 36 insertions(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 309d74fd86ce1..d7dd3a57c6170 100644
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
index 7a205fd5023bb..ade514fc0a24d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1809,15 +1809,21 @@ void intel_psr_post_plane_update(const struct intel_atomic_state *state)
 		_intel_psr_post_plane_update(state, crtc_state);
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
+static int _psr2_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	/*
+	 * Any state lower than EDP_PSR2_STATUS_STATE_DEEP_SLEEP is enough.
+	 * As all higher states has bit 4 of PSR2 state set we can just wait for
+	 * EDP_PSR2_STATUS_STATE_DEEP_SLEEP to be cleared.
+	 */
+	return intel_de_wait_for_clear(dev_priv,
+				       EDP_PSR2_STATUS(intel_dp->psr.transcoder),
+				       EDP_PSR2_STATUS_STATE_DEEP_SLEEP, 50);
+}
+
+static int _psr1_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
@@ -1827,15 +1833,13 @@ static int psr_wait_for_idle(struct intel_dp *intel_dp, u32 *out_value)
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
@@ -1852,19 +1856,23 @@ void intel_psr_wait_for_idle(const struct intel_crtc_state *new_crtc_state)
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
index a897f4abea0c3..e101579d3a4d8 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4700,11 +4700,11 @@ enum {
 #define  PSR_EVENT_LPSP_MODE_EXIT		(1 << 1)
 #define  PSR_EVENT_PSR_DISABLE			(1 << 0)
 
-#define _PSR2_STATUS_A			0x60940
-#define _PSR2_STATUS_EDP		0x6f940
-#define EDP_PSR2_STATUS(tran)		_MMIO_TRANS2(tran, _PSR2_STATUS_A)
-#define EDP_PSR2_STATUS_STATE_MASK     (0xf << 28)
-#define EDP_PSR2_STATUS_STATE_SHIFT    28
+#define _PSR2_STATUS_A				0x60940
+#define _PSR2_STATUS_EDP			0x6f940
+#define EDP_PSR2_STATUS(tran)			_MMIO_TRANS2(tran, _PSR2_STATUS_A)
+#define EDP_PSR2_STATUS_STATE_MASK		REG_GENMASK(31, 28)
+#define EDP_PSR2_STATUS_STATE_DEEP_SLEEP	REG_FIELD_PREP(EDP_PSR2_STATUS_STATE_MASK, 0x8)
 
 #define _PSR2_SU_STATUS_A		0x60914
 #define _PSR2_SU_STATUS_EDP		0x6f914
-- 
2.33.0

