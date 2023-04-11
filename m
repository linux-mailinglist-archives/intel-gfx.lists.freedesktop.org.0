Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC856DE488
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Apr 2023 21:14:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E11C10E61D;
	Tue, 11 Apr 2023 19:14:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1064410E614
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Apr 2023 19:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681240481; x=1712776481;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9F/DYWhPMbQVIOMxE0n5G9uPnStfy2dJD4guw5Cw71c=;
 b=Y8R3s75RBvDPPrwpTZsFHuI3Fy6UUjq1MR7PGSwiaI1gGwUruVPAuwhp
 crCjY7BWehgv4zqrRTh6uVphXT/AW67LMSen9xB0kcJDdRhvo3rT160qm
 g0tc/hg8IRpMn7UqHueYRPMSceuilcYQ7oVtLAF8JfFfX+WNCH6OL1g3+
 3wOTnIBI6L/fIwYQlo4O1ntusLEsZbfsKMRWMHkuXeYPLt8nSaFbpSBGV
 AFyc6pjXS4kLmsRGjh4P5KZS4nbSqxBAC898lrnCEY9qbJq1pjwbPILr9
 ybAwffGH88VDXBr/dP7zScD9Y81rnnUKTjtbqDxhEZjMHTo8zq6dueH0t w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="341202019"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="341202019"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2023 12:14:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10677"; a="832446502"
X-IronPort-AV: E=Sophos;i="5.98,336,1673942400"; d="scan'208";a="832446502"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 11 Apr 2023 12:14:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Apr 2023 22:14:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Apr 2023 22:14:24 +0300
Message-Id: <20230411191429.29895-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411191429.29895-1-ville.syrjala@linux.intel.com>
References: <20230411191429.29895-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 3/8] drm/i915/psr: Clean up PSR register
 defininitions
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Use REG_BIT() & co. to make the PSR register definitions
nicer.

v2: Rebase due to intel_psr_regs.h

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c      |  34 ++-
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 197 +++++++++---------
 2 files changed, 116 insertions(+), 115 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 6badfff2b4a2..d9d9373a6028 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -419,7 +419,7 @@ static u32 intel_psr1_get_tp_time(struct intel_dp *intel_dp)
 	u32 val = 0;
 
 	if (DISPLAY_VER(dev_priv) >= 11)
-		val |= EDP_PSR_TP4_TIME_0US;
+		val |= EDP_PSR_TP4_TIME_0us;
 
 	if (dev_priv->params.psr_safest_params) {
 		val |= EDP_PSR_TP1_TIME_2500us;
@@ -448,9 +448,9 @@ static u32 intel_psr1_get_tp_time(struct intel_dp *intel_dp)
 check_tp3_sel:
 	if (intel_dp_source_supports_tps3(dev_priv) &&
 	    drm_dp_tps3_supported(intel_dp->dpcd))
-		val |= EDP_PSR_TP1_TP3_SEL;
+		val |= EDP_PSR_TP_TP1_TP3;
 	else
-		val |= EDP_PSR_TP1_TP2_SEL;
+		val |= EDP_PSR_TP_TP1_TP2;
 
 	return val;
 }
@@ -479,9 +479,9 @@ static void hsw_activate_psr1(struct intel_dp *intel_dp)
 	u32 max_sleep_time = 0x1f;
 	u32 val = EDP_PSR_ENABLE;
 
-	val |= psr_compute_idle_frames(intel_dp) << EDP_PSR_IDLE_FRAME_SHIFT;
+	val |= EDP_PSR_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
 
-	val |= max_sleep_time << EDP_PSR_MAX_SLEEP_TIME_SHIFT;
+	val |= EDP_PSR_MAX_SLEEP_TIME(max_sleep_time);
 	if (IS_HASWELL(dev_priv))
 		val |= EDP_PSR_MIN_LINK_ENTRY_TIME_8_LINES;
 
@@ -536,7 +536,7 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	u32 val = EDP_PSR2_ENABLE;
 
-	val |= psr_compute_idle_frames(intel_dp) << EDP_PSR2_IDLE_FRAME_SHIFT;
+	val |= EDP_PSR2_IDLE_FRAMES(psr_compute_idle_frames(intel_dp));
 
 	if (DISPLAY_VER(dev_priv) <= 13 && !IS_ALDERLAKE_P(dev_priv))
 		val |= EDP_SU_TRACK_ENABLE;
@@ -570,15 +570,13 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
 		 * Still using the default IO_BUFFER_WAKE and FAST_WAKE, see
 		 * comments bellow for more information
 		 */
-		u32 tmp;
+		int tmp;
 
 		tmp = map[intel_dp->psr.io_wake_lines - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES];
-		tmp = tmp << TGL_EDP_PSR2_IO_BUFFER_WAKE_SHIFT;
-		val |= tmp;
+		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(tmp + TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES);
 
 		tmp = map[intel_dp->psr.fast_wake_lines - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES];
-		tmp = tmp << TGL_EDP_PSR2_FAST_WAKE_MIN_SHIFT;
-		val |= tmp;
+		val |= TGL_EDP_PSR2_FAST_WAKE(tmp + TGL_EDP_PSR2_FAST_WAKE_MIN_LINES);
 	} else if (DISPLAY_VER(dev_priv) >= 12) {
 		val |= TGL_EDP_PSR2_IO_BUFFER_WAKE(intel_dp->psr.io_wake_lines);
 		val |= TGL_EDP_PSR2_FAST_WAKE(intel_dp->psr.fast_wake_lines);
@@ -634,9 +632,9 @@ static void psr2_program_idle_frames(struct intel_dp *intel_dp,
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	idle_frames <<=  EDP_PSR2_IDLE_FRAME_SHIFT;
 	intel_de_rmw(dev_priv, EDP_PSR2_CTL(intel_dp->psr.transcoder),
-		     EDP_PSR2_IDLE_FRAME_MASK, idle_frames);
+		     EDP_PSR2_IDLE_FRAMES_MASK,
+		     EDP_PSR2_IDLE_FRAMES(idle_frames));
 }
 
 static void tgl_psr2_enable_dc3co(struct intel_dp *intel_dp)
@@ -1107,8 +1105,7 @@ void intel_psr_get_config(struct intel_encoder *encoder,
 
 	if (DISPLAY_VER(dev_priv) >= 12) {
 		val = intel_de_read(dev_priv, TRANS_EXITLINE(intel_dp->psr.transcoder));
-		val &= EXITLINE_MASK;
-		pipe_config->dc3co_exitline = val;
+		pipe_config->dc3co_exitline = REG_FIELD_GET(EXITLINE_MASK, val);
 	}
 unlock:
 	mutex_unlock(&intel_dp->psr.lock);
@@ -2737,8 +2734,7 @@ psr_source_status(struct intel_dp *intel_dp, struct seq_file *m)
 		};
 		val = intel_de_read(dev_priv,
 				    EDP_PSR_STATUS(intel_dp->psr.transcoder));
-		status_val = (val & EDP_PSR_STATUS_STATE_MASK) >>
-			      EDP_PSR_STATUS_STATE_SHIFT;
+		status_val = REG_FIELD_GET(EDP_PSR_STATUS_STATE_MASK, val);
 		if (status_val < ARRAY_SIZE(live_status))
 			status = live_status[status_val];
 	}
@@ -2800,8 +2796,8 @@ static int intel_psr_status(struct seq_file *m, struct intel_dp *intel_dp)
 	if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
 		val = intel_de_read(dev_priv,
 				    EDP_PSR_PERF_CNT(intel_dp->psr.transcoder));
-		val &= EDP_PSR_PERF_CNT_MASK;
-		seq_printf(m, "Performance counter: %u\n", val);
+		seq_printf(m, "Performance counter: %u\n",
+			   REG_FIELD_GET(EDP_PSR_PERF_CNT_MASK, val));
 	}
 
 	if (psr->debug & I915_PSR_DEBUG_IRQ) {
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 958d8cabc44b..4cef32f47402 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -22,30 +22,36 @@
 #define _SRD_CTL_A				0x60800
 #define _SRD_CTL_EDP				0x6f800
 #define EDP_PSR_CTL(tran)			_MMIO_TRANS2(tran, _SRD_CTL_A)
-#define   EDP_PSR_ENABLE			(1 << 31)
-#define   BDW_PSR_SINGLE_FRAME			(1 << 30)
-#define   EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK	(1 << 29) /* SW can't modify */
-#define   EDP_PSR_LINK_STANDBY			(1 << 27)
-#define   EDP_PSR_MIN_LINK_ENTRY_TIME_MASK	(3 << 25)
-#define   EDP_PSR_MIN_LINK_ENTRY_TIME_8_LINES	(0 << 25)
-#define   EDP_PSR_MIN_LINK_ENTRY_TIME_4_LINES	(1 << 25)
-#define   EDP_PSR_MIN_LINK_ENTRY_TIME_2_LINES	(2 << 25)
-#define   EDP_PSR_MIN_LINK_ENTRY_TIME_0_LINES	(3 << 25)
-#define   EDP_PSR_MAX_SLEEP_TIME_SHIFT		20
-#define   EDP_PSR_SKIP_AUX_EXIT			(1 << 12)
-#define   EDP_PSR_TP1_TP2_SEL			(0 << 11)
-#define   EDP_PSR_TP1_TP3_SEL			(1 << 11)
-#define   EDP_PSR_CRC_ENABLE			(1 << 10) /* BDW+ */
-#define   EDP_PSR_TP2_TP3_TIME_500us		(0 << 8)
-#define   EDP_PSR_TP2_TP3_TIME_100us		(1 << 8)
-#define   EDP_PSR_TP2_TP3_TIME_2500us		(2 << 8)
-#define   EDP_PSR_TP2_TP3_TIME_0us		(3 << 8)
-#define   EDP_PSR_TP4_TIME_0US			(3 << 6) /* ICL+ */
-#define   EDP_PSR_TP1_TIME_500us		(0 << 4)
-#define   EDP_PSR_TP1_TIME_100us		(1 << 4)
-#define   EDP_PSR_TP1_TIME_2500us		(2 << 4)
-#define   EDP_PSR_TP1_TIME_0us			(3 << 4)
-#define   EDP_PSR_IDLE_FRAME_SHIFT		0
+#define   EDP_PSR_ENABLE			REG_BIT(31)
+#define   BDW_PSR_SINGLE_FRAME			REG_BIT(30)
+#define   EDP_PSR_RESTORE_PSR_ACTIVE_CTX_MASK	REG_BIT(29) /* SW can't modify */
+#define   EDP_PSR_LINK_STANDBY			REG_BIT(27)
+#define   EDP_PSR_MIN_LINK_ENTRY_TIME_MASK	REG_GENMASK(26, 25)
+#define   EDP_PSR_MIN_LINK_ENTRY_TIME_8_LINES	REG_FIELD_PREP(EDP_PSR_MIN_LINK_ENTRY_TIME_MASK, 0)
+#define   EDP_PSR_MIN_LINK_ENTRY_TIME_4_LINES	REG_FIELD_PREP(EDP_PSR_MIN_LINK_ENTRY_TIME_MASK, 1)
+#define   EDP_PSR_MIN_LINK_ENTRY_TIME_2_LINES	REG_FIELD_PREP(EDP_PSR_MIN_LINK_ENTRY_TIME_MASK, 2)
+#define   EDP_PSR_MIN_LINK_ENTRY_TIME_0_LINES	REG_FIELD_PREP(EDP_PSR_MIN_LINK_ENTRY_TIME_MASK, 3)
+#define   EDP_PSR_MAX_SLEEP_TIME_MASK		REG_GENMASK(24, 20)
+#define   EDP_PSR_MAX_SLEEP_TIME(x)		REG_FIELD_PREP(EDP_PSR_MAX_SLEEP_TIME_MASK, (x))
+#define   EDP_PSR_SKIP_AUX_EXIT			REG_BIT(12)
+#define   EDP_PSR_TP_MASK			REG_BIT(11)
+#define   EDP_PSR_TP_TP1_TP2			REG_FIELD_PREP(EDP_PSR_TP_MASK, 0)
+#define   EDP_PSR_TP_TP1_TP3			REG_FIELD_PREP(EDP_PSR_TP_MASK, 1)
+#define   EDP_PSR_CRC_ENABLE			REG_BIT(10) /* BDW+ */
+#define   EDP_PSR_TP2_TP3_TIME_MASK		REG_GENMASK(9, 8)
+#define   EDP_PSR_TP2_TP3_TIME_500us		REG_FIELD_PREP(EDP_PSR_TP2_TP3_TIME_MASK, 0)
+#define   EDP_PSR_TP2_TP3_TIME_100us		REG_FIELD_PREP(EDP_PSR_TP2_TP3_TIME_MASK, 1)
+#define   EDP_PSR_TP2_TP3_TIME_2500us		REG_FIELD_PREP(EDP_PSR_TP2_TP3_TIME_MASK, 2)
+#define   EDP_PSR_TP2_TP3_TIME_0us		REG_FIELD_PREP(EDP_PSR_TP2_TP3_TIME_MASK, 3)
+#define   EDP_PSR_TP4_TIME_MASK			REG_GENMASK(7, 6)
+#define   EDP_PSR_TP4_TIME_0us			REG_FIELD_PREP(EDP_PSR_TP4_TIME_MASK, 3) /* ICL+ */
+#define   EDP_PSR_TP1_TIME_MASK			REG_GENMASK(5, 4)
+#define   EDP_PSR_TP1_TIME_500us		REG_FIELD_PREP(EDP_PSR_TP1_TIME_MASK, 0)
+#define   EDP_PSR_TP1_TIME_100us		REG_FIELD_PREP(EDP_PSR_TP1_TIME_MASK, 1)
+#define   EDP_PSR_TP1_TIME_2500us		REG_FIELD_PREP(EDP_PSR_TP1_TIME_MASK, 2)
+#define   EDP_PSR_TP1_TIME_0us			REG_FIELD_PREP(EDP_PSR_TP1_TIME_MASK, 3)
+#define   EDP_PSR_IDLE_FRAMES_MASK		REG_GENMASK(3, 0)
+#define   EDP_PSR_IDLE_FRAMES(x)		REG_FIELD_PREP(EDP_PSR_IDLE_FRAMES_MASK, (x))
 
 /*
  * Until TGL, IMR/IIR are fixed at 0x648xx. On TGL+ those registers are relative
@@ -80,81 +86,80 @@
 #define _SRD_STATUS_A				0x60840
 #define _SRD_STATUS_EDP				0x6f840
 #define EDP_PSR_STATUS(tran)			_MMIO_TRANS2(tran, _SRD_STATUS_A)
-#define   EDP_PSR_STATUS_STATE_MASK		(7 << 29)
-#define   EDP_PSR_STATUS_STATE_SHIFT		29
-#define   EDP_PSR_STATUS_STATE_IDLE		(0 << 29)
-#define   EDP_PSR_STATUS_STATE_SRDONACK		(1 << 29)
-#define   EDP_PSR_STATUS_STATE_SRDENT		(2 << 29)
-#define   EDP_PSR_STATUS_STATE_BUFOFF		(3 << 29)
-#define   EDP_PSR_STATUS_STATE_BUFON		(4 << 29)
-#define   EDP_PSR_STATUS_STATE_AUXACK		(5 << 29)
-#define   EDP_PSR_STATUS_STATE_SRDOFFACK	(6 << 29)
-#define   EDP_PSR_STATUS_LINK_MASK		(3 << 26)
-#define   EDP_PSR_STATUS_LINK_FULL_OFF		(0 << 26)
-#define   EDP_PSR_STATUS_LINK_FULL_ON		(1 << 26)
-#define   EDP_PSR_STATUS_LINK_STANDBY		(2 << 26)
-#define   EDP_PSR_STATUS_MAX_SLEEP_TIMER_SHIFT	20
-#define   EDP_PSR_STATUS_MAX_SLEEP_TIMER_MASK	0x1f
-#define   EDP_PSR_STATUS_COUNT_SHIFT		16
-#define   EDP_PSR_STATUS_COUNT_MASK		0xf
-#define   EDP_PSR_STATUS_AUX_ERROR		(1 << 15)
-#define   EDP_PSR_STATUS_AUX_SENDING		(1 << 12)
-#define   EDP_PSR_STATUS_SENDING_IDLE		(1 << 9)
-#define   EDP_PSR_STATUS_SENDING_TP2_TP3	(1 << 8)
-#define   EDP_PSR_STATUS_SENDING_TP1		(1 << 4)
-#define   EDP_PSR_STATUS_IDLE_MASK		0xf
+#define   EDP_PSR_STATUS_STATE_MASK		REG_GENMASK(31, 29)
+#define   EDP_PSR_STATUS_STATE_IDLE		REG_FIELD_PREP(EDP_PSR_STATUS_STATE_MASK, 0)
+#define   EDP_PSR_STATUS_STATE_SRDONACK		REG_FIELD_PREP(EDP_PSR_STATUS_STATE_MASK, 1)
+#define   EDP_PSR_STATUS_STATE_SRDENT		REG_FIELD_PREP(EDP_PSR_STATUS_STATE_MASK, 2)
+#define   EDP_PSR_STATUS_STATE_BUFOFF		REG_FIELD_PREP(EDP_PSR_STATUS_STATE_MASK, 3)
+#define   EDP_PSR_STATUS_STATE_BUFON		REG_FIELD_PREP(EDP_PSR_STATUS_STATE_MASK, 4)
+#define   EDP_PSR_STATUS_STATE_AUXACK		REG_FIELD_PREP(EDP_PSR_STATUS_STATE_MASK, 5)
+#define   EDP_PSR_STATUS_STATE_SRDOFFACK	REG_FIELD_PREP(EDP_PSR_STATUS_STATE_MASK, 6)
+#define   EDP_PSR_STATUS_LINK_MASK		REG_GENMASK(27, 26)
+#define   EDP_PSR_STATUS_LINK_FULL_OFF		REG_FIELD_PREP(EDP_PSR_STATUS_LINK_MASK, 0)
+#define   EDP_PSR_STATUS_LINK_FULL_ON		REG_FIELD_PREP(EDP_PSR_STATUS_LINK_MASK, 1)
+#define   EDP_PSR_STATUS_LINK_STANDBY		REG_FIELD_PREP(EDP_PSR_STATUS_LINK_MASK, 2)
+#define   EDP_PSR_STATUS_MAX_SLEEP_TIMER_MASK	REG_GENMASK(24, 20)
+#define   EDP_PSR_STATUS_COUNT_MASK		REG_GENMASK(19, 16)
+#define   EDP_PSR_STATUS_AUX_ERROR		REG_BIT(15)
+#define   EDP_PSR_STATUS_AUX_SENDING		REG_BIT(12)
+#define   EDP_PSR_STATUS_SENDING_IDLE		REG_BIT(9)
+#define   EDP_PSR_STATUS_SENDING_TP2_TP3	REG_BIT(8)
+#define   EDP_PSR_STATUS_SENDING_TP1		REG_BIT(4)
+#define   EDP_PSR_STATUS_IDLE_MASK		REG_GENMASK(3, 0)
 
 #define _SRD_PERF_CNT_A			0x60844
 #define _SRD_PERF_CNT_EDP		0x6f844
 #define EDP_PSR_PERF_CNT(tran)		_MMIO_TRANS2(tran, _SRD_PERF_CNT_A)
-#define   EDP_PSR_PERF_CNT_MASK		0xffffff
+#define   EDP_PSR_PERF_CNT_MASK		REG_GENMASK(23, 0)
 
 /* PSR_MASK on SKL+ */
 #define _SRD_DEBUG_A				0x60860
 #define _SRD_DEBUG_EDP				0x6f860
 #define EDP_PSR_DEBUG(tran)			_MMIO_TRANS2(tran, _SRD_DEBUG_A)
-#define   EDP_PSR_DEBUG_MASK_MAX_SLEEP         (1 << 28)
-#define   EDP_PSR_DEBUG_MASK_LPSP              (1 << 27)
-#define   EDP_PSR_DEBUG_MASK_MEMUP             (1 << 26)
-#define   EDP_PSR_DEBUG_MASK_HPD               (1 << 25)
-#define   EDP_PSR_DEBUG_MASK_DISP_REG_WRITE    (1 << 16) /* Reserved in ICL+ */
-#define   EDP_PSR_DEBUG_EXIT_ON_PIXEL_UNDERRUN (1 << 15) /* SKL+ */
+#define   EDP_PSR_DEBUG_MASK_MAX_SLEEP		REG_BIT(28)
+#define   EDP_PSR_DEBUG_MASK_LPSP		REG_BIT(27)
+#define   EDP_PSR_DEBUG_MASK_MEMUP		REG_BIT(26)
+#define   EDP_PSR_DEBUG_MASK_HPD		REG_BIT(25)
+#define   EDP_PSR_DEBUG_MASK_DISP_REG_WRITE	REG_BIT(16) /* Reserved in ICL+ */
+#define   EDP_PSR_DEBUG_EXIT_ON_PIXEL_UNDERRUN	REG_BIT(15) /* SKL+ */
 
 #define _PSR2_CTL_A				0x60900
 #define _PSR2_CTL_EDP				0x6f900
 #define EDP_PSR2_CTL(tran)			_MMIO_TRANS2(tran, _PSR2_CTL_A)
-#define   EDP_PSR2_ENABLE			(1 << 31)
-#define   EDP_SU_TRACK_ENABLE			(1 << 30) /* up to adl-p */
-#define   TGL_EDP_PSR2_BLOCK_COUNT_NUM_2	(0 << 28)
-#define   TGL_EDP_PSR2_BLOCK_COUNT_NUM_3	(1 << 28)
+#define   EDP_PSR2_ENABLE			REG_BIT(31)
+#define   EDP_SU_TRACK_ENABLE			REG_BIT(30) /* up to adl-p */
+#define   TGL_EDP_PSR2_BLOCK_COUNT_MASK		REG_BIT(28)
+#define   TGL_EDP_PSR2_BLOCK_COUNT_NUM_2	REG_FIELD_PREP(TGL_EDP_PSR2_BLOCK_COUNT_MASK, 0)
+#define   TGL_EDP_PSR2_BLOCK_COUNT_NUM_3	REG_FIELD_PREP(TGL_EDP_PSR2_BLOCK_COUNT_MASK, 1)
 #define   EDP_Y_COORDINATE_ENABLE		REG_BIT(25) /* display 10, 11 and 12 */
 #define   EDP_PSR2_SU_SDP_SCANLINE		REG_BIT(25) /* display 13+ */
-#define   EDP_MAX_SU_DISABLE_TIME(t)		((t) << 20)
-#define   EDP_MAX_SU_DISABLE_TIME_MASK		(0x1f << 20)
+#define   EDP_MAX_SU_DISABLE_TIME_MASK		REG_GENMASK(24, 20)
+#define   EDP_MAX_SU_DISABLE_TIME(t)		REG_FIELD_PREP(EDP_MAX_SU_DISABLE_TIME, (t))
+#define   EDP_PSR2_IO_BUFFER_WAKE_MASK		REG_GENMASK(14, 13)
 #define   EDP_PSR2_IO_BUFFER_WAKE_MAX_LINES	8
-#define   EDP_PSR2_IO_BUFFER_WAKE(lines)	((EDP_PSR2_IO_BUFFER_WAKE_MAX_LINES - (lines)) << 13)
-#define   EDP_PSR2_IO_BUFFER_WAKE_MASK		(3 << 13)
+#define   EDP_PSR2_IO_BUFFER_WAKE(lines)	REG_FIELD_PREP(EDP_PSR2_IO_BUFFER_WAKE_MASK, \
+							       EDP_PSR2_IO_BUFFER_WAKE_MAX_LINES - (lines))
+#define   TGL_EDP_PSR2_IO_BUFFER_WAKE_MASK	REG_GENMASK(15, 13)
 #define   TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES	5
-#define   TGL_EDP_PSR2_IO_BUFFER_WAKE_SHIFT	13
-#define   TGL_EDP_PSR2_IO_BUFFER_WAKE(lines)	(((lines) - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES) << TGL_EDP_PSR2_IO_BUFFER_WAKE_SHIFT)
-#define   TGL_EDP_PSR2_IO_BUFFER_WAKE_MASK	(7 << 13)
+#define   TGL_EDP_PSR2_IO_BUFFER_WAKE(lines)	REG_FIELD_PREP(TGL_EDP_PSR2_IO_BUFFER_WAKE_MASK, \
+							       (lines) - TGL_EDP_PSR2_IO_BUFFER_WAKE_MIN_LINES)
+#define   EDP_PSR2_FAST_WAKE_MASK		REG_GENMASK(12, 11)
 #define   EDP_PSR2_FAST_WAKE_MAX_LINES		8
-#define   EDP_PSR2_FAST_WAKE(lines)		((EDP_PSR2_FAST_WAKE_MAX_LINES - (lines)) << 11)
-#define   EDP_PSR2_FAST_WAKE_MASK		(3 << 11)
+#define   EDP_PSR2_FAST_WAKE(lines)		REG_FIELD_PREP(EDP_PSR2_FAST_WAKE_MASK, \
+							       EDP_PSR2_FAST_WAKE_MAX_LINES - (lines))
+#define   TGL_EDP_PSR2_FAST_WAKE_MASK		REG_GENMASK(12, 10)
 #define   TGL_EDP_PSR2_FAST_WAKE_MIN_LINES	5
-#define   TGL_EDP_PSR2_FAST_WAKE_MIN_SHIFT	10
-#define   TGL_EDP_PSR2_FAST_WAKE(lines)		(((lines) - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES) << TGL_EDP_PSR2_FAST_WAKE_MIN_SHIFT)
-#define   TGL_EDP_PSR2_FAST_WAKE_MASK		(7 << 10)
-#define   EDP_PSR2_TP2_TIME_500us		(0 << 8)
-#define   EDP_PSR2_TP2_TIME_100us		(1 << 8)
-#define   EDP_PSR2_TP2_TIME_2500us		(2 << 8)
-#define   EDP_PSR2_TP2_TIME_50us		(3 << 8)
-#define   EDP_PSR2_TP2_TIME_MASK		(3 << 8)
-#define   EDP_PSR2_FRAME_BEFORE_SU_SHIFT	4
-#define   EDP_PSR2_FRAME_BEFORE_SU_MASK		(0xf << 4)
-#define   EDP_PSR2_FRAME_BEFORE_SU(a)		((a) << 4)
-#define   EDP_PSR2_IDLE_FRAME_MASK		0xf
-#define   EDP_PSR2_IDLE_FRAME_SHIFT		0
+#define   TGL_EDP_PSR2_FAST_WAKE(lines)		REG_FIELD_PREP(TGL_EDP_PSR2_FAST_WAKE_MASK, \
+							       (lines) - TGL_EDP_PSR2_FAST_WAKE_MIN_LINES)
+#define   EDP_PSR2_TP2_TIME_MASK		REG_GENMASK(9, 8)
+#define   EDP_PSR2_TP2_TIME_500us		REG_FIELD_PREP(EDP_PSR2_TP2_TIME_MASK, 0)
+#define   EDP_PSR2_TP2_TIME_100us		REG_FIELD_PREP(EDP_PSR2_TP2_TIME_MASK, 1)
+#define   EDP_PSR2_TP2_TIME_2500us		REG_FIELD_PREP(EDP_PSR2_TP2_TIME_MASK, 2)
+#define   EDP_PSR2_TP2_TIME_50us		REG_FIELD_PREP(EDP_PSR2_TP2_TIME_MASK, 3)
+#define   EDP_PSR2_FRAME_BEFORE_SU_MASK		REG_GENMASK(7, 4)
+#define   EDP_PSR2_FRAME_BEFORE_SU(a)		REG_FIELD_PREP(EDP_PSR2_FRAME_BEFORE_SU_MASK, (a))
+#define   EDP_PSR2_IDLE_FRAMES_MASK		REG_GENMASK(3, 0)
+#define   EDP_PSR2_IDLE_FRAMES(x)		REG_FIELD_PREP(EDP_PSR2_IDLE_FRAMES_MASK, (x))
 
 #define _PSR_EVENT_TRANS_A			0x60848
 #define _PSR_EVENT_TRANS_B			0x61848
@@ -162,22 +167,22 @@
 #define _PSR_EVENT_TRANS_D			0x63848
 #define _PSR_EVENT_TRANS_EDP			0x6f848
 #define PSR_EVENT(tran)				_MMIO_TRANS2(tran, _PSR_EVENT_TRANS_A)
-#define  PSR_EVENT_PSR2_WD_TIMER_EXPIRE		(1 << 17)
-#define  PSR_EVENT_PSR2_DISABLED		(1 << 16)
-#define  PSR_EVENT_SU_DIRTY_FIFO_UNDERRUN	(1 << 15)
-#define  PSR_EVENT_SU_CRC_FIFO_UNDERRUN		(1 << 14)
-#define  PSR_EVENT_GRAPHICS_RESET		(1 << 12)
-#define  PSR_EVENT_PCH_INTERRUPT		(1 << 11)
-#define  PSR_EVENT_MEMORY_UP			(1 << 10)
-#define  PSR_EVENT_FRONT_BUFFER_MODIFY		(1 << 9)
-#define  PSR_EVENT_WD_TIMER_EXPIRE		(1 << 8)
-#define  PSR_EVENT_PIPE_REGISTERS_UPDATE	(1 << 6)
-#define  PSR_EVENT_REGISTER_UPDATE		(1 << 5) /* Reserved in ICL+ */
-#define  PSR_EVENT_HDCP_ENABLE			(1 << 4)
-#define  PSR_EVENT_KVMR_SESSION_ENABLE		(1 << 3)
-#define  PSR_EVENT_VBI_ENABLE			(1 << 2)
-#define  PSR_EVENT_LPSP_MODE_EXIT		(1 << 1)
-#define  PSR_EVENT_PSR_DISABLE			(1 << 0)
+#define  PSR_EVENT_PSR2_WD_TIMER_EXPIRE		REG_BIT(17)
+#define  PSR_EVENT_PSR2_DISABLED		REG_BIT(16)
+#define  PSR_EVENT_SU_DIRTY_FIFO_UNDERRUN	REG_BIT(15)
+#define  PSR_EVENT_SU_CRC_FIFO_UNDERRUN		REG_BIT(14)
+#define  PSR_EVENT_GRAPHICS_RESET		REG_BIT(12)
+#define  PSR_EVENT_PCH_INTERRUPT		REG_BIT(11)
+#define  PSR_EVENT_MEMORY_UP			REG_BIT(10)
+#define  PSR_EVENT_FRONT_BUFFER_MODIFY		REG_BIT(9)
+#define  PSR_EVENT_WD_TIMER_EXPIRE		REG_BIT(8)
+#define  PSR_EVENT_PIPE_REGISTERS_UPDATE	REG_BIT(6)
+#define  PSR_EVENT_REGISTER_UPDATE		REG_BIT(5) /* Reserved in ICL+ */
+#define  PSR_EVENT_HDCP_ENABLE			REG_BIT(4)
+#define  PSR_EVENT_KVMR_SESSION_ENABLE		REG_BIT(3)
+#define  PSR_EVENT_VBI_ENABLE			REG_BIT(2)
+#define  PSR_EVENT_LPSP_MODE_EXIT		REG_BIT(1)
+#define  PSR_EVENT_PSR_DISABLE			REG_BIT(0)
 
 #define _PSR2_STATUS_A				0x60940
 #define _PSR2_STATUS_EDP			0x6f940
-- 
2.39.2

