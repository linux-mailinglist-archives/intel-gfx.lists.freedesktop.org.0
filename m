Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EDCCA224F2
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 21:02:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9537A10E8B8;
	Wed, 29 Jan 2025 20:02:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jIQhS5o0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD09310E8B0;
 Wed, 29 Jan 2025 20:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738180919; x=1769716919;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=M9NJgq1Y1hVQuw72B1H9u6s5rF7eFSlV6YJN6iSDS9U=;
 b=jIQhS5o0WA0z4G0c83ZnDEYfBPBOm4ASLDUM8fOUh+XHVwOQ9H6zr43C
 5GA5WTauAg1aCvvWZRdmqVrox6TRkt96UmBXsFQLFSVZj/Id8TmFYZ2kR
 ZUL8utryhRpVvrxO6rocPeotN/jx6QAVG2OMr8+AJo/DT2Rk+FDY9rQBm
 RMVnQi62O3lsKEY7tDcpQZUZdiN6+EgrppZMn4CHlqJWr3a0ZxBPuF87p
 W+he4LHDSPzz0A9kASoPgX5mBrc4noxOFsdfF58Kw4q3t1PtevxN+p8LW
 V34SNwzgzLoSaUIFqSoSmIA0OqOepoWwD9n1j/KVmWAM+r9Jq4duMUNOh g==;
X-CSE-ConnectionGUID: JKYtW5SwSSCLhw6EdmAYcw==
X-CSE-MsgGUID: kpmqC/Y5SlClBhU5L+B4ZQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11330"; a="38977773"
X-IronPort-AV: E=Sophos;i="6.13,244,1732608000"; d="scan'208";a="38977773"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:46 -0800
X-CSE-ConnectionGUID: ZOdHJTgAQ862biLClJP7WQ==
X-CSE-MsgGUID: ykqZK7/kQDq2a9VQK26PuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113750921"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 12:01:45 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH 17/17] drm/i915/ddi: Unify the platform specific functions
 enabling a port
Date: Wed, 29 Jan 2025 22:02:21 +0200
Message-ID: <20250129200221.2508101-18-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250129200221.2508101-1-imre.deak@intel.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
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

The functions enabling a port (as part of link training) for MTL+ and
earlier platforms only differ by extra steps on MTL+:
- enable the D2D link
- set the link parameters
- configure the PORT_BUF_CTL1 register

and an extra step on earlier platforms:
- apply an ADLP TypeC workaround

All the extra steps are already/can be skipped on unrelated platforms.
Combine the two functions accounting for the above differences, removing
the duplication.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 52 ++++--------------------
 1 file changed, 8 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index a2d82a4c4aa77..e8bea49a27dbc 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2721,7 +2721,7 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
 	 * stream or multi-stream master transcoder" can just be performed
 	 * unconditionally here.
 	 *
-	 * mtl_ddi_prepare_link_retrain() that is called by
+	 * intel_ddi_prepare_link_retrain() that is called by
 	 * intel_dp_start_link_train() will execute steps: 6.d, 6.f, 6.g, 6.h,
 	 * 6.i and 6.j
 	 *
@@ -3713,8 +3713,8 @@ static void adlp_tbt_to_dp_alt_switch_wa(struct intel_encoder *encoder)
 		intel_dkl_phy_rmw(i915, DKL_PCS_DW5(tc_port, ln), DKL_PCS_DW5_CORE_SOFTRESET, 0);
 }
 
-static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
-					 const struct intel_crtc_state *crtc_state)
+static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
+					   const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
@@ -3729,7 +3729,6 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 
 	drm_WARN_ON(display->drm, dp_tp_ctl & DP_TP_CTL_ENABLE);
 
-	/* 6.d Configure and enable DP_TP_CTL with link training pattern 1 selected */
 	dp_tp_ctl = DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1;
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
 	    intel_dp_is_uhbr(crtc_state)) {
@@ -3742,16 +3741,15 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	intel_de_write(display, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
 	intel_de_posting_read(display, dp_tp_ctl_reg(encoder, crtc_state));
 
-	/* 6.f Enable D2D Link */
+	adlp_tbt_to_dp_alt_switch_wa(encoder);
+
 	mtl_ddi_enable_d2d(encoder);
 
-	/* 6.g Configure voltage swing and related IO settings */
-	encoder->set_signal_levels(encoder, crtc_state);
+	if (DISPLAY_VER(display) >= 14)
+		encoder->set_signal_levels(encoder, crtc_state);
 
-	/* 6.h Configure PORT_BUF_CTL1 */
 	mtl_port_buf_ctl_program(encoder, crtc_state);
 
-	/* 6.i Configure and enable DDI_CTL_DE to start sending valid data to port slice */
 	if (DISPLAY_VER(display) >= 20)
 		intel_dp->DP |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
 
@@ -3759,36 +3757,6 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
 	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
 }
 
-static void intel_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
-					   const struct intel_crtc_state *crtc_state)
-{
-	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
-	struct intel_encoder *encoder = &dig_port->base;
-	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	u32 dp_tp_ctl;
-
-	dp_tp_ctl = intel_de_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
-
-	drm_WARN_ON(&dev_priv->drm, dp_tp_ctl & DP_TP_CTL_ENABLE);
-
-	dp_tp_ctl = DP_TP_CTL_ENABLE | DP_TP_CTL_LINK_TRAIN_PAT1;
-	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST) ||
-	    intel_dp_is_uhbr(crtc_state)) {
-		dp_tp_ctl |= DP_TP_CTL_MODE_MST;
-	} else {
-		dp_tp_ctl |= DP_TP_CTL_MODE_SST;
-		if (crtc_state->enhanced_framing)
-			dp_tp_ctl |= DP_TP_CTL_ENHANCED_FRAME_ENABLE;
-	}
-	intel_de_write(dev_priv, dp_tp_ctl_reg(encoder, crtc_state), dp_tp_ctl);
-	intel_de_posting_read(dev_priv, dp_tp_ctl_reg(encoder, crtc_state));
-
-	adlp_tbt_to_dp_alt_switch_wa(encoder);
-
-	intel_enable_ddi_buf(encoder, intel_dp->DP);
-	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
-}
-
 static void intel_ddi_set_link_train(struct intel_dp *intel_dp,
 				     const struct intel_crtc_state *crtc_state,
 				     u8 dp_train_pat)
@@ -4612,7 +4580,6 @@ static const struct drm_encoder_funcs intel_ddi_funcs = {
 
 static int intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 {
-	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_connector *connector;
 	enum port port = dig_port->base.port;
 
@@ -4621,10 +4588,7 @@ static int intel_ddi_init_dp_connector(struct intel_digital_port *dig_port)
 		return -ENOMEM;
 
 	dig_port->dp.output_reg = DDI_BUF_CTL(port);
-	if (DISPLAY_VER(i915) >= 14)
-		dig_port->dp.prepare_link_retrain = mtl_ddi_prepare_link_retrain;
-	else
-		dig_port->dp.prepare_link_retrain = intel_ddi_prepare_link_retrain;
+	dig_port->dp.prepare_link_retrain = intel_ddi_prepare_link_retrain;
 	dig_port->dp.set_link_train = intel_ddi_set_link_train;
 	dig_port->dp.set_idle_link_train = intel_ddi_set_idle_link_train;
 
-- 
2.44.2

