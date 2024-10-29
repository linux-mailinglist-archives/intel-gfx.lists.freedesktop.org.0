Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CC99B527B
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 20:11:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CC4C10E6E1;
	Tue, 29 Oct 2024 19:11:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bqjlSsbv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2635E10E6E0
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 19:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730229106; x=1761765106;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=wj+/2ye4tEQdzqUyJQtUsF2fdvz7z3+jURZBqywlDUg=;
 b=bqjlSsbvxyR+gLYSWGF8DAy7nKwfoxFdgy/qdY0I9TeVh0ADOyDFJNOH
 v6dtitKcPoy1W7/QZz6Wm+vzIjVLBHqEwSw0xItS67Ws1o+xMxFbPTlHh
 iIzCZ918S784BXAiWaYNgtumgfSrELqq17iQnA6fvoNCw13890AK3NL/v
 RawRoK42Dvkf0x7W7UW2XeiEPODL1B8U4AOZYhk03NI0IMSR3aSON7FRa
 ifWD1pUdPa+oBA6MTzp/nEuA2TPlaNmAKLgd/U3Hlckjwi/bGvxYXBwNo
 rJfdEIPKOZucPRvDZ3axZU5XjHUIxjH8Mp4byGKWKjN8/x9sMskv+k4G7 w==;
X-CSE-ConnectionGUID: HO2Bq1bdQ8aqjuR9Tj5ZhA==
X-CSE-MsgGUID: mPSQ9k3gREK8v9Cq9BW/9w==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29745598"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29745598"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 12:11:46 -0700
X-CSE-ConnectionGUID: 6QjMGZJ1Tx2ilHTp6QQcKQ==
X-CSE-MsgGUID: RSeE77ngRwa27Ky/IfQHOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="86812713"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 12:11:45 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/4] drm/i915/dp: Export intel_ddi_config_transcoder_dp2()
Date: Tue, 29 Oct 2024 21:12:13 +0200
Message-ID: <20241029191215.3889861-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20241029191215.3889861-1-imre.deak@intel.com>
References: <20241029191215.3889861-1-imre.deak@intel.com>
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

Export intel_ddi_config_transcoder_dp2() taken into use by the MST
encoder in the next patch. Move the HAS_DP20() check to the function, so
it doesn't need to be checked for each caller. Besides enabling the DP2
configuration also add a way to disable it, required by the MST slave
transcoder disabling sequence in the next patch.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 15 +++++++++------
 drivers/gpu/drm/i915/display/intel_ddi.h |  3 +++
 2 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6bbfe0762cafa..5ff7d23775d82 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -454,15 +454,19 @@ static u32 bdw_trans_port_sync_master_select(enum transcoder master_transcoder)
 		return master_transcoder + 1;
 }
 
-static void
+void
 intel_ddi_config_transcoder_dp2(struct intel_encoder *encoder,
-				const struct intel_crtc_state *crtc_state)
+				const struct intel_crtc_state *crtc_state,
+				bool enable)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	u32 val = 0;
 
-	if (intel_dp_is_uhbr(crtc_state))
+	if (!HAS_DP20(i915))
+		return;
+
+	if (enable && intel_dp_is_uhbr(crtc_state))
 		val = TRANS_DP2_128B132B_CHANNEL_CODING;
 
 	intel_de_write(i915, TRANS_DP2_CTL(cpu_transcoder), val);
@@ -2549,7 +2553,7 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	/*
 	 * 6.b If DP v2.0/128b mode - Configure TRANS_DP2_CTL register settings.
 	 */
-	intel_ddi_config_transcoder_dp2(encoder, crtc_state);
+	intel_ddi_config_transcoder_dp2(encoder, crtc_state, true);
 
 	/*
 	 * 6.c Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
@@ -2686,8 +2690,7 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 */
 	intel_ddi_enable_transcoder_clock(encoder, crtc_state);
 
-	if (HAS_DP20(dev_priv))
-		intel_ddi_config_transcoder_dp2(encoder, crtc_state);
+	intel_ddi_config_transcoder_dp2(encoder, crtc_state, true);
 
 	/*
 	 * 7.b Configure TRANS_DDI_FUNC_CTL DDI Select, DDI Mode Select & MST
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.h b/drivers/gpu/drm/i915/display/intel_ddi.h
index 1aa2e3a190aee..bf27b2fbb08e9 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.h
+++ b/drivers/gpu/drm/i915/display/intel_ddi.h
@@ -65,6 +65,9 @@ void intel_ddi_disable_transcoder_func(const struct intel_crtc_state *crtc_state
 void intel_ddi_enable_transcoder_clock(struct intel_encoder *encoder,
 				       const struct intel_crtc_state *crtc_state);
 void intel_ddi_disable_transcoder_clock(const  struct intel_crtc_state *crtc_state);
+void intel_ddi_config_transcoder_dp2(struct intel_encoder *encoder,
+				     const struct intel_crtc_state *crtc_state,
+				     bool enable);
 void intel_ddi_wait_for_fec_status(struct intel_encoder *encoder,
 				   const struct intel_crtc_state *crtc_state,
 				   bool enabled);
-- 
2.44.2

