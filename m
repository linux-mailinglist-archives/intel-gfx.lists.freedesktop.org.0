Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFCF823D6E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 09:30:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F47F10E3BB;
	Thu,  4 Jan 2024 08:30:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9D3610E3BB
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 08:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704356998; x=1735892998;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=nZBzQm1CLa0Ors6LragxXjoSZ8DC+x/DNbts+5oFlAE=;
 b=dd64ILcJshshMMXNEtt/TOiZ0ZOm1qG0qYZRcHjeWLO0WQlXtYDToSXu
 YWV+OU/aDBWIuGhtqMpSygdksNu4Z4RFB0l9sDsXDwJxgQcEzvn/b+A+s
 f1N655/DBfpKO6dU8QEO+5UuRlmPjjpYdKkbLd8/zb+G64MEghBsEJD6u
 NWlOoJtRyJzATmTaV1j5JCNcR+DJTdgMHOS9LtojhmAlN62xytj5I0DIk
 zMV0Zaic3stddQRHntu4+Crh+J0y02In4vFf5guBJ79ooRfRuUYjSVQ6H
 TDqrYhDMFFie6HDHlvQbPX5DKFeDK5CkHZ2HQO4uO+SkH5/gt4nhPsWne A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="387624503"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="387624503"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:29:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="773422619"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="773422619"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 00:29:57 -0800
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/12] drm/i915: Init DRM connector polled field early
Date: Thu,  4 Jan 2024 10:29:57 +0200
Message-Id: <20240104083008.2715733-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104083008.2715733-1-imre.deak@intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
MIME-Version: 1.0
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

After an HPD IRQ storm on a connector intel_hpd_irq_storm_detect() will
set the connector's HPD pin state to HPD_MARK_DISABLED and the IRQ gets
disabled. Subsequently intel_hpd_irq_storm_switch_to_polling() will
enable polling for these connectors, setting the pin state to
HPD_DISABLED, but only if the connector's base.polled field is set to
DRM_CONNECTOR_POLL_HPD. intel_hpd_irq_storm_reenable_work() will
reenable the IRQ - after 2 minutes -  if the pin state is HPD_DISABLED.

The connectors will be created with their base.polled field set to 0,
which gets initialized only later in i915_hpd_poll_init_work() (using
intel_connector::polled). If a storm is detected on a connector after
it's created and IRQs are enabled on it - by intel_hpd_init() - and
before its bease.polled field is initialized in the above work, the
connector's HPD pin will stay in the HPD_MARK_DISABLED state - leaving
the IRQ disabled indefinitely - and polling will not get enabled on it as
intended.

I can't see a reason for initializing base.polled in a delayed manner,
so do this already when creating the connector, to prevent the above
race condition.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c  | 1 +
 drivers/gpu/drm/i915/display/intel_dp.c   | 1 +
 drivers/gpu/drm/i915/display/intel_dvo.c  | 1 +
 drivers/gpu/drm/i915/display/intel_hdmi.c | 1 +
 drivers/gpu/drm/i915/display/intel_sdvo.c | 2 ++
 drivers/gpu/drm/i915/display/intel_tv.c   | 1 +
 6 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index abaacea5c2cc4..b330337b842a4 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -1069,6 +1069,7 @@ void intel_crt_init(struct drm_i915_private *dev_priv)
 	} else {
 		intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT;
 	}
+	intel_connector->base.polled = intel_connector->polled;
 
 	if (HAS_DDI(dev_priv)) {
 		assert_port_valid(dev_priv, PORT_E);
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9ff0cbd9c0df5..fed649af8fc85 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6469,6 +6469,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 		connector->interlace_allowed = true;
 
 	intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
+	intel_connector->base.polled = intel_connector->polled;
 
 	intel_connector_attach_encoder(intel_connector, intel_encoder);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 9111e9d46486d..83898ba493d16 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -536,6 +536,7 @@ void intel_dvo_init(struct drm_i915_private *i915)
 	if (intel_dvo->dev.type == INTEL_DVO_CHIP_TMDS)
 		connector->polled = DRM_CONNECTOR_POLL_CONNECT |
 			DRM_CONNECTOR_POLL_DISCONNECT;
+	connector->base.polled = connector->polled;
 
 	drm_connector_init_with_ddc(&i915->drm, &connector->base,
 				    &intel_dvo_connector_funcs,
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index eedef8121ff7c..55048c56bc527 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -3017,6 +3017,7 @@ void intel_hdmi_init_connector(struct intel_digital_port *dig_port,
 		connector->ycbcr_420_allowed = true;
 
 	intel_connector->polled = DRM_CONNECTOR_POLL_HPD;
+	intel_connector->base.polled = intel_connector->polled;
 
 	if (HAS_DDI(dev_priv))
 		intel_connector->get_hw_state = intel_ddi_connector_get_hw_state;
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 9218047495fb4..4e4a87f841787 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2805,6 +2805,7 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, u16 type)
 	} else {
 		intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT | DRM_CONNECTOR_POLL_DISCONNECT;
 	}
+	intel_connector->base.polled = intel_connector->polled;
 	encoder->encoder_type = DRM_MODE_ENCODER_TMDS;
 	connector->connector_type = DRM_MODE_CONNECTOR_DVID;
 
@@ -2880,6 +2881,7 @@ intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, u16 type)
 	intel_connector = &intel_sdvo_connector->base;
 	connector = &intel_connector->base;
 	intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT;
+	intel_connector->base.polled = intel_connector->polled;
 	encoder->encoder_type = DRM_MODE_ENCODER_DAC;
 	connector->connector_type = DRM_MODE_CONNECTOR_VGA;
 
diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i915/display/intel_tv.c
index d4386cb3569e0..f3598fe39fda5 100644
--- a/drivers/gpu/drm/i915/display/intel_tv.c
+++ b/drivers/gpu/drm/i915/display/intel_tv.c
@@ -1990,6 +1990,7 @@ intel_tv_init(struct drm_i915_private *dev_priv)
 	 * More recent chipsets favour HDMI rather than integrated S-Video.
 	 */
 	intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT;
+	intel_connector->base.polled = intel_connector->polled;
 
 	drm_connector_init(&dev_priv->drm, connector, &intel_tv_connector_funcs,
 			   DRM_MODE_CONNECTOR_SVIDEO);
-- 
2.39.2

