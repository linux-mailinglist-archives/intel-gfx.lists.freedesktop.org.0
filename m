Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D9673332B
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 16:09:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3449610E63B;
	Fri, 16 Jun 2023 14:09:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43A5A10E635
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 14:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686924541; x=1718460541;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/KzPcBguy3BqO/ki/bsGiLa3lw5EYklrssqCn46ZW9M=;
 b=MIWUmQLqVdxlnVB6dJzTXDjMOvNnQaDKHDa/vlI5pXe+42raBhcjArP2
 CX6UaGicBDIBp532Im7NzoQ1FOWFJ/6y5kfbJgHqWp6J+J8VNDRcOLucx
 ILnLXMwPxLivcWgnsb/I/HdlU6KfiPRTDo8F1Xxt9CUNJzs0/sbHWiWOp
 Dcnbyfv86dAWJl6bJGS8spe81XxKHwwxVo6/nqHslbINLdhEIo4li6C6X
 fHfbqdb22DxODnzk7vKjnLEk2u8UwsJnczqDaxYUuJDXWHTBGIw70TCAx
 IEDvAJOLc1GpHw0PAGTatLrben4iYerMvhaO2B5aWpRlZb/qzPJiWe91W w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="343957871"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="343957871"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 07:08:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="712883101"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="712883101"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 16 Jun 2023 07:08:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Jun 2023 17:08:37 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Jun 2023 17:08:18 +0300
Message-Id: <20230616140820.11726-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230616140820.11726-1-ville.syrjala@linux.intel.com>
References: <20230616140820.11726-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 5/7] drm/i915: Beef up SDVO/HDMI port checks
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

The SDVO code already warns when the port in question doesn't
actually support SDVO. Let's make that also bail the encoder
registration like the generic assert_port_valid() we added.

And add a similar thing for g4x HDMI, mainly because on g4x
itsefl port D only supports DP but not SDVO/HDMI. For the
other platforms the generic port_mask check should actually
be sufficient, but since we're here might as well list the
ports.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
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
index d269726a832e..8298a86d1334 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -3313,13 +3313,19 @@ intel_sdvo_init_ddc_proxy(struct intel_sdvo *sdvo,
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
@@ -3332,7 +3338,8 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 	if (!assert_port_valid(dev_priv, port))
 		return false;
 
-	assert_sdvo_port_valid(dev_priv, port);
+	if (!assert_sdvo_port_valid(dev_priv, port))
+		return false;
 
 	intel_sdvo = kzalloc(sizeof(*intel_sdvo), GFP_KERNEL);
 	if (!intel_sdvo)
-- 
2.39.3

