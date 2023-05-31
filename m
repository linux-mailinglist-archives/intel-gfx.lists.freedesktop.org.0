Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09734718331
	for <lists+intel-gfx@lfdr.de>; Wed, 31 May 2023 15:48:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 747FD10E4D2;
	Wed, 31 May 2023 13:48:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F34A910E4E7
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 13:48:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685540905; x=1717076905;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6wLVoQf8/QKzaL8YtzHTyYks67FNWg3ICAI79HyYAiE=;
 b=ehjzRlkmFm9UQVLYk92hOXs+CdQRD/9KqF6WftAIAH6y6iH5nz7FRvhh
 oDkDklBVNnflGKFFDqgstxqRVSVCFcBf4PW3HOSTmSd92woWWk3/dYfar
 lEoD9B6NV9C+FMJjJQAwXQWUrZ8iV+78FhhaDUS1xEKhtpps4AFJ7CEJa
 dvfcnJqAl1Hfsw9YDlclzl2d3EPX+aztPMOkznookPNEu9I5Mwe+apnAn
 lG5p4mC+Hy0gVYBgb8OtGzc4P742gYyESSNvN5poHafHSLparufUeSvL2
 TfYiYvPhBvy/fZFDGbF9Oid3b6gXGSTrNdNVH0ykqbfyMjBOg4c90hT+g A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="421008296"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="421008296"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 06:48:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="736679991"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="736679991"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 31 May 2023 06:48:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 31 May 2023 16:48:21 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 31 May 2023 16:48:04 +0300
Message-Id: <20230531134806.23065-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
References: <20230531134806.23065-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 5/7] drm/i915: Beef up SDVO/HDMI port checks
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

