Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D170C79113
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 13:51:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3E3610E868;
	Fri, 21 Nov 2025 12:51:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gLw8x1Ve";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9426110E2B7;
 Fri, 21 Nov 2025 12:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763729501; x=1795265501;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iuMmkvefrL9mGdpybcRyQwMjfb0jJNBJ0wjI75OkgJI=;
 b=gLw8x1VerJg5aKEWHlkN+xsZYvT4m9xXIoT/eyRWzXBFN9v8msG7o5sR
 kTDqnq7HSNLgqSLtNlmlL50IClXl3/WGAoIOVU0WLkujtaVU3SwGKdrzm
 +fySI4gC4+iXLTDN8aL2s/25FJqeB3pga5sWEIOa/UyrUuhZdvfLkrv6w
 xINfIYDnwufI06XGkAeJ8lfwKTjIeAHPLdrA0vFZoFIMtAruFx07mOeio
 RL1tXCFTHhDffS8N+9NGBBk/H6iZZe+biyDPXgZ1X3Cw5kOTXZIj/Qnoy
 m+yEBTdSYvLcPHNk/iZ9w7TeboE5vSQRSqldqvEcJmfxWXqh/PMmY8NEW Q==;
X-CSE-ConnectionGUID: azmr6jzNTfWkUjgAi/EYQQ==
X-CSE-MsgGUID: r9/KC6+DSViCNKMWnX4SGA==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65702811"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="65702811"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 04:51:40 -0800
X-CSE-ConnectionGUID: efz2B2m0S16UE4mGiS5OKg==
X-CSE-MsgGUID: SAY1lV/ZST+q4LDzK+oknQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="191936449"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 04:51:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/5] drm/i915/power: convert intel_wakeref_t to struct
 ref_tracker *
Date: Fri, 21 Nov 2025 14:51:04 +0200
Message-ID: <dcbcf50f10aa2c2371b24859c55369dfda701b5c.1763729370.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763729370.git.jani.nikula@intel.com>
References: <cover.1763729370.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

Under the hood, intel_wakeref_t is just struct ref_tracker *. Use the
actual underlying type both for clarity (we *are* using intel_wakeref_t
as a pointer though it doesn't look like one) and to help i915, xe and
display coexistence without custom types.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |  2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |  2 +-
 drivers/gpu/drm/i915/display/i9xx_plane.c     |  2 +-
 drivers/gpu/drm/i915/display/icl_dsi.c        |  4 +--
 drivers/gpu/drm/i915/display/intel_audio.c    |  6 ++--
 drivers/gpu/drm/i915/display/intel_cdclk.c    |  4 +--
 drivers/gpu/drm/i915/display/intel_crt.c      |  6 ++--
 drivers/gpu/drm/i915/display/intel_cursor.c   |  4 +--
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 18 +++++-----
 drivers/gpu/drm/i915/display/intel_ddi.c      | 16 ++++-----
 drivers/gpu/drm/i915/display/intel_display.c  |  8 ++---
 .../gpu/drm/i915/display/intel_display_core.h |  2 +-
 .../drm/i915/display/intel_display_debugfs.c  |  2 +-
 .../drm/i915/display/intel_display_power.c    | 27 +++++++-------
 .../drm/i915/display/intel_display_power.h    | 35 +++++++++----------
 .../drm/i915/display/intel_display_types.h    |  6 ++--
 drivers/gpu/drm/i915/display/intel_dmc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_aux.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 18 +++++-----
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  4 +--
 drivers/gpu/drm/i915/display/intel_dsi.h      |  7 ++--
 drivers/gpu/drm/i915/display/intel_gmbus.c    |  4 +--
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  4 +--
 drivers/gpu/drm/i915/display/intel_hotplug.c  |  2 +-
 drivers/gpu/drm/i915/display/intel_lt_phy.c   | 14 ++++----
 drivers/gpu/drm/i915/display/intel_lvds.c     |  2 +-
 .../drm/i915/display/intel_modeset_setup.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_pipe_crc.c |  2 +-
 drivers/gpu/drm/i915/display/intel_sprite.c   |  6 ++--
 drivers/gpu/drm/i915/display/intel_tc.c       | 22 ++++++------
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  2 +-
 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  |  2 +-
 drivers/gpu/drm/i915/display/vlv_dsi.c        |  2 +-
 .../xe/compat-i915-headers/intel_wakeref.h    |  4 ---
 drivers/gpu/drm/xe/display/xe_display_rpm.c   |  1 +
 36 files changed, 123 insertions(+), 125 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 27f4c55d7484..4cb753177fd8 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -302,7 +302,7 @@ static bool intel_dp_get_hw_state(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool ret;
 
 	wakeref = intel_display_power_get_if_enabled(display,
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index f6e2d1ed5639..8b22447e8e23 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -68,7 +68,7 @@ static bool intel_hdmi_get_hw_state(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool ret;
 
 	wakeref = intel_display_power_get_if_enabled(display,
diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
index 51ccc6bd5f21..6b570335f393 100644
--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
@@ -724,7 +724,7 @@ static bool i9xx_plane_get_hw_state(struct intel_plane *plane,
 	struct intel_display *display = to_intel_display(plane);
 	enum intel_display_power_domain power_domain;
 	enum i9xx_plane_id i9xx_plane = plane->i9xx_plane;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool ret;
 	u32 val;
 
diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 9230792960f2..dac781f54661 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1411,7 +1411,7 @@ static void gen11_dsi_disable_io_power(struct intel_encoder *encoder)
 	enum port port;
 
 	for_each_dsi_port(port, intel_dsi->ports) {
-		intel_wakeref_t wakeref;
+		struct ref_tracker *wakeref;
 
 		wakeref = fetch_and_zero(&intel_dsi->io_wakeref[port]);
 		intel_display_power_put(display,
@@ -1722,7 +1722,7 @@ static bool gen11_dsi_get_hw_state(struct intel_encoder *encoder,
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 	enum transcoder dsi_trans;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	enum port port;
 	bool ret = false;
 	u32 tmp;
diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 5bdaef38f13d..5f3c175afdd2 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -1042,10 +1042,10 @@ int intel_audio_min_cdclk(const struct intel_crtc_state *crtc_state)
 static unsigned long intel_audio_component_get_power(struct device *kdev)
 {
 	struct intel_display *display = to_intel_display(kdev);
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 
 	/* Catch potential impedance mismatches before they occur! */
-	BUILD_BUG_ON(sizeof(intel_wakeref_t) > sizeof(unsigned long));
+	BUILD_BUG_ON(sizeof(wakeref) > sizeof(unsigned long));
 
 	wakeref = intel_display_power_get(display, POWER_DOMAIN_AUDIO_PLAYBACK);
 
@@ -1074,7 +1074,7 @@ static void intel_audio_component_put_power(struct device *kdev,
 					    unsigned long cookie)
 {
 	struct intel_display *display = to_intel_display(kdev);
-	intel_wakeref_t wakeref = (intel_wakeref_t)cookie;
+	struct ref_tracker *wakeref = (struct ref_tracker *)cookie;
 
 	/* Stop forcing CDCLK to 2*BCLK if no need for audio to be powered. */
 	if (--display->audio.power_refcount == 0)
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 5c90e53b4e46..ada08fd1447b 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -667,7 +667,7 @@ static void vlv_set_cdclk(struct intel_display *display,
 {
 	int cdclk = cdclk_config->cdclk;
 	u32 val, cmd = cdclk_config->voltage_level;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	int ret;
 
 	switch (cdclk) {
@@ -757,7 +757,7 @@ static void chv_set_cdclk(struct intel_display *display,
 {
 	int cdclk = cdclk_config->cdclk;
 	u32 val, cmd = cdclk_config->voltage_level;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	int ret;
 
 	switch (cdclk) {
diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index 82e89cdbe5a5..5f9a03877ea9 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -109,7 +109,7 @@ static bool intel_crt_get_hw_state(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_crt *crt = intel_encoder_to_crt(encoder);
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool ret;
 
 	wakeref = intel_display_power_get_if_enabled(display,
@@ -847,7 +847,7 @@ intel_crt_detect(struct drm_connector *connector,
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
 	struct intel_encoder *encoder = &crt->base;
 	struct drm_atomic_state *state;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	int status;
 
 	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s] force=%d\n",
@@ -936,7 +936,7 @@ static int intel_crt_get_modes(struct drm_connector *connector)
 	struct intel_display *display = to_intel_display(connector->dev);
 	struct intel_crt *crt = intel_attached_crt(to_intel_connector(connector));
 	struct intel_encoder *encoder = &crt->base;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	struct i2c_adapter *ddc;
 	int ret;
 
diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index a10b2425b94d..341d1cb40295 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -324,7 +324,7 @@ static bool i845_cursor_get_hw_state(struct intel_plane *plane,
 {
 	struct intel_display *display = to_intel_display(plane);
 	enum intel_display_power_domain power_domain;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool ret;
 
 	power_domain = POWER_DOMAIN_PIPE(PIPE_A);
@@ -727,7 +727,7 @@ static bool i9xx_cursor_get_hw_state(struct intel_plane *plane,
 {
 	struct intel_display *display = to_intel_display(plane);
 	enum intel_display_power_domain power_domain;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool ret;
 	u32 val;
 
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 96ab7f3b5539..834dd30fa9e6 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -105,11 +105,11 @@ static void intel_cx0_program_msgbus_timer(struct intel_encoder *encoder)
  * We also do the msgbus timer programming here to ensure that the timer
  * is already programmed before any access to the msgbus.
  */
-static intel_wakeref_t intel_cx0_phy_transaction_begin(struct intel_encoder *encoder)
+static struct ref_tracker *intel_cx0_phy_transaction_begin(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 
 	intel_psr_pause(intel_dp);
 	wakeref = intel_display_power_get(display, POWER_DOMAIN_DC_OFF);
@@ -118,7 +118,7 @@ static intel_wakeref_t intel_cx0_phy_transaction_begin(struct intel_encoder *enc
 	return wakeref;
 }
 
-static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, intel_wakeref_t wakeref)
+static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, struct ref_tracker *wakeref)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -476,7 +476,7 @@ void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
 	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_ddi_buf_trans *trans;
 	u8 owned_lane_mask;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	int n_entries, ln;
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
@@ -2239,7 +2239,7 @@ static void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 	u8 lane = INTEL_CX0_LANE0;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	int i;
 
 	cx0pll_state->use_c10 = true;
@@ -2743,7 +2743,7 @@ static void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
 	struct intel_c20pll_state *pll_state = &cx0pll_state->c20;
 	struct intel_display *display = to_intel_display(encoder);
 	bool cntx;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	int i;
 
 	cx0pll_state->use_c10 = false;
@@ -3212,7 +3212,7 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
 	bool lane_reversal = dig_port->lane_reversal;
 	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
 					  INTEL_CX0_LANE0;
-	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
+	struct ref_tracker *wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	/*
 	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
@@ -3443,7 +3443,7 @@ void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
 				 const struct intel_crtc_state *crtc_state)
 {
 	struct intel_display *display = to_intel_display(encoder);
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	int i;
 	u8 owned_lane_mask;
 
@@ -3490,7 +3490,7 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
-	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
+	struct ref_tracker *wakeref = intel_cx0_phy_transaction_begin(encoder);
 
 	/* 1. Change owned PHY lane power to Disable state. */
 	intel_cx0_powerdown_change_sequence(encoder, INTEL_CX0_BOTH_LANES,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 96fcad6dbb2f..ab334ff39d6e 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -728,7 +728,7 @@ int intel_ddi_toggle_hdcp_bits(struct intel_encoder *intel_encoder,
 			       bool enable, u32 hdcp_mask)
 {
 	struct intel_display *display = to_intel_display(intel_encoder);
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	int ret = 0;
 
 	wakeref = intel_display_power_get_if_enabled(display,
@@ -749,7 +749,7 @@ bool intel_ddi_connector_get_hw_state(struct intel_connector *intel_connector)
 	int type = intel_connector->base.connector_type;
 	enum port port = encoder->port;
 	enum transcoder cpu_transcoder;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	enum pipe pipe = 0;
 	u32 ddi_mode;
 	bool ret;
@@ -805,7 +805,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	enum port port = encoder->port;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	enum pipe p;
 	u32 tmp;
 	u8 mst_pipe_mask = 0, dp128b132b_pipe_mask = 0;
@@ -848,7 +848,7 @@ static void intel_ddi_get_encoder_pipes(struct intel_encoder *encoder,
 	for_each_pipe(display, p) {
 		enum transcoder cpu_transcoder = (enum transcoder)p;
 		u32 port_mask, ddi_select, ddi_mode;
-		intel_wakeref_t trans_wakeref;
+		struct ref_tracker *trans_wakeref;
 
 		trans_wakeref = intel_display_power_get_if_enabled(display,
 								   POWER_DOMAIN_TRANSCODER(cpu_transcoder));
@@ -1002,7 +1002,7 @@ main_link_aux_power_domain_put(struct intel_digital_port *dig_port,
 	struct intel_display *display = to_intel_display(dig_port);
 	enum intel_display_power_domain domain =
 		intel_ddi_main_link_aux_domain(dig_port, crtc_state);
-	intel_wakeref_t wf;
+	struct ref_tracker *wf;
 
 	wf = fetch_and_zero(&dig_port->aux_wakeref);
 	if (!wf)
@@ -3130,7 +3130,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_dp *intel_dp = &dig_port->dp;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool is_mst = intel_crtc_has_type(old_crtc_state,
 					  INTEL_OUTPUT_DP_MST);
 
@@ -3198,7 +3198,7 @@ static void intel_ddi_post_disable_hdmi(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 	struct intel_hdmi *intel_hdmi = &dig_port->hdmi;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 
 	dig_port->set_infoframes(encoder, false,
 				 old_crtc_state, old_conn_state);
@@ -3965,7 +3965,7 @@ static void bdw_get_trans_port_sync_config(struct intel_crtc_state *crtc_state)
 
 	for_each_cpu_transcoder_masked(display, cpu_transcoder, transcoders) {
 		enum intel_display_power_domain power_domain;
-		intel_wakeref_t trans_wakeref;
+		struct ref_tracker *trans_wakeref;
 
 		power_domain = POWER_DOMAIN_TRANSCODER(cpu_transcoder);
 		trans_wakeref = intel_display_power_get_if_enabled(display,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ccfa53bf0ad0..abb73236cc4a 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -372,7 +372,7 @@ void assert_transcoder(struct intel_display *display,
 {
 	bool cur_state;
 	enum intel_display_power_domain power_domain;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 
 	/* we keep both pipes enabled on 830 */
 	if (display->platform.i830)
@@ -3020,7 +3020,7 @@ static bool i9xx_get_pipe_config(struct intel_crtc *crtc,
 	struct intel_display *display = to_intel_display(crtc);
 	enum intel_display_power_domain power_domain;
 	enum transcoder cpu_transcoder = (enum transcoder)crtc->pipe;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool ret = false;
 	u32 tmp;
 
@@ -3364,7 +3364,7 @@ static bool ilk_get_pipe_config(struct intel_crtc *crtc,
 	struct intel_display *display = to_intel_display(crtc);
 	enum intel_display_power_domain power_domain;
 	enum transcoder cpu_transcoder = (enum transcoder)crtc->pipe;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool ret = false;
 	u32 tmp;
 
@@ -7353,7 +7353,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
 	struct intel_crtc_state *new_crtc_state, *old_crtc_state;
 	struct intel_crtc *crtc;
 	struct intel_power_domain_mask put_domains[I915_MAX_PIPES] = {};
-	intel_wakeref_t wakeref = NULL;
+	struct ref_tracker *wakeref = NULL;
 	int i;
 
 	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i)
diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index 9b36654b593d..5b2120afa806 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -386,7 +386,7 @@ struct intel_display {
 
 	struct {
 		struct intel_dmc *dmc;
-		intel_wakeref_t wakeref;
+		struct ref_tracker *wakeref;
 	} dmc;
 
 	struct {
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 9bbfdae8d024..aba13e8a9051 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -86,7 +86,7 @@ static int i915_frontbuffer_tracking(struct seq_file *m, void *unused)
 static int i915_sr_status(struct seq_file *m, void *unused)
 {
 	struct intel_display *display = node_to_intel_display(m->private);
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool sr_enabled = false;
 
 	wakeref = intel_display_power_get(display, POWER_DOMAIN_INIT);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 08db9bbbfcb1..506bc8269827 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -31,6 +31,7 @@
 #include "intel_pmdemand.h"
 #include "intel_pps_regs.h"
 #include "intel_snps_phy.h"
+#include "intel_wakeref.h"
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
 #include "vlv_sideband.h"
@@ -544,8 +545,8 @@ __intel_display_power_get_domain(struct intel_display *display,
  * Any power domain reference obtained by this function must have a symmetric
  * call to intel_display_power_put() to release the reference again.
  */
-intel_wakeref_t intel_display_power_get(struct intel_display *display,
-					enum intel_display_power_domain domain)
+struct ref_tracker *intel_display_power_get(struct intel_display *display,
+					    enum intel_display_power_domain domain)
 {
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct ref_tracker *wakeref;
@@ -571,7 +572,7 @@ intel_wakeref_t intel_display_power_get(struct intel_display *display,
  * Any power domain reference obtained by this function must have a symmetric
  * call to intel_display_power_put() to release the reference again.
  */
-intel_wakeref_t
+struct ref_tracker *
 intel_display_power_get_if_enabled(struct intel_display *display,
 				   enum intel_display_power_domain domain)
 {
@@ -638,7 +639,7 @@ static void __intel_display_power_put(struct intel_display *display,
 
 static void
 queue_async_put_domains_work(struct i915_power_domains *power_domains,
-			     intel_wakeref_t wakeref,
+			     struct ref_tracker *wakeref,
 			     int delay_ms)
 {
 	struct intel_display *display = container_of(power_domains,
@@ -740,7 +741,7 @@ intel_display_power_put_async_work(struct work_struct *work)
  */
 void __intel_display_power_put_async(struct intel_display *display,
 				     enum intel_display_power_domain domain,
-				     intel_wakeref_t wakeref,
+				     struct ref_tracker *wakeref,
 				     int delay_ms)
 {
 	struct i915_power_domains *power_domains = &display->power.domains;
@@ -799,7 +800,7 @@ void intel_display_power_flush_work(struct intel_display *display)
 {
 	struct i915_power_domains *power_domains = &display->power.domains;
 	struct intel_power_domain_mask async_put_mask;
-	intel_wakeref_t work_wakeref;
+	struct ref_tracker *work_wakeref;
 
 	mutex_lock(&power_domains->lock);
 
@@ -853,7 +854,7 @@ intel_display_power_flush_work_sync(struct intel_display *display)
  */
 void intel_display_power_put(struct intel_display *display,
 			     enum intel_display_power_domain domain,
-			     intel_wakeref_t wakeref)
+			     struct ref_tracker *wakeref)
 {
 	__intel_display_power_put(display, domain);
 	intel_display_rpm_put(display, wakeref);
@@ -885,7 +886,7 @@ intel_display_power_get_in_set(struct intel_display *display,
 			       struct intel_display_power_domain_set *power_domain_set,
 			       enum intel_display_power_domain domain)
 {
-	intel_wakeref_t __maybe_unused wf;
+	struct ref_tracker *__maybe_unused wf;
 
 	drm_WARN_ON(display->drm, test_bit(domain, power_domain_set->mask.bits));
 
@@ -901,7 +902,7 @@ intel_display_power_get_in_set_if_enabled(struct intel_display *display,
 					  struct intel_display_power_domain_set *power_domain_set,
 					  enum intel_display_power_domain domain)
 {
-	intel_wakeref_t wf;
+	struct ref_tracker *wf;
 
 	drm_WARN_ON(display->drm, test_bit(domain, power_domain_set->mask.bits));
 
@@ -928,7 +929,7 @@ intel_display_power_put_mask_in_set(struct intel_display *display,
 		    !bitmap_subset(mask->bits, power_domain_set->mask.bits, POWER_DOMAIN_NUM));
 
 	for_each_power_domain(domain, mask) {
-		intel_wakeref_t __maybe_unused wf = INTEL_WAKEREF_DEF;
+		struct ref_tracker *__maybe_unused wf = INTEL_WAKEREF_DEF;
 
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 		wf = fetch_and_zero(&power_domain_set->wakerefs[domain]);
@@ -2004,7 +2005,7 @@ void intel_power_domains_init_hw(struct intel_display *display, bool resume)
  */
 void intel_power_domains_driver_remove(struct intel_display *display)
 {
-	intel_wakeref_t wakeref __maybe_unused =
+	struct ref_tracker *wakeref __maybe_unused =
 		fetch_and_zero(&display->power.domains.init_wakeref);
 
 	/* Remove the refcount we took to keep power well support disabled. */
@@ -2065,7 +2066,7 @@ void intel_power_domains_sanitize_state(struct intel_display *display)
  */
 void intel_power_domains_enable(struct intel_display *display)
 {
-	intel_wakeref_t wakeref __maybe_unused =
+	struct ref_tracker *wakeref __maybe_unused =
 		fetch_and_zero(&display->power.domains.init_wakeref);
 
 	intel_display_power_put(display, POWER_DOMAIN_INIT, wakeref);
@@ -2104,7 +2105,7 @@ void intel_power_domains_disable(struct intel_display *display)
 void intel_power_domains_suspend(struct intel_display *display, bool s2idle)
 {
 	struct i915_power_domains *power_domains = &display->power.domains;
-	intel_wakeref_t wakeref __maybe_unused =
+	struct ref_tracker *wakeref __maybe_unused =
 		fetch_and_zero(&power_domains->init_wakeref);
 
 	intel_display_power_put(display, POWER_DOMAIN_INIT, wakeref);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 79ce8d94bf7d..e82597a8bda1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -9,13 +9,12 @@
 #include <linux/mutex.h>
 #include <linux/workqueue.h>
 
-#include "intel_wakeref.h"
-
 enum aux_ch;
 enum port;
 struct i915_power_well;
 struct intel_display;
 struct intel_encoder;
+struct ref_tracker;
 struct seq_file;
 
 /*
@@ -142,14 +141,14 @@ struct i915_power_domains {
 	u32 target_dc_state;
 	u32 allowed_dc_mask;
 
-	intel_wakeref_t init_wakeref;
-	intel_wakeref_t disable_wakeref;
+	struct ref_tracker *init_wakeref;
+	struct ref_tracker *disable_wakeref;
 
 	struct mutex lock;
 	int domain_use_count[POWER_DOMAIN_NUM];
 
 	struct delayed_work async_put_work;
-	intel_wakeref_t async_put_wakeref;
+	struct ref_tracker *async_put_wakeref;
 	struct intel_power_domain_mask async_put_domains[2];
 	int async_put_next_delay;
 
@@ -159,7 +158,7 @@ struct i915_power_domains {
 struct intel_display_power_domain_set {
 	struct intel_power_domain_mask mask;
 #ifdef CONFIG_DRM_I915_DEBUG_RUNTIME_PM
-	intel_wakeref_t wakerefs[POWER_DOMAIN_NUM];
+	struct ref_tracker *wakerefs[POWER_DOMAIN_NUM];
 #endif
 };
 
@@ -187,24 +186,24 @@ u32 intel_display_power_get_current_dc_state(struct intel_display *display);
 
 bool intel_display_power_is_enabled(struct intel_display *display,
 				    enum intel_display_power_domain domain);
-intel_wakeref_t intel_display_power_get(struct intel_display *display,
-					enum intel_display_power_domain domain);
-intel_wakeref_t
+struct ref_tracker *intel_display_power_get(struct intel_display *display,
+					    enum intel_display_power_domain domain);
+struct ref_tracker *
 intel_display_power_get_if_enabled(struct intel_display *display,
 				   enum intel_display_power_domain domain);
 void __intel_display_power_put_async(struct intel_display *display,
 				     enum intel_display_power_domain domain,
-				     intel_wakeref_t wakeref,
+				     struct ref_tracker *wakeref,
 				     int delay_ms);
 void intel_display_power_flush_work(struct intel_display *display);
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 void intel_display_power_put(struct intel_display *display,
 			     enum intel_display_power_domain domain,
-			     intel_wakeref_t wakeref);
+			     struct ref_tracker *wakeref);
 static inline void
 intel_display_power_put_async(struct intel_display *display,
 			      enum intel_display_power_domain domain,
-			      intel_wakeref_t wakeref)
+			      struct ref_tracker *wakeref)
 {
 	__intel_display_power_put_async(display, domain, wakeref, -1);
 }
@@ -212,7 +211,7 @@ intel_display_power_put_async(struct intel_display *display,
 static inline void
 intel_display_power_put_async_delay(struct intel_display *display,
 				    enum intel_display_power_domain domain,
-				    intel_wakeref_t wakeref,
+				    struct ref_tracker *wakeref,
 				    int delay_ms)
 {
 	__intel_display_power_put_async(display, domain, wakeref, delay_ms);
@@ -224,7 +223,7 @@ void intel_display_power_put_unchecked(struct intel_display *display,
 static inline void
 intel_display_power_put(struct intel_display *display,
 			enum intel_display_power_domain domain,
-			intel_wakeref_t wakeref)
+			struct ref_tracker *wakeref)
 {
 	intel_display_power_put_unchecked(display, domain);
 }
@@ -232,7 +231,7 @@ intel_display_power_put(struct intel_display *display,
 static inline void
 intel_display_power_put_async(struct intel_display *display,
 			      enum intel_display_power_domain domain,
-			      intel_wakeref_t wakeref)
+			      struct ref_tracker *wakeref)
 {
 	__intel_display_power_put_async(display, domain, INTEL_WAKEREF_DEF, -1);
 }
@@ -240,7 +239,7 @@ intel_display_power_put_async(struct intel_display *display,
 static inline void
 intel_display_power_put_async_delay(struct intel_display *display,
 				    enum intel_display_power_domain domain,
-				    intel_wakeref_t wakeref,
+				    struct ref_tracker *wakeref,
 				    int delay_ms)
 {
 	__intel_display_power_put_async(display, domain, INTEL_WAKEREF_DEF, delay_ms);
@@ -298,14 +297,14 @@ void gen9_dbuf_slices_update(struct intel_display *display,
 			     u8 req_slices);
 
 #define __with_intel_display_power(display, domain, wf) \
-	for (intel_wakeref_t (wf) = intel_display_power_get((display), (domain)); (wf); \
+	for (struct ref_tracker *(wf) = intel_display_power_get((display), (domain)); (wf); \
 	     intel_display_power_put_async((display), (domain), (wf)), (wf) = NULL)
 
 #define with_intel_display_power(display, domain) \
 	__with_intel_display_power(display, domain, __UNIQUE_ID(wakeref))
 
 #define __with_intel_display_power_if_enabled(display, domain, wf) \
-	for (intel_wakeref_t (wf) = intel_display_power_get_if_enabled((display), (domain)); (wf); \
+	for (struct ref_tracker *(wf) = intel_display_power_get_if_enabled((display), (domain)); (wf); \
 	     intel_display_power_put_async((display), (domain), (wf)), (wf) = NULL)
 
 #define with_intel_display_power_if_enabled(display, domain) \
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 38702a9e0f50..ed0f7448e6cd 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1658,7 +1658,7 @@ struct intel_pps {
 	unsigned long last_power_on;
 	unsigned long last_backlight_off;
 	ktime_t panel_power_off_time;
-	intel_wakeref_t vdd_wakeref;
+	struct ref_tracker *vdd_wakeref;
 
 	union {
 		/*
@@ -1940,8 +1940,8 @@ struct intel_digital_port {
 	/* Used for DP and ICL+ TypeC/DP and TypeC/HDMI ports. */
 	enum aux_ch aux_ch;
 	enum intel_display_power_domain ddi_io_power_domain;
-	intel_wakeref_t ddi_io_wakeref;
-	intel_wakeref_t aux_wakeref;
+	struct ref_tracker *ddi_io_wakeref;
+	struct ref_tracker *aux_wakeref;
 
 	struct intel_tc_port *tc;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 6ebbd97e6351..2fb6fec6dc99 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -1322,7 +1322,7 @@ static void intel_dmc_runtime_pm_get(struct intel_display *display)
 
 static void intel_dmc_runtime_pm_put(struct intel_display *display)
 {
-	intel_wakeref_t wakeref __maybe_unused =
+	struct ref_tracker *wakeref __maybe_unused =
 		fetch_and_zero(&display->dmc.wakeref);
 
 	intel_display_power_put(display, POWER_DOMAIN_INIT, wakeref);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
index 38e03f3efac5..51b3a168ec33 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
@@ -245,7 +245,7 @@ intel_dp_aux_xfer(struct intel_dp *intel_dp,
 	i915_reg_t ch_ctl, ch_data[5];
 	u32 aux_clock_divider;
 	enum intel_display_power_domain aux_domain;
-	intel_wakeref_t aux_wakeref;
+	struct ref_tracker *aux_wakeref;
 	struct ref_tracker *pps_wakeref = NULL;
 	int i, ret, recv_bytes;
 	int try, clock = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index 6d7d5394713d..334e565e5627 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -547,7 +547,7 @@ static bool ibx_pch_dpll_get_hw_state(struct intel_display *display,
 {
 	struct i9xx_dpll_hw_state *hw_state = &dpll_hw_state->i9xx;
 	const enum intel_dpll_id id = pll->info->id;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	u32 val;
 
 	wakeref = intel_display_power_get_if_enabled(display,
@@ -768,7 +768,7 @@ static bool hsw_ddi_wrpll_get_hw_state(struct intel_display *display,
 {
 	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
 	const enum intel_dpll_id id = pll->info->id;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	u32 val;
 
 	wakeref = intel_display_power_get_if_enabled(display,
@@ -789,7 +789,7 @@ static bool hsw_ddi_spll_get_hw_state(struct intel_display *display,
 				      struct intel_dpll_hw_state *dpll_hw_state)
 {
 	struct hsw_dpll_hw_state *hw_state = &dpll_hw_state->hsw;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	u32 val;
 
 	wakeref = intel_display_power_get_if_enabled(display,
@@ -1447,7 +1447,7 @@ static bool skl_ddi_pll_get_hw_state(struct intel_display *display,
 	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
 	const enum intel_dpll_id id = pll->info->id;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool ret;
 	u32 val;
 
@@ -1485,7 +1485,7 @@ static bool skl_ddi_dpll0_get_hw_state(struct intel_display *display,
 	struct skl_dpll_hw_state *hw_state = &dpll_hw_state->skl;
 	const struct skl_dpll_regs *regs = skl_dpll_regs;
 	const enum intel_dpll_id id = pll->info->id;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	u32 val;
 	bool ret;
 
@@ -2188,7 +2188,7 @@ static bool bxt_ddi_pll_get_hw_state(struct intel_display *display,
 {
 	struct bxt_dpll_hw_state *hw_state = &dpll_hw_state->bxt;
 	enum port port = (enum port)pll->info->id; /* 1:1 port->PLL mapping */
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	enum dpio_phy phy;
 	enum dpio_channel ch;
 	u32 val;
@@ -3597,7 +3597,7 @@ static bool mg_pll_get_hw_state(struct intel_display *display,
 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	const enum intel_dpll_id id = pll->info->id;
 	enum tc_port tc_port = icl_pll_id_to_tc_port(id);
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool ret = false;
 	u32 val;
 
@@ -3664,7 +3664,7 @@ static bool dkl_pll_get_hw_state(struct intel_display *display,
 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	const enum intel_dpll_id id = pll->info->id;
 	enum tc_port tc_port = icl_pll_id_to_tc_port(id);
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool ret = false;
 	u32 val;
 
@@ -3736,7 +3736,7 @@ static bool icl_pll_get_hw_state(struct intel_display *display,
 {
 	struct icl_dpll_hw_state *hw_state = &dpll_hw_state->icl;
 	const enum intel_dpll_id id = pll->info->id;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool ret = false;
 	u32 val;
 
diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
index 322af5c55d7c..5b71c860515f 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.h
@@ -28,7 +28,6 @@
 #include <linux/types.h>
 
 #include "intel_display_power.h"
-#include "intel_wakeref.h"
 
 #define for_each_dpll(__display, __pll, __i) \
 	for ((__i) = 0; (__i) < (__display)->dpll.num_dpll && \
@@ -42,6 +41,7 @@ struct intel_crtc_state;
 struct intel_dpll_funcs;
 struct intel_encoder;
 struct intel_shared_dpll;
+struct ref_tracker;
 
 /**
  * enum intel_dpll_id - possible DPLL ids
@@ -396,7 +396,7 @@ struct intel_dpll {
 	 * @wakeref: In some platforms a device-level runtime pm reference may
 	 * need to be grabbed to disable DC states while this DPLL is enabled
 	 */
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 };
 
 #define SKL_DPLL0 0
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
index 89c7166a3860..489d26ffd235 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi.h
@@ -29,6 +29,9 @@
 
 #include "intel_display_types.h"
 
+struct intel_dsi_host;
+struct ref_tracker;
+
 #define INTEL_DSI_VIDEO_MODE	0
 #define INTEL_DSI_COMMAND_MODE	1
 
@@ -37,13 +40,11 @@
 #define DSI_DUAL_LINK_FRONT_BACK	1
 #define DSI_DUAL_LINK_PIXEL_ALT		2
 
-struct intel_dsi_host;
-
 struct intel_dsi {
 	struct intel_encoder base;
 
 	struct intel_dsi_host *dsi_hosts[I915_MAX_PORTS];
-	intel_wakeref_t io_wakeref[I915_MAX_PORTS];
+	struct ref_tracker *io_wakeref[I915_MAX_PORTS];
 
 	/* GPIO Desc for panel and backlight control */
 	struct gpio_desc *gpio_panel;
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index acc85853b2a7..2caff677600c 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -789,7 +789,7 @@ gmbus_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs, int num)
 {
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
 	struct intel_display *display = bus->display;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	int ret;
 
 	wakeref = intel_display_power_get(display, POWER_DOMAIN_GMBUS);
@@ -829,7 +829,7 @@ int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
 			.buf = buf,
 		}
 	};
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	int ret;
 
 	wakeref = intel_display_power_get(display, POWER_DOMAIN_GMBUS);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 908faf17f93d..055e68810d0d 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2518,7 +2518,7 @@ intel_hdmi_set_edid(struct drm_connector *_connector)
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(connector);
 	struct i2c_adapter *ddc = connector->base.ddc;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	const struct drm_edid *drm_edid;
 	bool connected = false;
 
@@ -2561,7 +2561,7 @@ intel_hdmi_detect(struct drm_connector *_connector, bool force)
 	enum drm_connector_status status = connector_status_disconnected;
 	struct intel_hdmi *intel_hdmi = intel_attached_hdmi(connector);
 	struct intel_encoder *encoder = &hdmi_to_dig_port(intel_hdmi)->base;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 
 	drm_dbg_kms(display->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.base.id, connector->base.name);
diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/drm/i915/display/intel_hotplug.c
index 7575a063f7be..970aa95ee344 100644
--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
@@ -785,7 +785,7 @@ static void i915_hpd_poll_init_work(struct work_struct *work)
 		container_of(work, typeof(*display), hotplug.poll_init_work);
 	struct drm_connector_list_iter conn_iter;
 	struct intel_connector *connector;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool enabled;
 
 	mutex_lock(&display->drm->mode_config.mutex);
diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
index aaf5a2433690..939c8975fd4c 100644
--- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
@@ -1324,11 +1324,11 @@ intel_lt_phy_config_changed(struct intel_encoder *encoder,
 	return true;
 }
 
-static intel_wakeref_t intel_lt_phy_transaction_begin(struct intel_encoder *encoder)
+static struct ref_tracker *intel_lt_phy_transaction_begin(struct intel_encoder *encoder)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 
 	intel_psr_pause(intel_dp);
 	wakeref = intel_display_power_get(display, POWER_DOMAIN_DC_OFF);
@@ -1336,7 +1336,7 @@ static intel_wakeref_t intel_lt_phy_transaction_begin(struct intel_encoder *enco
 	return wakeref;
 }
 
-static void intel_lt_phy_transaction_end(struct intel_encoder *encoder, intel_wakeref_t wakeref)
+static void intel_lt_phy_transaction_end(struct intel_encoder *encoder, struct ref_tracker *wakeref)
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -1932,7 +1932,7 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
 	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 	enum port port = encoder->port;
-	intel_wakeref_t wakeref = 0;
+	struct ref_tracker *wakeref = 0;
 	u32 lane_phy_pulse_status = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
 					? (XE3PLPDP_LANE_PHY_PULSE_STATUS(0) |
 					   XE3PLPDP_LANE_PHY_PULSE_STATUS(1))
@@ -2060,7 +2060,7 @@ void intel_lt_phy_pll_disable(struct intel_encoder *encoder)
 	struct intel_display *display = to_intel_display(encoder);
 	enum phy phy = intel_encoder_to_phy(encoder);
 	enum port port = encoder->port;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
 	u32 lane_pipe_reset = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
 				? (XELPDP_LANE_PIPE_RESET(0) |
@@ -2137,7 +2137,7 @@ void intel_lt_phy_set_signal_levels(struct intel_encoder *encoder,
 	struct intel_display *display = to_intel_display(encoder);
 	const struct intel_ddi_buf_trans *trans;
 	u8 owned_lane_mask;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	int n_entries, ln;
 	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
 
@@ -2222,7 +2222,7 @@ void intel_lt_phy_pll_readout_hw_state(struct intel_encoder *encoder,
 {
 	u8 owned_lane_mask;
 	u8 lane;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	int i, j, k;
 
 	pll_state->tbt_mode = intel_tc_port_in_tbt_alt_mode(enc_to_dig_port(encoder));
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 89aeb4fb340e..457d60863536 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -105,7 +105,7 @@ static bool intel_lvds_get_hw_state(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_lvds_encoder *lvds_encoder = to_lvds_encoder(encoder);
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool ret;
 
 	wakeref = intel_display_power_get_if_enabled(display, encoder->power_domain);
diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
index 0dcb0597879a..d10cbf69a5f8 100644
--- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
+++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
@@ -940,7 +940,7 @@ void intel_modeset_setup_hw_state(struct intel_display *display,
 {
 	struct intel_encoder *encoder;
 	struct intel_crtc *crtc;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 
 	wakeref = intel_display_power_get(display, POWER_DOMAIN_INIT);
 
diff --git a/drivers/gpu/drm/i915/display/intel_pipe_crc.c b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
index 71cb0178c8b1..57586c78582d 100644
--- a/drivers/gpu/drm/i915/display/intel_pipe_crc.c
+++ b/drivers/gpu/drm/i915/display/intel_pipe_crc.c
@@ -588,7 +588,7 @@ int intel_crtc_set_crc_source(struct drm_crtc *_crtc, const char *source_name)
 	enum intel_display_power_domain power_domain;
 	enum intel_pipe_crc_source source;
 	enum pipe pipe = crtc->pipe;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	u32 val = 0; /* shut up gcc */
 	int ret = 0;
 	bool enable;
diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
index 69b6873a6044..2d1c293aeff6 100644
--- a/drivers/gpu/drm/i915/display/intel_sprite.c
+++ b/drivers/gpu/drm/i915/display/intel_sprite.c
@@ -462,7 +462,7 @@ vlv_sprite_get_hw_state(struct intel_plane *plane,
 	struct intel_display *display = to_intel_display(plane);
 	enum intel_display_power_domain power_domain;
 	enum plane_id plane_id = plane->id;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool ret;
 
 	power_domain = POWER_DOMAIN_PIPE(plane->pipe);
@@ -893,7 +893,7 @@ ivb_sprite_get_hw_state(struct intel_plane *plane,
 {
 	struct intel_display *display = to_intel_display(plane);
 	enum intel_display_power_domain power_domain;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool ret;
 
 	power_domain = POWER_DOMAIN_PIPE(plane->pipe);
@@ -1233,7 +1233,7 @@ g4x_sprite_get_hw_state(struct intel_plane *plane,
 {
 	struct intel_display *display = to_intel_display(plane);
 	enum intel_display_power_domain power_domain;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool ret;
 
 	power_domain = POWER_DOMAIN_PIPE(plane->pipe);
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index c678216af352..064f572bbc85 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -51,7 +51,7 @@ struct intel_tc_port {
 	const struct intel_tc_phy_ops *phy_ops;
 
 	struct mutex lock;	/* protects the TypeC port mode */
-	intel_wakeref_t lock_wakeref;
+	struct ref_tracker *lock_wakeref;
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
 	enum intel_display_power_domain lock_power_domain;
 #endif
@@ -182,7 +182,7 @@ bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port)
 	       intel_display_power_legacy_aux_domain(display, dig_port->aux_ch);
 }
 
-static intel_wakeref_t
+static struct ref_tracker *
 __tc_cold_block(struct intel_tc_port *tc, enum intel_display_power_domain *domain)
 {
 	struct intel_display *display = to_intel_display(tc->dig_port);
@@ -192,11 +192,11 @@ __tc_cold_block(struct intel_tc_port *tc, enum intel_display_power_domain *domai
 	return intel_display_power_get(display, *domain);
 }
 
-static intel_wakeref_t
+static struct ref_tracker *
 tc_cold_block(struct intel_tc_port *tc)
 {
 	enum intel_display_power_domain domain;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 
 	wakeref = __tc_cold_block(tc, &domain);
 #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
@@ -207,7 +207,7 @@ tc_cold_block(struct intel_tc_port *tc)
 
 static void
 __tc_cold_unblock(struct intel_tc_port *tc, enum intel_display_power_domain domain,
-		  intel_wakeref_t wakeref)
+		  struct ref_tracker *wakeref)
 {
 	struct intel_display *display = to_intel_display(tc->dig_port);
 
@@ -215,7 +215,7 @@ __tc_cold_unblock(struct intel_tc_port *tc, enum intel_display_power_domain doma
 }
 
 static void
-tc_cold_unblock(struct intel_tc_port *tc, intel_wakeref_t wakeref)
+tc_cold_unblock(struct intel_tc_port *tc, struct ref_tracker *wakeref)
 {
 	struct intel_display __maybe_unused *display = to_intel_display(tc->dig_port);
 	enum intel_display_power_domain domain = tc_phy_cold_off_domain(tc);
@@ -625,7 +625,7 @@ static bool icl_tc_phy_is_owned(struct intel_tc_port *tc)
 static void icl_tc_phy_get_hw_state(struct intel_tc_port *tc)
 {
 	enum intel_display_power_domain domain;
-	intel_wakeref_t tc_cold_wref;
+	struct ref_tracker *tc_cold_wref;
 
 	tc_cold_wref = __tc_cold_block(tc, &domain);
 
@@ -892,7 +892,7 @@ static void adlp_tc_phy_get_hw_state(struct intel_tc_port *tc)
 	struct intel_display *display = to_intel_display(tc->dig_port);
 	enum intel_display_power_domain port_power_domain =
 		tc_port_power_domain(tc);
-	intel_wakeref_t port_wakeref;
+	struct ref_tracker *port_wakeref;
 
 	port_wakeref = intel_display_power_get(display, port_power_domain);
 
@@ -911,7 +911,7 @@ static bool adlp_tc_phy_connect(struct intel_tc_port *tc, int required_lanes)
 	struct intel_display *display = to_intel_display(tc->dig_port);
 	enum intel_display_power_domain port_power_domain =
 		tc_port_power_domain(tc);
-	intel_wakeref_t port_wakeref;
+	struct ref_tracker *port_wakeref;
 
 	if (tc->mode == TC_PORT_TBT_ALT) {
 		tc->lock_wakeref = tc_cold_block(tc);
@@ -963,7 +963,7 @@ static void adlp_tc_phy_disconnect(struct intel_tc_port *tc)
 	struct intel_display *display = to_intel_display(tc->dig_port);
 	enum intel_display_power_domain port_power_domain =
 		tc_port_power_domain(tc);
-	intel_wakeref_t port_wakeref;
+	struct ref_tracker *port_wakeref;
 
 	port_wakeref = intel_display_power_get(display, port_power_domain);
 
@@ -1169,7 +1169,7 @@ static bool xelpdp_tc_phy_is_owned(struct intel_tc_port *tc)
 static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
 {
 	struct intel_display *display = to_intel_display(tc->dig_port);
-	intel_wakeref_t tc_cold_wref;
+	struct ref_tracker *tc_cold_wref;
 	enum intel_display_power_domain domain;
 
 	tc_cold_wref = __tc_cold_block(tc, &domain);
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 0e727fc5e80c..ad5fe841e4b3 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -999,7 +999,7 @@ void intel_dsc_get_config(struct intel_crtc_state *crtc_state)
 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
 	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
 	enum intel_display_power_domain power_domain;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	u32 dss_ctl1, dss_ctl2;
 
 	if (!intel_dsc_source_support(crtc_state))
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 89c8003ccfe7..0b5a1ec2f77a 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -939,7 +939,7 @@ skl_plane_get_hw_state(struct intel_plane *plane,
 	struct intel_display *display = to_intel_display(plane);
 	enum intel_display_power_domain power_domain;
 	enum plane_id plane_id = plane->id;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	bool ret;
 
 	power_domain = POWER_DOMAIN_PIPE(plane->pipe);
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 7964cfffdaae..a6aab79812e5 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -718,7 +718,7 @@ static void skl_pipe_ddb_get_hw_state(struct intel_crtc *crtc,
 	struct intel_display *display = to_intel_display(crtc);
 	enum intel_display_power_domain power_domain;
 	enum pipe pipe = crtc->pipe;
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	enum plane_id plane_id;
 
 	power_domain = POWER_DOMAIN_PIPE(pipe);
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 19bdd8662359..d705af3bf8ba 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -936,7 +936,7 @@ static bool intel_dsi_get_hw_state(struct intel_encoder *encoder,
 {
 	struct intel_display *display = to_intel_display(encoder);
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
-	intel_wakeref_t wakeref;
+	struct ref_tracker *wakeref;
 	enum port port;
 	bool active = false;
 
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
index 2a32faea9db5..910a8a60da64 100644
--- a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
+++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
@@ -3,8 +3,4 @@
  * Copyright © 2023 Intel Corporation
  */
 
-#include <linux/types.h>
-
-typedef struct ref_tracker *intel_wakeref_t;
-
 #define INTEL_WAKEREF_DEF ERR_PTR(-ENOENT)
diff --git a/drivers/gpu/drm/xe/display/xe_display_rpm.c b/drivers/gpu/drm/xe/display/xe_display_rpm.c
index 340f65884812..9416ec784e39 100644
--- a/drivers/gpu/drm/xe/display/xe_display_rpm.c
+++ b/drivers/gpu/drm/xe/display/xe_display_rpm.c
@@ -5,6 +5,7 @@
 
 #include "intel_display_core.h"
 #include "intel_display_rpm.h"
+#include "intel_wakeref.h"
 #include "xe_device.h"
 #include "xe_device_types.h"
 #include "xe_pm.h"
-- 
2.47.3

