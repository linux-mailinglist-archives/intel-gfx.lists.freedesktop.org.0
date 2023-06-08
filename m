Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E60F72897C
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Jun 2023 22:31:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09BE710E61A;
	Thu,  8 Jun 2023 20:31:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5716310E616
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Jun 2023 20:31:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686256296; x=1717792296;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+UxyQMQaNhJljNAyex+D/Ul5k5gzilU3fnkPeirGcLs=;
 b=ehhFMQHwklgsP80lUe3zRkfsl5zFyb8wpeU5NXuihvNbmU4alcWK5alW
 GRCZHfROKH+1FN1AhKPh/KZBygi4RzBXx3BXfdt1IBvbwvrSxrb5K17WJ
 tZ036ZgvRe9lSHUtXWTirqklHizZwAjzkD0E31mn7BrCXa+wPZroei4QI
 cIVrtwoM3EwatBGKtnD8oyK25ki1cGUWxnWb1yKHckskOaRw0qwPcHOyl
 P3kfq4VSucxtWkx7flJBj2hUbYFxGddjP39doslZxDlgMjCs/jrN29I8g
 SG5Ox6//8u+IqJifzpwJu80Zn2Q8SFlWr6zOMbWx7NwMEGlmvq2MvQGao Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="421012676"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="421012676"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2023 13:31:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="710100755"
X-IronPort-AV: E=Sophos;i="6.00,227,1681196400"; d="scan'208";a="710100755"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 08 Jun 2023 13:31:16 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Jun 2023 23:31:16 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Jun 2023 23:30:50 +0300
Message-Id: <20230608203057.23759-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
References: <20230608203057.23759-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/13] drm/i915/dsi: Respect power cycle
 delay on icl+
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Handle the DSI panel power cycle delay on icl+.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/icl_dsi.c   |  6 ++++++
 drivers/gpu/drm/i915/display/intel_dsi.c | 13 +++++++++++++
 drivers/gpu/drm/i915/display/intel_dsi.h |  1 +
 drivers/gpu/drm/i915/display/vlv_dsi.c   | 14 --------------
 4 files changed, 20 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
index 973215bec3c1..a89a45fc0468 100644
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
@@ -1986,6 +1990,8 @@ void icl_dsi_init(struct drm_i915_private *dev_priv)
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
index ae2f3ab3e73d..1e6f438a43d8 100644
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
2.39.3

