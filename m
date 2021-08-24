Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C503F5F48
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Aug 2021 15:35:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF7A66E071;
	Tue, 24 Aug 2021 13:35:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 607D56E071
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Aug 2021 13:35:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10085"; a="302892145"
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="302892145"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 06:35:09 -0700
X-IronPort-AV: E=Sophos;i="5.84,347,1620716400"; d="scan'208";a="597584351"
Received: from romerosa-mobl.amr.corp.intel.com (HELO localhost)
 ([10.249.44.170])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2021 06:35:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
Date: Tue, 24 Aug 2021 16:34:19 +0300
Message-Id: <af6fc6e5a3e8a54f8c9bd09f07e2a760efbfc6da.1629811722.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629811722.git.jani.nikula@intel.com>
References: <cover.1629811722.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915/bios: get rid of vbt ddi_port_info
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

We can finally remove the extra caching in ddi_port_info. Good riddance.

Cc: José Roberto de Souza <jose.souza@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 63 +++++++++--------------
 drivers/gpu/drm/i915/i915_drv.h           |  7 +--
 2 files changed, 25 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index d4596be29d7b..184cceb021ea 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1580,16 +1580,16 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
 
 static enum port get_port_by_ddc_pin(struct drm_i915_private *i915, u8 ddc_pin)
 {
-	const struct ddi_vbt_port_info *info;
+	const struct intel_bios_encoder_data *devdata;
 	enum port port;
 
 	if (!ddc_pin)
 		return PORT_NONE;
 
 	for_each_port(port) {
-		info = &i915->vbt.ddi_port_info[port];
+		devdata = i915->vbt.ports[port];
 
-		if (info->devdata && ddc_pin == info->devdata->child.ddc_pin)
+		if (devdata && ddc_pin == devdata->child.ddc_pin)
 			return port;
 	}
 
@@ -1600,7 +1600,6 @@ static void sanitize_ddc_pin(struct intel_bios_encoder_data *devdata,
 			     enum port port)
 {
 	struct drm_i915_private *i915 = devdata->i915;
-	struct ddi_vbt_port_info *info;
 	struct child_device_config *child;
 	u8 mapped_ddc_pin;
 	enum port p;
@@ -1637,8 +1636,7 @@ static void sanitize_ddc_pin(struct intel_bios_encoder_data *devdata,
 	 * there are real machines (eg. Asrock B250M-HDV) where VBT has both
 	 * port A and port E with the same AUX ch and we must pick port E :(
 	 */
-	info = &i915->vbt.ddi_port_info[p];
-	child = &info->devdata->child;
+	child = &i915->vbt.ports[p]->child;
 
 	child->device_type &= ~DEVICE_TYPE_TMDS_DVI_SIGNALING;
 	child->device_type |= DEVICE_TYPE_NOT_HDMI_OUTPUT;
@@ -1648,16 +1646,16 @@ static void sanitize_ddc_pin(struct intel_bios_encoder_data *devdata,
 
 static enum port get_port_by_aux_ch(struct drm_i915_private *i915, u8 aux_ch)
 {
-	const struct ddi_vbt_port_info *info;
+	const struct intel_bios_encoder_data *devdata;
 	enum port port;
 
 	if (!aux_ch)
 		return PORT_NONE;
 
 	for_each_port(port) {
-		info = &i915->vbt.ddi_port_info[port];
+		devdata = i915->vbt.ports[port];
 
-		if (info->devdata && aux_ch == info->devdata->child.aux_channel)
+		if (devdata && aux_ch == devdata->child.aux_channel)
 			return port;
 	}
 
@@ -1668,7 +1666,6 @@ static void sanitize_aux_ch(struct intel_bios_encoder_data *devdata,
 			    enum port port)
 {
 	struct drm_i915_private *i915 = devdata->i915;
-	struct ddi_vbt_port_info *info;
 	struct child_device_config *child;
 	enum port p;
 
@@ -1691,8 +1688,7 @@ static void sanitize_aux_ch(struct intel_bios_encoder_data *devdata,
 	 * there are real machines (eg. Asrock B250M-HDV) where VBT has both
 	 * port A and port E with the same AUX ch and we must pick port E :(
 	 */
-	info = &i915->vbt.ddi_port_info[p];
-	child = &info->devdata->child;
+	child = &i915->vbt.ports[p]->child;
 
 	child->device_type &= ~DEVICE_TYPE_DISPLAYPORT_OUTPUT;
 	child->aux_channel = 0;
@@ -1938,7 +1934,6 @@ static void parse_ddi_port(struct drm_i915_private *i915,
 			   struct intel_bios_encoder_data *devdata)
 {
 	const struct child_device_config *child = &devdata->child;
-	struct ddi_vbt_port_info *info;
 	bool is_dvi, is_hdmi, is_dp, is_edp, is_crt, supports_typec_usb, supports_tbt;
 	int dp_boost_level, dp_max_link_rate, hdmi_boost_level, hdmi_level_shift, max_tmds_clock;
 	enum port port;
@@ -1954,9 +1949,7 @@ static void parse_ddi_port(struct drm_i915_private *i915,
 		return;
 	}
 
-	info = &i915->vbt.ddi_port_info[port];
-
-	if (info->devdata) {
+	if (i915->vbt.ports[port]) {
 		drm_dbg_kms(&i915->drm,
 			    "More than one child device for port %c in VBT, using the first.\n",
 			    port_name(port));
@@ -2019,7 +2012,7 @@ static void parse_ddi_port(struct drm_i915_private *i915,
 			    "Port %c VBT DP max link rate: %d\n",
 			    port_name(port), dp_max_link_rate);
 
-	info->devdata = devdata;
+	i915->vbt.ports[port] = devdata;
 }
 
 static void parse_ddi_ports(struct drm_i915_private *i915)
@@ -2557,12 +2550,8 @@ bool intel_bios_is_port_present(struct drm_i915_private *i915, enum port port)
 		[PORT_F] = { DVO_PORT_DPF, DVO_PORT_HDMIF, },
 	};
 
-	if (HAS_DDI(i915)) {
-		const struct ddi_vbt_port_info *port_info =
-			&i915->vbt.ddi_port_info[port];
-
-		return port_info->devdata;
-	}
+	if (HAS_DDI(i915))
+		return i915->vbt.ports[port];
 
 	/* FIXME maybe deal with port A as well? */
 	if (drm_WARN_ON(&i915->drm,
@@ -2813,8 +2802,7 @@ bool
 intel_bios_is_port_hpd_inverted(const struct drm_i915_private *i915,
 				enum port port)
 {
-	const struct intel_bios_encoder_data *devdata =
-		i915->vbt.ddi_port_info[port].devdata;
+	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[port];
 
 	if (drm_WARN_ON_ONCE(&i915->drm,
 			     !IS_GEMINILAKE(i915) && !IS_BROXTON(i915)))
@@ -2834,8 +2822,7 @@ bool
 intel_bios_is_lspcon_present(const struct drm_i915_private *i915,
 			     enum port port)
 {
-	const struct intel_bios_encoder_data *devdata =
-		i915->vbt.ddi_port_info[port].devdata;
+	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[port];
 
 	return HAS_LSPCON(i915) && devdata && devdata->child.lspcon;
 }
@@ -2851,8 +2838,7 @@ bool
 intel_bios_is_lane_reversal_needed(const struct drm_i915_private *i915,
 				   enum port port)
 {
-	const struct intel_bios_encoder_data *devdata =
-		i915->vbt.ddi_port_info[port].devdata;
+	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[port];
 
 	return devdata && devdata->child.lane_reversal;
 }
@@ -2860,11 +2846,10 @@ intel_bios_is_lane_reversal_needed(const struct drm_i915_private *i915,
 enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
 				   enum port port)
 {
-	const struct ddi_vbt_port_info *info =
-		&i915->vbt.ddi_port_info[port];
+	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[port];
 	enum aux_ch aux_ch;
 
-	if (!info->devdata->child.aux_channel) {
+	if (!devdata->child.aux_channel) {
 		aux_ch = (enum aux_ch)port;
 
 		drm_dbg_kms(&i915->drm,
@@ -2880,7 +2865,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
 	 * ADL-S VBT uses PHY based mapping. Combo PHYs A,B,C,D,E
 	 * map to DDI A,TC1,TC2,TC3,TC4 respectively.
 	 */
-	switch (info->devdata->child.aux_channel) {
+	switch (devdata->child.aux_channel) {
 	case DP_AUX_A:
 		aux_ch = AUX_CH_A;
 		break;
@@ -2941,7 +2926,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
 			aux_ch = AUX_CH_I;
 		break;
 	default:
-		MISSING_CASE(info->devdata->child.aux_channel);
+		MISSING_CASE(devdata->child.aux_channel);
 		aux_ch = AUX_CH_A;
 		break;
 	}
@@ -2955,7 +2940,7 @@ enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
 int intel_bios_max_tmds_clock(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;
+	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[encoder->port];
 
 	return _intel_bios_max_tmds_clock(devdata);
 }
@@ -2964,7 +2949,7 @@ int intel_bios_max_tmds_clock(struct intel_encoder *encoder)
 int intel_bios_hdmi_level_shift(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;
+	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[encoder->port];
 
 	return _intel_bios_hdmi_level_shift(devdata);
 }
@@ -2988,7 +2973,7 @@ int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_data *de
 int intel_bios_dp_max_link_rate(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;
+	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[encoder->port];
 
 	return _intel_bios_dp_max_link_rate(devdata);
 }
@@ -2996,7 +2981,7 @@ int intel_bios_dp_max_link_rate(struct intel_encoder *encoder)
 int intel_bios_alternate_ddc_pin(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	const struct intel_bios_encoder_data *devdata = i915->vbt.ddi_port_info[encoder->port].devdata;
+	const struct intel_bios_encoder_data *devdata = i915->vbt.ports[encoder->port];
 
 	if (!devdata->child.ddc_pin)
 		return 0;
@@ -3017,5 +3002,5 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
 const struct intel_bios_encoder_data *
 intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port port)
 {
-	return i915->vbt.ddi_port_info[port].devdata;
+	return i915->vbt.ports[port];
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0ddae9db166b..12b7376ec7ff 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -636,11 +636,6 @@ i915_fence_timeout(const struct drm_i915_private *i915)
 /* Amount of PSF GV points, BSpec precisely defines this */
 #define I915_NUM_PSF_GV_POINTS 3
 
-struct ddi_vbt_port_info {
-	/* Non-NULL if port present. */
-	struct intel_bios_encoder_data *devdata;
-};
-
 enum psr_lines_to_wait {
 	PSR_0_LINES_TO_WAIT = 0,
 	PSR_1_LINE_TO_WAIT,
@@ -721,7 +716,7 @@ struct intel_vbt_data {
 
 	struct list_head display_devices;
 
-	struct ddi_vbt_port_info ddi_port_info[I915_MAX_PORTS];
+	struct intel_bios_encoder_data *ports[I915_MAX_PORTS]; /* Non-NULL if port present. */
 	struct sdvo_device_mapping sdvo_mappings[2];
 };
 
-- 
2.20.1

