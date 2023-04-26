Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BCD6EF8C8
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 18:53:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32CA610E963;
	Wed, 26 Apr 2023 16:53:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80FDF10E90A
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Apr 2023 16:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682528002; x=1714064002;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lvMmpqOaBZpdId7EDQJSCI2N1yufdxYiiqwK1d6G26g=;
 b=AYpO5QBSdYGkXpVOZPVXGDxBABsu3CnzhHynM5GbebWHjEFa7ikUx6cI
 Dv9ctsqsDKHvJ7sFbvAwLH/rf5/Dx7hgU5O8CBA6C4UXc34Lff4JPbpuo
 5LAgm8vI9fzrPpbijBVvCL8YPf1Kp9J4BCxunH4R6Zoqnnc4/4FKt9aYH
 UTkY8RG1YniGS/Klx92rgulIT+6WlGt/UPlllPOYk5ani0lNaLQzKuYCE
 lfb/vfpzCmTe+jhhAbko8iYROxQNOD7GvIy0e/vXD0BSFe+Nwp80hk/Ei
 mjhpD2WAIlHUUqbKpG4wRA5s2JXrdDQC5jiAE1t+pPuZa3iAE3mkLrVMP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="327493524"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="327493524"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="671402814"
X-IronPort-AV: E=Sophos;i="5.99,228,1677571200"; d="scan'208";a="671402814"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 09:53:21 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Apr 2023 19:53:04 +0300
Message-Id: <20230426165305.2049341-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230426165305.2049341-1-imre.deak@intel.com>
References: <20230426165305.2049341-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/11] drm/i915: Factor out
 call_with_modeset_ctx()
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

Factor out a helper to call a function with the atomic locks held,
required by a follow-up patch resetting an active DP link.

No functional changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 53 ++++++++++++++----------
 1 file changed, 31 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 29e4bfab46358..0c8bc32f293b0 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4370,35 +4370,18 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 	return modeset_pipe(&crtc->base, ctx);
 }
 
-static enum intel_hotplug_state
-intel_ddi_hotplug(struct intel_encoder *encoder,
-		  struct intel_connector *connector)
+static void call_with_modeset_ctx(int (*fn)(struct intel_encoder *encoder,
+					    struct drm_modeset_acquire_ctx *ctx),
+				  struct intel_encoder *encoder)
 {
 	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
-	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
-	struct intel_dp *intel_dp = &dig_port->dp;
-	enum phy phy = intel_port_to_phy(i915, encoder->port);
-	bool is_tc = intel_phy_is_tc(i915, phy);
 	struct drm_modeset_acquire_ctx ctx;
-	enum intel_hotplug_state state;
 	int ret;
 
-	if (intel_dp->compliance.test_active &&
-	    intel_dp->compliance.test_type == DP_TEST_LINK_PHY_TEST_PATTERN) {
-		intel_dp_phy_test(encoder);
-		/* just do the PHY test and nothing else */
-		return INTEL_HOTPLUG_UNCHANGED;
-	}
-
-	state = intel_encoder_hotplug(encoder, connector);
-
 	drm_modeset_acquire_init(&ctx, 0);
 
 	for (;;) {
-		if (connector->base.connector_type == DRM_MODE_CONNECTOR_HDMIA)
-			ret = intel_hdmi_reset_link(encoder, &ctx);
-		else
-			ret = intel_dp_retrain_link(encoder, &ctx);
+		ret = fn(encoder, &ctx);
 
 		if (ret == -EDEADLK) {
 			drm_modeset_backoff(&ctx);
@@ -4410,8 +4393,34 @@ intel_ddi_hotplug(struct intel_encoder *encoder,
 
 	drm_modeset_drop_locks(&ctx);
 	drm_modeset_acquire_fini(&ctx);
-	drm_WARN(encoder->base.dev, ret,
+	drm_WARN(&i915->drm, ret,
 		 "Acquiring modeset locks failed with %i\n", ret);
+}
+
+static enum intel_hotplug_state
+intel_ddi_hotplug(struct intel_encoder *encoder,
+		  struct intel_connector *connector)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
+	struct intel_dp *intel_dp = &dig_port->dp;
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+	bool is_tc = intel_phy_is_tc(i915, phy);
+	enum intel_hotplug_state state;
+
+	if (intel_dp->compliance.test_active &&
+	    intel_dp->compliance.test_type == DP_TEST_LINK_PHY_TEST_PATTERN) {
+		intel_dp_phy_test(encoder);
+		/* just do the PHY test and nothing else */
+		return INTEL_HOTPLUG_UNCHANGED;
+	}
+
+	state = intel_encoder_hotplug(encoder, connector);
+
+	if (connector->base.connector_type == DRM_MODE_CONNECTOR_HDMIA)
+		call_with_modeset_ctx(intel_hdmi_reset_link, encoder);
+	else
+		call_with_modeset_ctx(intel_dp_retrain_link, encoder);
 
 	/*
 	 * Unpowered type-c dongles can take some time to boot and be
-- 
2.37.2

