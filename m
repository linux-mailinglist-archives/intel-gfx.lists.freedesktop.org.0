Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10DF95F2982
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Oct 2022 09:20:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B23DE10E212;
	Mon,  3 Oct 2022 07:20:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B514D10E212
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Oct 2022 07:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664781634; x=1696317634;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/wVjGdGvInlIX0C9HjZSt8bmQHzFAqZ3Egdo4Z3jqwE=;
 b=aL9eitxEhp5g0cGvtYTQLhFehjNyQnevipDvFVpxFtuOVORZf/y3M6a4
 isMIQqQF1I/If2d7TkZCOrFwcbl4a4E1aCe+SdLdSzqDLTj1Zpt+AyHUw
 e53CgRaDNr0zBkiG5gb1BIta3Al2HW84w2bmVFdfVfHWtZX7EaC0c1Oe7
 RC3W49TnXlIxoqwRx6NWno0cDY2ca55pEn0GCiDfEZ7ZjgeIsBWmpUzRp
 yTS1UftoLZd4ortXOz5Q1Bx/JJZjLhdgDnbFY6l+1djrO6sHhICOIHIxb
 7yaoNNx+7VHs5u5ixWmKv72LKtZonG6JARPSzQ9ReHGJFIftE72kgdjx7 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="282278863"
X-IronPort-AV: E=Sophos;i="5.93,364,1654585200"; d="scan'208";a="282278863"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 00:20:34 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10488"; a="618635971"
X-IronPort-AV: E=Sophos;i="5.93,364,1654585200"; d="scan'208";a="618635971"
Received: from pschmutz-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.252.60.127])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2022 00:20:32 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 Oct 2022 10:20:11 +0300
Message-Id: <20221003072011.72408-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4] drm/i915/psr: Fix PSR_IMR/IIR field handling
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

v4:
 - Remove EDP from TGL definitions (José)
 - Use REG_BIT and REG_GENMASK (José)
v3:
 - Add separate register field defines (José)
 - Add bit getter functions (José)
v2:
 - Improve commit message (José)

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>

Fixes: 8241cfbe67f4 ("drm/i915/tgl: Access the right register when handling PSR interruptions")
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 78 ++++++++++++++----------
 drivers/gpu/drm/i915/i915_reg.h          | 16 +++--
 2 files changed, 59 insertions(+), 35 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 9def8d9fade6..d4cce627d7a8 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -116,34 +116,56 @@ static bool psr2_global_enabled(struct intel_dp *intel_dp)
 	}
 }
 
+static u32 psr_irq_psr_error_bit_get(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	return DISPLAY_VER(dev_priv) >= 12 ? TGL_PSR_ERROR :
+		EDP_PSR_ERROR(intel_dp->psr.transcoder);
+}
+
+static u32 psr_irq_post_exit_bit_get(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	return DISPLAY_VER(dev_priv) >= 12 ? TGL_PSR_POST_EXIT :
+		EDP_PSR_POST_EXIT(intel_dp->psr.transcoder);
+}
+
+static u32 psr_irq_pre_entry_bit_get(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	return DISPLAY_VER(dev_priv) >= 12 ? TGL_PSR_PRE_ENTRY :
+		EDP_PSR_PRE_ENTRY(intel_dp->psr.transcoder);
+}
+
+static u32 psr_irq_mask_get(struct intel_dp *intel_dp)
+{
+	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
+
+	return DISPLAY_VER(dev_priv) >= 12 ? TGL_PSR_MASK :
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
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 2126e441199d..a175fb1900fe 100644
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
+#define   TGL_PSR_MASK			REG_GENMASK(2, 0)
+#define   TGL_PSR_ERROR			REG_BIT(2)
+#define   TGL_PSR_POST_EXIT		REG_BIT(1)
+#define   TGL_PSR_PRE_ENTRY		REG_BIT(0)
+#define   EDP_PSR_MASK(trans)		(TGL_PSR_MASK <<		\
+					 _EDP_PSR_TRANS_SHIFT(trans))
+#define   EDP_PSR_ERROR(trans)		(TGL_PSR_ERROR <<		\
+					 _EDP_PSR_TRANS_SHIFT(trans))
+#define   EDP_PSR_POST_EXIT(trans)	(TGL_PSR_POST_EXIT <<		\
+					 _EDP_PSR_TRANS_SHIFT(trans))
+#define   EDP_PSR_PRE_ENTRY(trans)	(TGL_PSR_PRE_ENTRY <<		\
+					 _EDP_PSR_TRANS_SHIFT(trans))
 
 #define _SRD_AUX_DATA_A				0x60814
 #define _SRD_AUX_DATA_EDP			0x6f814
-- 
2.34.1

