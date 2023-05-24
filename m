Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D471170F932
	for <lists+intel-gfx@lfdr.de>; Wed, 24 May 2023 16:52:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27FF410E22D;
	Wed, 24 May 2023 14:52:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97B1C10E22D
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 May 2023 14:52:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684939956; x=1716475956;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=tWwty6LoJOvc20Ju+vTcqq/Uw1LeobzW/fY0bvtyKSk=;
 b=MeDFuBme0OW2nIBl1iKhos7XYOJrSBvZACU5d0WtX5lM/ZiKyGMxi2Xj
 2RLwdbmSm1lcC+UQ9Lg7unAuBzKR7P+qhnqKUGAkTN+chwZebF/h+/fok
 /UCcdSPmWE7cDi4whndUS5drCA8VQRcFKUO64yV6PR8+85TNg7xBpO2lO
 bGi8/52/LTpbwQ7n5ruSwk7BXY8KWo/2o+6dC4EOBeqlmSeOs2xHyrX8K
 nfPHq7uMr0rJvevf5xjDK5naVM8Rb+4zkKAIyePkTY5mFPrdls8g5Pj2k
 6LPuDK8mHbDlKYRYyaIAvUYSlscDipTjLfPXeafpsYeLYt2RC5iK+Oc/C w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="439945431"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="439945431"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 07:52:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="1034559963"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="1034559963"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga005.fm.intel.com with SMTP; 24 May 2023 07:52:33 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 24 May 2023 17:52:32 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 May 2023 17:52:32 +0300
Message-Id: <20230524145232.7426-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230511165534.10266-8-ville.syrjala@linux.intel.com>
References: <20230511165534.10266-8-ville.syrjala@linux.intel.com>
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
index a5ca4b9d1e3e..7d1bab460973 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4660,6 +4660,29 @@ static void intel_ddi_encoder_shutdown(struct intel_encoder *encoder)
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
@@ -4668,6 +4691,12 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
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
index fd3b5fc801e6..d9b5a552a2ed 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7350,9 +7350,12 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	if (DISPLAY_VER(dev_priv) >= 9) {
+	if (HAS_DDI(dev_priv)) {
 		enum port port;
 
+		if (intel_ddi_crt_present(dev_priv))
+			intel_crt_init(dev_priv);
+
 		for_each_port_masked(port, RUNTIME_INFO(dev_priv)->port_mask)
 			intel_ddi_init(dev_priv, port);
 
@@ -7363,24 +7366,6 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
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

