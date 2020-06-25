Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC71F209778
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2020 02:11:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06EE46E8A5;
	Thu, 25 Jun 2020 00:11:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E7E76E893
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2020 00:11:32 +0000 (UTC)
IronPort-SDR: b5nKaBbaZOWLtNc5oo4Xs69AfT4vqcfTd8lGnGt8nwH0OmyKmazIcTuNt61n2JVRWSQDOKsbdm
 ixjwUWShsRng==
X-IronPort-AV: E=McAfee;i="6000,8403,9662"; a="229392921"
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="229392921"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2020 17:11:31 -0700
IronPort-SDR: 5RnYPTAY71akQcIoAm1KbtrI3T4R1UMl1at/eYT8Bt9IYIMM9xlrOQIJQf/Jtv7AC/H2OtGi91
 doPTZMRS4Biw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,277,1589266800"; d="scan'208";a="310949036"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga008.jf.intel.com with ESMTP; 24 Jun 2020 17:11:30 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Jun 2020 17:11:17 -0700
Message-Id: <20200625001120.22810-4-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200625001120.22810-1-lucas.demarchi@intel.com>
References: <20200625001120.22810-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 3/6] drm/i915/display: start
 description-based ddi initialization
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Start adding per-platform relevant data into a table that we use for
initialization. Intention is to keep the different indexes we need (e.g.
phy, vbt, ddi, etc) and any other differences for each platform in these
tables so we don't have to keep converting back and forth between them.

For now, just add the naked table with name. Subsequent patches will
start piping this in via intel_ddi_init().

v2: do not try to generalize the checks for port presence nor dsi
initialization. Instead focus on getting the ddi table created for all
platforms using DDI and keep their differences in the original function

drm/i915/display: description-based initialization for remaining ddi platforms

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c  | 141 ++++++++++++------
 .../drm/i915/display/intel_display_types.h    |   5 +
 2 files changed, 99 insertions(+), 47 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index effd6b65f270..c234b50212b0 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -16805,6 +16805,83 @@ static void intel_pps_init(struct drm_i915_private *dev_priv)
 	intel_pps_unlock_regs_wa(dev_priv);
 }
 
+static const struct intel_ddi_port_info rkl_ports[] = {
+	{ .name = "DDI A",   .port = PORT_A },
+	{ .name = "DDI B",   .port = PORT_B },
+	{ .name = "DDI TC1", .port = PORT_D },
+	{ .name = "DDI TC2", .port = PORT_E },
+	{ .port = PORT_NONE }
+};
+
+static const struct intel_ddi_port_info tgl_ports[] = {
+	{ .name = "DDI A",   .port = PORT_A },
+	{ .name = "DDI B",   .port = PORT_B },
+	{ .name = "DDI TC1", .port = PORT_D },
+	{ .name = "DDI TC2", .port = PORT_E },
+	{ .name = "DDI TC3", .port = PORT_F },
+	{ .name = "DDI TC4", .port = PORT_G },
+	{ .name = "DDI TC5", .port = PORT_H },
+	{ .name = "DDI TC6", .port = PORT_I },
+	{ .port = PORT_NONE }
+};
+
+static const struct intel_ddi_port_info ehl_ports[] = {
+	{ .name = "DDI A", .port = PORT_A },
+	{ .name = "DDI B", .port = PORT_B },
+	{ .name = "DDI C", .port = PORT_C },
+	{ .name = "DDI D", .port = PORT_D },
+	{ .port = PORT_NONE }
+};
+
+static const struct intel_ddi_port_info icl_ports[] = {
+	{ .name = "DDI A",   .port = PORT_A },
+	{ .name = "DDI B",   .port = PORT_B },
+	{ .name = "DDI TC1", .port = PORT_C },
+	{ .name = "DDI TC2", .port = PORT_D },
+	{ .name = "DDI TC3", .port = PORT_E },
+	{ .name = "DDI TC4", .port = PORT_F },
+	{ .port = PORT_NONE }
+};
+
+static const struct intel_ddi_port_info gen9lp_ports[] = {
+	{ .name = "DDI A", .port = PORT_A },
+	{ .name = "DDI B", .port = PORT_B },
+	{ .name = "DDI C", .port = PORT_C },
+	{ .port = PORT_NONE }
+};
+
+static const struct intel_ddi_port_info ddi_ports[] = {
+	{ .name = "DDI A", .port = PORT_A },
+	{ .name = "DDI B", .port = PORT_B },
+	{ .name = "DDI C", .port = PORT_C },
+	{ .name = "DDI D", .port = PORT_D },
+	{ .name = "DDI E", .port = PORT_E },
+	{ .name = "DDI F", .port = PORT_F },
+	{ .port = PORT_NONE }
+};
+
+/*
+ * Use a description-based approach for platforms that can be supported with a
+ * static table
+ *
+ * @disable_mask: any port that should not be enabled due to being disabled by
+ * any reason
+ */
+static void setup_ddi_outputs_desc(struct drm_i915_private *i915,
+				   const struct intel_ddi_port_info *ports,
+				   unsigned long disable_mask)
+{
+	const struct intel_ddi_port_info *port_info;
+
+	for (port_info = ports;
+	     port_info->port != PORT_NONE; port_info++) {
+		if (test_bit(port_info->port, &disable_mask))
+			continue;
+
+		intel_ddi_init(i915, port_info->port);
+	}
+}
+
 static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 {
 	struct intel_encoder *encoder;
@@ -16816,46 +16893,21 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		return;
 
 	if (IS_ROCKETLAKE(dev_priv)) {
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_D);	/* DDI TC1 */
-		intel_ddi_init(dev_priv, PORT_E);	/* DDI TC2 */
+		setup_ddi_outputs_desc(dev_priv, rkl_ports, 0);
 	} else if (INTEL_GEN(dev_priv) >= 12) {
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_D);
-		intel_ddi_init(dev_priv, PORT_E);
-		intel_ddi_init(dev_priv, PORT_F);
-		intel_ddi_init(dev_priv, PORT_G);
-		intel_ddi_init(dev_priv, PORT_H);
-		intel_ddi_init(dev_priv, PORT_I);
+		setup_ddi_outputs_desc(dev_priv, tgl_ports, 0);
 		icl_dsi_init(dev_priv);
 	} else if (IS_ELKHARTLAKE(dev_priv)) {
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_C);
-		intel_ddi_init(dev_priv, PORT_D);
+		setup_ddi_outputs_desc(dev_priv, ehl_ports, 0);
 		icl_dsi_init(dev_priv);
 	} else if (IS_GEN(dev_priv, 11)) {
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_C);
-		intel_ddi_init(dev_priv, PORT_D);
-		intel_ddi_init(dev_priv, PORT_E);
-		intel_ddi_init(dev_priv, PORT_F);
+		setup_ddi_outputs_desc(dev_priv, icl_ports, 0);
 		icl_dsi_init(dev_priv);
 	} else if (IS_GEN9_LP(dev_priv)) {
-		/*
-		 * FIXME: Broxton doesn't support port detection via the
-		 * DDI_BUF_CTL_A or SFUSE_STRAP registers, find another way to
-		 * detect the ports.
-		 */
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_C);
-
+		setup_ddi_outputs_desc(dev_priv, gen9lp_ports, 0);
 		vlv_dsi_init(dev_priv);
 	} else if (HAS_DDI(dev_priv)) {
+		unsigned long disable_mask = 0;
 		int found;
 
 		if (intel_ddi_crt_present(dev_priv))
@@ -16869,28 +16921,23 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		 */
 		found = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
 		/* WaIgnoreDDIAStrap: skl */
-		if (found || IS_GEN9_BC(dev_priv))
-			intel_ddi_init(dev_priv, PORT_A);
+		if (!found && !IS_GEN9_BC(dev_priv))
+			disable_mask |= BIT(PORT_A);
 
 		/* DDI B, C, D, and F detection is indicated by the SFUSE_STRAP
 		 * register */
 		found = intel_de_read(dev_priv, SFUSE_STRAP);
 
-		if (found & SFUSE_STRAP_DDIB_DETECTED)
-			intel_ddi_init(dev_priv, PORT_B);
-		if (found & SFUSE_STRAP_DDIC_DETECTED)
-			intel_ddi_init(dev_priv, PORT_C);
-		if (found & SFUSE_STRAP_DDID_DETECTED)
-			intel_ddi_init(dev_priv, PORT_D);
-		if (found & SFUSE_STRAP_DDIF_DETECTED)
-			intel_ddi_init(dev_priv, PORT_F);
-		/*
-		 * On SKL we don't have a way to detect DDI-E so we rely on VBT.
-		 */
-		if (IS_GEN9_BC(dev_priv) &&
-		    intel_bios_is_port_present(dev_priv, PORT_E))
-			intel_ddi_init(dev_priv, PORT_E);
+		if (!(found & SFUSE_STRAP_DDIB_DETECTED))
+			disable_mask |= BIT(PORT_B);
+		if (!(found & SFUSE_STRAP_DDIC_DETECTED))
+			disable_mask |= BIT(PORT_C);
+		if (!(found & SFUSE_STRAP_DDID_DETECTED))
+			disable_mask |= BIT(PORT_D);
+		if (!(found & SFUSE_STRAP_DDIF_DETECTED))
+			disable_mask |= BIT(PORT_F);
 
+		setup_ddi_outputs_desc(dev_priv, ddi_ports, disable_mask);
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		int found;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 4b0aaa3081c9..92cc7fc66bce 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1433,6 +1433,11 @@ struct intel_dp_mst_encoder {
 	struct intel_connector *connector;
 };
 
+struct intel_ddi_port_info {
+	const char *name;
+	enum port port;
+};
+
 static inline enum dpio_channel
 vlv_dport_to_channel(struct intel_digital_port *dport)
 {
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
