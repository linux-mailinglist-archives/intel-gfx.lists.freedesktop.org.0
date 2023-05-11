Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 92E5A6FF7D2
	for <lists+intel-gfx@lfdr.de>; Thu, 11 May 2023 18:55:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A45D110E57B;
	Thu, 11 May 2023 16:55:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8834810E579
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 May 2023 16:55:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683824152; x=1715360152;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6wLVoQf8/QKzaL8YtzHTyYks67FNWg3ICAI79HyYAiE=;
 b=O2IBxrsYPr/vkjKP9zelYOLQFP+aWgAk6ThBLxAQRvsahR+b7MtDB8Vz
 QTVpPDa3G01xe9XtyzE7j1FhlxiUFBeh197K10ufMfk+d+5rfIC/QQVIM
 hk8c6nQ8tJKB9qlDU/vO7dXFsDpKLqYdjuKpx8IL9ztKOW3nY4jnyP70Z
 R81cOvIr9AvQiq/QBBiwl2YTlYebHtxp4iPUvNbWAYG7hbtn6yC1zmoId
 wOapdbpmHN6Y14l1C+PUzDNW0LtsdMW0CFnp5JoMpf13VnaVjGOOigwZT
 WVH8cBLtaTLqJmLzOxiLm6M0Bdix+xqanHBqTh1XGN65/3Y4PSC3l0YYw A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="352796226"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="352796226"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2023 09:55:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="677319562"
X-IronPort-AV: E=Sophos;i="5.99,268,1677571200"; d="scan'208";a="677319562"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 11 May 2023 09:55:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 11 May 2023 19:55:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 May 2023 19:55:32 +0300
Message-Id: <20230511165534.10266-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230511165534.10266-1-ville.syrjala@linux.intel.com>
References: <20230511165534.10266-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/7] drm/i915: Beef up SDVO/HDMI port checks
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

The SDVO code already warns when the port in question doesn't
actually support SDVO. Let's make that also bail the encoder
registration like the generic assert_port_valid() we added.

And add a similar thing for g4x HDMI, mainly because on g4x
itsefl port D only supports DP but not SDVO/HDMI. For the
other platforms the generic port_mask check should actually
be sufficient, but since we're here might as well list the
ports.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c   | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_sdvo.c | 17 ++++++++++++-----
 2 files changed, 29 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 59704939c111..8c71e3ede680 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -659,6 +659,20 @@ int g4x_hdmi_connector_atomic_check(struct drm_connector *connector,
 	return ret;
 }
 
+static bool is_hdmi_port_valid(struct drm_i915_private *i915, enum port port)
+{
+	if (IS_G4X(i915) || IS_VALLEYVIEW(i915))
+		return port == PORT_B || port == PORT_C;
+	else
+		return port == PORT_B || port == PORT_C || port == PORT_D;
+}
+
+static bool assert_hdmi_port_valid(struct drm_i915_private *i915, enum port port)
+{
+	return !drm_WARN(&i915->drm, !is_hdmi_port_valid(i915, port),
+			 "Platform does not support HDMI %c\n", port_name(port));
+}
+
 void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 		   i915_reg_t hdmi_reg, enum port port)
 {
@@ -670,6 +684,9 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 	if (!assert_port_valid(dev_priv, port))
 		return;
 
+	if (!assert_hdmi_port_valid(dev_priv, port))
+		return;
+
 	devdata = intel_bios_encoder_data_lookup(dev_priv, port);
 
 	/* FIXME bail? */
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 6ed613558cf8..e6b140b073c3 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -3314,13 +3314,19 @@ intel_sdvo_init_ddc_proxy(struct intel_sdvo *sdvo,
 	return i2c_add_adapter(&sdvo->ddc) == 0;
 }
 
-static void assert_sdvo_port_valid(const struct drm_i915_private *dev_priv,
-				   enum port port)
+static bool is_sdvo_port_valid(struct drm_i915_private *dev_priv, enum port port)
 {
 	if (HAS_PCH_SPLIT(dev_priv))
-		drm_WARN_ON(&dev_priv->drm, port != PORT_B);
+		return port == PORT_B;
 	else
-		drm_WARN_ON(&dev_priv->drm, port != PORT_B && port != PORT_C);
+		return port == PORT_B || port == PORT_C;
+}
+
+static bool assert_sdvo_port_valid(struct drm_i915_private *dev_priv,
+				   enum port port)
+{
+	return !drm_WARN(&dev_priv->drm, !is_sdvo_port_valid(dev_priv, port),
+			 "Platform does not support SDVO %c\n", port_name(port));
 }
 
 bool intel_sdvo_init(struct drm_i915_private *dev_priv,
@@ -3333,7 +3339,8 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 	if (!assert_port_valid(dev_priv, port))
 		return false;
 
-	assert_sdvo_port_valid(dev_priv, port);
+	if (!assert_sdvo_port_valid(dev_priv, port))
+		return false;
 
 	intel_sdvo = kzalloc(sizeof(*intel_sdvo), GFP_KERNEL);
 	if (!intel_sdvo)
-- 
2.39.3

