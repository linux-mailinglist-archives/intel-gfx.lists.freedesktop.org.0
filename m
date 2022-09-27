Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F955EC09F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 13:11:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 129D010E285;
	Tue, 27 Sep 2022 11:11:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D7D910E285
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 11:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664277058; x=1695813058;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=r+SsFhSmjyJpnJujeQ2T/Z7Iqqlr/hSbjNgJaur9LZw=;
 b=HeXNMAuk7DPmWmWNSzDUiHHMkxqubmbwSO+K/60q5Ia/sHK193Fb5B/o
 TldL3rntCW0QXva1s/f/WnXkCVGUR9HIIer9Erwt3Gec1SVX5Z5X1Jo7Y
 hw0voK+ncY4C7G9NSFMcyzVVgByunSTPHpjf9tG9agcJ15zupghiztYFi
 vgUxaJlZEHYGgNU4paOomu/tCVO42OnzRJH7/XB4LbmHkSYbD8JJp/pyN
 F3hNVvQw1efcYOCVzIUNMOkWbgRK+5+DPjFRXaAfqvOoqaIYEFVx1DXRO
 nP1QcaMboV572keKJmhejTv5706fDIBlH+7OQaTFU/YbmDJrZBahYfnkG w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="281008009"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="281008009"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 04:10:58 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="689955650"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="689955650"
Received: from tjungman-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.249.32.180])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 04:10:56 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 14:09:43 +0300
Message-Id: <20220927110943.212470-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3] drm/i915/psr: Fix PSR_IMR/IIR field handling
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

Current PSR code is supposed to use TRANSCODER_EDP to force 0 shift for
bits in PSR_IMR/IIR registers:

/*
 * gen12+ has registers relative to transcoder and one per transcoder
 * using the same bit definition: handle it as TRANSCODER_EDP to force
 * 0 shift in bit definition
 */

At the time of writing the code assumption "TRANSCODER_EDP == 0" was made.
This is not the case and all fields in PSR_IMR and PSR_IIR are shifted
incorrectly if DISPLAY_VER >= 12.

Fix this by adding separate register field defines for >=12 and add bit
getter functions to keep code readability.

v3:
 - Add separate register field defines (José)
 - Add bit getter functions (José)
v2:
 - Improve commit message (José)

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 84 ++++++++++++++----------
 drivers/gpu/drm/i915/i915_reg.h          | 16 +++--
 2 files changed, 62 insertions(+), 38 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9def8d9fade6..d7b08a7da9e9 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -116,34 +116,56 @@ static bool psr2_global_enabled(struct intel_dp *intel_dp)
 	}
 }
 
+static u32 psr_irq_psr_error_bit_get(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	return DISPLAY_VER(dev_priv) >= 12 ? TGL_EDP_PSR_ERROR :
+		EDP_PSR_ERROR(intel_dp->psr.transcoder);
+}
+
+static u32 psr_irq_post_exit_bit_get(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	return DISPLAY_VER(dev_priv) >= 12 ? TGL_EDP_PSR_POST_EXIT :
+		EDP_PSR_POST_EXIT(intel_dp->psr.transcoder);
+}
+
+static u32 psr_irq_pre_entry_bit_get(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	return DISPLAY_VER(dev_priv) >= 12 ? TGL_EDP_PSR_PRE_ENTRY :
+		EDP_PSR_PRE_ENTRY(intel_dp->psr.transcoder);
+}
+
+static u32 psr_irq_mask_get(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	return DISPLAY_VER(dev_priv) >= 12 ? TGL_EDP_PSR_MASK :
+		EDP_PSR_MASK(intel_dp->psr.transcoder);
+}
+
 static void psr_irq_control(struct intel_dp *intel_dp)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
-	enum transcoder trans_shift;
 	i915_reg_t imr_reg;
 	u32 mask, val;
 
-	/*
-	 * gen12+ has registers relative to transcoder and one per transcoder
-	 * using the same bit definition: handle it as TRANSCODER_EDP to force
-	 * 0 shift in bit definition
-	 */
-	if (DISPLAY_VER(dev_priv) >= 12) {
-		trans_shift = 0;
+	if (DISPLAY_VER(dev_priv) >= 12)
 		imr_reg = TRANS_PSR_IMR(intel_dp->psr.transcoder);
-	} else {
-		trans_shift = intel_dp->psr.transcoder;
+	else
 		imr_reg = EDP_PSR_IMR;
-	}
 
-	mask = EDP_PSR_ERROR(trans_shift);
+	mask = psr_irq_psr_error_bit_get(intel_dp);
 	if (intel_dp->psr.debug & I915_PSR_DEBUG_IRQ)
-		mask |= EDP_PSR_POST_EXIT(trans_shift) |
-			EDP_PSR_PRE_ENTRY(trans_shift);
+		mask |= psr_irq_post_exit_bit_get(intel_dp) |
+			psr_irq_pre_entry_bit_get(intel_dp);
 
-	/* Warning: it is masking/setting reserved bits too */
 	val = intel_de_read(dev_priv, imr_reg);
-	val &= ~EDP_PSR_TRANS_MASK(trans_shift);
+	val &= ~psr_irq_mask_get(intel_dp);
 	val |= ~mask;
 	intel_de_write(dev_priv, imr_reg, val);
 }
@@ -191,25 +213,21 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	ktime_t time_ns =  ktime_get();
-	enum transcoder trans_shift;
 	i915_reg_t imr_reg;
 
-	if (DISPLAY_VER(dev_priv) >= 12) {
-		trans_shift = 0;
+	if (DISPLAY_VER(dev_priv) >= 12)
 		imr_reg = TRANS_PSR_IMR(intel_dp->psr.transcoder);
-	} else {
-		trans_shift = intel_dp->psr.transcoder;
+	else
 		imr_reg = EDP_PSR_IMR;
-	}
 
-	if (psr_iir & EDP_PSR_PRE_ENTRY(trans_shift)) {
+	if (psr_iir & psr_irq_pre_entry_bit_get(intel_dp)) {
 		intel_dp->psr.last_entry_attempt = time_ns;
 		drm_dbg_kms(&dev_priv->drm,
 			    "[transcoder %s] PSR entry attempt in 2 vblanks\n",
 			    transcoder_name(cpu_transcoder));
 	}
 
-	if (psr_iir & EDP_PSR_POST_EXIT(trans_shift)) {
+	if (psr_iir & psr_irq_post_exit_bit_get(intel_dp)) {
 		intel_dp->psr.last_exit = time_ns;
 		drm_dbg_kms(&dev_priv->drm,
 			    "[transcoder %s] PSR exit completed\n",
@@ -226,7 +244,7 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 		}
 	}
 
-	if (psr_iir & EDP_PSR_ERROR(trans_shift)) {
+	if (psr_iir & psr_irq_psr_error_bit_get(intel_dp)) {
 		u32 val;
 
 		drm_warn(&dev_priv->drm, "[transcoder %s] PSR aux error\n",
@@ -243,7 +261,7 @@ void intel_psr_irq_handler(struct intel_dp *intel_dp, u32 psr_iir)
 		 * or unset irq_aux_error.
 		 */
 		val = intel_de_read(dev_priv, imr_reg);
-		val |= EDP_PSR_ERROR(trans_shift);
+		val |= psr_irq_psr_error_bit_get(intel_dp);
 		intel_de_write(dev_priv, imr_reg, val);
 
 		schedule_work(&intel_dp->psr.work);
@@ -1194,14 +1212,12 @@ static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
 	 * first time that PSR HW tries to activate so lets keep PSR disabled
 	 * to avoid any rendering problems.
 	 */
-	if (DISPLAY_VER(dev_priv) >= 12) {
+	if (DISPLAY_VER(dev_priv) >= 12)
 		val = intel_de_read(dev_priv,
 				    TRANS_PSR_IIR(intel_dp->psr.transcoder));
-		val &= EDP_PSR_ERROR(0);
-	} else {
+	else
 		val = intel_de_read(dev_priv, EDP_PSR_IIR);
-		val &= EDP_PSR_ERROR(intel_dp->psr.transcoder);
-	}
+	val &= psr_irq_psr_error_bit_get(intel_dp);
 	if (val) {
 		intel_dp->psr.sink_not_reliable = true;
 		drm_dbg_kms(&dev_priv->drm,
@@ -2158,9 +2174,9 @@ static void intel_psr_work(struct work_struct *work)
 
 	/*
 	 * We have to make sure PSR is ready for re-enable
-	 * otherwise it keeps disabled until next full enable/disable cycle.
-	 * PSR might take some time to get fully disabled
-	 * and be ready for re-enable.
+	 * otherwise it keeps disabled until next full enable/disable
+	 * cycle. PSR might take some time to get fully disabled and
+	 * be ready for re-enable.
 	 */
 	if (!__psr_wait_for_idle_locked(intel_dp))
 		goto unlock;
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5003a5ffbc6a..3c103aeaa2e4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -2168,10 +2168,18 @@
 #define TRANS_PSR_IIR(tran)			_MMIO_TRANS2(tran, _PSR_IIR_A)
 #define   _EDP_PSR_TRANS_SHIFT(trans)		((trans) == TRANSCODER_EDP ? \
 						 0 : ((trans) - TRANSCODER_A + 1) * 8)
-#define   EDP_PSR_TRANS_MASK(trans)		(0x7 << _EDP_PSR_TRANS_SHIFT(trans))
-#define   EDP_PSR_ERROR(trans)			(0x4 << _EDP_PSR_TRANS_SHIFT(trans))
-#define   EDP_PSR_POST_EXIT(trans)		(0x2 << _EDP_PSR_TRANS_SHIFT(trans))
-#define   EDP_PSR_PRE_ENTRY(trans)		(0x1 << _EDP_PSR_TRANS_SHIFT(trans))
+#define   TGL_EDP_PSR_MASK			(0x7)
+#define   TGL_EDP_PSR_ERROR			(1 << 2)
+#define   TGL_EDP_PSR_POST_EXIT			(1 << 1)
+#define   TGL_EDP_PSR_PRE_ENTRY			(1 << 0)
+#define   EDP_PSR_MASK(trans)			(TGL_EDP_PSR_MASK <<	\
+						 _EDP_PSR_TRANS_SHIFT(trans))
+#define   EDP_PSR_ERROR(trans)			(TGL_EDP_PSR_ERROR <<	\
+						 _EDP_PSR_TRANS_SHIFT(trans))
+#define   EDP_PSR_POST_EXIT(trans)		(TGL_EDP_PSR_POST_EXIT << \
+						 _EDP_PSR_TRANS_SHIFT(trans))
+#define   EDP_PSR_PRE_ENTRY(trans)		(TGL_EDP_PSR_PRE_ENTRY << \
+						 _EDP_PSR_TRANS_SHIFT(trans))
 
 #define _SRD_AUX_DATA_A				0x60814
 #define _SRD_AUX_DATA_EDP			0x6f814
-- 
2.34.1

