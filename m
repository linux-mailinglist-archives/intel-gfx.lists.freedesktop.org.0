Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F02D08814DF
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Mar 2024 16:48:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6585010F460;
	Wed, 20 Mar 2024 15:48:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iy1g2O/d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBE7B10F460
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Mar 2024 15:48:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710949724; x=1742485724;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4s6js6SvL3S3T/kQ1tjmlqhXkVy6+f0VbotbyY3nlPk=;
 b=iy1g2O/d9Q4po5y/vgQFuqTV3yuT1MbKxuy/dgjPrHO7WImkD+m5c3af
 hHEVQs16Xr1jaApTQL1tPe3Udmw+bnDQs6euj+27X0APZnyMa2ZSol74d
 5HlPPnHf1CslP/acZOd5sKPc+TU2uuGb2m8elFwA9CLt+R4GYp+uWpeTw
 Q6G3d/EtgNSy5JpH/26+MII2u3B0XO1tiMtMAO78vh7iq2AdOJDsjovij
 IgGWjPfno2QnoyE02u7MUbq7yXJ1GHaKdnf7c15fB/Tr+igKIJAVvHuIW
 QqFC2Jzqq6OAedSphxX5voUQw+JV7oN59S9GYdwpMStDij7delCgbt2JE A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11019"; a="6005500"
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; 
   d="scan'208";a="6005500"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 08:48:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,140,1708416000"; d="scan'208";a="14264990"
Received: from dmocuta-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.36.133])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2024 08:48:14 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [CI 1/7] drm/hdmi: convert *_port_to_ddc_pin() to
 *_encoder_to_ddc_pin()
Date: Wed, 20 Mar 2024 17:47:58 +0200
Message-Id: <c94debf36816157de1105a186b061fd90dab574a.1710949619.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1710949619.git.jani.nikula@intel.com>
References: <cover.1710949619.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
_encoder_to_ddc_pin(). The encoder will be more helpful than just port
in the subsequent changes.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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

