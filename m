Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FFA449F8B5
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 12:50:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CA6510E3D7;
	Fri, 28 Jan 2022 11:49:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52EC410E714
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 11:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643370576; x=1674906576;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6HnqUHEpLmXIqPEOnTzpzd+ZfXxetOxRHv4P/1Lttxs=;
 b=FPVdgEHIuVlnSdawkdHS82Y8SaYaMEwLz/vc+dvaYOPLPgGbPzRuGn2f
 5cwoHPJXjLCIItCZJnD+HK9arKlMdONnjwr8iZ8F8Ki09YEC/5vOSBZ8B
 Mnp5ZJf0Eb7IiZdDHWblOgo7dKRTigUtwjOvSjCNTCV3oedutVCuZx6+6
 EwvC02vS34u9gF9oaoTw/wMan8Nnj5JEhYmR2QzIMjg25HhUsSE0MaNbL
 HHZx+zlXuvAq96mvOEkoBDt4J9mVGSIQdDr4fZ0Otvekd9gx4C+KW9NbX
 lDw+tcFZo/zwZwQijGgKPhjTCxFSmpgqXrJJo3K+yPbcbVaLW8t3z/h49 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="310420956"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="310420956"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="480712869"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 03:49:35 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 13:49:10 +0200
Message-Id: <20220128114914.2339526-16-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220128114914.2339526-1-imre.deak@intel.com>
References: <20220128114914.2339526-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 15/19] drm/i915: Sanitize the port -> DDI/AUX
 power domain mapping for each platform
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

Atm the port -> DDI and AUX power domain mapping is specified by relying
on the aliasing of the platform specific intel_display_power_domain enum
values. For instance D12+ platforms refer to the 'D' port and power
domain instances, which doesn't match the bspec terminology, on these
platforms the corresponding port is TC1. To make it clear what
port/domain the code refers to add a mapping between them which matches
the bspec terms on different display versions.

This also allows for removing the aliasing in enum values in a follow-up
patch.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |   3 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   3 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   5 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  84 +------
 drivers/gpu/drm/i915/display/intel_display.h  |   4 +-
 .../drm/i915/display/intel_display_power.h    |  12 +
 .../i915/display/intel_display_power_map.c    | 206 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_tc.c       |   4 +-
 8 files changed, 232 insertions(+), 89 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index f37677df6ebfc..b87cbecc0d213 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -11,6 +11,7 @@
 #include "intel_connector.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
+#include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
@@ -1386,7 +1387,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	dig_port->max_lanes = 4;
 
 	intel_encoder->type = INTEL_OUTPUT_DP;
-	intel_encoder->power_domain = intel_port_to_power_domain(port);
+	intel_encoder->power_domain = intel_ddi_lanes_power_domain(dev_priv, port);
 	if (IS_CHERRYVIEW(dev_priv)) {
 		if (port == PORT_D)
 			intel_encoder->pipe_mask = BIT(PIPE_C);
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 06e00b1eaa7ce..92474ef7a2e1d 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -10,6 +10,7 @@
 #include "intel_connector.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
+#include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_dpio_phy.h"
 #include "intel_fifo_underrun.h"
@@ -588,7 +589,7 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 	intel_encoder->shutdown = intel_hdmi_encoder_shutdown;
 
 	intel_encoder->type = INTEL_OUTPUT_HDMI;
-	intel_encoder->power_domain = intel_port_to_power_domain(port);
+	intel_encoder->power_domain = intel_ddi_lanes_power_domain(dev_priv, port);
 	intel_encoder->port = port;
 	if (IS_CHERRYVIEW(dev_priv)) {
 		if (port == PORT_D)
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 530032f3bb2c2..b848bfc8de432 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4347,7 +4347,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	encoder->get_power_domains = intel_ddi_get_power_domains;
 
 	encoder->type = INTEL_OUTPUT_DDI;
-	encoder->power_domain = intel_port_to_power_domain(port);
+	encoder->power_domain = intel_ddi_lanes_power_domain(dev_priv, port);
 	encoder->port = port;
 	encoder->cloneable = 0;
 	encoder->pipe_mask = ~0;
@@ -4475,8 +4475,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	}
 
 	drm_WARN_ON(&dev_priv->drm, port > PORT_I);
-	dig_port->ddi_io_power_domain = POWER_DOMAIN_PORT_DDI_IO_A +
-					      port - PORT_A;
+	dig_port->ddi_io_power_domain = intel_ddi_io_power_domain(dev_priv, port);
 
 	if (init_dp) {
 		if (!intel_ddi_init_dp_connector(dig_port))
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d0b9618383ce3..f1248b891bd6e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2285,91 +2285,15 @@ enum tc_port intel_port_to_tc(struct drm_i915_private *dev_priv, enum port port)
 		return TC_PORT_1 + port - PORT_C;
 }
 
-enum intel_display_power_domain intel_port_to_power_domain(enum port port)
-{
-	switch (port) {
-	case PORT_A:
-		return POWER_DOMAIN_PORT_DDI_LANES_A;
-	case PORT_B:
-		return POWER_DOMAIN_PORT_DDI_LANES_B;
-	case PORT_C:
-		return POWER_DOMAIN_PORT_DDI_LANES_C;
-	case PORT_D:
-		return POWER_DOMAIN_PORT_DDI_LANES_D;
-	case PORT_E:
-		return POWER_DOMAIN_PORT_DDI_LANES_E;
-	case PORT_F:
-		return POWER_DOMAIN_PORT_DDI_LANES_F;
-	case PORT_G:
-		return POWER_DOMAIN_PORT_DDI_LANES_G;
-	case PORT_H:
-		return POWER_DOMAIN_PORT_DDI_LANES_H;
-	case PORT_I:
-		return POWER_DOMAIN_PORT_DDI_LANES_I;
-	default:
-		MISSING_CASE(port);
-		return POWER_DOMAIN_PORT_OTHER;
-	}
-}
-
 enum intel_display_power_domain
 intel_aux_power_domain(struct intel_digital_port *dig_port)
 {
-	if (intel_tc_port_in_tbt_alt_mode(dig_port)) {
-		switch (dig_port->aux_ch) {
-		case AUX_CH_C:
-			return POWER_DOMAIN_AUX_TBT_C;
-		case AUX_CH_D:
-			return POWER_DOMAIN_AUX_TBT_D;
-		case AUX_CH_E:
-			return POWER_DOMAIN_AUX_TBT_E;
-		case AUX_CH_F:
-			return POWER_DOMAIN_AUX_TBT_F;
-		case AUX_CH_G:
-			return POWER_DOMAIN_AUX_TBT_G;
-		case AUX_CH_H:
-			return POWER_DOMAIN_AUX_TBT_H;
-		case AUX_CH_I:
-			return POWER_DOMAIN_AUX_TBT_I;
-		default:
-			MISSING_CASE(dig_port->aux_ch);
-			return POWER_DOMAIN_AUX_TBT_C;
-		}
-	}
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 
-	return intel_legacy_aux_to_power_domain(dig_port->aux_ch);
-}
+	if (intel_tc_port_in_tbt_alt_mode(dig_port))
+		return intel_tbt_aux_power_domain(i915, dig_port->aux_ch);
 
-/*
- * Converts aux_ch to power_domain without caring about TBT ports for that use
- * intel_aux_power_domain()
- */
-enum intel_display_power_domain
-intel_legacy_aux_to_power_domain(enum aux_ch aux_ch)
-{
-	switch (aux_ch) {
-	case AUX_CH_A:
-		return POWER_DOMAIN_AUX_A;
-	case AUX_CH_B:
-		return POWER_DOMAIN_AUX_B;
-	case AUX_CH_C:
-		return POWER_DOMAIN_AUX_C;
-	case AUX_CH_D:
-		return POWER_DOMAIN_AUX_D;
-	case AUX_CH_E:
-		return POWER_DOMAIN_AUX_E;
-	case AUX_CH_F:
-		return POWER_DOMAIN_AUX_F;
-	case AUX_CH_G:
-		return POWER_DOMAIN_AUX_G;
-	case AUX_CH_H:
-		return POWER_DOMAIN_AUX_H;
-	case AUX_CH_I:
-		return POWER_DOMAIN_AUX_I;
-	default:
-		MISSING_CASE(aux_ch);
-		return POWER_DOMAIN_AUX_A;
-	}
+	return intel_legacy_aux_power_domain(i915, dig_port->aux_ch);
 }
 
 static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index b61b75248ded3..12a6521883fc3 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -617,11 +617,9 @@ int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
 bool hsw_crtc_state_ips_capable(const struct intel_crtc_state *crtc_state);
 void hsw_enable_ips(const struct intel_crtc_state *crtc_state);
 void hsw_disable_ips(const struct intel_crtc_state *crtc_state);
-enum intel_display_power_domain intel_port_to_power_domain(enum port port);
+enum intel_display_power_domain intel_port_to_power_domain(struct intel_digital_port *dig_port);
 enum intel_display_power_domain
 intel_aux_power_domain(struct intel_digital_port *dig_port);
-enum intel_display_power_domain
-intel_legacy_aux_to_power_domain(enum aux_ch aux_ch);
 void intel_crtc_arm_fifo_underrun(struct intel_crtc *crtc,
 				  struct intel_crtc_state *crtc_state);
 void ilk_pfit_disable(const struct intel_crtc_state *old_crtc_state);
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 04486b922878c..f7d5d467fb46f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -9,8 +9,10 @@
 #include "intel_runtime_pm.h"
 #include "i915_reg.h"
 
+enum aux_ch;
 enum dpio_channel;
 enum dpio_phy;
+enum port;
 struct drm_i915_private;
 struct i915_power_well;
 struct intel_encoder;
@@ -131,6 +133,7 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_INIT,
 
 	POWER_DOMAIN_NUM,
+	POWER_DOMAIN_INVALID = POWER_DOMAIN_NUM,
 };
 
 /*
@@ -323,4 +326,13 @@ bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_phy phy,
 const char *
 intel_display_power_domain_str(enum intel_display_power_domain domain);
 
+enum intel_display_power_domain
+intel_ddi_lanes_power_domain(struct drm_i915_private *i915, enum port port);
+enum intel_display_power_domain
+intel_ddi_io_power_domain(struct drm_i915_private *i915, enum port port);
+enum intel_display_power_domain
+intel_legacy_aux_power_domain(struct drm_i915_private *i915, enum aux_ch aux_ch);
+enum intel_display_power_domain
+intel_tbt_aux_power_domain(struct drm_i915_private *i915, enum aux_ch aux_ch);
+
 #endif /* __INTEL_DISPLAY_POWER_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
index a72ebde959cde..c0222d392543c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
@@ -183,6 +183,212 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
 	}
 }
 
+struct intel_ddi_power_domain_map {
+	enum port port_start;
+	enum port port_end;
+	enum aux_ch aux_ch_start;
+	enum aux_ch aux_ch_end;
+
+	enum intel_display_power_domain ddi_lanes;
+	enum intel_display_power_domain ddi_io;
+	enum intel_display_power_domain aux_legacy_usbc;
+	enum intel_display_power_domain aux_tbt;
+};
+
+static const struct intel_ddi_power_domain_map
+i9xx_port_map[] = {
+	{
+		.port_start = PORT_A,
+		.port_end = PORT_F,
+		.aux_ch_start = AUX_CH_A,
+		.aux_ch_end = AUX_CH_F,
+
+		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
+		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
+		.aux_legacy_usbc = POWER_DOMAIN_AUX_A,
+		.aux_tbt = POWER_DOMAIN_INVALID,
+	},
+};
+
+static const struct intel_ddi_power_domain_map
+d11_port_map[] = {
+	{
+		.port_start = PORT_A,
+		.port_end = PORT_B,
+		.aux_ch_start = AUX_CH_A,
+		.aux_ch_end = AUX_CH_B,
+
+		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
+		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
+		.aux_legacy_usbc = POWER_DOMAIN_AUX_A,
+		.aux_tbt = POWER_DOMAIN_INVALID,
+	}, {
+		.port_start = PORT_C,
+		.port_end = PORT_F,
+		.aux_ch_start = AUX_CH_C,
+		.aux_ch_end = AUX_CH_F,
+
+		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_C,
+		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_C,
+		.aux_legacy_usbc = POWER_DOMAIN_AUX_C,
+		.aux_tbt = POWER_DOMAIN_AUX_TBT_C,
+	},
+};
+
+static const struct intel_ddi_power_domain_map
+d12_port_map[] = {
+	{
+		.port_start = PORT_A,
+		.port_end = PORT_C,
+		.aux_ch_start = AUX_CH_A,
+		.aux_ch_end = AUX_CH_C,
+
+		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
+		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
+		.aux_legacy_usbc = POWER_DOMAIN_AUX_A,
+		.aux_tbt = POWER_DOMAIN_INVALID,
+	}, {
+		.port_start = PORT_TC1,
+		.port_end = PORT_TC6,
+		.aux_ch_start = AUX_CH_USBC1,
+		.aux_ch_end = AUX_CH_USBC6,
+
+		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_TC1,
+		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_TC1,
+		.aux_legacy_usbc = POWER_DOMAIN_AUX_USBC1,
+		.aux_tbt = POWER_DOMAIN_AUX_TBT1,
+	},
+};
+
+static const struct intel_ddi_power_domain_map
+d13_port_map[] = {
+	{
+		.port_start = PORT_A,
+		.port_end = PORT_C,
+		.aux_ch_start = AUX_CH_A,
+		.aux_ch_end = AUX_CH_C,
+
+		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_A,
+		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_A,
+		.aux_legacy_usbc = POWER_DOMAIN_AUX_A,
+		.aux_tbt = POWER_DOMAIN_INVALID,
+	}, {
+		.port_start = PORT_TC1,
+		.port_end = PORT_TC4,
+		.aux_ch_start = AUX_CH_USBC1,
+		.aux_ch_end = AUX_CH_USBC4,
+
+		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_TC1,
+		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_TC1,
+		.aux_legacy_usbc = POWER_DOMAIN_AUX_USBC1,
+		.aux_tbt = POWER_DOMAIN_AUX_TBT1,
+	}, {
+		.port_start = PORT_D_XELPD,
+		.port_end = PORT_E_XELPD,
+		.aux_ch_start = AUX_CH_D_XELPD,
+		.aux_ch_end = AUX_CH_E_XELPD,
+
+		.ddi_lanes = POWER_DOMAIN_PORT_DDI_LANES_D_XELPD,
+		.ddi_io = POWER_DOMAIN_PORT_DDI_IO_D_XELPD,
+		.aux_legacy_usbc = POWER_DOMAIN_AUX_D_XELPD,
+		.aux_tbt = POWER_DOMAIN_INVALID,
+	},
+};
+
+static void
+intel_power_domain_map_for_platform(struct drm_i915_private *i915,
+				    const struct intel_ddi_power_domain_map **map,
+				    int *map_size)
+{
+	if (DISPLAY_VER(i915) >= 13) {
+		*map = d13_port_map;
+		*map_size = ARRAY_SIZE(d13_port_map);
+	} else if (DISPLAY_VER(i915) >= 12) {
+		*map = d12_port_map;
+		*map_size = ARRAY_SIZE(d12_port_map);
+	} else if (DISPLAY_VER(i915) >= 11) {
+		*map = d11_port_map;
+		*map_size = ARRAY_SIZE(d11_port_map);
+	} else {
+		*map = i9xx_port_map;
+		*map_size = ARRAY_SIZE(i9xx_port_map);
+	}
+}
+
+static const struct intel_ddi_power_domain_map *
+intel_power_domain_map_for_port(struct drm_i915_private *i915, enum port port)
+{
+	const struct intel_ddi_power_domain_map *map;
+	int map_size;
+	int i;
+
+	intel_power_domain_map_for_platform(i915, &map, &map_size);
+	for (i = 0; i < map_size; i++)
+		if (port >= map[i].port_start && port <= map[i].port_end)
+			return &map[i];
+
+	return NULL;
+}
+
+enum intel_display_power_domain
+intel_ddi_io_power_domain(struct drm_i915_private *i915, enum port port)
+{
+	const struct intel_ddi_power_domain_map *map = intel_power_domain_map_for_port(i915, port);
+
+	if (drm_WARN_ON(&i915->drm, !map) || map->ddi_io == POWER_DOMAIN_INVALID)
+		return POWER_DOMAIN_PORT_DDI_IO_A;
+
+	return map->ddi_io + port - map->port_start;
+}
+
+enum intel_display_power_domain
+intel_ddi_lanes_power_domain(struct drm_i915_private *i915, enum port port)
+{
+	const struct intel_ddi_power_domain_map *map = intel_power_domain_map_for_port(i915, port);
+
+	if (drm_WARN_ON(&i915->drm, !map) || map->ddi_lanes == POWER_DOMAIN_INVALID)
+		return POWER_DOMAIN_PORT_DDI_LANES_A;
+
+	return map->ddi_lanes + port - map->port_start;
+}
+
+static const struct intel_ddi_power_domain_map *
+intel_power_domain_map_for_aux_ch(struct drm_i915_private *i915, enum aux_ch aux_ch)
+{
+	const struct intel_ddi_power_domain_map *map;
+	int map_size;
+	int i;
+
+	intel_power_domain_map_for_platform(i915, &map, &map_size);
+	for (i = 0; i < map_size; i++)
+		if (aux_ch >= map[i].aux_ch_start && aux_ch <= map[i].aux_ch_end)
+			return &map[i];
+
+	return NULL;
+}
+
+enum intel_display_power_domain
+intel_legacy_aux_power_domain(struct drm_i915_private *i915, enum aux_ch aux_ch)
+{
+	const struct intel_ddi_power_domain_map *map = intel_power_domain_map_for_aux_ch(i915, aux_ch);
+
+	if (drm_WARN_ON(&i915->drm, !map) || map->aux_legacy_usbc == POWER_DOMAIN_INVALID)
+		return POWER_DOMAIN_AUX_A;
+
+	return map->aux_legacy_usbc + aux_ch - map->aux_ch_start;
+}
+
+enum intel_display_power_domain
+intel_tbt_aux_power_domain(struct drm_i915_private *i915, enum aux_ch aux_ch)
+{
+	const struct intel_ddi_power_domain_map *map = intel_power_domain_map_for_aux_ch(i915, aux_ch);
+
+	if (drm_WARN_ON(&i915->drm, !map) || map->aux_tbt == POWER_DOMAIN_INVALID)
+		return POWER_DOMAIN_AUX_TBT1;
+
+	return map->aux_tbt + aux_ch - map->aux_ch_start;
+}
+
 I915_DECL_PW_DOMAINS(i9xx_pwdoms_always_on, I915_PW_DOMAINS_ALL);
 
 static const struct i915_power_well_desc i9xx_power_wells_always_on[] = {
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index 3291124a99e5a..5871b7b418a51 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -60,10 +60,12 @@ bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port)
 static enum intel_display_power_domain
 tc_cold_get_power_domain(struct intel_digital_port *dig_port, enum tc_port_mode mode)
 {
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+
 	if (mode == TC_PORT_TBT_ALT || !intel_tc_cold_requires_aux_pw(dig_port))
 		return POWER_DOMAIN_TC_COLD_OFF;
 
-	return intel_legacy_aux_to_power_domain(dig_port->aux_ch);
+	return intel_legacy_aux_power_domain(i915, dig_port->aux_ch);
 }
 
 static intel_wakeref_t
-- 
2.27.0

