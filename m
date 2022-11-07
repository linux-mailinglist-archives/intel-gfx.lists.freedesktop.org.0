Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C343D61FB28
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Nov 2022 18:23:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 82B4310E4E4;
	Mon,  7 Nov 2022 17:23:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7371B10E4F5
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Nov 2022 17:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667841785; x=1699377785;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iMApQYFmP7WWaLjCqsqsHS5PUuynRrNczLTcAwG7jOo=;
 b=IkCNZwuxr6XMV+juT8Y6zCULLKYUPAFe14+ynDQH+O3TMD9DWmAttdwu
 25XMnxmgEb4IfdkrYXBu7b99linBcuq3bhAD2TxS+JsqGWNa/DTG8efVf
 YEOjZtJl6T2+sGElIsrEUDJZkKU0sMPkRKhCIXGygTL9L1ZEDf0szr5s7
 PIqinXb8hmG3qp6MfTWFmYm7TBHGJtevUeT6SrpRKscrqlfmPSW7ROGf9
 7eFU7ti4Uo/iz7hmtUg0s0Ckrfyxoiv8ATlxT67OIDNjrB74faEPm1gSS
 dtzwHXFua1tyVw+tTOCT0XMSBFhkYjfWyXCDMh3nME7OopDtpWb9eT8Wg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="312247168"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="312247168"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:09:27 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10524"; a="667248448"
X-IronPort-AV: E=Sophos;i="5.96,145,1665471600"; d="scan'208";a="667248448"
Received: from ideak-desk.fi.intel.com ([10.237.68.144])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2022 09:09:26 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  7 Nov 2022 19:09:12 +0200
Message-Id: <20221107170917.3566758-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.31.1.189.g2e36527f23
In-Reply-To: <20221107170917.3566758-1-imre.deak@intel.com>
References: <20221107170917.3566758-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/9] drm/i915/tgl+: Enable display DC power
 states on all eDP ports
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

Starting with TGL eDP is supported on ports B+ (besides port A), so make
sure DC states are not blocked on any such ports. For this add an
AUX_IO_<port> power domain for each port with eDP support. These domains
similarly to AUX_IO_A enable only the AUX_IO_<port> power well for an
enabled port, whereas the existing AUX_<port> domains enable both the
AUX_IO_<port> and the DC_OFF power wells as required by DP AUX transfers.

v2: (Ville)
- Split the change using AUX vs. AUX_IO on port A to a separate patch.
- Select AUX_IO vs. AUX based on crtc_state->has_psr instead of
  is_edp().

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c      |  6 ++-
 .../drm/i915/display/intel_display_power.c    | 30 +++++++++++
 .../drm/i915/display/intel_display_power.h    |  7 +++
 .../i915/display/intel_display_power_map.c    | 53 +++++++++++++++++--
 4 files changed, 89 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4154f454ab52a..d2953bf503765 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -849,6 +849,8 @@ static enum intel_display_power_domain
 intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
 			       const struct intel_crtc_state *crtc_state)
 {
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+
 	/* ICL+ HW requires corresponding AUX IOs to be powered up for PSR with
 	 * DC states enabled at the same time, while for driver initiated AUX
 	 * transfers we need the same AUX IOs to be powered but with DC states
@@ -861,8 +863,8 @@ intel_ddi_main_link_aux_domain(struct intel_digital_port *dig_port,
 	 * Note that PSR is enabled only on Port A even though this function
 	 * returns the correct domain for other ports too.
 	 */
-	if (dig_port->aux_ch == AUX_CH_A && crtc_state->has_psr)
-		return POWER_DOMAIN_AUX_IO_A;
+	if (crtc_state->has_psr)
+		return intel_display_power_aux_io_domain(i915, dig_port->aux_ch);
 	else
 		return intel_aux_power_domain(dig_port);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 75d6c24c1d144..c2df60cfdcf17 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -131,6 +131,16 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 		return "AUDIO_PLAYBACK";
 	case POWER_DOMAIN_AUX_IO_A:
 		return "AUX_IO_A";
+	case POWER_DOMAIN_AUX_IO_B:
+		return "AUX_IO_B";
+	case POWER_DOMAIN_AUX_IO_C:
+		return "AUX_IO_C";
+	case POWER_DOMAIN_AUX_IO_D:
+		return "AUX_IO_D";
+	case POWER_DOMAIN_AUX_IO_E:
+		return "AUX_IO_E";
+	case POWER_DOMAIN_AUX_IO_F:
+		return "AUX_IO_F";
 	case POWER_DOMAIN_AUX_A:
 		return "AUX_A";
 	case POWER_DOMAIN_AUX_B:
@@ -2342,6 +2352,7 @@ struct intel_ddi_port_domains {
 
 	enum intel_display_power_domain ddi_lanes;
 	enum intel_display_power_domain ddi_io;
+	enum intel_display_power_domain aux_io;
 	enum intel_display_power_domain aux_legacy_usbc;
 	enum intel_display_power_domain aux_tbt;
 };
@@ -2356,6 +2367,7 @@ i9xx_port_domains[] = {
 
 		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
 		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
+		.aux_io = POWER_DOMAIN_AUX_IO_A,
 		.aux_legacy_usbc = POWER_DOMAIN_AUX_A,
 		.aux_tbt = POWER_DOMAIN_INVALID,
 	},
@@ -2371,6 +2383,7 @@ d11_port_domains[] = {
 
 		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
 		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
+		.aux_io = POWER_DOMAIN_AUX_IO_A,
 		.aux_legacy_usbc = POWER_DOMAIN_AUX_A,
 		.aux_tbt = POWER_DOMAIN_INVALID,
 	}, {
@@ -2381,6 +2394,7 @@ d11_port_domains[] = {
 
 		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_C,
 		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_C,
+		.aux_io = POWER_DOMAIN_AUX_IO_C,
 		.aux_legacy_usbc = POWER_DOMAIN_AUX_C,
 		.aux_tbt = POWER_DOMAIN_AUX_TBT1,
 	},
@@ -2396,6 +2410,7 @@ d12_port_domains[] = {
 
 		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
 		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
+		.aux_io = POWER_DOMAIN_AUX_IO_A,
 		.aux_legacy_usbc = POWER_DOMAIN_AUX_A,
 		.aux_tbt = POWER_DOMAIN_INVALID,
 	}, {
@@ -2406,6 +2421,7 @@ d12_port_domains[] = {
 
 		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_TC1,
 		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_TC1,
+		.aux_io = POWER_DOMAIN_INVALID,
 		.aux_legacy_usbc = POWER_DOMAIN_AUX_USBC1,
 		.aux_tbt = POWER_DOMAIN_AUX_TBT1,
 	},
@@ -2421,6 +2437,7 @@ d13_port_domains[] = {
 
 		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
 		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
+		.aux_io = POWER_DOMAIN_AUX_IO_A,
 		.aux_legacy_usbc = POWER_DOMAIN_AUX_A,
 		.aux_tbt = POWER_DOMAIN_INVALID,
 	}, {
@@ -2431,6 +2448,7 @@ d13_port_domains[] = {
 
 		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_TC1,
 		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_TC1,
+		.aux_io = POWER_DOMAIN_INVALID,
 		.aux_legacy_usbc = POWER_DOMAIN_AUX_USBC1,
 		.aux_tbt = POWER_DOMAIN_AUX_TBT1,
 	}, {
@@ -2441,6 +2459,7 @@ d13_port_domains[] = {
 
 		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_D,
 		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_D,
+		.aux_io = POWER_DOMAIN_AUX_IO_D,
 		.aux_legacy_usbc = POWER_DOMAIN_AUX_D,
 		.aux_tbt = POWER_DOMAIN_INVALID,
 	},
@@ -2518,6 +2537,17 @@ intel_port_domains_for_aux_ch(struct drm_i915_private *i915, enum aux_ch aux_ch)
 	return NULL;
 }
 
+enum intel_display_power_domain
+intel_display_power_aux_io_domain(struct drm_i915_private *i915, enum aux_ch aux_ch)
+{
+	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(i915, aux_ch);
+
+	if (drm_WARN_ON(&i915->drm, !domains) || domains->aux_io == POWER_DOMAIN_INVALID)
+		return POWER_DOMAIN_AUX_IO_A;
+
+	return domains->aux_io + (int)(aux_ch - domains->aux_ch_start);
+}
+
 enum intel_display_power_domain
 intel_display_power_legacy_aux_domain(struct drm_i915_private *i915, enum aux_ch aux_ch)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 2169864f3f044..25beed7eb9566 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -79,6 +79,11 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_AUDIO_PLAYBACK,
 
 	POWER_DOMAIN_AUX_IO_A,
+	POWER_DOMAIN_AUX_IO_B,
+	POWER_DOMAIN_AUX_IO_C,
+	POWER_DOMAIN_AUX_IO_D,
+	POWER_DOMAIN_AUX_IO_E,
+	POWER_DOMAIN_AUX_IO_F,
 
 	POWER_DOMAIN_AUX_A,
 	POWER_DOMAIN_AUX_B,
@@ -251,6 +256,8 @@ intel_display_power_ddi_lanes_domain(struct drm_i915_private *i915, enum port po
 enum intel_display_power_domain
 intel_display_power_ddi_io_domain(struct drm_i915_private *i915, enum port port);
 enum intel_display_power_domain
+intel_display_power_aux_io_domain(struct drm_i915_private *i915, enum aux_ch aux_ch);
+enum intel_display_power_domain
 intel_display_power_legacy_aux_domain(struct drm_i915_private *i915, enum aux_ch aux_ch);
 enum intel_display_power_domain
 intel_display_power_tbt_aux_domain(struct drm_i915_private *i915, enum aux_ch aux_ch);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index 43454022e6a66..b82c0d0a80c5f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -170,6 +170,8 @@ I915_DECL_PW_DOMAINS(vlv_pwdoms_display,
 	POWER_DOMAIN_VGA,
 	POWER_DOMAIN_AUDIO_MMIO,
 	POWER_DOMAIN_AUDIO_PLAYBACK,
+	POWER_DOMAIN_AUX_IO_B,
+	POWER_DOMAIN_AUX_IO_C,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_AUX_C,
 	POWER_DOMAIN_GMBUS,
@@ -179,6 +181,8 @@ I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_cmn_bc,
 	POWER_DOMAIN_PORT_DDI_LANES_B,
 	POWER_DOMAIN_PORT_DDI_LANES_C,
 	POWER_DOMAIN_PORT_CRT,
+	POWER_DOMAIN_AUX_IO_B,
+	POWER_DOMAIN_AUX_IO_C,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_AUX_C,
 	POWER_DOMAIN_INIT);
@@ -186,6 +190,8 @@ I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_cmn_bc,
 I915_DECL_PW_DOMAINS(vlv_pwdoms_dpio_tx_bc_lanes,
 	POWER_DOMAIN_PORT_DDI_LANES_B,
 	POWER_DOMAIN_PORT_DDI_LANES_C,
+	POWER_DOMAIN_AUX_IO_B,
+	POWER_DOMAIN_AUX_IO_C,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_AUX_C,
 	POWER_DOMAIN_INIT);
@@ -243,6 +249,9 @@ I915_DECL_PW_DOMAINS(chv_pwdoms_display,
 	POWER_DOMAIN_VGA,
 	POWER_DOMAIN_AUDIO_MMIO,
 	POWER_DOMAIN_AUDIO_PLAYBACK,
+	POWER_DOMAIN_AUX_IO_B,
+	POWER_DOMAIN_AUX_IO_C,
+	POWER_DOMAIN_AUX_IO_D,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_AUX_C,
 	POWER_DOMAIN_AUX_D,
@@ -252,12 +261,15 @@ I915_DECL_PW_DOMAINS(chv_pwdoms_display,
 I915_DECL_PW_DOMAINS(chv_pwdoms_dpio_cmn_bc,
 	POWER_DOMAIN_PORT_DDI_LANES_B,
 	POWER_DOMAIN_PORT_DDI_LANES_C,
+	POWER_DOMAIN_AUX_IO_B,
+	POWER_DOMAIN_AUX_IO_C,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_AUX_C,
 	POWER_DOMAIN_INIT);
 
 I915_DECL_PW_DOMAINS(chv_pwdoms_dpio_cmn_d,
 	POWER_DOMAIN_PORT_DDI_LANES_D,
+	POWER_DOMAIN_AUX_IO_D,
 	POWER_DOMAIN_AUX_D,
 	POWER_DOMAIN_INIT);
 
@@ -305,6 +317,9 @@ static const struct i915_power_well_desc_list chv_power_wells[] = {
 	POWER_DOMAIN_VGA, \
 	POWER_DOMAIN_AUDIO_MMIO, \
 	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_IO_B, \
+	POWER_DOMAIN_AUX_IO_C, \
+	POWER_DOMAIN_AUX_IO_D, \
 	POWER_DOMAIN_AUX_B, \
 	POWER_DOMAIN_AUX_C, \
 	POWER_DOMAIN_AUX_D
@@ -407,6 +422,8 @@ static const struct i915_power_well_desc_list skl_power_wells[] = {
 	POWER_DOMAIN_VGA, \
 	POWER_DOMAIN_AUDIO_MMIO, \
 	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_IO_B, \
+	POWER_DOMAIN_AUX_IO_C, \
 	POWER_DOMAIN_AUX_B, \
 	POWER_DOMAIN_AUX_C
 
@@ -430,6 +447,8 @@ I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_a,
 I915_DECL_PW_DOMAINS(bxt_pwdoms_dpio_cmn_bc,
 	POWER_DOMAIN_PORT_DDI_LANES_B,
 	POWER_DOMAIN_PORT_DDI_LANES_C,
+	POWER_DOMAIN_AUX_IO_B,
+	POWER_DOMAIN_AUX_IO_C,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_AUX_C,
 	POWER_DOMAIN_INIT);
@@ -483,6 +502,8 @@ static const struct i915_power_well_desc_list bxt_power_wells[] = {
 	POWER_DOMAIN_VGA, \
 	POWER_DOMAIN_AUDIO_MMIO, \
 	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_IO_B, \
+	POWER_DOMAIN_AUX_IO_C, \
 	POWER_DOMAIN_AUX_B, \
 	POWER_DOMAIN_AUX_C
 
@@ -509,11 +530,13 @@ I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_a,
 
 I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_b,
 	POWER_DOMAIN_PORT_DDI_LANES_B,
+	POWER_DOMAIN_AUX_IO_B,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_INIT);
 
 I915_DECL_PW_DOMAINS(glk_pwdoms_dpio_cmn_c,
 	POWER_DOMAIN_PORT_DDI_LANES_C,
+	POWER_DOMAIN_AUX_IO_C,
 	POWER_DOMAIN_AUX_C,
 	POWER_DOMAIN_INIT);
 
@@ -523,10 +546,12 @@ I915_DECL_PW_DOMAINS(glk_pwdoms_aux_a,
 	POWER_DOMAIN_INIT);
 
 I915_DECL_PW_DOMAINS(glk_pwdoms_aux_b,
+	POWER_DOMAIN_AUX_IO_B,
 	POWER_DOMAIN_AUX_B,
 	POWER_DOMAIN_INIT);
 
 I915_DECL_PW_DOMAINS(glk_pwdoms_aux_c,
+	POWER_DOMAIN_AUX_IO_C,
 	POWER_DOMAIN_AUX_C,
 	POWER_DOMAIN_INIT);
 
@@ -617,6 +642,11 @@ I915_DECL_PW_DOMAINS(icl_pwdoms_pw_4,
 	POWER_DOMAIN_VGA, \
 	POWER_DOMAIN_AUDIO_MMIO, \
 	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_IO_B, \
+	POWER_DOMAIN_AUX_IO_C, \
+	POWER_DOMAIN_AUX_IO_D, \
+	POWER_DOMAIN_AUX_IO_E, \
+	POWER_DOMAIN_AUX_IO_F, \
 	POWER_DOMAIN_AUX_B, \
 	POWER_DOMAIN_AUX_C, \
 	POWER_DOMAIN_AUX_D, \
@@ -660,11 +690,21 @@ I915_DECL_PW_DOMAINS(icl_pwdoms_ddi_io_f,	POWER_DOMAIN_PORT_DDI_IO_F);
 I915_DECL_PW_DOMAINS(icl_pwdoms_aux_a,
 	POWER_DOMAIN_AUX_IO_A,
 	POWER_DOMAIN_AUX_A);
-I915_DECL_PW_DOMAINS(icl_pwdoms_aux_b,		POWER_DOMAIN_AUX_B);
-I915_DECL_PW_DOMAINS(icl_pwdoms_aux_c,		POWER_DOMAIN_AUX_C);
-I915_DECL_PW_DOMAINS(icl_pwdoms_aux_d,		POWER_DOMAIN_AUX_D);
-I915_DECL_PW_DOMAINS(icl_pwdoms_aux_e,		POWER_DOMAIN_AUX_E);
-I915_DECL_PW_DOMAINS(icl_pwdoms_aux_f,		POWER_DOMAIN_AUX_F);
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_b,
+	POWER_DOMAIN_AUX_IO_B,
+	POWER_DOMAIN_AUX_B);
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_c,
+	POWER_DOMAIN_AUX_IO_C,
+	POWER_DOMAIN_AUX_C);
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_d,
+	POWER_DOMAIN_AUX_IO_D,
+	POWER_DOMAIN_AUX_D);
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_e,
+	POWER_DOMAIN_AUX_IO_E,
+	POWER_DOMAIN_AUX_E);
+I915_DECL_PW_DOMAINS(icl_pwdoms_aux_f,
+	POWER_DOMAIN_AUX_IO_F,
+	POWER_DOMAIN_AUX_F);
 I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt1,	POWER_DOMAIN_AUX_TBT1);
 I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt2,	POWER_DOMAIN_AUX_TBT2);
 I915_DECL_PW_DOMAINS(icl_pwdoms_aux_tbt3,	POWER_DOMAIN_AUX_TBT3);
@@ -1215,6 +1255,9 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_pw_a,
 	POWER_DOMAIN_PORT_DDI_LANES_TC4, \
 	POWER_DOMAIN_VGA, \
 	POWER_DOMAIN_AUDIO_PLAYBACK, \
+	POWER_DOMAIN_AUX_IO_C, \
+	POWER_DOMAIN_AUX_IO_D, \
+	POWER_DOMAIN_AUX_IO_E, \
 	POWER_DOMAIN_AUX_C, \
 	POWER_DOMAIN_AUX_D, \
 	POWER_DOMAIN_AUX_E, \
-- 
2.37.1

