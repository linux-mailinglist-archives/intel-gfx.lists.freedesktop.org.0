Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12651879633
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Mar 2024 15:29:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90F8D112E60;
	Tue, 12 Mar 2024 14:29:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kAFh2Jba";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11E04112E60
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Mar 2024 14:29:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710253766; x=1741789766;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mul98YtjSesBTxREyW0+CMiIQW1bT6yq5+DlS0jguEU=;
 b=kAFh2JbakOSeEQM7ARkBFwBNzkP8ltHR7BzhHZbcxDTD4IZCJF8tmhw+
 FtAEwMellir2NK30GvRb6F1uAOYMFcVWWBmwJrcz//eVpKu5NZjk5O7Uq
 txwyq5rEO9aNEyZxabAnnJRKctBydsaTrP+spvwcYK8RPB7XNtA/UAT0+
 sAf8dQjQAZgHulZXrU+IKZAFg5XcSFxuSqx7GBqsOFnCRbKGFAaQrxxcv
 5Me1tPaIM0fKHSMQs9Rv6DlzQvLnJ9KIiJDIIQ0eTPbaSOaKPvZt2BVNW
 Zbhw/s56135dmbwM6hd8tdnsMOrIZmJEGwkkDyVVO+Bkhf2XRqophsG0E A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="5089786"
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; 
   d="scan'208";a="5089786"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 07:29:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,119,1708416000"; d="scan'208";a="16124894"
Received: from rfreedx-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.35.216])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2024 07:29:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, imre.deak@intel.com
Subject: [RFC 4/7] drm/i915/display: add intel_encoder_is_*() and _to_*()
 functions
Date: Tue, 12 Mar 2024 16:28:59 +0200
Message-Id: <389ea4de0e24afedb24c75cd246ee000e3bbb46a.1710253533.git.jani.nikula@intel.com>
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

Add a number of encoder based functions to check if the port/phy of the
encoder is of a certain type, or to convert to phy or tc_port. Initially
these are just wrappers around the existing functions, but they can be
improved to use VBT data or use some cached info in the future.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c |  9 +++++
 drivers/gpu/drm/i915/display/intel_cx0_phy.h |  1 +
 drivers/gpu/drm/i915/display/intel_display.c | 40 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_display.h |  7 ++++
 4 files changed, 57 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 64e0f820a789..f0ae2fe70c41 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -29,6 +29,7 @@
 #define INTEL_CX0_LANE1		BIT(1)
 #define INTEL_CX0_BOTH_LANES	(INTEL_CX0_LANE1 | INTEL_CX0_LANE0)
 
+/* Prefer intel_encoder_is_c10phy() */
 bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
 {
 	if ((IS_LUNARLAKE(i915) || IS_METEORLAKE(i915)) && phy < PHY_C)
@@ -37,6 +38,14 @@ bool intel_is_c10phy(struct drm_i915_private *i915, enum phy phy)
 	return false;
 }
 
+bool intel_encoder_is_c10phy(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_encoder_to_phy(encoder);
+
+	return intel_is_c10phy(i915, phy);
+}
+
 static int lane_mask_to_lane(u8 lane_mask)
 {
 	if (WARN_ON((lane_mask & ~INTEL_CX0_BOTH_LANES) ||
diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index c6682677253a..2be474877fdc 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -23,6 +23,7 @@ struct intel_encoder;
 struct intel_hdmi;
 
 bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy);
+bool intel_encoder_is_c10phy(struct intel_encoder *encoder);
 void intel_mtl_pll_enable(struct intel_encoder *encoder,
 			  const struct intel_crtc_state *crtc_state);
 void intel_mtl_pll_disable(struct intel_encoder *encoder);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index b88f214e111a..9911aebb37fd 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -1836,6 +1836,7 @@ static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
 	intel_de_write(dev_priv, BCLRPAT(crtc->pipe), 0);
 }
 
+/* Prefer intel_encoder_is_combo() */
 bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
 {
 	if (phy == PHY_NONE)
@@ -1857,6 +1858,7 @@ bool intel_phy_is_combo(struct drm_i915_private *dev_priv, enum phy phy)
 		return false;
 }
 
+/* Prefer intel_encoder_is_tc() */
 bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
 {
 	/*
@@ -1877,6 +1879,7 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy)
 	return false;
 }
 
+/* Prefer intel_encoder_is_snps() */
 bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy)
 {
 	/*
@@ -1886,6 +1889,7 @@ bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy)
 	return IS_DG2(dev_priv) && phy > PHY_NONE && phy <= PHY_E;
 }
 
+/* Prefer intel_encoder_to_phy() */
 enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
 {
 	if (DISPLAY_VER(i915) >= 13 && port >= PORT_D_XELPD)
@@ -1903,6 +1907,7 @@ enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port)
 	return PHY_A + port - PORT_A;
 }
 
+/* Prefer intel_encoder_to_tc() */
 enum tc_port intel_port_to_tc(struct drm_i915_private *dev_priv, enum port port)
 {
 	if (!intel_phy_is_tc(dev_priv, intel_port_to_phy(dev_priv, port)))
@@ -1914,6 +1919,41 @@ enum tc_port intel_port_to_tc(struct drm_i915_private *dev_priv, enum port port)
 		return TC_PORT_1 + port - PORT_C;
 }
 
+enum phy intel_encoder_to_phy(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	return intel_port_to_phy(i915, encoder->port);
+}
+
+bool intel_encoder_is_combo(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	return intel_phy_is_combo(i915, intel_encoder_to_phy(encoder));
+}
+
+bool intel_encoder_is_snps(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	return intel_phy_is_snps(i915, intel_encoder_to_phy(encoder));
+}
+
+bool intel_encoder_is_tc(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	return intel_phy_is_tc(i915, intel_encoder_to_phy(encoder));
+}
+
+enum tc_port intel_encoder_to_tc(struct intel_encoder *encoder)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+
+	return intel_port_to_tc(i915, encoder->port);
+}
+
 enum intel_display_power_domain
 intel_aux_power_domain(struct intel_digital_port *dig_port)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index f4a0773f0fca..986ec77490de 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -448,6 +448,13 @@ bool intel_phy_is_tc(struct drm_i915_private *dev_priv, enum phy phy);
 bool intel_phy_is_snps(struct drm_i915_private *dev_priv, enum phy phy);
 enum tc_port intel_port_to_tc(struct drm_i915_private *dev_priv,
 			      enum port port);
+
+enum phy intel_encoder_to_phy(struct intel_encoder *encoder);
+bool intel_encoder_is_combo(struct intel_encoder *encoder);
+bool intel_encoder_is_snps(struct intel_encoder *encoder);
+bool intel_encoder_is_tc(struct intel_encoder *encoder);
+enum tc_port intel_encoder_to_tc(struct intel_encoder *encoder);
+
 int intel_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
 				      struct drm_file *file_priv);
 
-- 
2.39.2

