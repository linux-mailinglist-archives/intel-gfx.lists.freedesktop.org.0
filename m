Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A70E129AAD
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Dec 2019 20:59:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 710466E442;
	Mon, 23 Dec 2019 19:59:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 075496E0CB
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Dec 2019 19:59:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Dec 2019 11:59:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,348,1571727600"; d="scan'208";a="219598202"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga003.jf.intel.com with ESMTP; 23 Dec 2019 11:59:08 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Dec 2019 11:58:47 -0800
Message-Id: <20191223195850.25997-7-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191223195850.25997-1-lucas.demarchi@intel.com>
References: <20191223195850.25997-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/9] drm/i915/display: description-based
 initialization for remaining ddi platforms
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

Support remaining platforms under HAS_DDI() by providing a slightly more
complex is_port_present() hook. The downside is that now we call
I915_READ(SFUSE_STRAP) for each port being initialized, but that's only
on initialization: a few more mmio reads won't hurt.

Alternatives would be to provide one hook per port, or to have a
"pre_init()" hook that takes care of the mmio read. However I think this
is simpler - we may need to adapt if future platforms don't follow the
same initialization "template".

Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 72 +++++++++++++-------
 1 file changed, 46 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6b4d320ff92c..ad85cf75c815 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -16246,6 +16246,34 @@ static bool icl_is_port_present(struct drm_i915_private *i915,
 		intel_bios_is_port_present(i915, PORT_F);
 }
 
+static bool ddi_is_port_present(struct drm_i915_private *i915,
+				const struct intel_ddi_port_info *port_info)
+{
+	/* keep I915_READ() happy */
+	struct drm_i915_private *dev_priv = i915;
+
+	if (port_info->port == PORT_A)
+		return I915_READ(DDI_BUF_CTL(PORT_A))
+			& DDI_INIT_DISPLAY_DETECTED;
+
+	if (port_info->port == PORT_E)
+		return IS_GEN9_BC(dev_priv) &&
+			intel_bios_is_port_present(i915, PORT_E);
+
+	switch (port_info->port) {
+	case PORT_B:
+		return I915_READ(SFUSE_STRAP) & SFUSE_STRAP_DDIB_DETECTED;
+	case PORT_C:
+		return I915_READ(SFUSE_STRAP) & SFUSE_STRAP_DDIC_DETECTED;
+	case PORT_D:
+		return I915_READ(SFUSE_STRAP) & SFUSE_STRAP_DDID_DETECTED;
+	case PORT_F:
+		return I915_READ(SFUSE_STRAP) & SFUSE_STRAP_DDIF_DETECTED;
+	default:
+		return false;
+	}
+}
+
 static const struct intel_output tgl_output = {
 	.dsi_init = icl_dsi_init,
 	.ddi_ports = {
@@ -16296,11 +16324,24 @@ static const struct intel_output gen9lp_output = {
 	},
 };
 
+static const struct intel_output ddi_output = {
+	.is_port_present = ddi_is_port_present,
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
 /*
  * Use a description-based approach for platforms that can be supported with a
  * static table
  */
-static void setup_ddi_outputs_desc(struct drm_i915_private *i915)
+static void setup_ddi_outputs(struct drm_i915_private *i915)
 {
 	const struct intel_output *output;
 	const struct intel_ddi_port_info *port_info;
@@ -16313,6 +16354,8 @@ static void setup_ddi_outputs_desc(struct drm_i915_private *i915)
 		output = &icl_output;
 	else if (IS_GEN9_LP(i915))
 		output = &gen9lp_output;
+	else
+		output = &ddi_output;
 
 	for (port_info = output->ddi_ports;
 	     port_info->port != PORT_NONE; port_info++) {
@@ -16338,35 +16381,12 @@ static void intel_setup_outputs(struct drm_i915_private *dev_priv)
 		return;
 
 	if (INTEL_GEN(dev_priv) >= 11 || IS_GEN9_LP(dev_priv)) {
-		setup_ddi_outputs_desc(dev_priv);
+		setup_ddi_outputs(dev_priv);
 	} else if (HAS_DDI(dev_priv)) {
-		int found;
-
 		if (intel_ddi_crt_present(dev_priv))
 			intel_crt_init(dev_priv);
 
-		found = I915_READ(DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
-		if (found)
-			intel_ddi_init(dev_priv, PORT_A);
-
-		/* DDI B, C, D, and F detection is indicated by the SFUSE_STRAP
-		 * register */
-		found = I915_READ(SFUSE_STRAP);
-
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
+		setup_ddi_outputs(dev_priv);
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		int found;
 
-- 
2.24.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
