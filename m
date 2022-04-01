Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F2A4EFCCD
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Apr 2022 00:28:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE64710E0CC;
	Fri,  1 Apr 2022 22:27:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5785310E0CC
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 22:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648852078; x=1680388078;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wSjWBGHY1fYypYgwF5GR8WLWrk/A5L+g25Fv3hqYS08=;
 b=O/eDqBFN0zh3RgJdUvw2x4RbIJKYMfaYZlQtQxgisJjrYfa2Bang8ojU
 NbwhiDeVTs0YfCUl8eUfCz3jwKsZy/FXVmBHRE6Nms0FDfh2JOiD14Dmv
 8DuGSxG/5L3NQB+/rB5qvRT6+TeD7EDt88eHjJrsStZuL9VaEnH2JE/Sk
 cipAJbshtLjF5QkCcGxMWum2JmIASwscgy3Rjdsq52MftPr7UnnFQc+jO
 20RdqqWbDClbu9DLTSXCAIi7pCueuuRLt0idPv9Ei8/t3ivB4r2hHVjft
 fG9zTf8sB/SnRjPbT5NHsLFFbjlnLESXhFn5/iakeFPJzey20bnAfa2lK g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="247750786"
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; d="scan'208";a="247750786"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 15:27:58 -0700
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; d="scan'208";a="567866725"
Received: from srtirum1-mobl.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.213.185.120])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 15:27:56 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Apr 2022 15:29:10 -0700
Message-Id: <20220401222911.199284-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220401222911.199284-1-jose.souza@intel.com>
References: <20220401222911.199284-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/3] drm/i915/display/psr: Lock and unlock PSR
 around pipe updates
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

Frontbuffer rendering and page flips can race with each other
and this can potentialy cause issues with PSR2 selective fetch.

And because pipe/crtc updates are time sentive we can't grab the
PSR lock after intel_pipe_update_start() and before
intel_pipe_update_end().

So here adding the lock and unlock functions and calls, the
proper PSR2 selective fetch handling will come in a separated patch.

Cc: Jouni Högander <jouni.hogander@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c |  6 +-
 drivers/gpu/drm/i915/display/intel_psr.c  | 69 ++++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_psr.h  |  5 +-
 3 files changed, 70 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index f655c16228776..a5439182d5ae4 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -507,6 +507,8 @@ void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state)
 						      VBLANK_EVASION_TIME_US);
 	max = vblank_start - 1;
 
+	intel_psr_lock(new_crtc_state);
+
 	if (min <= 0 || max <= 0)
 		goto irq_disable;
 
@@ -518,7 +520,7 @@ void intel_pipe_update_start(struct intel_crtc_state *new_crtc_state)
 	 * VBL interrupts will start the PSR exit and prevent a PSR
 	 * re-entry as well.
 	 */
-	intel_psr_wait_for_idle(new_crtc_state);
+	intel_psr_wait_for_idle_locked(new_crtc_state);
 
 	local_irq_disable();
 
@@ -683,6 +685,8 @@ void intel_pipe_update_end(struct intel_crtc_state *new_crtc_state)
 
 	local_irq_enable();
 
+	intel_psr_unlock(new_crtc_state);
+
 	if (intel_vgpu_active(dev_priv))
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 2da2468f555ec..58597480054eb 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1548,10 +1548,19 @@ void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
 void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_encoder *encoder;
 
 	if (!crtc_state->enable_psr2_sel_fetch)
 		return;
 
+	for_each_intel_encoder_mask_with_psr(&dev_priv->drm, encoder,
+					     crtc_state->uapi.encoder_mask) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+		lockdep_assert_held(&intel_dp->psr.lock);
+		break;
+	}
+
 	intel_de_write(dev_priv, PSR2_MAN_TRK_CTL(crtc_state->cpu_transcoder),
 		       crtc_state->psr2_man_track_ctl);
 }
@@ -1919,13 +1928,13 @@ static int _psr1_ready_for_pipe_update_locked(struct intel_dp *intel_dp)
 }
 
 /**
- * intel_psr_wait_for_idle - wait for PSR be ready for a pipe update
+ * intel_psr_wait_for_idle_locked - wait for PSR be ready for a pipe update
  * @new_crtc_state: new CRTC state
  *
  * This function is expected to be called from pipe_update_start() where it is
  * not expected to race with PSR enable or disable.
  */
-void intel_psr_wait_for_idle(const struct intel_crtc_state *new_crtc_state)
+void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_state)
 {
 	struct drm_i915_private *dev_priv = to_i915(new_crtc_state->uapi.crtc->dev);
 	struct intel_encoder *encoder;
@@ -1938,12 +1947,10 @@ void intel_psr_wait_for_idle(const struct intel_crtc_state *new_crtc_state)
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 		int ret;
 
-		mutex_lock(&intel_dp->psr.lock);
+		lockdep_assert_held(&intel_dp->psr.lock);
 
-		if (!intel_dp->psr.enabled) {
-			mutex_unlock(&intel_dp->psr.lock);
+		if (!intel_dp->psr.enabled)
 			continue;
-		}
 
 		if (intel_dp->psr.psr2_enabled)
 			ret = _psr2_ready_for_pipe_update_locked(intel_dp);
@@ -1952,8 +1959,6 @@ void intel_psr_wait_for_idle(const struct intel_crtc_state *new_crtc_state)
 
 		if (ret)
 			drm_err(&dev_priv->drm, "PSR wait timed out, atomic update may fail\n");
-
-		mutex_unlock(&intel_dp->psr.lock);
 	}
 }
 
@@ -2444,3 +2449,51 @@ bool intel_psr_enabled(struct intel_dp *intel_dp)
 
 	return ret;
 }
+
+/**
+ * intel_psr_lock - grab psr.lock mutex
+ * @crtc_state: the crtc state
+ *
+ * This is initially meant to be used by around CRTC update, when
+ * vblank sensitive registers are updated and we need grab the lock
+ * before it to avoid vblank evasion.
+ */
+void intel_psr_lock(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_encoder *encoder;
+
+	if (!crtc_state->has_psr)
+		return;
+
+	for_each_intel_encoder_mask_with_psr(&i915->drm, encoder,
+					     crtc_state->uapi.encoder_mask) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+		mutex_lock(&intel_dp->psr.lock);
+		break;
+	}
+}
+
+/**
+ * intel_psr_lock - grab psr.lock mutex
+ * @crtc_state: the crtc state
+ *
+ * Release the PSR lock that was held during pipe update.
+ */
+void intel_psr_unlock(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	struct intel_encoder *encoder;
+
+	if (!crtc_state->has_psr)
+		return;
+
+	for_each_intel_encoder_mask_with_psr(&i915->drm, encoder,
+					     crtc_state->uapi.encoder_mask) {
+		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
+
+		mutex_unlock(&intel_dp->psr.lock);
+		break;
+	}
+}
diff --git a/drivers/gpu/drm/i915/display/intel_psr.h b/drivers/gpu/drm/i915/display/intel_psr.h
index f6526d9ccfdc6..2ac3a46cccc50 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.h
+++ b/drivers/gpu/drm/i915/display/intel_psr.h
@@ -41,7 +41,7 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 			  struct intel_crtc_state *pipe_config);
 void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir);
 void intel_psr_short_pulse(struct intel_dp *intel_dp);
-void intel_psr_wait_for_idle(const struct intel_crtc_state *new_crtc_state);
+void intel_psr_wait_for_idle_locked(const struct intel_crtc_state *new_crtc_state);
 bool intel_psr_enabled(struct intel_dp *intel_dp);
 int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 				struct intel_crtc *crtc);
@@ -55,4 +55,7 @@ void intel_psr2_disable_plane_sel_fetch(struct intel_plane *plane,
 void intel_psr_pause(struct intel_dp *intel_dp);
 void intel_psr_resume(struct intel_dp *intel_dp);
 
+void intel_psr_lock(const struct intel_crtc_state *crtc_state);
+void intel_psr_unlock(const struct intel_crtc_state *crtc_state);
+
 #endif /* __INTEL_PSR_H__ */
-- 
2.35.1

