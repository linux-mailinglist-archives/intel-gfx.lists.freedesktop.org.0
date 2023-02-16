Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39272698906
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 01:04:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71A0E10E134;
	Thu, 16 Feb 2023 00:04:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 175F310E134
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Feb 2023 00:04:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676505869; x=1708041869;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2fMjhiAkhg2SUzGyTYthXuBv5IQaLl660HLlrcRW0lQ=;
 b=DEqF6qU6KVSgiK4YTmD8MAE1hG4qfrB1oZr3/AleEMzM4KpEplWhZDuh
 fHOsVGlMTNFQ/yyd40aUwWd8sR20w7iuu5/U65zY65+R06GRX1ySq8aQR
 heYKXmY462avtXITrrG4lMD3ZdvHQbuhv4+f4q4e3hpVVEStAWAqLXBk6
 avYhg+Emp5t7QfwWffcz5ol8wLXBGtzgOTmjbfz6b/FLyrJi5OZ6I486m
 iEZY3wBQyBhh+IPZN51wyKGRtRrfZzmTxg9MOleFU9R0qlTBE582foCD/
 6UFGxbcRc9RyVNbMn311f808x9kBMm4nx88WM6iQbwf8ios8A8F9db/m0 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="393990500"
X-IronPort-AV: E=Sophos;i="5.97,301,1669104000"; d="scan'208";a="393990500"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 16:04:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="647453365"
X-IronPort-AV: E=Sophos;i="5.97,301,1669104000"; d="scan'208";a="647453365"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 15 Feb 2023 16:04:26 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Feb 2023 02:04:25 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Feb 2023 02:04:25 +0200
Message-Id: <20230216000425.32216-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230214231925.26535-1-ville.syrjala@linux.intel.com>
References: <20230214231925.26535-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/3] drm/i915: Use encoder->devdata more
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

Switch a lot of the intel_bios_foo() stuff to just accept the
devdata (VBT child device info) directly, instead of taking
detours via vbt.ports[].

Also unify the function naming scheme.

v2: Drop the redundant "encoder" from the dp/hdmi specific functions

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 62 +++++------------------
 drivers/gpu/drm/i915/display/intel_bios.h | 15 +++---
 drivers/gpu/drm/i915/display/intel_ddi.c  | 10 ++--
 drivers/gpu/drm/i915/display/intel_dp.c   |  4 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c |  4 +-
 5 files changed, 31 insertions(+), 64 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 229f9782e226..8cf2392a5670 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2520,7 +2520,7 @@ static int parse_bdb_216_dp_max_link_rate(const int vbt_max_link_rate)
 	}
 }
 
-static int _intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata)
+int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata)
 {
 	if (!devdata || devdata->i915->display.vbt.version < 216)
 		return 0;
@@ -2531,7 +2531,7 @@ static int _intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *de
 		return parse_bdb_216_dp_max_link_rate(devdata->child.dp_max_link_rate);
 }
 
-static int _intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
+int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
 {
 	if (!devdata || devdata->i915->display.vbt.version < 244)
 		return 0;
@@ -2604,7 +2604,8 @@ intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata)
 	return devdata && HAS_LSPCON(devdata->i915) && devdata->child.lspcon;
 }
 
-static int _intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *devdata)
+/* This is an index in the HDMI/DVI DDI buffer translation table, or -1 */
+int intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *devdata)
 {
 	if (!devdata || devdata->i915->display.vbt.version < 158)
 		return -1;
@@ -2612,7 +2613,7 @@ static int _intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *de
 	return devdata->child.hdmi_level_shifter_value;
 }
 
-static int _intel_bios_max_tmds_clock(const struct intel_bios_encoder_data *devdata)
+int intel_bios_hdmi_max_tmds_clock(const struct intel_bios_encoder_data *devdata)
 {
 	if (!devdata || devdata->i915->display.vbt.version < 204)
 		return 0;
@@ -2674,33 +2675,33 @@ static void print_ddi_port(const struct intel_bios_encoder_data *devdata,
 		    supports_typec_usb, supports_tbt,
 		    devdata->dsc != NULL);
 
-	hdmi_level_shift = _intel_bios_hdmi_level_shift(devdata);
+	hdmi_level_shift = intel_bios_hdmi_level_shift(devdata);
 	if (hdmi_level_shift >= 0) {
 		drm_dbg_kms(&i915->drm,
 			    "Port %c VBT HDMI level shift: %d\n",
 			    port_name(port), hdmi_level_shift);
 	}
 
-	max_tmds_clock = _intel_bios_max_tmds_clock(devdata);
+	max_tmds_clock = intel_bios_hdmi_max_tmds_clock(devdata);
 	if (max_tmds_clock)
 		drm_dbg_kms(&i915->drm,
 			    "Port %c VBT HDMI max TMDS clock: %d kHz\n",
 			    port_name(port), max_tmds_clock);
 
 	/* I_boost config for SKL and above */
-	dp_boost_level = intel_bios_encoder_dp_boost_level(devdata);
+	dp_boost_level = intel_bios_dp_boost_level(devdata);
 	if (dp_boost_level)
 		drm_dbg_kms(&i915->drm,
 			    "Port %c VBT (e)DP boost level: %d\n",
 			    port_name(port), dp_boost_level);
 
-	hdmi_boost_level = intel_bios_encoder_hdmi_boost_level(devdata);
+	hdmi_boost_level = intel_bios_hdmi_boost_level(devdata);
 	if (hdmi_boost_level)
 		drm_dbg_kms(&i915->drm,
 			    "Port %c VBT HDMI boost level: %d\n",
 			    port_name(port), hdmi_boost_level);
 
-	dp_max_link_rate = _intel_bios_dp_max_link_rate(devdata);
+	dp_max_link_rate = intel_bios_dp_max_link_rate(devdata);
 	if (dp_max_link_rate)
 		drm_dbg_kms(&i915->drm,
 			    "Port %c VBT DP max link rate: %d\n",
@@ -3665,24 +3666,8 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
 	return aux_ch;
 }
 
-int intel_bios_max_tmds_clock(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[encoder->port];
 
-	return _intel_bios_max_tmds_clock(devdata);
-}
-
-/* This is an index in the HDMI/DVI DDI buffer translation table, or -1 */
-int intel_bios_hdmi_level_shift(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[encoder->port];
-
-	return _intel_bios_hdmi_level_shift(devdata);
-}
-
-int intel_bios_encoder_dp_boost_level(const struct intel_bios_encoder_data *devdata)
+int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devdata)
 {
 	if (!devdata || devdata->i915->display.vbt.version < 196 || !devdata->child.iboost)
 		return 0;
@@ -3690,7 +3675,7 @@ int intel_bios_encoder_dp_boost_level(const struct intel_bios_encoder_data *devd
 	return translate_iboost(devdata->child.dp_iboost_level);
 }
 
-int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_data *devdata)
+int intel_bios_hdmi_boost_level(const struct intel_bios_encoder_data *devdata)
 {
 	if (!devdata || devdata->i915->display.vbt.version < 196 || !devdata->child.iboost)
 		return 0;
@@ -3698,31 +3683,12 @@ int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_data *de
 	return translate_iboost(devdata->child.hdmi_iboost_level);
 }
 
-int intel_bios_dp_max_link_rate(struct intel_encoder *encoder)
+int intel_bios_hdmi_ddc_pin(const struct intel_bios_encoder_data *devdata)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[encoder->port];
-
-	return _intel_bios_dp_max_link_rate(devdata);
-}
-
-int intel_bios_dp_max_lane_count(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[encoder->port];
-
-	return _intel_bios_dp_max_lane_count(devdata);
-}
-
-int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder)
-{
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[encoder->port];
-
 	if (!devdata || !devdata->child.ddc_pin)
 		return 0;
 
-	return map_ddc_pin(i915, devdata->child.ddc_pin);
+	return map_ddc_pin(devdata->i915, devdata->child.ddc_pin);
 }
 
 bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata)
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 1a6ae38bd4f6..53123468331a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -254,11 +254,6 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
 bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
 			       int dsc_max_bpc);
-int intel_bios_max_tmds_clock(struct intel_encoder *encoder);
-int intel_bios_hdmi_level_shift(struct intel_encoder *encoder);
-int intel_bios_dp_max_link_rate(struct intel_encoder *encoder);
-int intel_bios_dp_max_lane_count(struct intel_encoder *encoder);
-int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder);
 bool intel_bios_port_supports_typec_usb(struct drm_i915_private *i915, enum port port);
 bool intel_bios_port_supports_tbt(struct drm_i915_private *i915, enum port port);
 
@@ -272,9 +267,15 @@ bool intel_bios_encoder_supports_edp(const struct intel_bios_encoder_data *devda
 bool intel_bios_encoder_supports_typec_usb(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata);
-int intel_bios_encoder_dp_boost_level(const struct intel_bios_encoder_data *devdata);
-int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data *devdata);
+int intel_bios_dp_boost_level(const struct intel_bios_encoder_data *devdata);
+int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata);
+int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata);
+int intel_bios_hdmi_boost_level(const struct intel_bios_encoder_data *devdata);
+int intel_bios_hdmi_max_tmds_clock(const struct intel_bios_encoder_data *devdata);
+int intel_bios_hdmi_boost_level(const struct intel_bios_encoder_data *devdata);
+int intel_bios_hdmi_level_shift(const struct intel_bios_encoder_data *devdata);
+int intel_bios_hdmi_ddc_pin(const struct intel_bios_encoder_data *devdata);
 
 #endif /* _INTEL_BIOS_H_ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index bfd1e30a27b4..6010ba977adb 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -89,7 +89,7 @@ static int intel_ddi_hdmi_level(struct intel_encoder *encoder,
 {
 	int level;
 
-	level = intel_bios_hdmi_level_shift(encoder);
+	level = intel_bios_hdmi_level_shift(encoder->devdata);
 	if (level < 0)
 		level = trans->hdmi_default_entry;
 
@@ -126,7 +126,7 @@ void hsw_prepare_dp_ddi_buffers(struct intel_encoder *encoder,
 
 	/* If we're boosting the current, set bit 31 of trans1 */
 	if (has_iboost(dev_priv) &&
-	    intel_bios_encoder_dp_boost_level(encoder->devdata))
+	    intel_bios_dp_boost_level(encoder->devdata))
 		iboost_bit = DDI_BUF_BALANCE_LEG_ENABLE;
 
 	for (i = 0; i < n_entries; i++) {
@@ -158,7 +158,7 @@ static void hsw_prepare_hdmi_ddi_buffers(struct intel_encoder *encoder,
 
 	/* If we're boosting the current, set bit 31 of trans1 */
 	if (has_iboost(dev_priv) &&
-	    intel_bios_encoder_hdmi_boost_level(encoder->devdata))
+	    intel_bios_hdmi_boost_level(encoder->devdata))
 		iboost_bit = DDI_BUF_BALANCE_LEG_ENABLE;
 
 	/* Entry 9 is for HDMI: */
@@ -1009,9 +1009,9 @@ static void skl_ddi_set_iboost(struct intel_encoder *encoder,
 	u8 iboost;
 
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
-		iboost = intel_bios_encoder_hdmi_boost_level(encoder->devdata);
+		iboost = intel_bios_hdmi_boost_level(encoder->devdata);
 	else
-		iboost = intel_bios_encoder_dp_boost_level(encoder->devdata);
+		iboost = intel_bios_dp_boost_level(encoder->devdata);
 
 	if (iboost == 0) {
 		const struct intel_ddi_buf_trans *trans;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b92e0b0f5369..86fdf9d74b93 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -288,7 +288,7 @@ static int intel_dp_max_common_rate(struct intel_dp *intel_dp)
 
 static int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port)
 {
-	int vbt_max_lanes = intel_bios_dp_max_lane_count(&dig_port->base);
+	int vbt_max_lanes = intel_bios_dp_max_lane_count(dig_port->base.devdata);
 	int max_lanes = dig_port->max_lanes;
 
 	if (vbt_max_lanes)
@@ -425,7 +425,7 @@ static int vbt_max_link_rate(struct intel_dp *intel_dp)
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	int max_rate;
 
-	max_rate = intel_bios_dp_max_link_rate(encoder);
+	max_rate = intel_bios_dp_max_link_rate(encoder->devdata);
 
 	if (intel_dp_is_edp(intel_dp)) {
 		struct intel_connector *connector = intel_dp->attached_connector;
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 619865b45eca..74e2bc0ef8ba 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1795,7 +1795,7 @@ static int intel_hdmi_source_max_tmds_clock(struct intel_encoder *encoder)
 	else
 		max_tmds_clock = 165000;
 
-	vbt_max_tmds_clock = intel_bios_max_tmds_clock(encoder);
+	vbt_max_tmds_clock = intel_bios_hdmi_max_tmds_clock(encoder->devdata);
 	if (vbt_max_tmds_clock)
 		max_tmds_clock = min(max_tmds_clock, vbt_max_tmds_clock);
 
@@ -2871,7 +2871,7 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 	enum port port = encoder->port;
 	u8 ddc_pin;
 
-	ddc_pin = intel_bios_alternate_ddc_pin(encoder);
+	ddc_pin = intel_bios_hdmi_ddc_pin(encoder->devdata);
 	if (ddc_pin) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Using DDC pin 0x%x for port %c (VBT)\n",
-- 
2.39.1

