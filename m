Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D35B68E5A6
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 02:55:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFD1010E68F;
	Wed,  8 Feb 2023 01:55:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4266410E68F
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 01:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675821324; x=1707357324;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8/4MieyT2W3FV5SWGQEXcEU70ZGgSZm6JtzETcqSIf4=;
 b=eeBfDpxco3xoCtsBF0txD1iNPvjDbJFwVenlkMFfC/KgEv91ArultpK5
 RK7sZ/lC4kSdRiCcG3txlwdgcq+ddpj3ASYA2EcBc3JJFtqNcoJWdU3Tj
 tmEg8xZaeGeDW7n/chDPjtbluFL+s+laj7CFlBrd5X11qYM72kEZBoQe4
 tG5kzAuwr8vkYWcRwkCJnZRXyQ/2iJ9sCTkuiFRa3mfqBPra88rKfI2nl
 jaqTYk9b8wMyvK0f68isRnzaLAoOQ18AyMXFBVr3z0Q3G3L0oWEO9xlb1
 K3bgKRQFHld4+puS8tisWcCjrmRbEARfvA03KYbkYv30Cfke7Bih6c9ga Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="330974351"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="330974351"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 17:55:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="644672713"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="644672713"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 07 Feb 2023 17:55:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Feb 2023 03:55:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 03:55:02 +0200
Message-Id: <20230208015508.24824-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
References: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/10] drm/i915: Replace
 intel_bios_is_lane_reversal_needed() with
 intel_bios_encoder_lane_reversal()
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

The sole user of intel_bios_is_lane_reversal_needed() has
the devdata already located, so pass it in directly instead
of digging it again from vbt.ports[].

And rename the function to follow the common pattern for
these things.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 21 +++++----------------
 drivers/gpu/drm/i915/display/intel_bios.h |  3 +--
 drivers/gpu/drm/i915/display/intel_ddi.c  |  2 +-
 3 files changed, 7 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 9646d68fdb0f..cc7f5928935f 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3593,22 +3593,6 @@ intel_bios_is_port_hpd_inverted(const struct drm_i915_private *i915,
 	return devdata && devdata->child.hpd_invert;
 }
 
-/**
- * intel_bios_is_lane_reversal_needed - if lane reversal needed on port
- * @i915:       i915 device instance
- * @port:       port to check
- *
- * Return true if port requires lane reversal
- */
-bool
-intel_bios_is_lane_reversal_needed(const struct drm_i915_private *i915,
-				   enum port port)
-{
-	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[port];
-
-	return devdata && devdata->child.lane_reversal;
-}
-
 enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
 				   enum port port)
 {
@@ -3773,6 +3757,11 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
 	return devdata->i915->display.vbt.version >= 209 && devdata->child.tbt;
 }
 
+bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata)
+{
+	return devdata && devdata->child.lane_reversal;
+}
+
 const struct intel_bios_encoder_data *
 intel_bios_encoder_data_lookup(struct drm_i915_private *i915, enum port port)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index ad3edfe6ec3a..29119145cf34 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -250,8 +250,6 @@ bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *dev_priv, enum por
 bool intel_bios_is_dsi_present(struct drm_i915_private *dev_priv, enum port *port);
 bool intel_bios_is_port_hpd_inverted(const struct drm_i915_private *i915,
 				     enum port port);
-bool intel_bios_is_lane_reversal_needed(const struct drm_i915_private *i915,
-					enum port port);
 enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv, enum port port);
 bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
@@ -275,5 +273,6 @@ bool intel_bios_encoder_supports_tbt(const struct intel_bios_encoder_data *devda
 bool intel_bios_encoder_is_lspcon(const struct intel_bios_encoder_data *devdata);
 int intel_bios_encoder_dp_boost_level(const struct intel_bios_encoder_data *devdata);
 int intel_bios_encoder_hdmi_boost_level(const struct intel_bios_encoder_data *devdata);
+bool intel_bios_encoder_lane_reversal(const struct intel_bios_encoder_data *devdata);
 
 #endif /* _INTEL_BIOS_H_ */
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 2c64d5f4b8f3..136a68393608 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4500,7 +4500,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 			intel_de_read(dev_priv, DDI_BUF_CTL(port))
 			& (DDI_BUF_PORT_REVERSAL | DDI_A_4_LANES);
 
-	if (intel_bios_is_lane_reversal_needed(dev_priv, port))
+	if (intel_bios_encoder_lane_reversal(devdata))
 		dig_port->saved_port_bits |= DDI_BUF_PORT_REVERSAL;
 
 	dig_port->dp.output_reg = INVALID_MMIO_REG;
-- 
2.39.1

