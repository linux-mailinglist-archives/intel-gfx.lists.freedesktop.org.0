Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07AD569EAE8
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 00:03:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30F3010E8FB;
	Tue, 21 Feb 2023 23:03:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A990110E3A6
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 23:03:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677020594; x=1708556594;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=EHon8jlcmmm7ZbsomY9TEcBeRX00n69He5d5CCbrmdg=;
 b=TPotSnaTEqvCQx1agZ9ngmTI7EsQ95Sr7I00B/0StdFxkN05c3fVFoEH
 QirQOka3WobQfSJfJqTBzfSI/tieAB+dzJ4Zk7qvzgqwXSPpysW75rVxx
 ogt8CGe50kzVbXBhXwW01sg+fOhzgjwb+MhT6yoqwqSuEP2rscR1fn9xz
 CRo5VpMXBVh1U+qsXn1IjZTiG6I/5psF0sEqW8hk9Dan7NgolnnnU182M
 Zd6EIPO4oIfShRMWM6ff0Mjz3nytg6NZ14faVpuxc8jEgQWApFPoop4GT
 BBPwXEAQ4Lc0Ah+Mt9utMhHDATwEMtY40H1jRmI0hZUiXHY7fBH0/ZGhq g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="330501864"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="330501864"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 15:03:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="814690172"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="814690172"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 21 Feb 2023 15:03:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Feb 2023 01:03:11 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Feb 2023 01:02:20 +0200
Message-Id: <20230221230227.6244-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 15/22] drm/i915: Beef up SDVO/HDMI port checks
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
index 8edbb0189a1c..0e61c7c2112a 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -545,8 +545,22 @@ intel_hdmi_hotplug(struct intel_encoder *encoder,
 
 	return state;
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
 	struct intel_bios_encoder_data *devdata;
@@ -556,8 +570,11 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 
 	if (!assert_port_valid(dev_priv, port))
 		return;
 
+	if (!assert_hdmi_port_valid(dev_priv, port))
+		return;
+
 	devdata = intel_bios_encoder_data_lookup(dev_priv, port);
 	intel_bios_encoder_sanitize(devdata, port);
 
 	/* FIXME bail? */
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index adce8b15612d..a8cd64b1c0da 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -3312,15 +3312,21 @@ intel_sdvo_init_ddc_proxy(struct intel_sdvo *sdvo,
 
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
 		     i915_reg_t sdvo_reg, enum port port)
@@ -3331,9 +3337,10 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 
 	if (!assert_port_valid(dev_priv, port))
 		return false;
 
-	assert_sdvo_port_valid(dev_priv, port);
+	if (!assert_sdvo_port_valid(dev_priv, port))
+		return false;
 
 	intel_sdvo = kzalloc(sizeof(*intel_sdvo), GFP_KERNEL);
 	if (!intel_sdvo)
 		return false;
-- 
2.39.2

