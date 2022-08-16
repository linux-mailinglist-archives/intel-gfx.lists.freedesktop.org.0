Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A35F595F57
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 17:39:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AA1D8A709;
	Tue, 16 Aug 2022 15:37:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB483A4B7E
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 15:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660664258; x=1692200258;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3gYLbpDoRpTBXgFoBNImOyzi8FIEbcaw7Q60YdDxtao=;
 b=MihblTmJPa808RmEfbEM7/4UK5GDAIJ8ghAc/sJbLt+3prcavn6lTC2O
 Apk8h9eM6JIIfQ0ZovCLe6dBUugDgTrsSilGksuMs6eQlFNoDRwUtp6MJ
 L+75I1ez4HE5Ng3UAHfCcuMjD+xTf0ARcutPqbxB+yumpuH4ItknIk8gQ
 1rTmTCRJBqSjtqpOzbXRAyihh/oHRZ5qVICFqXYJV3Hnfc6Ae5LLQGylP
 mNy5cii2524hX6Zue6AHmD2aBLNWJ9qVpM490cptgZsB1HGojeHhBevUD
 keQA9Oh770n0hUOPc+FKHiBmmHl68+vbL59zsk3dqbXifQvu21dPFgSZs g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="275308283"
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="275308283"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 08:37:38 -0700
X-IronPort-AV: E=Sophos;i="5.93,241,1654585200"; d="scan'208";a="635938166"
Received: from kinzelba-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.39.194])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 08:37:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 16 Aug 2022 18:37:22 +0300
Message-Id: <8b3765f1e1dc4d436b312016f72647e03ba49f94.1660664162.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1660664162.git.jani.nikula@intel.com>
References: <cover.1660664162.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RESEND 3/3] drm/i915/dsi: use VBT backlight and CABC
 port definitions directly
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Drop the intermediate values stored in intel_dsi and use the VBT values
directly, now that they're conveniently stored in panel->vbt.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c             |  4 ----
 drivers/gpu/drm/i915/display/intel_dsi.h           |  3 ---
 .../gpu/drm/i915/display/intel_dsi_dcs_backlight.c | 14 ++++++++------
 drivers/gpu/drm/i915/display/vlv_dsi.c             |  4 ----
 4 files changed, 8 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 885c74f60366..c089e392a041 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -2073,13 +2073,9 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
 		intel_connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
 
-	intel_dsi->dcs_backlight_ports = intel_connector->panel.vbt.dsi.bl_ports;
-
 	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
 		intel_connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
 
-	intel_dsi->dcs_cabc_ports = intel_connector->panel.vbt.dsi.cabc_ports;
-
 	for_each_dsi_port(port, intel_dsi->ports) {
 		struct intel_dsi_host *host;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
index eafef0a87fea..ce80bd8be519 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi.h
@@ -89,9 +89,6 @@ struct intel_dsi {
 	u8 escape_clk_div;
 	u8 dual_link;
 
-	u16 dcs_backlight_ports;
-	u16 dcs_cabc_ports;
-
 	/* RGB or BGR */
 	bool bgr_enabled;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
index 1bc7118c56a2..20e466d843ce 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_dcs_backlight.c
@@ -53,7 +53,7 @@ static u32 dcs_get_backlight(struct intel_connector *connector, enum pipe unused
 	enum port port;
 	size_t len = panel->backlight.max > U8_MAX ? 2 : 1;
 
-	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
+	for_each_dsi_port(port, panel->vbt.dsi.bl_ports) {
 		dsi_device = intel_dsi->dsi_hosts[port]->device;
 		mipi_dsi_dcs_read(dsi_device, MIPI_DCS_GET_DISPLAY_BRIGHTNESS,
 				  &data, len);
@@ -80,7 +80,7 @@ static void dcs_set_backlight(const struct drm_connector_state *conn_state, u32
 		data[1] = level;
 	}
 
-	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
+	for_each_dsi_port(port, panel->vbt.dsi.bl_ports) {
 		dsi_device = intel_dsi->dsi_hosts[port]->device;
 		mode_flags = dsi_device->mode_flags;
 		dsi_device->mode_flags &= ~MIPI_DSI_MODE_LPM;
@@ -93,12 +93,13 @@ static void dcs_set_backlight(const struct drm_connector_state *conn_state, u32
 static void dcs_disable_backlight(const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(to_intel_encoder(conn_state->best_encoder));
+	struct intel_panel *panel = &to_intel_connector(conn_state->connector)->panel;
 	struct mipi_dsi_device *dsi_device;
 	enum port port;
 
 	dcs_set_backlight(conn_state, 0);
 
-	for_each_dsi_port(port, intel_dsi->dcs_cabc_ports) {
+	for_each_dsi_port(port, panel->vbt.dsi.cabc_ports) {
 		u8 cabc = POWER_SAVE_OFF;
 
 		dsi_device = intel_dsi->dsi_hosts[port]->device;
@@ -106,7 +107,7 @@ static void dcs_disable_backlight(const struct drm_connector_state *conn_state,
 				   &cabc, sizeof(cabc));
 	}
 
-	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
+	for_each_dsi_port(port, panel->vbt.dsi.bl_ports) {
 		u8 ctrl = 0;
 
 		dsi_device = intel_dsi->dsi_hosts[port]->device;
@@ -127,10 +128,11 @@ static void dcs_enable_backlight(const struct intel_crtc_state *crtc_state,
 				 const struct drm_connector_state *conn_state, u32 level)
 {
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(to_intel_encoder(conn_state->best_encoder));
+	struct intel_panel *panel = &to_intel_connector(conn_state->connector)->panel;
 	struct mipi_dsi_device *dsi_device;
 	enum port port;
 
-	for_each_dsi_port(port, intel_dsi->dcs_backlight_ports) {
+	for_each_dsi_port(port, panel->vbt.dsi.bl_ports) {
 		u8 ctrl = 0;
 
 		dsi_device = intel_dsi->dsi_hosts[port]->device;
@@ -146,7 +148,7 @@ static void dcs_enable_backlight(const struct intel_crtc_state *crtc_state,
 				   &ctrl, sizeof(ctrl));
 	}
 
-	for_each_dsi_port(port, intel_dsi->dcs_cabc_ports) {
+	for_each_dsi_port(port, panel->vbt.dsi.cabc_ports) {
 		u8 cabc = POWER_SAVE_MEDIUM;
 
 		dsi_device = intel_dsi->dsi_hosts[port]->device;
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 35136d26e517..784ae52059d1 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -1936,13 +1936,9 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
 	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.bl_ports & ~intel_dsi->ports))
 		intel_connector->panel.vbt.dsi.bl_ports &= intel_dsi->ports;
 
-	intel_dsi->dcs_backlight_ports = intel_connector->panel.vbt.dsi.bl_ports;
-
 	if (drm_WARN_ON(&dev_priv->drm, intel_connector->panel.vbt.dsi.cabc_ports & ~intel_dsi->ports))
 		intel_connector->panel.vbt.dsi.cabc_ports &= intel_dsi->ports;
 
-	intel_dsi->dcs_cabc_ports = intel_connector->panel.vbt.dsi.cabc_ports;
-
 	/* Create a DSI host (and a device) for each port. */
 	for_each_dsi_port(port, intel_dsi->ports) {
 		struct intel_dsi_host *host;
-- 
2.34.1

