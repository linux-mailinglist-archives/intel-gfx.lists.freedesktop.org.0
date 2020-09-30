Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0BB627E179
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 08:43:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 221866E517;
	Wed, 30 Sep 2020 06:42:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 942786E50C
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 06:42:49 +0000 (UTC)
IronPort-SDR: 4MQBMLtJ8wh9BI8Oho8hAg/tZQqERwaTXFuCc852AtIZC2AeAObRBLGo2qTbLh78/ZhfRArQY+
 U4aH2HrIKAwA==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="142387765"
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="142387765"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:49 -0700
IronPort-SDR: ZW+lwnn+m5Mu7gyV403HFuGR4TDoIswkYnKpCj4JS6KDpJ5/3ET7/XWSuuGQ8ueHqorVPPijwL
 YjxCWkujWoNw==
X-IronPort-AV: E=Sophos;i="5.77,321,1596524400"; d="scan'208";a="312487728"
Received: from cdgarci1-mobl1.amr.corp.intel.com (HELO
 ldmartin-desk1.intel.com) ([10.213.164.152])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 23:42:48 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Sep 2020 23:42:22 -0700
Message-Id: <20200930064234.85769-13-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200930064234.85769-1-lucas.demarchi@intel.com>
References: <20200930064234.85769-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 12/24] drm/i915/dg1: gmbus pin mapping
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

Add tables to map the GMBUS pin pairs to GPIO registers and port to DDC.
From spec we have registers GPIO_CTL[1-4], so we should not do the 4->9
mapping as in ICL/TGL.

The values for VBT seem wrong in BSpec. For the current boards we
actually have a 1:1 mapping.

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
index 4716484af62d..23bf21ee58ea 100644
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
index e6b8d6dfb598..b0d71bbbf2ad 100644
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
index 3f2008d845c2..19ab23055c5e 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -3139,6 +3139,11 @@ static u8 rkl_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
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
@@ -3176,7 +3181,9 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder *encoder)
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
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
