Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9152D4AD78B
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 12:37:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E22510E64C;
	Tue,  8 Feb 2022 11:37:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 318A910E685
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 11:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644320247; x=1675856247;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=qyq03wI3KlGYYTibkoDR3dYElP94wxifB72Vim6H1dU=;
 b=gEQ20bv+sRYhqibdA/oaYJzcQpUR31HBGJAnT/2YfDWGwQ3IFYlf+S0j
 /syUdVTgeth58rDo4ViyaCMOGTCtFnnreF6nZI5DtrxXKm8l3X45YGUuB
 5OltAN9mBBtPg4GKQ7lFk8CpAX/BTaMLwCuC8GvNCxFFken6gVCbkXCJ7
 0eKEK5niGU/4KHVxTTSFUWShpMtCffWXfHDg9YihalB6jhoS5KiBT+f4m
 QqvbXz3oC84Q3tZ520LWIHpvQkYiDToxfqfCarVWR6+8QQfU0Bq/1a7Ty
 j+k0kaj7/JbreD+PV51WBz2fLphDXvGeIc35vHu4/TWJZnGvty1/FaEo3 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="232496011"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="232496011"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:27 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="481915365"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 03:37:26 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Feb 2022 13:36:52 +0200
Message-Id: <20220208113656.179823-23-imre.deak@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20220208113656.179823-1-imre.deak@intel.com>
References: <20220208113656.179823-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 22/26] drm/i915: Sanitize the port -> DDI/AUX
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

v2: Add the functions to intel_display_power.c, use
    intel_display_power_ prefix.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c         |   3 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c       |   3 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  85 +-------
 drivers/gpu/drm/i915/display/intel_display.h  |   4 +-
 .../drm/i915/display/intel_display_power.c    | 206 ++++++++++++++++++
 .../drm/i915/display/intel_display_power.h    |  12 +
 drivers/gpu/drm/i915/display/intel_tc.c       |   5 +-
 8 files changed, 235 insertions(+), 89 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index f67bbaaad8e07..b92a0ade9c394 100644
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
@@ -1402,7 +1403,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	dig_port->max_lanes = 4;
 
 	intel_encoder->type = INTEL_OUTPUT_DP;
-	intel_encoder->power_domain = intel_port_to_power_domain(port);
+	intel_encoder->power_domain = intel_display_power_ddi_lanes_domain(dev_priv, port);
 	if (IS_CHERRYVIEW(dev_priv)) {
 		if (port == PORT_D)
 			intel_encoder->pipe_mask = BIT(PIPE_C);
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 06e00b1eaa7ce..56fa6dfba020c 100644
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
+	intel_encoder->power_domain = intel_display_power_ddi_lanes_domain(dev_priv, port);
 	intel_encoder->port = port;
 	if (IS_CHERRYVIEW(dev_priv)) {
 		if (port == PORT_D)
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index a4784f98d7d37..f8cc0f49eddc7 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -38,6 +38,7 @@
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
+#include "intel_display_power.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
 #include "intel_dp_link_training.h"
@@ -4349,7 +4350,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	encoder->get_power_domains = intel_ddi_get_power_domains;
 
 	encoder->type = INTEL_OUTPUT_DDI;
-	encoder->power_domain = intel_port_to_power_domain(port);
+	encoder->power_domain = intel_display_power_ddi_lanes_domain(dev_priv, port);
 	encoder->port = port;
 	encoder->cloneable = 0;
 	encoder->pipe_mask = ~0;
@@ -4477,8 +4478,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	}
 
 	drm_WARN_ON(&dev_priv->drm, port > PORT_I);
-	dig_port->ddi_io_power_domain = POWER_DOMAIN_PORT_DDI_IO_A +
-					      port - PORT_A;
+	dig_port->ddi_io_power_domain = intel_display_power_ddi_io_domain(dev_priv, port);
 
 	if (init_dp) {
 		if (!intel_ddi_init_dp_connector(dig_port))
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 16e496579e0aa..490698519eeb6 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -50,6 +50,7 @@
 #include "display/intel_crt.h"
 #include "display/intel_ddi.h"
 #include "display/intel_display_debugfs.h"
+#include "display/intel_display_power.h"
 #include "display/intel_dp.h"
 #include "display/intel_dp_mst.h"
 #include "display/intel_dpll.h"
@@ -2300,91 +2301,15 @@ enum tc_port intel_port_to_tc(struct drm_i915_private *dev_priv, enum port port)
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
+		return intel_display_power_tbt_aux_domain(i915, dig_port->aux_ch);
 
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
+	return intel_display_power_legacy_aux_domain(i915, dig_port->aux_ch);
 }
 
 static void get_crtc_power_domains(struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 457738aeee3e7..e20199da97982 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -635,11 +635,9 @@ int intel_dotclock_calculate(int link_freq, const struct intel_link_m_n *m_n);
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
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index 8c40c8ef2cd83..2816c3b1faef0 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -2253,3 +2253,209 @@ void intel_display_power_debug(struct drm_i915_private *i915, struct seq_file *m
 
 	mutex_unlock(&power_domains->lock);
 }
+
+struct intel_ddi_port_domains {
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
+static const struct intel_ddi_port_domains
+i9xx_port_domains[] = {
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
+static const struct intel_ddi_port_domains
+d11_port_domains[] = {
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
+static const struct intel_ddi_port_domains
+d12_port_domains[] = {
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
+static const struct intel_ddi_port_domains
+d13_port_domains[] = {
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
+intel_port_domains_for_platform(struct drm_i915_private *i915,
+				const struct intel_ddi_port_domains **domains,
+				int *domains_size)
+{
+	if (DISPLAY_VER(i915) >= 13) {
+		*domains = d13_port_domains;
+		*domains_size = ARRAY_SIZE(d13_port_domains);
+	} else if (DISPLAY_VER(i915) >= 12) {
+		*domains = d12_port_domains;
+		*domains_size = ARRAY_SIZE(d12_port_domains);
+	} else if (DISPLAY_VER(i915) >= 11) {
+		*domains = d11_port_domains;
+		*domains_size = ARRAY_SIZE(d11_port_domains);
+	} else {
+		*domains = i9xx_port_domains;
+		*domains_size = ARRAY_SIZE(i9xx_port_domains);
+	}
+}
+
+static const struct intel_ddi_port_domains *
+intel_port_domains_for_port(struct drm_i915_private *i915, enum port port)
+{
+	const struct intel_ddi_port_domains *domains;
+	int domains_size;
+	int i;
+
+	intel_port_domains_for_platform(i915, &domains, &domains_size);
+	for (i = 0; i < domains_size; i++)
+		if (port >= domains[i].port_start && port <= domains[i].port_end)
+			return &domains[i];
+
+	return NULL;
+}
+
+enum intel_display_power_domain
+intel_display_power_ddi_io_domain(struct drm_i915_private *i915, enum port port)
+{
+	const struct intel_ddi_port_domains *domains = intel_port_domains_for_port(i915, port);
+
+	if (drm_WARN_ON(&i915->drm, !domains) || domains->ddi_io == POWER_DOMAIN_INVALID)
+		return POWER_DOMAIN_PORT_DDI_IO_A;
+
+	return domains->ddi_io + port - domains->port_start;
+}
+
+enum intel_display_power_domain
+intel_display_power_ddi_lanes_domain(struct drm_i915_private *i915, enum port port)
+{
+	const struct intel_ddi_port_domains *domains = intel_port_domains_for_port(i915, port);
+
+	if (drm_WARN_ON(&i915->drm, !domains) || domains->ddi_lanes == POWER_DOMAIN_INVALID)
+		return POWER_DOMAIN_PORT_DDI_LANES_A;
+
+	return domains->ddi_lanes + port - domains->port_start;
+}
+
+static const struct intel_ddi_port_domains *
+intel_port_domains_for_aux_ch(struct drm_i915_private *i915, enum aux_ch aux_ch)
+{
+	const struct intel_ddi_port_domains *domains;
+	int domains_size;
+	int i;
+
+	intel_port_domains_for_platform(i915, &domains, &domains_size);
+	for (i = 0; i < domains_size; i++)
+		if (aux_ch >= domains[i].aux_ch_start && aux_ch <= domains[i].aux_ch_end)
+			return &domains[i];
+
+	return NULL;
+}
+
+enum intel_display_power_domain
+intel_display_power_legacy_aux_domain(struct drm_i915_private *i915, enum aux_ch aux_ch)
+{
+	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(i915, aux_ch);
+
+	if (drm_WARN_ON(&i915->drm, !domains) || domains->aux_legacy_usbc == POWER_DOMAIN_INVALID)
+		return POWER_DOMAIN_AUX_A;
+
+	return domains->aux_legacy_usbc + aux_ch - domains->aux_ch_start;
+}
+
+enum intel_display_power_domain
+intel_display_power_tbt_aux_domain(struct drm_i915_private *i915, enum aux_ch aux_ch)
+{
+	const struct intel_ddi_port_domains *domains = intel_port_domains_for_aux_ch(i915, aux_ch);
+
+	if (drm_WARN_ON(&i915->drm, !domains) || domains->aux_tbt == POWER_DOMAIN_INVALID)
+		return POWER_DOMAIN_AUX_TBT1;
+
+	return domains->aux_tbt + aux_ch - domains->aux_ch_start;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
index 01f613d3ad208..5ede1146b1582 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.h
+++ b/drivers/gpu/drm/i915/display/intel_display_power.h
@@ -8,8 +8,10 @@
 
 #include "intel_runtime_pm.h"
 
+enum aux_ch;
 enum dpio_channel;
 enum dpio_phy;
+enum port;
 struct drm_i915_private;
 struct i915_power_well;
 struct intel_encoder;
@@ -130,6 +132,7 @@ enum intel_display_power_domain {
 	POWER_DOMAIN_INIT,
 
 	POWER_DOMAIN_NUM,
+	POWER_DOMAIN_INVALID = POWER_DOMAIN_NUM,
 };
 
 #define POWER_DOMAIN_PIPE(pipe) ((pipe) + POWER_DOMAIN_PIPE_A)
@@ -266,6 +269,15 @@ intel_display_power_put_all_in_set(struct drm_i915_private *i915,
 
 void intel_display_power_debug(struct drm_i915_private *i915, struct seq_file *m);
 
+enum intel_display_power_domain
+intel_display_power_ddi_lanes_domain(struct drm_i915_private *i915, enum port port);
+enum intel_display_power_domain
+intel_display_power_ddi_io_domain(struct drm_i915_private *i915, enum port port);
+enum intel_display_power_domain
+intel_display_power_legacy_aux_domain(struct drm_i915_private *i915, enum aux_ch aux_ch);
+enum intel_display_power_domain
+intel_display_power_tbt_aux_domain(struct drm_i915_private *i915, enum aux_ch aux_ch);
+
 /*
  * FIXME: We should probably switch this to a 0-based scheme to be consistent
  * with how we now name/number DBUF_CTL instances.
diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index feead08ddf8ff..88d74ad0fef93 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -6,6 +6,7 @@
 #include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_display.h"
+#include "intel_display_power_map.h"
 #include "intel_display_types.h"
 #include "intel_dp_mst.h"
 #include "intel_tc.h"
@@ -61,10 +62,12 @@ bool intel_tc_cold_requires_aux_pw(struct intel_digital_port *dig_port)
 static enum intel_display_power_domain
 tc_cold_get_power_domain(struct intel_digital_port *dig_port, enum tc_port_mode mode)
 {
+	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
+
 	if (mode == TC_PORT_TBT_ALT || !intel_tc_cold_requires_aux_pw(dig_port))
 		return POWER_DOMAIN_TC_COLD_OFF;
 
-	return intel_legacy_aux_to_power_domain(dig_port->aux_ch);
+	return intel_display_power_legacy_aux_domain(i915, dig_port->aux_ch);
 }
 
 static intel_wakeref_t
-- 
2.27.0

