Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F866FF7D4
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 18:56:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7491910E584;
	Thu, 11 May 2023 16:56:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62AA410E584
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 16:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683824158; x=1715360158;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=iE8tZ6tqa6xaLzR4v4rrwthkQoOTD/XxM0aROyHKCbI=;
 b=KFa5lIojhNCx7WoFT0EpEqtmxefki0WxIPXVRWtPntUKQGnRXLUDjhsJ
 x/C+aTivfUFaLhY0sSS/ROHJUVBuVsb6JgvV9Faf5Dz0fcZKeRF1vqEhe
 6WFYtXDmhl4PFU2o8gQjSMxBm/cEzdl7mbGrs1Sl/uLH+zFNWOjSgaxd0
 +6zJul1Mj/iNk17Bp6bWfN3x0pDIqsUk0T4KpYUo5EODGu1mr2JyrLv17
 IwecjphdybWRt0sE3xVQoCh+HT2fISWU52V8GwLCDatpwqEaAWujRmdQg
 0YG/ojBYan9DD+KOooNe3CwXvMelWMRyWue1uAeRP7EKon+AsbWp3KMdm Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="352796263"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="352796263"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 09:55:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="677319594"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="677319594"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 11 May 2023 09:55:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 May 2023 19:55:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 May 2023 19:55:34 +0300
Message-Id: <20230511165534.10266-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230511165534.10266-1-ville.syrjala@linux.intel.com>
References: <20230511165534.10266-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/7] drm/i915: Convert HSW/BDW to use port_mask
 for DDI probe
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c     | 27 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.c | 17 +-----------
 2 files changed, 28 insertions(+), 16 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index a5ca4b9d1e3e..6c07f32d7116 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4660,6 +4660,27 @@ static void intel_ddi_encoder_shutdown(struct intel_encoder *encoder)
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
+	default:
+		MISSING_CASE(port);
+		return false;
+	}
+}
+
 void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 {
 	struct intel_digital_port *dig_port;
@@ -4668,6 +4689,12 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
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
index fd3b5fc801e6..2b08352570b5 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7350,7 +7350,7 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 	if (!HAS_DISPLAY(dev_priv))
 		return;
 
-	if (DISPLAY_VER(dev_priv) >= 9) {
+	if (HAS_DDI(dev_priv)) {
 		enum port port;
 
 		for_each_port_masked(port, RUNTIME_INFO(dev_priv)->port_mask)
@@ -7363,24 +7363,9 @@ void intel_setup_outputs(struct drm_i915_private *dev_priv)
 
 		if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
 			vlv_dsi_init(dev_priv);
-	} else if (HAS_DDI(dev_priv)) {
-		u32 found;
 
 		if (intel_ddi_crt_present(dev_priv))
 			intel_crt_init(dev_priv);
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

