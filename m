Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6D468E5AA
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 02:55:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C49E510E69A;
	Wed,  8 Feb 2023 01:55:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B624610E695
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 01:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675821336; x=1707357336;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rsFt97y+nO8gJ3pe5hcFyrtL57hrTP3POPXtQUfAlNM=;
 b=UwzlbKhm4KxYsu1MZ0BP8bIc39Q1DCZGSSY5IdQxyYOkf3OxgaRnUgXd
 pUMibvslsEXCb7sGUvuCq8ZTC2SEbo7Cbe1YTuwV31ZnScd+lD4JRwuNq
 TyaxB7nKSVh+sTpBHa9qw69yhP9/dyFoaNAL5qQGtPjDYXAhJURY85Re7
 FuZ3TUXwEDJQYMzCgLEOZYMqq2FhmVuGyZiJwQzBjm7r0E6ZqNN9vwibi
 CPRn7fho2pdOozfSplFoMKHvKmgqmEOvBy9yUarqqctHAtv98GgBnWbqf
 PYZgMk0jL8bGENGCAw9cLJURXDT1LTGZ095DN7CpKei8N8Jwt4R8jqKr0 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="330974369"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="330974369"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 17:55:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="644672721"
X-IronPort-AV: E=Sophos;i="5.97,279,1669104000"; d="scan'208";a="644672721"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga006.jf.intel.com with SMTP; 07 Feb 2023 17:55:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Feb 2023 03:55:33 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 Feb 2023 03:55:06 +0200
Message-Id: <20230208015508.24824-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
References: <20230208015508.24824-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/10] drm/i915: Pass devdata to
 intel_bios_port_aux_ch()
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

Currently intel_bios_port_aux_ch() digs out the devdata
(VBT child device info) from the vbt.ports[] array. We
need to get rid of that, so just pass in the correct
encoder->devdata (now that we have it also for g4x+ ports)
directly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c     | 2 +-
 drivers/gpu/drm/i915/display/g4x_hdmi.c   | 2 +-
 drivers/gpu/drm/i915/display/intel_bios.c | 2 +-
 drivers/gpu/drm/i915/display/intel_bios.h | 4 +++-
 drivers/gpu/drm/i915/display/intel_ddi.c  | 2 +-
 5 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index 0cc1531a03a3..5a3e79484608 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1401,7 +1401,7 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	if (port != PORT_A)
 		intel_infoframe_init(dig_port);
 
-	dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, port);
+	dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, devdata, port);
 	if (!intel_dp_init_connector(dig_port, intel_connector))
 		goto err_init_connector;
 
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index e9ae4c67b8a4..3a1144865c30 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -639,6 +639,6 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 
 	intel_infoframe_init(dig_port);
 
-	dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, port);
+	dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, devdata, port);
 	intel_hdmi_init_connector(dig_port, intel_connector);
 }
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index ca6b7d90ee50..efe33af2259b 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -3574,9 +3574,9 @@ bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 }
 
 enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
+				   const struct intel_bios_encoder_data *devdata,
 				   enum port port)
 {
-	const struct intel_bios_encoder_data *devdata = i915->display.vbt.ports[port];
 	enum aux_ch aux_ch;
 
 	if (!devdata || !devdata->child.aux_channel) {
diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
index cf9fbf506790..eaff41256a9c 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.h
+++ b/drivers/gpu/drm/i915/display/intel_bios.h
@@ -248,7 +248,9 @@ bool intel_bios_is_port_present(struct drm_i915_private *dev_priv, enum port por
 bool intel_bios_is_port_edp(struct drm_i915_private *dev_priv, enum port port);
 bool intel_bios_is_port_dp_dual_mode(struct drm_i915_private *dev_priv, enum port port);
 bool intel_bios_is_dsi_present(struct drm_i915_private *dev_priv, enum port *port);
-enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *dev_priv, enum port port);
+enum aux_ch intel_bios_port_aux_ch(struct drm_i915_private *i915,
+				   const struct intel_bios_encoder_data *devdata,
+				   enum port port);
 bool intel_bios_get_dsc_params(struct intel_encoder *encoder,
 			       struct intel_crtc_state *crtc_state,
 			       int dsc_max_bpc);
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 136a68393608..bfd1e30a27b4 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4505,7 +4505,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 
 	dig_port->dp.output_reg = INVALID_MMIO_REG;
 	dig_port->max_lanes = intel_ddi_max_lanes(dig_port);
-	dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, port);
+	dig_port->aux_ch = intel_bios_port_aux_ch(dev_priv, devdata, port);
 
 	if (intel_phy_is_tc(dev_priv, phy)) {
 		bool is_legacy =
-- 
2.39.1

