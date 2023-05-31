Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C08718335
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 15:48:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00D0D10E4E2;
	Wed, 31 May 2023 13:48:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88C0D10E4E2
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 13:48:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685540910; x=1717076910;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1VR0xyVq+6uaa/VGQ1aaxlM8IenCG14zxfTkAB5zp70=;
 b=j9rLrVZgX2ChGD/bDtzhReZRHd/SQb9Q1/SiPWA5lKl7SjJxQDocG9vI
 uTxJQOHUtDsj7HYYrHa3JGgHRlnxRT3fRhT2SWKC80zKXh380ahqqAy/x
 3c4RcdmCud8yArEGPKHZCgI4xa8FV3wXNHx4CUxFd0qDpxYpne8LoRWIW
 woMgOTMBuhdWP0rZJpKZSrGFr/RploECbsUBDZhMl24AmvHT5ZLqjaAIz
 zi3nXyV3ZqEigkapuYy7vf43Whfy7k3mfw/s7GPhDCdRpnFSn0JAHYnJ7
 EgB3CKvNP0UtFS0gSSwtp/89aShxjE0y0mCfawWNy5edJapx0SRRoHqr0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="421008319"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="421008319"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 06:48:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="736680032"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="736680032"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 31 May 2023 06:48:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 31 May 2023 16:48:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 May 2023 16:48:06 +0300
Message-Id: <20230531134806.23065-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
References: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/7] drm/i915: Convert HSW/BDW to use
 port_mask for DDI probe
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

Make HSW/BDW use port_mask for output probing as well.
To achieve that the strap checks are moved into
intel_ddi_init() itself. Or should we move them to the
runtime port_mask init instead? Maybe not since the hardware
is still there, just not connected to anything.

v2: Account for DDI-E in strap detection
    Keep to the old CRT->DDI init order

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 29 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c | 23 +++-------------
 2 files changed, 33 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 31001b9a29b0..d89a9b85a780 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4657,6 +4657,29 @@ static void intel_ddi_tc_encoder_shutdown_complete(struct intel_encoder *encoder
 #define port_tc_name(port) ((port) - PORT_TC1 + '1')
 #define tc_port_name(tc_port) ((tc_port) - TC_PORT_1 + '1')
 
+static bool port_strap_detected(struct drm_i915_private *i915, enum port port)
+{
+	/* straps not used on skl+ */
+	if (DISPLAY_VER(i915) >= 9)
+		return true;
+
+	switch (port) {
+	case PORT_A:
+		return intel_de_read(i915, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
+	case PORT_B:
+		return intel_de_read(i915, SFUSE_STRAP) & SFUSE_STRAP_DDIB_DETECTED;
+	case PORT_C:
+		return intel_de_read(i915, SFUSE_STRAP) & SFUSE_STRAP_DDIC_DETECTED;
+	case PORT_D:
+		return intel_de_read(i915, SFUSE_STRAP) & SFUSE_STRAP_DDID_DETECTED;
+	case PORT_E:
+		return true; /* no strap for DDI-E */
+	default:
+		MISSING_CASE(port);
+		return false;
+	}
+}
+
 void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 {
 	struct intel_digital_port *dig_port;
@@ -4665,6 +4688,12 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	bool init_hdmi, init_dp;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 
+	if (!port_strap_detected(dev_priv, port)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Port %c strap not detected\n", port_name(port));
+		return;
+	}
+
 	if (!assert_port_valid(dev_priv, port))
 		return;
 
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 12f2e3897595..1ae4854b275e 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7387,9 +7387,12 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	if (DISPLAY_VER(dev_priv) >= 9) {
+	if (HAS_DDI(dev_priv)) {
 		enum port port;
 
+		if (intel_ddi_crt_present(dev_priv))
+			intel_crt_init(dev_priv);
+
 		for_each_port_masked(port, DISPLAY_RUNTIME_INFO(dev_priv)->port_mask)
 			intel_ddi_init(dev_priv, port);
 
@@ -7400,24 +7403,6 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 			vlv_dsi_init(dev_priv);
-	} else if (HAS_DDI(dev_priv)) {
-		u32 found;
-
-		if (intel_ddi_crt_present(dev_priv))
-			intel_crt_init(dev_priv);
-
-		/* Haswell uses DDI functions to detect digital outputs. */
-		found = intel_de_read(dev_priv, DDI_BUF_CTL(PORT_A)) & DDI_INIT_DISPLAY_DETECTED;
-		if (found)
-			intel_ddi_init(dev_priv, PORT_A);
-
-		found = intel_de_read(dev_priv, SFUSE_STRAP);
-		if (found & SFUSE_STRAP_DDIB_DETECTED)
-			intel_ddi_init(dev_priv, PORT_B);
-		if (found & SFUSE_STRAP_DDIC_DETECTED)
-			intel_ddi_init(dev_priv, PORT_C);
-		if (found & SFUSE_STRAP_DDID_DETECTED)
-			intel_ddi_init(dev_priv, PORT_D);
 	} else if (HAS_PCH_SPLIT(dev_priv)) {
 		int found;
 
-- 
2.39.3

