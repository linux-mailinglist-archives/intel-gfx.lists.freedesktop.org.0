Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8063E129AA4
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 20:59:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A8C86E0CB;
	Mon, 23 Dec 2019 19:59:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31CF66E0CE
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 19:59:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 11:59:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,348,1571727600"; d="scan'208";a="219598199"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga003.jf.intel.com with ESMTP; 23 Dec 2019 11:59:08 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 11:58:46 -0800
Message-Id: <20191223195850.25997-6-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191223195850.25997-1-lucas.demarchi@intel.com>
References: <20191223195850.25997-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 5/9] drm/i915/display: move icl to
 description-based ddi init
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

By adding a hook that determines if a port is present, we are able to
support Ice Lake in the new description-based DDI initialization.

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 61 ++++++++++++++------
 1 file changed, 42 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b3fb1e03cb0b..6b4d320ff92c 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -16224,9 +16224,28 @@ static void intel_pps_init(struct drm_i915_private *dev_priv)
 struct intel_output {
 	/* Initialize DSI if present */
 	void (*dsi_init)(struct drm_i915_private *i915);
+
+	/*
+	 * Check if port is present before trying to initialize; if not provided
+	 * it's assumed the port is present (or we can't check and fail
+	 * gracefully
+	 */
+	bool (*is_port_present)(struct drm_i915_private *i915,
+				const struct intel_ddi_port_info *port_info);
+
 	struct intel_ddi_port_info ddi_ports[];
 };
 
+static bool icl_is_port_present(struct drm_i915_private *i915,
+				const struct intel_ddi_port_info *port_info)
+{
+	if (port_info->port != PORT_F)
+		return true;
+
+	return IS_ICL_WITH_PORT_F(i915) &&
+		intel_bios_is_port_present(i915, PORT_F);
+}
+
 static const struct intel_output tgl_output = {
 	.dsi_init = icl_dsi_init,
 	.ddi_ports = {
@@ -16242,6 +16261,20 @@ static const struct intel_output tgl_output = {
 	}
 };
 
+static const struct intel_output icl_output = {
+	.dsi_init = icl_dsi_init,
+	.is_port_present = icl_is_port_present,
+	.ddi_ports = {
+		{ .port = PORT_A },
+		{ .port = PORT_B },
+		{ .port = PORT_C },
+		{ .port = PORT_D },
+		{ .port = PORT_E },
+		{ .port = PORT_F },
+		{ .port = PORT_NONE }
+	}
+};
+
 static const struct intel_output ehl_output = {
 	.dsi_init = icl_dsi_init,
 	.ddi_ports = {
@@ -16276,12 +16309,19 @@ static void setup_ddi_outputs_desc(struct drm_i915_private *i915)
 		output = &tgl_output;
 	else if (IS_ELKHARTLAKE(i915))
 		output = &ehl_output;
+	else if (IS_GEN(i915, 11))
+		output = &icl_output;
 	else if (IS_GEN9_LP(i915))
 		output = &gen9lp_output;
 
 	for (port_info = output->ddi_ports;
-	     port_info->port != PORT_NONE; port_info++)
+	     port_info->port != PORT_NONE; port_info++) {
+		if (output->is_port_present &&
+		    !output->is_port_present(i915, port_info))
+			continue;
+
 		intel_ddi_init(i915, port_info->port);
+	}
 
 	if (output->dsi_init)
 		output->dsi_init(i915);
@@ -16297,25 +16337,8 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv) || !INTEL_DISPLAY_ENABLED(dev_priv))
 		return;
 
-	if (INTEL_GEN(dev_priv) >= 12 || IS_ELKHARTLAKE(dev_priv) ||
-	    IS_GEN9_LP(dev_priv)) {
+	if (INTEL_GEN(dev_priv) >= 11 || IS_GEN9_LP(dev_priv)) {
 		setup_ddi_outputs_desc(dev_priv);
-	} else if (IS_GEN(dev_priv, 11)) {
-		intel_ddi_init(dev_priv, PORT_A);
-		intel_ddi_init(dev_priv, PORT_B);
-		intel_ddi_init(dev_priv, PORT_C);
-		intel_ddi_init(dev_priv, PORT_D);
-		intel_ddi_init(dev_priv, PORT_E);
-		/*
-		 * On some ICL SKUs port F is not present. No strap bits for
-		 * this, so rely on VBT.
-		 * Work around broken VBTs on SKUs known to have no port F.
-		 */
-		if (IS_ICL_WITH_PORT_F(dev_priv) &&
-		    intel_bios_is_port_present(dev_priv, PORT_F))
-			intel_ddi_init(dev_priv, PORT_F);
-
-		icl_dsi_init(dev_priv);
 	} else if (HAS_DDI(dev_priv)) {
 		int found;
 
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
