Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C10E269EAEC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 00:03:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1A2510E396;
	Tue, 21 Feb 2023 23:03:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C01F10E900
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Feb 2023 23:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677020614; x=1708556614;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xNzwbEJHmyARCUUQNTKbqiKjYZ8WPIcEBDSUB579Uqc=;
 b=IrXe8fJ72tsJ469jYPxtrzfErycLdictskDtBaFah04Mz6x1mtZF7aJX
 UtCk+ARfAY99jcRt3AmcadMvUFq4jwJA8zEHXll35IIMd+ZwwIQjTemHD
 8BIjFOj3KyBWMLHSYJWApAnNOJ46/hhLvbJhspWvSdmO/5xX5i0w2F7ib
 059Pa5SjBs1GIp3JgL2SNHw/9HYP1FNDdL2tF5tFVgntQTeUtFUppYuVB
 PRUnFQFHHvVyZ5F25WS8DgIqK4yWOv6tsx+HcUofSffpSp9lRsRNVT5UN
 3xE1enB9yLxrcxkr6L2LKfjtyS2GEgO0A/MWBpQVNBXlhUVpAoBSfjfTA A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="330501977"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="330501977"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2023 15:03:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10628"; a="814690226"
X-IronPort-AV: E=Sophos;i="5.97,317,1669104000"; d="scan'208";a="814690226"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 21 Feb 2023 15:03:32 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Feb 2023 01:03:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Feb 2023 01:02:27 +0200
Message-Id: <20230221230227.6244-23-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
References: <20230221230227.6244-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 22/22] drm/i915: Only populate aux_ch is
 really needed
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

Mixing VBT based AUX CH with platform defaults seems like
a recipe for conflicts. Let's only populate AUX CH if we
absolutely need it, that is only if we are dealing with
a DP output or a TC port (which need ot due to some power
well shenanigans).

TODO: double check that real VBTs do in fact populate
      the AUX CH for HDMI TC legacy ports...

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c  |  1 -
 drivers/gpu/drm/i915/display/intel_ddi.c | 16 +++++++++++++---
 2 files changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 7c66deb457ae..eb5bdad98590 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -662,7 +662,6 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 	dig_port->max_lanes = 4;
 
 	intel_infoframe_init(dig_port);
 
-	dig_port->aux_ch = intel_dp_aux_ch(intel_encoder);
 	intel_hdmi_init_connector(dig_port, intel_connector);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 1208bfcd4e30..4a23e1e58261 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4298,8 +4298,16 @@ static bool port_strap_detected(struct drm_i915_private *i915, enum port port)
 		return false;
 	}
 }
 
+static bool need_aux_ch(struct intel_encoder *encoder, bool init_dp)
+{
+	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
+	enum phy phy = intel_port_to_phy(i915, encoder->port);
+
+	return init_dp || intel_phy_is_tc(i915, phy);
+}
+
 void intel_ddi_init(struct drm_i915_private *dev_priv,
 		    struct intel_bios_encoder_data *devdata,
 		    enum port port)
 {
@@ -4558,11 +4566,13 @@ void intel_ddi_init(struct drm_i915_private *dev_priv,
 
 	dig_port->dp.output_reg = INVALID_MMIO_REG;
 	dig_port->max_lanes = intel_ddi_max_lanes(dig_port);
 
-	dig_port->aux_ch = intel_dp_aux_ch(encoder);
-	if (dig_port->aux_ch == AUX_CH_NONE)
-		goto err;
+	if (need_aux_ch(encoder, init_dp)) {
+		dig_port->aux_ch = intel_dp_aux_ch(encoder);
+		if (dig_port->aux_ch == AUX_CH_NONE)
+			goto err;
+	}
 
 	if (intel_phy_is_tc(dev_priv, phy)) {
 		bool is_legacy =
 			!intel_bios_encoder_supports_typec_usb(devdata) &&
-- 
2.39.2

