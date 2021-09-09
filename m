Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E894405FD0
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Sep 2021 01:02:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F8006E93F;
	Thu,  9 Sep 2021 23:02:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D213E6E943
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 23:02:08 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="243251440"
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="243251440"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 16:02:08 -0700
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="466798513"
Received: from rsalmerx-mobl.amr.corp.intel.com (HELO josouza-mobl2.intel.com)
 ([10.209.166.193])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 16:02:07 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Thu,  9 Sep 2021 16:07:22 -0700
Message-Id: <20210909230725.33735-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210909230725.33735-1-jose.souza@intel.com>
References: <20210909230725.33735-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/5] drm/i915/display/adlp: Add new PSR2
 workarounds
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

Wa_16014451276 fixes the starting coordinate for PSR2 selective
updates. CHICKEN_TRANS definition of the workaround bit has a wrong
name based on workaround definition and HSD.

Wa_14014971508 allows the screen to continue to be updated when
coming back from DC5/DC6 and SF_SINGLE_FULL_FRAME bit is not kept
set in PSR2_MAN_TRK_CTL.

Wa_16012604467 fixes underruns when exiting PSR2 when it is in one
of its internal states.

Wa_14014971508 is still in pending status in BSpec but by
the time this is reviewed and ready to be merged it will be finalized.

BSpec: 54369
BSpec: 50054
Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 23 ++++++++++++++++++++++-
 drivers/gpu/drm/i915/i915_reg.h          |  4 ++++
 2 files changed, 26 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 36816abb3bcc0..92c0b2159559f 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1086,6 +1086,12 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp)
 		intel_de_write(dev_priv, reg, chicken);
 	}
 
+	/* Wa_16014451276:adlp */
+	if (IS_ALDERLAKE_P(dev_priv) &&
+	    intel_dp->psr.psr2_enabled)
+		intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
+			     D13_1_BASED_X_GRANULARITY);
+
 	/*
 	 * Per Spec: Avoid continuous PSR exit by masking MEMUP and HPD also
 	 * mask LPSP to avoid dependency on other drivers that might block
@@ -1131,6 +1137,11 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp)
 			     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
 			     TRANS_SET_CONTEXT_LATENCY_MASK,
 			     TRANS_SET_CONTEXT_LATENCY_VALUE(1));
+
+	/* Wa_16012604467:adlp */
+	if (IS_ALDERLAKE_P(dev_priv) && intel_dp->psr.psr2_enabled)
+		intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
+			     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
 }
 
 static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
@@ -1320,6 +1331,11 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 			     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
 			     TRANS_SET_CONTEXT_LATENCY_MASK, 0);
 
+	/* Wa_16012604467:adlp */
+	if (IS_ALDERLAKE_P(dev_priv) && intel_dp->psr.psr2_enabled)
+		intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
+			     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
+
 	intel_snps_phy_update_psr_power_state(dev_priv, phy, false);
 
 	/* Disable PSR on Sink */
@@ -1488,8 +1504,13 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 	u32 val = PSR2_MAN_TRK_CTL_ENABLE;
 
 	if (full_update) {
+		/*
+		 * Wa_14014971508:adlp
+		 * SINGLE_FULL_FRAME bit is not hold in register so can not be
+		 * restored by DMC, so using CONTINUOS_FULL_FRAME to mimic that
+		 */
 		if (IS_ALDERLAKE_P(dev_priv))
-			val |= ADLP_PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
+			val |= ADLP_PSR2_MAN_TRK_CTL_SF_CONTINUOS_FULL_FRAME;
 		else
 			val |= PSR2_MAN_TRK_CTL_SF_SINGLE_FULL_FRAME;
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index c2853cc005ee6..0de2f7541da6c 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -8235,6 +8235,7 @@ enum {
 #define  VSC_DATA_SEL_SOFTWARE_CONTROL	REG_BIT(25) /* GLK */
 #define  FECSTALL_DIS_DPTSTREAM_DPTTG	REG_BIT(23)
 #define  DDI_TRAINING_OVERRIDE_ENABLE	REG_BIT(19)
+#define  D13_1_BASED_X_GRANULARITY	REG_BIT(18)
 #define  DDI_TRAINING_OVERRIDE_VALUE	REG_BIT(18)
 #define  DDIE_TRAINING_OVERRIDE_ENABLE	REG_BIT(17) /* CHICKEN_TRANS_A only */
 #define  DDIE_TRAINING_OVERRIDE_VALUE	REG_BIT(16) /* CHICKEN_TRANS_A only */
@@ -12789,4 +12790,7 @@ enum skl_power_gate {
 #define CLKREQ_POLICY			_MMIO(0x101038)
 #define  CLKREQ_POLICY_MEM_UP_OVRD	REG_BIT(1)
 
+#define CLKGATE_DIS_MISC			_MMIO(0x46534)
+#define  CLKGATE_DIS_MISC_DMASC_GATING_DIS	REG_BIT(21)
+
 #endif /* _I915_REG_H_ */
-- 
2.33.0

