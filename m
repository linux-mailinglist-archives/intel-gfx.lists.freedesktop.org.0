Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D8B84115A
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 18:55:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5E2D112A51;
	Mon, 29 Jan 2024 17:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1357112A51
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jan 2024 17:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706550931; x=1738086931;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qZ/SZIBrHeXAxbyp6/bE6FZgOSL6XPfz3Ds/QWV37Nc=;
 b=kSDvre5bbYKhJSJoYe+Ue13YAM1fK9olLplDsqhBTOT7iWeKEESVcMwW
 fwUiYyf0LsN3PM76JFYi1L7x4rhGDaGxfgHTiBlS6fPBto7QnAQLYkmnT
 S6fdImUb/Gg54PVWdYL0msNWU7SJnZ+80/A1znmrw8dulOr2Z3HPI4sdL
 WBm8orPSpzNe2aH3ZxIe8tJ528zYQc9+f/NXb+KeOvBRbbQK5XF9ejubb
 K/g4u6gyD2gAtKww2+5mIzrM4TMsoDlt0JCx8Ux5ZAqSU3bpwYZzPVC3J
 Uu1V3R3y1wbHEvuz7CQYmOQuk4RG2MeNpioQtkLmmVISe3YMMRT03R1ob w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="10407773"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="10407773"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 09:55:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="931157877"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="931157877"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 09:55:17 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/6] drm/i915/adlp: Add MST FEC BS jitter WA (Wa_14013163432)
Date: Mon, 29 Jan 2024 19:55:28 +0200
Message-Id: <20240129175533.904590-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240129175533.904590-1-imre.deak@intel.com>
References: <20240129175533.904590-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Add a workaround to fix BS (blank start) to BS jitter issues on MST
links when FEC is enabled. Neither Bspec requires this nor Windows
clears the WA when disabling the output - presumedly because
CHICKEN_MISC_3 gets reset after disabling the pipe/transcoder - so
follow suit.

Bspec: 50050, 55424

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 24 +++++++++++++++++++++
 drivers/gpu/drm/i915/i915_reg.h             |  3 +++
 2 files changed, 27 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 5fa25a5a36b55..22c1759f912db 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1106,6 +1106,28 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
 	intel_ddi_set_dp_msa(pipe_config, conn_state);
 }
 
+static void enable_bs_jitter_was(const struct intel_crtc_state *crtc_state)
+{
+	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
+	u32 clear = 0;
+	u32 set = 0;
+
+	if (!IS_ALDERLAKE_P(i915))
+		return;
+
+	if (!IS_DISPLAY_STEP(i915, STEP_D0, STEP_FOREVER))
+		return;
+
+	/* Wa_14013163432:adlp */
+	if (crtc_state->fec_enable || intel_dp_is_uhbr(crtc_state))
+		set |= DP_MST_FEC_BS_JITTER_WA(crtc_state->cpu_transcoder);
+
+	if (!clear && !set)
+		return;
+
+	intel_de_rmw(i915, CHICKEN_MISC_3, clear, set);
+}
+
 static void intel_mst_enable_dp(struct intel_atomic_state *state,
 				struct intel_encoder *encoder,
 				const struct intel_crtc_state *pipe_config,
@@ -1134,6 +1156,8 @@ static void intel_mst_enable_dp(struct intel_atomic_state *state,
 			       TRANS_DP2_VFREQ_PIXEL_CLOCK(crtc_clock_hz & 0xffffff));
 	}
 
+	enable_bs_jitter_was(pipe_config);
+
 	intel_ddi_enable_transcoder_func(encoder, pipe_config);
 
 	clear_act_sent(encoder, pipe_config);
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 75bc08081fce9..67b7d02ea37bf 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4555,6 +4555,9 @@
 #define   GLK_CL1_PWR_DOWN		REG_BIT(11)
 #define   GLK_CL0_PWR_DOWN		REG_BIT(10)
 
+#define CHICKEN_MISC_3		_MMIO(0x42088)
+#define   DP_MST_FEC_BS_JITTER_WA(trans)	REG_BIT(0 + (trans) - TRANSCODER_A)
+
 #define CHICKEN_MISC_4		_MMIO(0x4208c)
 #define   CHICKEN_FBC_STRIDE_OVERRIDE	REG_BIT(13)
 #define   CHICKEN_FBC_STRIDE_MASK	REG_GENMASK(12, 0)
-- 
2.39.2

