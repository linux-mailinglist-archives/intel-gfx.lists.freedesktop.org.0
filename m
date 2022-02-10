Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 757774B158A
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 19:50:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAFDF10E951;
	Thu, 10 Feb 2022 18:50:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B311810E951
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 18:50:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644519029; x=1676055029;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VTVuxJM3jBmw7TltORjeLjsnCjJ21b2fdnVFfcx+2dM=;
 b=XL3+JZyM5l9zXLO2mH4wvLQtAdqCQxjVFIsp6hDMPPmt9FlzkOxqwrek
 vQZHhE8oxlfXTGkg9u2RsLTunL/jcFeLj6WlbmXyrY8Nt1OH16uXCx8gr
 08BN0rBqgVDTOwQ2hPl1i3BfKbJHsPR4g9+q91H0/S/9hCEgI0uTeTzFz
 uVUTBKLyzY6rgEeSK1mTBo9LconiXuGg2UdKNaDQe497vdIjuZsBFq2da
 a5z80KeZaxkC5oclHjNk38QvILeBcIab9EfneNkVKEx14M4bHN8BGTx/w
 KxSjesmaIlOj8K4pMHLzFm51m8uj3cDL5/9vnh4gXql1Pe1JZLoY//Hoa Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="335985772"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="335985772"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 10:50:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="701793237"
Received: from afdelosa-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.209.167.175])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 10:50:27 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 10:52:22 -0800
Message-Id: <20220210185223.95399-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/display: Group PSR2 prog sequences
 and workarounds
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

Grouping inside of the same if all the programing sequences and
workarounds of PSR2.
The order of programing changed in intel_psr_enable_source() but
it will not affect PSR2 as at this point PSR2_ENABLE is still disabled.

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 77 ++++++++++++------------
 1 file changed, 37 insertions(+), 40 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index a1a663f362e7d..72bd8d3261e0c 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1069,25 +1069,6 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp)
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
 	u32 mask;
 
-	if (intel_dp->psr.psr2_enabled && DISPLAY_VER(dev_priv) == 9) {
-		i915_reg_t reg = CHICKEN_TRANS(cpu_transcoder);
-		u32 chicken = intel_de_read(dev_priv, reg);
-
-		chicken |= PSR2_VSC_ENABLE_PROG_HEADER |
-			   PSR2_ADD_VERTICAL_LINE_COUNT;
-		intel_de_write(dev_priv, reg, chicken);
-	}
-
-	/*
-	 * Wa_16014451276:adlp
-	 * All supported adlp panels have 1-based X granularity, this may
-	 * cause issues if non-supported panels are used.
-	 */
-	if (IS_ALDERLAKE_P(dev_priv) &&
-	    intel_dp->psr.psr2_enabled)
-		intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
-			     ADLP_1_BASED_X_GRANULARITY);
-
 	/*
 	 * Per Spec: Avoid continuous PSR exit by masking MEMUP and HPD also
 	 * mask LPSP to avoid dependency on other drivers that might block
@@ -1126,18 +1107,33 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp)
 			     intel_dp->psr.psr2_sel_fetch_enabled ?
 			     IGNORE_PSR2_HW_TRACKING : 0);
 
-	/* Wa_16011168373:adl-p */
-	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) &&
-	    intel_dp->psr.psr2_enabled)
-		intel_de_rmw(dev_priv,
-			     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
-			     TRANS_SET_CONTEXT_LATENCY_MASK,
-			     TRANS_SET_CONTEXT_LATENCY_VALUE(1));
+	if (intel_dp->psr.psr2_enabled) {
+		if (DISPLAY_VER(dev_priv) == 9)
+			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
+				     PSR2_VSC_ENABLE_PROG_HEADER |
+				     PSR2_ADD_VERTICAL_LINE_COUNT);
 
-	/* Wa_16012604467:adlp */
-	if (IS_ALDERLAKE_P(dev_priv) && intel_dp->psr.psr2_enabled)
-		intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
-			     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
+		/*
+		 * Wa_16014451276:adlp
+		 * All supported adlp panels have 1-based X granularity, this may
+		 * cause issues if non-supported panels are used.
+		 */
+		if (IS_ALDERLAKE_P(dev_priv))
+			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
+				     ADLP_1_BASED_X_GRANULARITY);
+
+		/* Wa_16011168373:adl-p */
+		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+			intel_de_rmw(dev_priv,
+				     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
+				     TRANS_SET_CONTEXT_LATENCY_MASK,
+				     TRANS_SET_CONTEXT_LATENCY_VALUE(1));
+
+		/* Wa_16012604467:adlp */
+		if (IS_ALDERLAKE_P(dev_priv))
+			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
+				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
+	}
 }
 
 static bool psr_interrupt_error_check(struct intel_dp *intel_dp)
@@ -1290,17 +1286,18 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
 			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
 
-	/* Wa_16011168373:adl-p */
-	if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) &&
-	    intel_dp->psr.psr2_enabled)
-		intel_de_rmw(dev_priv,
-			     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
-			     TRANS_SET_CONTEXT_LATENCY_MASK, 0);
+	if (intel_dp->psr.psr2_enabled) {
+		/* Wa_16011168373:adl-p */
+		if (IS_ADLP_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
+			intel_de_rmw(dev_priv,
+				     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
+				     TRANS_SET_CONTEXT_LATENCY_MASK, 0);
 
-	/* Wa_16012604467:adlp */
-	if (IS_ALDERLAKE_P(dev_priv) && intel_dp->psr.psr2_enabled)
-		intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
-			     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
+		/* Wa_16012604467:adlp */
+		if (IS_ALDERLAKE_P(dev_priv))
+			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
+				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
+	}
 
 	intel_snps_phy_update_psr_power_state(dev_priv, phy, false);
 
-- 
2.35.1

