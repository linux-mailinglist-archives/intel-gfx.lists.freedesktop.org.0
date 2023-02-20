Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19CEE69D72B
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Feb 2023 00:40:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A305C10E0E2;
	Mon, 20 Feb 2023 23:40:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 198B110E0C2
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 23:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676936452; x=1708472452;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kJ8zmGBzt3Y+gLK2r7Re+O64f7iQwdppIqtP0V10uqY=;
 b=dv9TfzXVwimA+uBrkhO8yFlzGRKbpivzGFbpuiR9RteOXiWwtmxY3011
 lfNzsQbiUeVPofBQ5kSviSEoZTtGw2ZIM9gjPwfap+i1GiRvhPAyC9dPq
 +XqGc4+DPs16ALIjXE+oRtrfnTQpTlHVNq7M36kwsU/GVBF9SgAqtmUbW
 uqvlmotRSJgI2g0HZ5VoiZyVjRbaYa9QCeKzOtFcq8pZbV8z25IfvBLKp
 pjtR4tzIqE2V+tHANRjM1O6G9+5DrPcZFxUv+NLz/ChktvQyD0b6bTQJ+
 S3ysggmKb1zTGCjzfnywxoOPrqJmaptLcfea5ZRkQpIB4tpGZ9eGkxIt1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="394988982"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="394988982"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 15:40:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="664769613"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="664769613"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 20 Feb 2023 15:40:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Feb 2023 01:40:49 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 21 Feb 2023 01:40:29 +0200
Message-Id: <20230220234046.29716-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230220234046.29716-1-ville.syrjala@linux.intel.com>
References: <20230220234046.29716-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 01/18] drm/i915: Populate
 dig_port->connected() before connector init
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

We'll need dig_port->connected() to be there for a HPD live
state check during eDP connector probing. Reorder intel_ddi_init()
accordingly. g4x_dp_init() is already fine.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 40 ++++++++++++------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index e5979427b38b..40b5c93f9223 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4503,8 +4503,28 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 
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
 
@@ -4520,28 +4540,8 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		if (!intel_ddi_init_hdmi_connector(dig_port))
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
 	drm_encoder_cleanup(&encoder->base);
-- 
2.39.2

