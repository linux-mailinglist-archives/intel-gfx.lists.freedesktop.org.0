Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C3A87962E
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 15:29:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 628AF10F375;
	Tue, 12 Mar 2024 14:29:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YvfkpaN1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9144110F375
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 14:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710253753; x=1741789753;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GGSvabpYi2IaadftvuIyaFdX8JGxzmCMuOLYVWu+6ig=;
 b=YvfkpaN1GIOnUKTsiBtlkSnx1uaYqhdLlvU+56oT3TpsEwrPus0UbSFj
 7YkB6zv6CbFMCewh4Eu6vjVYY3EFIlrSG6+91fUO59ZvMacrc6GinHK0O
 OChmgz7JHJ9YHnazzNt43fPELgP1qG444KJVCeNu2TiYRejYyMjcfysvN
 iZr1juac4Jh+EgEsvAKpSm5Jtl9ZMg7RFA4XVZBWGAJREUGcqEOmLkhLa
 CDLVwlHnT0VyuEmIUHtE7RijdrUPdp0wrJ/Ux5JbWPADd2yuqnQIr1ZJh
 0uug2k2A2PMMB4veNK4Xwvil4o7473ea0qQIfmTVs4lFTbxrOseuWqpix w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="4818286"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="4818286"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 07:29:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="11612421"
Received: from rfreedx-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.35.216])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 07:29:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [RFC 1/7] drm/hdmi: convert *_port_to_ddc_pin() to
 *_encoder_to_ddc_pin()
Date: Tue, 12 Mar 2024 16:28:56 +0200
Message-Id: <61a56759d9fba1cf672f24ba5538a4a36b40d732.1710253533.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1710253533.git.jani.nikula@intel.com>
References: <cover.1710253533.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Pass encoder to the _port_to_ddc_pin() functions, and rename to
_encoder_to_ddc_pin().

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 60 ++++++++++++++---------
 1 file changed, 37 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 90d2236fede3..f1fc9669238f 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2664,8 +2664,9 @@ bool intel_hdmi_handle_sink_scrambling(struct intel_encoder *encoder,
 		drm_scdc_set_scrambling(connector, scrambling);
 }
 
-static u8 chv_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
+static u8 chv_encoder_to_ddc_pin(struct intel_encoder *encoder)
 {
+	enum port port = encoder->port;
 	u8 ddc_pin;
 
 	switch (port) {
@@ -2686,8 +2687,9 @@ static u8 chv_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
 	return ddc_pin;
 }
 
-static u8 bxt_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
+static u8 bxt_encoder_to_ddc_pin(struct intel_encoder *encoder)
 {
+	enum port port = encoder->port;
 	u8 ddc_pin;
 
 	switch (port) {
@@ -2705,9 +2707,9 @@ static u8 bxt_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
 	return ddc_pin;
 }
 
-static u8 cnp_port_to_ddc_pin(struct drm_i915_private *dev_priv,
-			      enum port port)
+static u8 cnp_encoder_to_ddc_pin(struct intel_encoder *encoder)
 {
+	enum port port = encoder->port;
 	u8 ddc_pin;
 
 	switch (port) {
@@ -2731,8 +2733,10 @@ static u8 cnp_port_to_ddc_pin(struct drm_i915_private *dev_priv,
 	return ddc_pin;
 }
 
-static u8 icl_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
+static u8 icl_encoder_to_ddc_pin(struct intel_encoder *encoder)
 {
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 
 	if (intel_phy_is_combo(dev_priv, phy))
@@ -2744,8 +2748,10 @@ static u8 icl_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
 	return GMBUS_PIN_2_BXT;
 }
 
-static u8 mcc_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
+static u8 mcc_encoder_to_ddc_pin(struct intel_encoder *encoder)
 {
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 	u8 ddc_pin;
 
@@ -2767,8 +2773,10 @@ static u8 mcc_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
 	return ddc_pin;
 }
 
-static u8 rkl_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
+static u8 rkl_encoder_to_ddc_pin(struct intel_encoder *encoder)
 {
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 
 	WARN_ON(port == PORT_C);
@@ -2785,8 +2793,10 @@ static u8 rkl_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
 	return GMBUS_PIN_1_BXT + phy;
 }
 
-static u8 gen9bc_tgp_port_to_ddc_pin(struct drm_i915_private *i915, enum port port)
+static u8 gen9bc_tgp_encoder_to_ddc_pin(struct intel_encoder *encoder)
 {
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
 	enum phy phy = intel_port_to_phy(i915, port);
 
 	drm_WARN_ON(&i915->drm, port == PORT_A);
@@ -2803,13 +2813,18 @@ static u8 gen9bc_tgp_port_to_ddc_pin(struct drm_i915_private *i915, enum port po
 	return GMBUS_PIN_1_BXT + phy;
 }
 
-static u8 dg1_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
+static u8 dg1_encoder_to_ddc_pin(struct intel_encoder *encoder)
 {
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
+
 	return intel_port_to_phy(dev_priv, port) + 1;
 }
 
-static u8 adls_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port)
+static u8 adls_encoder_to_ddc_pin(struct intel_encoder *encoder)
 {
+	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
+	enum port port = encoder->port;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 
 	WARN_ON(port == PORT_B || port == PORT_C);
@@ -2824,9 +2839,9 @@ static u8 adls_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum port port
 	return GMBUS_PIN_9_TC1_ICP + phy - PHY_B;
 }
 
-static u8 g4x_port_to_ddc_pin(struct drm_i915_private *dev_priv,
-			      enum port port)
+static u8 g4x_encoder_to_ddc_pin(struct intel_encoder *encoder)
 {
+	enum port port = encoder->port;
 	u8 ddc_pin;
 
 	switch (port) {
@@ -2850,30 +2865,29 @@ static u8 g4x_port_to_ddc_pin(struct drm_i915_private *dev_priv,
 static u8 intel_hdmi_default_ddc_pin(struct intel_encoder *encoder)
 {
 	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
-	enum port port = encoder->port;
 	u8 ddc_pin;
 
 	if (IS_ALDERLAKE_S(dev_priv))
-		ddc_pin = adls_port_to_ddc_pin(dev_priv, port);
+		ddc_pin = adls_encoder_to_ddc_pin(encoder);
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
-		ddc_pin = dg1_port_to_ddc_pin(dev_priv, port);
+		ddc_pin = dg1_encoder_to_ddc_pin(encoder);
 	else if (IS_ROCKETLAKE(dev_priv))
-		ddc_pin = rkl_port_to_ddc_pin(dev_priv, port);
+		ddc_pin = rkl_encoder_to_ddc_pin(encoder);
 	else if (DISPLAY_VER(dev_priv) == 9 && HAS_PCH_TGP(dev_priv))
-		ddc_pin = gen9bc_tgp_port_to_ddc_pin(dev_priv, port);
+		ddc_pin = gen9bc_tgp_encoder_to_ddc_pin(encoder);
 	else if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
 		 HAS_PCH_TGP(dev_priv))
-		ddc_pin = mcc_port_to_ddc_pin(dev_priv, port);
+		ddc_pin = mcc_encoder_to_ddc_pin(encoder);
 	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
-		ddc_pin = icl_port_to_ddc_pin(dev_priv, port);
+		ddc_pin = icl_encoder_to_ddc_pin(encoder);
 	else if (HAS_PCH_CNP(dev_priv))
-		ddc_pin = cnp_port_to_ddc_pin(dev_priv, port);
+		ddc_pin = cnp_encoder_to_ddc_pin(encoder);
 	else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
-		ddc_pin = bxt_port_to_ddc_pin(dev_priv, port);
+		ddc_pin = bxt_encoder_to_ddc_pin(encoder);
 	else if (IS_CHERRYVIEW(dev_priv))
-		ddc_pin = chv_port_to_ddc_pin(dev_priv, port);
+		ddc_pin = chv_encoder_to_ddc_pin(encoder);
 	else
-		ddc_pin = g4x_port_to_ddc_pin(dev_priv, port);
+		ddc_pin = g4x_encoder_to_ddc_pin(encoder);
 
 	return ddc_pin;
 }
-- 
2.39.2

