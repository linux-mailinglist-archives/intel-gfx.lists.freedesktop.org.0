Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E83743F57
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jun 2023 18:01:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6EFC610E4A9;
	Fri, 30 Jun 2023 16:01:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D70C610E4A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Jun 2023 16:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688140864; x=1719676864;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=PjVP7Vedq41kjLjqeMM+udtfy9dTHJRZap35o69QUeQ=;
 b=AoewkLMkbtWu8iZW4H5s9so9WwnHqPo4c1M5pc4dot7pyF4d/HiDP1SN
 WzijhH7z6aEY9e+CPkR2hEOXPX/2Jh67HchynNz27ieXXCw/jtR/n65Jn
 FVP8GzQj4QXlaJWdZydMwpDguIFABEoB6q+HizoJBPX1EtGp/j6c9iRzJ
 mM/156ubWgVwcow/mcvONesoPpRHQsqlw6fxSHG/VOMGBQnSaWZ1rHpN7
 e8NaMsVLZ5Bp02EcoWl31SyFkBbQLSThR7aIKbWJBo6J/n8IRglO2NV2X
 DtDoLdNhEUKYPFgzy352HXRuqgY8MN1s+Jjg/jGQQM/fflkkVTq2Xjd/v g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="365912566"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="365912566"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2023 08:58:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10757"; a="695059417"
X-IronPort-AV: E=Sophos;i="6.01,171,1684825200"; d="scan'208";a="695059417"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 30 Jun 2023 08:58:53 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Jun 2023 18:58:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Jun 2023 18:58:42 +0300
Message-Id: <20230630155846.29931-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230630155846.29931-1-ville.syrjala@linux.intel.com>
References: <20230630155846.29931-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/6] drm/i915: Only populate aux_ch if really
 needed
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

Mixing VBT based AUX CH with platform defaults seems like
a recipe for conflicts. Let's only populate AUX CH if we
absolutely need it, that is only if we are dealing with
a DP output or a TC port (which need it due to some power
well shenanigans).

TODO: double check that real VBTs do in fact populate
      the AUX CH for HDMI TC legacy ports...

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_hdmi.c  |  1 -
 drivers/gpu/drm/i915/display/intel_ddi.c | 12 +++++++++++-
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index c1fd13bdc9d2..634b14116d9d 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -775,6 +775,5 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 
 	intel_infoframe_init(dig_port);
 
-	dig_port->aux_ch = intel_dp_aux_ch(intel_encoder);
 	intel_hdmi_init_connector(dig_port, intel_connector);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 6cb24a472a9b..662b5ceef3c8 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4676,6 +4676,14 @@ static bool port_strap_detected(struct drm_i915_private *i915, enum port port)
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
 void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 {
 	struct intel_digital_port *dig_port;
@@ -4929,7 +4937,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 
 	dig_port->dp.output_reg = INVALID_MMIO_REG;
 	dig_port->max_lanes = intel_ddi_max_lanes(dig_port);
-	dig_port->aux_ch = intel_dp_aux_ch(encoder);
+
+	if (need_aux_ch(encoder, init_dp))
+		dig_port->aux_ch = intel_dp_aux_ch(encoder);
 
 	if (intel_phy_is_tc(dev_priv, phy)) {
 		bool is_legacy =
-- 
2.39.3

