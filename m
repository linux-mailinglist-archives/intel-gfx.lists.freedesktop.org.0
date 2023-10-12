Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CE757C6DF9
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 14:24:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FB5410E11C;
	Thu, 12 Oct 2023 12:24:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDC6A10E11C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 12:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697113488; x=1728649488;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fck2ruw0HgvcL40Ps6jbMrIdAnrVPpjO+0wP2Hr52y8=;
 b=gLeV8ZD6r59cOnQMxtT0w6ZmSOkrAqZv8bnjZbchA59q3GNSPaRPZg8o
 Bv0C+1VAxQ+CNk86yMm4jgpwu7t1VktL5Vtu/FTw0IMqGKw7/UFDJsGE9
 4e2HjX4jYo6Cf4mpqK8LWvJx5LNFPOwDUm8j62Cmgkic802MmucqAdBjm
 wqERBd9+EOvgNNPCUpdrTaeGoia6aAmSwMkSR0EHTTO3j/b4RIraKhvFD
 VaNQdGq/pbjz2ht76rEf/o1YJWOsxWrIZXwcereQ8ZRXBXuHsv9rRcCpn
 MP+xoJIPBG6cZZTSSva7YzvZrQvWYUSqFxHiZvjYjn8PcXfxMoprsN9te A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="382140838"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="382140838"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 05:24:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="844978982"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="844978982"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by FMSMGA003.fm.intel.com with SMTP; 12 Oct 2023 05:24:46 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Oct 2023 15:24:45 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 15:24:37 +0300
Message-ID: <20231012122442.15718-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231012122442.15718-1-ville.syrjala@linux.intel.com>
References: <20231012122442.15718-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/6] drm/i915/display: Clean up zero initializers
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

Just use a simple {} to zero initialize arrays/structs instead
of the hodgepodge of stuff we are using currently.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_acpi.c             | 2 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c          | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.c               | 6 +++---
 drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++--
 drivers/gpu/drm/i915/display/intel_dp_mst.c           | 2 +-
 drivers/gpu/drm/i915/display/intel_gmbus.c            | 2 +-
 drivers/gpu/drm/i915/display/intel_plane_initial.c    | 2 +-
 drivers/gpu/drm/i915/display/intel_sdvo.c             | 2 +-
 drivers/gpu/drm/i915/display/intel_snps_phy.c         | 2 +-
 drivers/gpu/drm/i915/display/intel_wm.c               | 2 +-
 10 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_acpi.c b/drivers/gpu/drm/i915/display/intel_acpi.c
index 9df78e7caa2b..0aa3999374e2 100644
--- a/drivers/gpu/drm/i915/display/intel_acpi.c
+++ b/drivers/gpu/drm/i915/display/intel_acpi.c
@@ -153,7 +153,7 @@ static acpi_handle intel_dsm_pci_probe(struct pci_dev *pdev)
 static bool intel_dsm_detect(void)
 {
 	acpi_handle dhandle = NULL;
-	char acpi_method_name[255] = { 0 };
+	char acpi_method_name[255] = {};
 	struct acpi_buffer buffer = {sizeof(acpi_method_name), acpi_method_name};
 	struct pci_dev *pdev = NULL;
 	int vga_count = 0;
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 6e6a1818071e..d414f6b7f993 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -3009,7 +3009,7 @@ void intel_c10pll_state_verify(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_c10pll_state mpllb_hw_state = { 0 };
+	struct intel_c10pll_state mpllb_hw_state = {};
 	const struct intel_c10pll_state *mpllb_sw_state = &new_crtc_state->cx0pll_state.c10;
 	struct intel_encoder *encoder;
 	enum phy phy;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4f6835a7578e..cb87687f5f10 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1581,7 +1581,7 @@ int intel_dp_dsc_compute_max_bpp(struct intel_dp *intel_dp, u8 max_req_bpc)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	int i, num_bpc;
-	u8 dsc_bpc[3] = {0};
+	u8 dsc_bpc[3] = {};
 	u8 dsc_max_bpc;
 
 	dsc_max_bpc = intel_dp_dsc_max_src_input_bpc(i915);
@@ -2003,7 +2003,7 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	u8 max_req_bpc = conn_state->max_requested_bpc;
 	u8 dsc_max_bpc, dsc_max_bpp;
 	u8 dsc_min_bpc, dsc_min_bpp;
-	u8 dsc_bpc[3] = {0};
+	u8 dsc_bpc[3] = {};
 	int forced_bpp, pipe_bpp;
 	int num_bpc, i, ret;
 
@@ -2933,7 +2933,7 @@ intel_edp_init_source_oui(struct intel_dp *intel_dp, bool careful)
 {
 	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
 	u8 oui[] = { 0x00, 0xaa, 0x01 };
-	u8 buf[3] = { 0 };
+	u8 buf[3] = {};
 
 	/*
 	 * During driver init, we want to be careful and avoid changing the source OUI if it's
diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
index 95cc5251843e..26ea7e9f1b89 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
@@ -169,7 +169,7 @@ intel_dp_aux_hdr_get_backlight(struct intel_connector *connector, enum pipe pipe
 	struct intel_panel *panel = &connector->panel;
 	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
 	u8 tmp;
-	u8 buf[2] = { 0 };
+	u8 buf[2] = {};
 
 	if (drm_dp_dpcd_readb(&intel_dp->aux, INTEL_EDP_HDR_GETSET_CTRL_PARAMS, &tmp) != 1) {
 		drm_err(&i915->drm, "[CONNECTOR:%d:%s] Failed to read current backlight mode from DPCD\n",
@@ -204,7 +204,7 @@ intel_dp_aux_hdr_set_aux_backlight(const struct drm_connector_state *conn_state,
 	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	struct drm_device *dev = connector->base.dev;
 	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
-	u8 buf[4] = { 0 };
+	u8 buf[4] = {};
 
 	buf[0] = level & 0xFF;
 	buf[1] = (level & 0xFF00) >> 8;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 73e397736463..2f5e50506088 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -194,7 +194,7 @@ static int intel_dp_dsc_mst_compute_link_config(struct intel_encoder *encoder,
 		&crtc_state->hw.adjusted_mode;
 	int slots = -EINVAL;
 	int i, num_bpc;
-	u8 dsc_bpc[3] = {0};
+	u8 dsc_bpc[3] = {};
 	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
 	u8 dsc_max_bpc;
 	bool need_timeslot_recalc = false;
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index 801fabbccf7e..40d7b6f3f489 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -781,7 +781,7 @@ int intel_gmbus_output_aksv(struct i2c_adapter *adapter)
 	struct intel_gmbus *bus = to_intel_gmbus(adapter);
 	struct drm_i915_private *i915 = bus->i915;
 	u8 cmd = DRM_HDCP_DDC_AKSV;
-	u8 buf[DRM_HDCP_KSV_LEN] = { 0 };
+	u8 buf[DRM_HDCP_KSV_LEN] = {};
 	struct i2c_msg msgs[] = {
 		{
 			.addr = DRM_HDCP_DDC_ADDR,
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index 451a642e106e..a55c09cbd0e4 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -166,7 +166,7 @@ intel_alloc_initial_plane_obj(struct intel_crtc *crtc,
 {
 	struct drm_device *dev = crtc->base.dev;
 	struct drm_i915_private *dev_priv = to_i915(dev);
-	struct drm_mode_fb_cmd2 mode_cmd = { 0 };
+	struct drm_mode_fb_cmd2 mode_cmd = {};
 	struct drm_framebuffer *fb = &plane_config->fb->base;
 	struct i915_vma *vma;
 
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 35137e978591..a636f42ceae5 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -649,7 +649,7 @@ intel_sdvo_get_value(struct intel_sdvo *intel_sdvo, u8 cmd, void *value, int len
 
 static bool intel_sdvo_set_target_input(struct intel_sdvo *intel_sdvo)
 {
-	struct intel_sdvo_set_target_input_args targets = {0};
+	struct intel_sdvo_set_target_input_args targets = {};
 	return intel_sdvo_set_value(intel_sdvo,
 				    SDVO_CMD_SET_TARGET_INPUT,
 				    &targets, sizeof(targets));
diff --git a/drivers/gpu/drm/i915/display/intel_snps_phy.c b/drivers/gpu/drm/i915/display/intel_snps_phy.c
index c0285365efae..ce5a73a4cc89 100644
--- a/drivers/gpu/drm/i915/display/intel_snps_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_snps_phy.c
@@ -1998,7 +1998,7 @@ void intel_mpllb_state_verify(struct intel_atomic_state *state,
 	struct drm_i915_private *i915 = to_i915(state->base.dev);
 	const struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
-	struct intel_mpllb_state mpllb_hw_state = { 0 };
+	struct intel_mpllb_state mpllb_hw_state = {};
 	const struct intel_mpllb_state *mpllb_sw_state = &new_crtc_state->mpllb_state;
 	struct intel_encoder *encoder;
 
diff --git a/drivers/gpu/drm/i915/display/intel_wm.c b/drivers/gpu/drm/i915/display/intel_wm.c
index b615449e70b4..82c4933ad507 100644
--- a/drivers/gpu/drm/i915/display/intel_wm.c
+++ b/drivers/gpu/drm/i915/display/intel_wm.c
@@ -290,7 +290,7 @@ static ssize_t wm_latency_write(struct file *file, const char __user *ubuf,
 {
 	struct seq_file *m = file->private_data;
 	struct drm_i915_private *dev_priv = m->private;
-	u16 new[8] = { 0 };
+	u16 new[8] = {};
 	int level;
 	int ret;
 	char tmp[32];
-- 
2.41.0

