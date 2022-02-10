Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BACE54B158B
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Feb 2022 19:50:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBA8210E94E;
	Thu, 10 Feb 2022 18:50:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 853B410E951
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 18:50:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644519030; x=1676055030;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CRJKGm9H519KtmYek4wLgK4pci7OjjE1KLv1zXIYzPg=;
 b=O/tCnrQh9ggqfhQxkDw/h257/uWAHZrWvEn7zP2PDtCy7hbycykPrpG+
 cmeapOWIi1kfsMhSQSi3MNc+OoB0j3d0J5t3uExBhTms8nMTPSAw+v16W
 NksNljaIk3VJgZFNUIezVeRXSluxAyb/SekeAjM+96R71lUYj+fLHscj/
 iMIWz4iqX7lWkCNKty2ECgja1X9r54Vnh9GYqYrtkLgandrRbNy57Up84
 J8hEmcuGtGervUSH64dyvGJRQpf+7f+hne+tkqgOvdUq5V4dGPZEWcdOV
 pRTuCZxQNXXk0YjLoXF6tajXx14mDDOaUcncRvk13gU9cKfMTcBHpIs5f A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="335985775"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="335985775"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 10:50:30 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="701793253"
Received: from afdelosa-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.209.167.175])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 10:50:29 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Feb 2022 10:52:23 -0800
Message-Id: <20220210185223.95399-2-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220210185223.95399-1-jose.souza@intel.com>
References: <20220210185223.95399-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/display: Implement Wa_16013835468
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

PSR2 workaround required when mode has delayed vblank.

BSpec: 52890
BSpec: 49421
Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 40 ++++++++++++++++++++++--
 drivers/gpu/drm/i915/i915_reg.h          | 13 +++++---
 2 files changed, 46 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 72bd8d3261e0c..2e0b092f4b6be 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1063,7 +1063,23 @@ static void intel_psr_activate(struct intel_dp *intel_dp)
 	intel_dp->psr.active = true;
 }
 
-static void intel_psr_enable_source(struct intel_dp *intel_dp)
+static u32 wa_16013835468_bit_get(struct intel_dp *intel_dp)
+{
+	switch (intel_dp->psr.pipe) {
+	case PIPE_A:
+		return LATENCY_REPORTING_REMOVED_PIPE_A;
+	case PIPE_B:
+		return LATENCY_REPORTING_REMOVED_PIPE_B;
+	case PIPE_C:
+		return LATENCY_REPORTING_REMOVED_PIPE_C;
+	default:
+		MISSING_CASE(intel_dp->psr.pipe);
+		return 0;
+	}
+}
+
+static void intel_psr_enable_source(struct intel_dp *intel_dp,
+				    const struct intel_crtc_state *crtc_state)
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 	enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
@@ -1133,6 +1149,20 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp)
 		if (IS_ALDERLAKE_P(dev_priv))
 			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
+
+		/* Wa_16013835468:tgl[b0+], dg1 */
+		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_B0, STEP_FOREVER) ||
+		    IS_DG1(dev_priv)) {
+			u16 vtotal, vblank;
+
+			vtotal = crtc_state->uapi.adjusted_mode.crtc_vtotal -
+				 crtc_state->uapi.adjusted_mode.crtc_vdisplay;
+			vblank = crtc_state->uapi.adjusted_mode.crtc_vblank_end -
+				 crtc_state->uapi.adjusted_mode.crtc_vblank_start;
+			if (vblank > vtotal)
+				intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
+					     wa_16013835468_bit_get(intel_dp));
+		}
 	}
 }
 
@@ -1198,7 +1228,7 @@ static void intel_psr_enable_locked(struct intel_dp *intel_dp,
 	intel_write_dp_vsc_sdp(encoder, crtc_state, &crtc_state->psr_vsc);
 	intel_snps_phy_update_psr_power_state(dev_priv, phy, true);
 	intel_psr_enable_sink(intel_dp);
-	intel_psr_enable_source(intel_dp);
+	intel_psr_enable_source(intel_dp, crtc_state);
 	intel_dp->psr.enabled = true;
 	intel_dp->psr.paused = false;
 
@@ -1297,6 +1327,12 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 		if (IS_ALDERLAKE_P(dev_priv))
 			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
 				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
+
+		/* Wa_16013835468:tgl[b0+], dg1 */
+		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_B0, STEP_FOREVER) ||
+		    IS_DG1(dev_priv))
+			intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1,
+				     wa_16013835468_bit_get(intel_dp), 0);
 	}
 
 	intel_snps_phy_update_psr_power_state(dev_priv, phy, false);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 87c92314ee269..1cd4056400b63 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6040,11 +6040,14 @@
 #define HSW_NDE_RSTWRN_OPT	_MMIO(0x46408)
 #define  RESET_PCH_HANDSHAKE_ENABLE	(1 << 4)
 
-#define GEN8_CHICKEN_DCPR_1		_MMIO(0x46430)
-#define   SKL_SELECT_ALTERNATE_DC_EXIT	REG_BIT(30)
-#define   ICL_DELAY_PMRSP		REG_BIT(22)
-#define   DISABLE_FLR_SRC		REG_BIT(15)
-#define   MASK_WAKEMEM			REG_BIT(13)
+#define GEN8_CHICKEN_DCPR_1			_MMIO(0x46430)
+#define   SKL_SELECT_ALTERNATE_DC_EXIT		REG_BIT(30)
+#define   LATENCY_REPORTING_REMOVED_PIPE_C	REG_BIT(25)
+#define   LATENCY_REPORTING_REMOVED_PIPE_B	REG_BIT(24)
+#define   LATENCY_REPORTING_REMOVED_PIPE_A	REG_BIT(23)
+#define   ICL_DELAY_PMRSP			REG_BIT(22)
+#define   DISABLE_FLR_SRC			REG_BIT(15)
+#define   MASK_WAKEMEM				REG_BIT(13)
 
 #define GEN11_CHICKEN_DCPR_2			_MMIO(0x46434)
 #define   DCPR_MASK_MAXLATENCY_MEMUP_CLR	REG_BIT(27)
-- 
2.35.1

