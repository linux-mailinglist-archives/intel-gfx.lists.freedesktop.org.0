Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D670C6EE0AC
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 12:55:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D21610E701;
	Tue, 25 Apr 2023 10:55:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C1710E701
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 10:55:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682420114; x=1713956114;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=pdpSCtOU6BcIMoOmSUxCQ5LTdtMHFZvvL2u3YUsvaxg=;
 b=nW32PLlanLVs+T/E+3X4uLrcNjTVqS1Pk7gsKUs54GUrx4ifUtTD6Msa
 i9bYpPNqp/Ahf18fdW/h2Ao+vGoVMqt4YNuE7A4T506LcETvLCWjTNhmE
 a9e8AjEDH2lbO53u3LT0g9IIIr8rzG8kqyPAFIwlrv5ljHQV6Rn0/VXYA
 cI4MBg6TOoRb7qYJZ4MRagweQ4rffYOo33IF1wFVuI85RXUfAOeZrPk9Z
 GLwVw1YaGQv1N86u4oZQjFXRIX3KZAAHK588ktQx2kiGniwqqJS7ptC+z
 1ONIKlR+BOaSW0rpzHO9v1nMsogpyPvXyUSJnJ9k9EAFiNbjDxy2pUseV Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="412019633"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="412019633"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 03:55:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="687367438"
X-IronPort-AV: E=Sophos;i="5.99,225,1677571200"; d="scan'208";a="687367438"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 25 Apr 2023 03:55:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 25 Apr 2023 13:55:11 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 25 Apr 2023 13:54:43 +0300
Message-Id: <20230425105450.18441-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
References: <20230425105450.18441-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/14] drm/i915/dsi: Respect power cycle delay
 on icl+
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

Handle the DSI panel power cycle delay on icl+.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c   |  6 ++++++
 drivers/gpu/drm/i915/display/intel_dsi.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_dsi.h |  1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c   | 14 --------------
 4 files changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 325e381a83fa..88130cd19d3f 100644
--- a/drivers/gpu/drm/i915/display/icl_dsi.c
+++ b/drivers/gpu/drm/i915/display/icl_dsi.c
@@ -1166,6 +1166,8 @@ static void gen11_dsi_pre_pll_enable(struct intel_atomic_state *state,
 {
 	struct intel_dsi *intel_dsi = enc_to_intel_dsi(encoder);
 
+	intel_dsi_wait_panel_power_cycle(intel_dsi);
+
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_ON);
 	msleep(intel_dsi->panel_on_delay);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_DEASSERT_RESET);
@@ -1292,6 +1294,8 @@ static void gen11_dsi_powerdown_panel(struct intel_encoder *encoder)
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_ASSERT_RESET);
 	intel_dsi_vbt_exec_sequence(intel_dsi, MIPI_SEQ_POWER_OFF);
 
+	intel_dsi->panel_power_off_time = ktime_get_boottime();
+
 	/* ensure cmds dispatched to panel */
 	wait_for_cmds_dispatched_to_panel(encoder);
 }
@@ -1985,6 +1989,8 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
 	/* attach connector to encoder */
 	intel_connector_attach_encoder(intel_connector, encoder);
 
+	intel_dsi->panel_power_off_time = ktime_get_boottime();
+
 	encoder->devdata = intel_bios_encoder_data_lookup(dev_priv, port);
 	intel_bios_init_panel_late(dev_priv, &intel_connector->panel, encoder->devdata, NULL);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
index 5efdd471ac2b..e8a596a7c28a 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi.c
@@ -9,6 +9,19 @@
 #include "intel_dsi.h"
 #include "intel_panel.h"
 
+void intel_dsi_wait_panel_power_cycle(struct intel_dsi *intel_dsi)
+{
+	ktime_t panel_power_on_time;
+	s64 panel_power_off_duration;
+
+	panel_power_on_time = ktime_get_boottime();
+	panel_power_off_duration = ktime_ms_delta(panel_power_on_time,
+						  intel_dsi->panel_power_off_time);
+
+	if (panel_power_off_duration < (s64)intel_dsi->panel_pwr_cycle_delay)
+		msleep(intel_dsi->panel_pwr_cycle_delay - panel_power_off_duration);
+}
+
 int intel_dsi_bitrate(const struct intel_dsi *intel_dsi)
 {
 	int bpp = mipi_dsi_pixel_format_to_bpp(intel_dsi->pixel_format);
diff --git a/drivers/gpu/drm/i915/display/intel_dsi.h b/drivers/gpu/drm/i915/display/intel_dsi.h
index ce80bd8be519..b690e0fcd906 100644
--- a/drivers/gpu/drm/i915/display/intel_dsi.h
+++ b/drivers/gpu/drm/i915/display/intel_dsi.h
@@ -173,5 +173,6 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
 struct intel_dsi_host *intel_dsi_host_init(struct intel_dsi *intel_dsi,
 					   const struct mipi_dsi_host_ops *funcs,
 					   enum port port);
+void intel_dsi_wait_panel_power_cycle(struct intel_dsi *intel_dsi);
 
 #endif /* _INTEL_DSI_H */
diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
index 028965ab442d..e7993480199e 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi.c
+++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
@@ -671,20 +671,6 @@ static void intel_dsi_port_disable(struct intel_encoder *encoder)
 		intel_de_posting_read(dev_priv, port_ctrl);
 	}
 }
-
-static void intel_dsi_wait_panel_power_cycle(struct intel_dsi *intel_dsi)
-{
-	ktime_t panel_power_on_time;
-	s64 panel_power_off_duration;
-
-	panel_power_on_time = ktime_get_boottime();
-	panel_power_off_duration = ktime_ms_delta(panel_power_on_time,
-						  intel_dsi->panel_power_off_time);
-
-	if (panel_power_off_duration < (s64)intel_dsi->panel_pwr_cycle_delay)
-		msleep(intel_dsi->panel_pwr_cycle_delay - panel_power_off_duration);
-}
-
 static void intel_dsi_prepare(struct intel_encoder *intel_encoder,
 			      const struct intel_crtc_state *pipe_config);
 static void intel_dsi_unprepare(struct intel_encoder *encoder);
-- 
2.39.2

