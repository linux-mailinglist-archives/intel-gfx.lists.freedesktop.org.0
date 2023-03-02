Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C036A85E4
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Mar 2023 17:11:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5725710E120;
	Thu,  2 Mar 2023 16:11:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94AA510E11D
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Mar 2023 16:11:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677773493; x=1709309493;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Nwu9WDVE037RN7uO2AKFbCDN//QrTxp/q6OGBdaX2qc=;
 b=AOodsi0BC9HBE4ya3XYfDea1NGtFUGxM+Ii1SBaRSlIZ9NE7Om/vfaEi
 I3GkXfLtc1CCDS7SIVc/HR76sNAPEe9nPq/KZETczPg+S6iwddjrD8Hya
 UqkkGuLDLETH0mFrTuP8zcl6D26GXnj8v9nj3gTJ/B0L7MGbX/c/A4l1n
 AYSNiCYpFbBPcNyhvp6A3RZELflaI7c5+dMeLd9lGJIeggX5ixAPJwPLk
 tfaC4jCjza8YK/Pvy1YU3iemEwNpi9iTG8kg2SlKdDd9KAlGcCAEn854s
 kgvHzFENQWG90n1vCXv0lUxHeTg6VAm6RuxGPWE65OBkjIQB74c8S2oWy g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="323057846"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="323057846"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2023 08:10:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10637"; a="784888955"
X-IronPort-AV: E=Sophos;i="5.98,228,1673942400"; d="scan'208";a="784888955"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 02 Mar 2023 08:10:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 02 Mar 2023 18:10:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Mar 2023 18:10:07 +0200
Message-Id: <20230302161013.29213-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
References: <20230302161013.29213-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/7] drm/i915: Populate dig_port->connected()
 before connector init
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We'll need dig_port->connected() to be there for a HPD live
state check during eDP connector probing. Reorder intel_ddi_init()
accordingly. g4x_dp_init() is already fine.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 40 ++++++++++++------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e5979427b38b..40b5c93f9223 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4504,6 +4504,26 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 	drm_WARN_ON(&dev_priv->drm, port > PORT_I);
 	dig_port->ddi_io_power_domain = intel_display_power_ddi_io_domain(dev_priv, port);
 
+	if (DISPLAY_VER(dev_priv) >= 11) {
+		if (intel_phy_is_tc(dev_priv, phy))
+			dig_port->connected = intel_tc_port_connected;
+		else
+			dig_port->connected = lpt_digital_port_connected;
+	} else if (DISPLAY_VER(dev_priv) >= 8) {
+		if (port == PORT_A || IS_GEMINILAKE(dev_priv) ||
+		    IS_BROXTON(dev_priv))
+			dig_port->connected = bdw_digital_port_connected;
+		else
+			dig_port->connected = lpt_digital_port_connected;
+	} else {
+		if (port == PORT_A)
+			dig_port->connected = hsw_digital_port_connected;
+		else
+			dig_port->connected = lpt_digital_port_connected;
+	}
+
+	intel_infoframe_init(dig_port);
+
 	if (init_dp) {
 		if (!intel_ddi_init_dp_connector(dig_port))
 			goto err;
@@ -4521,26 +4541,6 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 			goto err;
 	}
 
-	if (DISPLAY_VER(dev_priv) >= 11) {
-		if (intel_phy_is_tc(dev_priv, phy))
-			dig_port->connected = intel_tc_port_connected;
-		else
-			dig_port->connected = lpt_digital_port_connected;
-	} else if (DISPLAY_VER(dev_priv) >= 8) {
-		if (port == PORT_A || IS_GEMINILAKE(dev_priv) ||
-		    IS_BROXTON(dev_priv))
-			dig_port->connected = bdw_digital_port_connected;
-		else
-			dig_port->connected = lpt_digital_port_connected;
-	} else {
-		if (port == PORT_A)
-			dig_port->connected = hsw_digital_port_connected;
-		else
-			dig_port->connected = lpt_digital_port_connected;
-	}
-
-	intel_infoframe_init(dig_port);
-
 	return;
 
 err:
-- 
2.39.2

