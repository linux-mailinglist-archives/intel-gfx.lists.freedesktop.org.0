Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 103A29DC2B7
	for <lists+intel-gfx@lfdr.de>; Fri, 29 Nov 2024 12:20:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA73310EE04;
	Fri, 29 Nov 2024 11:20:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CRtc/i5H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0F6810E4A6;
 Fri, 29 Nov 2024 11:20:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732879227; x=1764415227;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lMio5GJeLZYgeYcBRwNt6YBnz58ZxRbaamcqhr/wHUM=;
 b=CRtc/i5H/r5M7QhHIm5QRuKcvT9lmRvwyDsMHjHO0XVP31PqqXJf6+rC
 Xy9gla+0POhRbs6v0M/fw8wW5KAUXCfKkKAc/6w/umqDiZmSu85aEqzgs
 wpvwIS7FqLqWu1R4dp1OmiZYEkRm/eCrGE7kGW2/G6D83Kv/0FIdF7wiV
 Z2BbyoMsX8rBk2hcYQV5bSrdH23aluB9d+ZLdZog8uFNVGugppYpPjulz
 U5xE53efZXH8JJ4ID3QV87cJqja1hSozaUuCrpbqSoP5fKiUTUsTIWVbL
 BOCUs00XlYBOtanqNWoA4gg7lQycKhT4A4QHwPS36GKrJs55h78o68Jzv w==;
X-CSE-ConnectionGUID: 1VSnM9M0TCe068G7JFf2Yw==
X-CSE-MsgGUID: W9z+5ryzQzyZ5JeCM0UQhA==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="44169058"
X-IronPort-AV: E=Sophos;i="6.12,195,1728975600"; d="scan'208";a="44169058"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 03:20:27 -0800
X-CSE-ConnectionGUID: 9xFcT2NCS8W1+5d6KBEu/w==
X-CSE-MsgGUID: M//GxmFsSNidtojAxSP8dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="97507345"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.241])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2024 03:20:25 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 2/2] drm/i915/display: add intel_dig_port_alloc()
Date: Fri, 29 Nov 2024 13:20:12 +0200
Message-Id: <20241129112012.474228-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241129112012.474228-1-jani.nikula@intel.com>
References: <20241129112012.474228-1-jani.nikula@intel.com>
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

Add a common allocator function for struct intel_digital_port, with some
member default initialization to deduplicate them from everywhere else.

At least for now, place this in intel_encoder.[ch]. We don't have a
dedicated file for dig port stuff, and there wouldn't be much to add
there anyway. A digital port is a sort of subclass of encoder, so the
location isn't far off the mark.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/g4x_dp.c        |  7 +------
 drivers/gpu/drm/i915/display/g4x_hdmi.c      |  9 ++-------
 drivers/gpu/drm/i915/display/intel_ddi.c     |  8 +-------
 drivers/gpu/drm/i915/display/intel_encoder.c | 18 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_encoder.h |  3 +++
 5 files changed, 25 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
index b1ba56b96afa..0c488e55e35c 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1282,12 +1282,10 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 		drm_dbg_kms(display->drm, "No VBT child device for DP-%c\n",
 			    port_name(port));
 
-	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
+	dig_port = intel_dig_port_alloc();
 	if (!dig_port)
 		return false;
 
-	dig_port->aux_ch = AUX_CH_NONE;
-
 	intel_connector = intel_connector_alloc();
 	if (!intel_connector)
 		goto err_connector_alloc;
@@ -1297,8 +1295,6 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 
 	intel_encoder->devdata = devdata;
 
-	mutex_init(&dig_port->hdcp.mutex);
-
 	if (drm_encoder_init(display->drm, &intel_encoder->base,
 			     &intel_dp_enc_funcs, DRM_MODE_ENCODER_TMDS,
 			     "DP %c", port_name(port)))
@@ -1365,7 +1361,6 @@ bool g4x_dp_init(struct drm_i915_private *dev_priv,
 	}
 
 	dig_port->dp.output_reg = output_reg;
-	dig_port->max_lanes = 4;
 
 	intel_encoder->type = INTEL_OUTPUT_DP;
 	intel_encoder->power_domain = intel_display_power_ddi_lanes_domain(dev_priv, port);
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index ba8f8499a959..f6a99bd8d740 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -16,6 +16,7 @@
 #include "intel_display_types.h"
 #include "intel_dp_aux.h"
 #include "intel_dpio_phy.h"
+#include "intel_encoder.h"
 #include "intel_fdi.h"
 #include "intel_fifo_underrun.h"
 #include "intel_hdmi.h"
@@ -704,12 +705,10 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 		drm_dbg_kms(&dev_priv->drm, "No VBT child device for HDMI-%c\n",
 			    port_name(port));
 
-	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
+	dig_port = intel_dig_port_alloc();
 	if (!dig_port)
 		return;
 
-	dig_port->aux_ch = AUX_CH_NONE;
-
 	intel_connector = intel_connector_alloc();
 	if (!intel_connector) {
 		kfree(dig_port);
@@ -720,8 +719,6 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 
 	intel_encoder->devdata = devdata;
 
-	mutex_init(&dig_port->hdcp.mutex);
-
 	drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
 			 &intel_hdmi_enc_funcs, DRM_MODE_ENCODER_TMDS,
 			 "HDMI %c", port_name(port));
@@ -782,8 +779,6 @@ void g4x_hdmi_init(struct drm_i915_private *dev_priv,
 		intel_encoder->cloneable |= BIT(INTEL_OUTPUT_HDMI);
 
 	dig_port->hdmi.hdmi_reg = hdmi_reg;
-	dig_port->dp.output_reg = INVALID_MMIO_REG;
-	dig_port->max_lanes = 4;
 
 	intel_infoframe_init(dig_port);
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index d61895b9f591..e58f580952bb 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5053,12 +5053,10 @@ void intel_ddi_init(struct intel_display *display,
 			    phy_name(phy));
 	}
 
-	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
+	dig_port = intel_dig_port_alloc();
 	if (!dig_port)
 		return;
 
-	dig_port->aux_ch = AUX_CH_NONE;
-
 	encoder = &dig_port->base;
 	encoder->devdata = devdata;
 
@@ -5096,9 +5094,6 @@ void intel_ddi_init(struct intel_display *display,
 
 	intel_encoder_link_check_init(encoder, intel_ddi_link_check);
 
-	mutex_init(&dig_port->hdcp.mutex);
-	dig_port->hdcp.num_streams = 0;
-
 	encoder->hotplug = intel_ddi_hotplug;
 	encoder->compute_output_type = intel_ddi_compute_output_type;
 	encoder->compute_config = intel_ddi_compute_config;
@@ -5241,7 +5236,6 @@ void intel_ddi_init(struct intel_display *display,
 	if (intel_bios_encoder_lane_reversal(devdata))
 		dig_port->saved_port_bits |= DDI_BUF_PORT_REVERSAL;
 
-	dig_port->dp.output_reg = INVALID_MMIO_REG;
 	dig_port->max_lanes = intel_ddi_max_lanes(dig_port);
 
 	if (need_aux_ch(encoder, init_dp)) {
diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
index 21d638535497..fa040ba2a05e 100644
--- a/drivers/gpu/drm/i915/display/intel_encoder.c
+++ b/drivers/gpu/drm/i915/display/intel_encoder.c
@@ -81,3 +81,21 @@ void intel_encoder_shutdown_all(struct intel_display *display)
 		if (encoder->shutdown_complete)
 			encoder->shutdown_complete(encoder);
 }
+
+struct intel_digital_port *intel_dig_port_alloc(void)
+{
+	struct intel_digital_port *dig_port;
+
+	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
+	if (!dig_port)
+		return NULL;
+
+	dig_port->hdmi.hdmi_reg = INVALID_MMIO_REG;
+	dig_port->dp.output_reg = INVALID_MMIO_REG;
+	dig_port->aux_ch = AUX_CH_NONE;
+	dig_port->max_lanes = 4;
+
+	mutex_init(&dig_port->hdcp.mutex);
+
+	return dig_port;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_encoder.h b/drivers/gpu/drm/i915/display/intel_encoder.h
index 3fa5589f0b1c..65a9c521f8a6 100644
--- a/drivers/gpu/drm/i915/display/intel_encoder.h
+++ b/drivers/gpu/drm/i915/display/intel_encoder.h
@@ -6,6 +6,7 @@
 #ifndef __INTEL_ENCODER_H__
 #define __INTEL_ENCODER_H__
 
+struct intel_digital_port;
 struct intel_display;
 struct intel_encoder;
 
@@ -17,4 +18,6 @@ void intel_encoder_link_check_flush_work(struct intel_encoder *encoder);
 void intel_encoder_suspend_all(struct intel_display *display);
 void intel_encoder_shutdown_all(struct intel_display *display);
 
+struct intel_digital_port *intel_dig_port_alloc(void);
+
 #endif /* __INTEL_ENCODER_H__ */
-- 
2.39.5

