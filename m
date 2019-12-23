Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA974129AAB
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 20:59:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D06CF6E42B;
	Mon, 23 Dec 2019 19:59:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BFB96E0CB
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 19:59:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 11:59:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,348,1571727600"; d="scan'208";a="219598196"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga003.jf.intel.com with ESMTP; 23 Dec 2019 11:59:08 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 11:58:45 -0800
Message-Id: <20191223195850.25997-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191223195850.25997-1-lucas.demarchi@intel.com>
References: <20191223195850.25997-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/9] drm/i915/display: start description-based
 ddi initialization
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For the latest platforms we can share the logic to initialize the the
ddi, so start moving the most trivial ones to a new setup_outputs_desc()
function that will be responsible for initialization according to a
static const table.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 96 +++++++++++++------
 .../drm/i915/display/intel_display_types.h    |  4 +
 2 files changed, 73 insertions(+), 27 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 04819b0bd494..b3fb1e03cb0b 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -16221,6 +16221,72 @@ static void intel_pps_init(struct drm_i915_private *dev_priv)
 	intel_pps_unlock_regs_wa(dev_priv);
 }
 
+struct intel_output {
+	/* Initialize DSI if present */
+	void (*dsi_init)(struct drm_i915_private *i915);
+	struct intel_ddi_port_info ddi_ports[];
+};
+
+static const struct intel_output tgl_output = {
+	.dsi_init = icl_dsi_init,
+	.ddi_ports = {
+		{ .port = PORT_A },
+		{ .port = PORT_B },
+		{ .port = PORT_D },
+		{ .port = PORT_E },
+		{ .port = PORT_F },
+		{ .port = PORT_G },
+		{ .port = PORT_H },
+		{ .port = PORT_I },
+		{ .port = PORT_NONE }
+	}
+};
+
+static const struct intel_output ehl_output = {
+	.dsi_init = icl_dsi_init,
+	.ddi_ports = {
+		{ .port = PORT_A },
+		{ .port = PORT_B },
+		{ .port = PORT_C },
+		{ .port = PORT_D },
+		{ .port = PORT_NONE }
+	}
+};
+
+static const struct intel_output gen9lp_output = {
+	.dsi_init = vlv_dsi_init,
+	.ddi_ports = {
+		{ .port = PORT_A },
+		{ .port = PORT_B },
+		{ .port = PORT_C },
+		{ .port = PORT_NONE }
+	},
+};
+
+/*
+ * Use a description-based approach for platforms that can be supported with a
+ * static table
+ */
+static void setup_ddi_outputs_desc(struct drm_i915_private *i915)
+{
+	const struct intel_output *output;
+	const struct intel_ddi_port_info *port_info;
+
+	if (INTEL_GEN(i915) >= 12)
+		output = &tgl_output;
+	else if (IS_ELKHARTLAKE(i915))
+		output = &ehl_output;
+	else if (IS_GEN9_LP(i915))
+		output = &gen9lp_output;
+
+	for (port_info = output->ddi_ports;
+	     port_info->port != PORT_NONE; port_info++)
+		intel_ddi_init(i915, port_info->port);
+
+	if (output->dsi_init)
+		output->dsi_init(i915);
+}
+
 static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 {
 	struct intel_encoder *encoder;
@@ -16231,22 +16297,9 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv) || !INTEL_DISPLAY_ENABLED(dev_priv))
 		return;
 
-	if (INTEL_GEN(dev_priv) >= 12) {
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_D);
-		intel_ddi_init(dev_priv, PORT_E);
-		intel_ddi_init(dev_priv, PORT_F);
-		intel_ddi_init(dev_priv, PORT_G);
-		intel_ddi_init(dev_priv, PORT_H);
-		intel_ddi_init(dev_priv, PORT_I);
-		icl_dsi_init(dev_priv);
-	} else if (IS_ELKHARTLAKE(dev_priv)) {
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_C);
-		intel_ddi_init(dev_priv, PORT_D);
-		icl_dsi_init(dev_priv);
+	if (INTEL_GEN(dev_priv) >= 12 || IS_ELKHARTLAKE(dev_priv) ||
+	    IS_GEN9_LP(dev_priv)) {
+		setup_ddi_outputs_desc(dev_priv);
 	} else if (IS_GEN(dev_priv, 11)) {
 		intel_ddi_init(dev_priv, PORT_A);
 		intel_ddi_init(dev_priv, PORT_B);
@@ -16263,17 +16316,6 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 			intel_ddi_init(dev_priv, PORT_F);
 
 		icl_dsi_init(dev_priv);
-	} else if (IS_GEN9_LP(dev_priv)) {
-		/*
-		 * FIXME: Broxton doesn't support port detection via the
-		 * DDI_BUF_CTL_A or SFUSE_STRAP registers, find another way to
-		 * detect the ports.
-		 */
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_C);
-
-		vlv_dsi_init(dev_priv);
 	} else if (HAS_DDI(dev_priv)) {
 		int found;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index a3a067dacf84..4d2f4ee35812 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1376,6 +1376,10 @@ struct intel_dp_mst_encoder {
 	struct intel_connector *connector;
 };
 
+struct intel_ddi_port_info {
+	enum port port;
+};
+
 static inline enum dpio_channel
 vlv_dig_port_to_channel(struct intel_digital_port *dig_port)
 {
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
