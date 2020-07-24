Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F72E22D128
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jul 2020 23:39:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26A156EA11;
	Fri, 24 Jul 2020 21:39:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37AFC6E162
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jul 2020 21:39:24 +0000 (UTC)
IronPort-SDR: ZT14HQ/n6aJ19mpc+y2N3o/VhYi04zJg/4rKNB+u/quvhr6z8o3DbV2XV86eGVXONjxYOxxxfn
 MV1+JK5D84ZA==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="149970008"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="149970008"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 14:39:23 -0700
IronPort-SDR: 6k9dG3CkznMBTs6jGdAK8qIrmUtC7yWVtS18eAQCrcdVDM0jCyuG/Zeh/ugQv8lW8kW35Aw9Ig
 AJQc6R6ifbrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="329041958"
Received: from ldmartin1-desk.jf.intel.com ([10.165.21.151])
 by orsmga007.jf.intel.com with ESMTP; 24 Jul 2020 14:39:23 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jul 2020 14:39:07 -0700
Message-Id: <20200724213918.27424-12-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200724213918.27424-1-lucas.demarchi@intel.com>
References: <20200724213918.27424-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v5 11/22] drm/i915/dg1: gmbus pin mapping
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

Add tables to map the GMBUS pin pairs to GPIO registers and port to DDC.

The values for VBT are currently not in BSpec. If we assume the latest
is ICL (like we did for TGL), then the mapping is wrong per VBT we can
currently parse.

From spec we have registers GPIO_CTL[1-4], so we should not do the 4->9
mapping as in ICL/TGL.

BSpec: 49311, 49945, 20124

Cc: Aditya Swarup <aditya.swarup@intel.com>
Cc: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c  |  4 +++-
 drivers/gpu/drm/i915/display/intel_gmbus.c | 15 +++++++++++++--
 drivers/gpu/drm/i915/display/intel_hdmi.c  |  9 ++++++++-
 3 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index c53c85d38fa5..b6a0f5e5a9a6 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1602,7 +1602,9 @@ static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
 	const u8 *ddc_pin_map;
 	int n_entries;
 
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1) {
+		return vbt_pin;
+	} else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
 		ddc_pin_map = icp_ddc_pin_map;
 		n_entries = ARRAY_SIZE(icp_ddc_pin_map);
 	} else if (HAS_PCH_CNP(dev_priv)) {
diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
index a8d119b6b45c..528e48658340 100644
--- a/drivers/gpu/drm/i915/display/intel_gmbus.c
+++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
@@ -90,11 +90,20 @@ static const struct gmbus_pin gmbus_pins_icp[] = {
 	[GMBUS_PIN_14_TC6_TGP] = { "tc6", GPIOO },
 };
 
+static const struct gmbus_pin gmbus_pins_dg1[] = {
+	[GMBUS_PIN_1_BXT] = { "dpa", GPIOB },
+	[GMBUS_PIN_2_BXT] = { "dpb", GPIOC },
+	[GMBUS_PIN_3_BXT] = { "dpc", GPIOD },
+	[GMBUS_PIN_4_CNP] = { "dpd", GPIOE },
+};
+
 /* pin is expected to be valid */
 static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *dev_priv,
 					     unsigned int pin)
 {
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
+		return &gmbus_pins_dg1[pin];
+	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 		return &gmbus_pins_icp[pin];
 	else if (HAS_PCH_CNP(dev_priv))
 		return &gmbus_pins_cnp[pin];
@@ -113,7 +122,9 @@ bool intel_gmbus_is_valid_pin(struct drm_i915_private *dev_priv,
 {
 	unsigned int size;
 
-	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
+		size = ARRAY_SIZE(gmbus_pins_dg1);
+	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
 		size = ARRAY_SIZE(gmbus_pins_icp);
 	else if (HAS_PCH_CNP(dev_priv))
 		size = ARRAY_SIZE(gmbus_pins_cnp);
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index de2ce5632b94..7a20695722cb 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -3110,6 +3110,11 @@ static u8 rkl_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
 	return GMBUS_PIN_1_BXT + phy;
 }
 
+static u8 dg1_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
+{
+	return intel_port_to_phy(dev_priv, port) + 1;
+}
+
 static u8 g4x_port_to_ddc_pin(struct drm_i915_private *dev_priv,
 			      enum port port)
 {
@@ -3147,7 +3152,9 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
 		return ddc_pin;
 	}
 
-	if (IS_ROCKETLAKE(dev_priv))
+	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
+		ddc_pin = dg1_port_to_ddc_pin(dev_priv, port);
+	else if (IS_ROCKETLAKE(dev_priv))
 		ddc_pin = rkl_port_to_ddc_pin(dev_priv, port);
 	else if (HAS_PCH_MCC(dev_priv))
 		ddc_pin = mcc_port_to_ddc_pin(dev_priv, port);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
