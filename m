Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CE53188F2
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Feb 2021 12:08:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D61B6E42C;
	Thu, 11 Feb 2021 11:08:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BF746E42C
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Feb 2021 11:08:28 +0000 (UTC)
IronPort-SDR: W1uJW78/OMY/6hJr9f6DNH9jIf1Xr/l5vgkSxiRv2fz0rhQH94+fsHgeBLne33eA3cn4TGoY6y
 QafniK3vQMvg==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="243715730"
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="243715730"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 03:08:26 -0800
IronPort-SDR: D0+vnOGAVlR76ua+Dh9CjOlPDe1ZojxhlYr0xs/PSaAPPq/O0wkqo+S+mKh6NZud31vZ+F69w8
 5Ft2fDHc/x/g==
X-IronPort-AV: E=Sophos;i="5.81,170,1610438400"; d="scan'208";a="380559161"
Received: from linux-desktop.iind.intel.com ([10.223.34.178])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2021 03:08:22 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Feb 2021 17:12:09 +0530
Message-Id: <20210211114209.23866-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/display: Handle lane polarity for DDI
 port
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Lane Reversal is required for some of the DDI ports. This information
is populated in VBT and driver should read the same and set the
polarity while enabling the port. This patch handles the same.

It helps fix a display blankout issue on DP ports on certain
platforms.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_bios.h |  2 ++
 drivers/gpu/drm/i915/display/intel_ddi.c  |  3 +++
 3 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 7118530a1c38..dd51413e7f45 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2674,6 +2674,23 @@ intel_bios_is_lspcon_present(const struct drm_i915_private *i915,
 	return HAS_LSPCON(i915) && child && child->lspcon;
 }
 
+/**
+ * intel_bios_is_lane_reversal_needed - if lane reversal needed on port
+ * @i915:       i915 device instance
+ * @port:       port to check
+ *
+ * Return true if port requires lane reversal
+ */
+bool
+intel_bios_is_lane_reversal_needed(const struct drm_i915_private *i915,
+				   enum port port)
+{
+	const struct child_device_config *child =
+		i915->vbt.ddi_port_info[port].child;
+
+	return child && child->lane_reversal;
+}
+
 enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv,
 				   enum port port)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index e29e79faa01b..f25190ecfe97 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -241,6 +241,8 @@ bool intel_bios_is_port_hpd_inverted(const struct drm_i915_private *i915,
 				     enum port port);
 bool intel_bios_is_lspcon_present(const struct drm_i915_private *i915,
 				  enum port port);
+bool intel_bios_is_lane_reversal_needed(const struct drm_i915_private *i915,
+					enum port port);
 enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv, enum port port);
 bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 3c4003605f93..2d6906f6995f 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4082,6 +4082,9 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 			intel_de_read(dev_priv, DDI_BUF_CTL(port))
 			& (DDI_BUF_PORT_REVERSAL | DDI_A_4_LANES);
 
+	if (intel_bios_is_lane_reversal_needed(dev_priv, port))
+		dig_port->saved_port_bits |= DDI_BUF_PORT_REVERSAL;
+
 	dig_port->dp.output_reg = INVALID_MMIO_REG;
 	dig_port->max_lanes = intel_ddi_max_lanes(dig_port);
 	dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, port);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
