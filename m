Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B79668E5A7
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 02:55:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B116310E67F;
	Wed,  8 Feb 2023 01:55:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F38310E690
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 01:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675821327; x=1707357327;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=CalqPheQNNg7RkD6vuvb2qW9Xyjs1b3+gRAmhwGO0lQ=;
 b=hwYHUDmZUzsLpFxouZ2Eoa4UaLDmT72rA7eY8RcY8CZhCDYm2+JQ++Mx
 Imke+rZ2Ugogt/HGUwFTKJ0sCsLaBhUIXYaRN+pcnobE8DzTko+09pQ84
 8r68jpKLUGrINIfSeC3mMK8gui+F5aBQyvfjbvHqOcwRZzd1BgGoi2H6x
 kbHOX8Kipf1tUpdKidrWt4I+wqzYCiNPAE6tMTpFbmi99Vc0UegGuTTlI
 hf4duBuNU7JQa5mkePwF5zJGFw+vsnsyQ6wRE2NaK0WTys9MOT3t6jSKV
 2W8TDDyZQKhfZkMxurG7IYJJRdmdZaNNIJ1PeM3sFC3UxrUk7rlE7ahbw g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="330974355"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="330974355"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 17:55:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="644672715"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="644672715"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 07 Feb 2023 17:55:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Feb 2023 03:55:24 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 03:55:03 +0200
Message-Id: <20230208015508.24824-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
References: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/10] drm/i915: Replace
 intel_bios_is_port_hpd_inverted() with intel_bios_encoder_hpd_invert()
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

intel_bios_is_port_hpd_inverted() is only used on bxt/glk on
which we always have encoder->devdata available. So consult
that instead of digging around in vbt.ports[].

And rename the function to match the common pattern.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 25 +++++------------------
 drivers/gpu/drm/i915/display/intel_bios.h |  3 +--
 drivers/gpu/drm/i915/i915_irq.c           |  7 +++----
 3 files changed, 9 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index cc7f5928935f..ca6b7d90ee50 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3573,26 +3573,6 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 	return false;
 }
 
-/**
- * intel_bios_is_port_hpd_inverted - is HPD inverted for %port
- * @i915:	i915 device instance
- * @port:	port to check
- *
- * Return true if HPD should be inverted for %port.
- */
-bool
-intel_bios_is_port_hpd_inverted(const struct drm_i915_private *i915,
-				enum port port)
-{
-	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[port];
-
-	if (drm_WARN_ON_ONCE(&i915->drm,
-			     !IS_GEMINILAKE(i915) && !IS_BROXTON(i915)))
-		return false;
-
-	return devdata && devdata->child.hpd_invert;
-}
-
 enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
 				   enum port port)
 {
@@ -3762,6 +3742,11 @@ bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devd
 	return devdata && devdata->child.lane_reversal;
 }
 
+bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data *devdata)
+{
+	return devdata && devdata->child.hpd_invert;
+}
+
 const struct intel_bios_encoder_data *
 intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port port)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index 29119145cf34..cf9fbf506790 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -248,8 +248,6 @@ bool intel_bios_is_port_present(struct drm_i915_private *dev_priv, enum port por
 bool intel_bios_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
 bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *dev_priv, enum port port);
 bool intel_bios_is_dsi_present(struct drm_i915_private *dev_priv, enum port *port);
-bool intel_bios_is_port_hpd_inverted(const struct drm_i915_private *i915,
-				     enum port port);
 enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv, enum port port);
 bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
@@ -274,5 +272,6 @@ bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata)
 int intel_bios_encoder_dp_boost_level(const struct intel_bios_encoder_data *devdata);
 int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_data *devdata);
 bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata);
+bool intel_bios_encoder_hpd_invert(const struct intel_bios_encoder_data *devdata);
 
 #endif /* _INTEL_BIOS_H_ */
diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index ae0a3b07281a..b024a3a7ca19 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3131,23 +3131,22 @@ static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
 
 static u32 bxt_hotplug_enables(struct intel_encoder *encoder)
 {
-	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
 	u32 hotplug;
 
 	switch (encoder->hpd_pin) {
 	case HPD_PORT_A:
 		hotplug = PORTA_HOTPLUG_ENABLE;
-		if (intel_bios_is_port_hpd_inverted(i915, PORT_A))
+		if (intel_bios_encoder_hpd_invert(encoder->devdata))
 			hotplug |= BXT_DDIA_HPD_INVERT;
 		return hotplug;
 	case HPD_PORT_B:
 		hotplug = PORTB_HOTPLUG_ENABLE;
-		if (intel_bios_is_port_hpd_inverted(i915, PORT_B))
+		if (intel_bios_encoder_hpd_invert(encoder->devdata))
 			hotplug |= BXT_DDIB_HPD_INVERT;
 		return hotplug;
 	case HPD_PORT_C:
 		hotplug = PORTC_HOTPLUG_ENABLE;
-		if (intel_bios_is_port_hpd_inverted(i915, PORT_C))
+		if (intel_bios_encoder_hpd_invert(encoder->devdata))
 			hotplug |= BXT_DDIC_HPD_INVERT;
 		return hotplug;
 	default:
-- 
2.39.1

