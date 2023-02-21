Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5030E69EAD8
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 00:02:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A62D110E39E;
	Tue, 21 Feb 2023 23:02:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4FFB10E39A
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 23:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677020573; x=1708556573;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=kJ8zmGBzt3Y+gLK2r7Re+O64f7iQwdppIqtP0V10uqY=;
 b=ikOntDCGc8cO+d3RlVCy1KtSGucTAAZxJls1q3ysIsDdHmZPIMYtMHCF
 ocmm2p3pJ1g6Q7hyhdiaSdFt/pqJjZZ2TeE5HFgm7dMabnSJW5OaswEj7
 8T3QPj2HaQcJbdA9ScYWQJGGT89m5rTrjWj+ee1d6QYJWgAw+SBXuqKXk
 I+ithwYcKDfTM1nDxBiYOcZ+sTWyWeyFGrZHshJLctNDi3muAs8qBitnI
 nc0nKW/sV1Eds99pCGW/p2wz2Z/xKn3svu9SxsmXhUSdDH1xWMFtSVxs6
 4ZiFCznseRrn6TR76ipKyyOaiYuljlPi/pvNX1pPCzxI2dKrC1w0/CqJj w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="330501675"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="330501675"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 15:02:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="814690116"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="814690116"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 21 Feb 2023 15:02:31 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Feb 2023 01:02:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Feb 2023 01:02:06 +0200
Message-Id: <20230221230227.6244-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 01/22] drm/i915: Populate
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

