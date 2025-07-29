Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C483AB14CDE
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 13:17:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5403E10E616;
	Tue, 29 Jul 2025 11:17:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B+4Xzzst";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22DC210E614;
 Tue, 29 Jul 2025 11:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753787842; x=1785323842;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Wssi96YVxLtKTfMcd8we0wsqwUpLHVEEud26EmOAEls=;
 b=B+4XzzstybSlTBSU8N+lRekO8zLxsLoFIXwXZJjrn+8Gnh/uJIb268bO
 PETAzCM3hbjUseWs1yFncU3gXkSi1Q/1ZfNNvuS3qm0CZ/VphxeWxPzXa
 h9iZ4HPur5Slwpoyb+bNWkY7i2FuOHbmjPUH3DV+1Wt3TYtlBBmTaTCE9
 8SbimobxLvpkNDmcw11PBxQHQ+4NHnZuCOGFQN5QeneEHSHe/FyR8Wz1J
 pcqQ982yI+hTkp76ZdNYkpD/qIpnAJttp2dLkiTJdkIMaoilxikH+mgqE
 hRDQp9MO49MxB8qUH9C90TkkISwPBxcuN1E9xaq0g7fKIqhVW0L11jJtW Q==;
X-CSE-ConnectionGUID: bH2VAbmpSGyPssV4FWjTRw==
X-CSE-MsgGUID: i7Iec6l1TRW3YUFcOXw2jg==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="66324329"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="66324329"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 04:17:21 -0700
X-CSE-ConnectionGUID: jPF4WYxeQL+RpbxFTONRoQ==
X-CSE-MsgGUID: R5sRoy70QGqXYnMlaWAh9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="168082018"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.22])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 04:17:19 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/i915/display: add intel_dig_port_alloc()
Date: Tue, 29 Jul 2025 14:17:08 +0300
Message-Id: <4d2da1a40698f85014140f586405b19795437e81.1753787803.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1753787803.git.jani.nikula@intel.com>
References: <cover.1753787803.git.jani.nikula@intel.com>
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
member default initialization to deduplicate them from everywhere
else. This is similar to intel_connector_alloc().

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
index 846dbd8ae931..aa159f9ce12f 100644
--- a/drivers/gpu/drm/i915/display/g4x_dp.c
+++ b/drivers/gpu/drm/i915/display/g4x_dp.c
@@ -1300,12 +1300,10 @@ bool g4x_dp_init(struct intel_display *display,
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
@@ -1315,8 +1313,6 @@ bool g4x_dp_init(struct intel_display *display,
 
 	intel_encoder->devdata = devdata;
 
-	mutex_init(&dig_port->hdcp.mutex);
-
 	if (drm_encoder_init(display->drm, &intel_encoder->base,
 			     &intel_dp_enc_funcs, DRM_MODE_ENCODER_TMDS,
 			     "DP %c", port_name(port)))
@@ -1386,7 +1382,6 @@ bool g4x_dp_init(struct intel_display *display,
 	}
 
 	dig_port->dp.output_reg = output_reg;
-	dig_port->max_lanes = 4;
 
 	intel_encoder->type = INTEL_OUTPUT_DP;
 	intel_encoder->power_domain = intel_display_power_ddi_lanes_domain(display, port);
diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
index 2610f5702fb9..108ebd97f9e4 100644
--- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
+++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
@@ -19,6 +19,7 @@
 #include "intel_display_types.h"
 #include "intel_dp_aux.h"
 #include "intel_dpio_phy.h"
+#include "intel_encoder.h"
 #include "intel_fdi.h"
 #include "intel_fifo_underrun.h"
 #include "intel_hdmi.h"
@@ -690,12 +691,10 @@ bool g4x_hdmi_init(struct intel_display *display,
 		drm_dbg_kms(display->drm, "No VBT child device for HDMI-%c\n",
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
@@ -704,8 +703,6 @@ bool g4x_hdmi_init(struct intel_display *display,
 
 	intel_encoder->devdata = devdata;
 
-	mutex_init(&dig_port->hdcp.mutex);
-
 	if (drm_encoder_init(display->drm, &intel_encoder->base,
 			     &intel_hdmi_enc_funcs, DRM_MODE_ENCODER_TMDS,
 			     "HDMI %c", port_name(port)))
@@ -767,8 +764,6 @@ bool g4x_hdmi_init(struct intel_display *display,
 		intel_encoder->cloneable |= BIT(INTEL_OUTPUT_HDMI);
 
 	dig_port->hdmi.hdmi_reg = hdmi_reg;
-	dig_port->dp.output_reg = INVALID_MMIO_REG;
-	dig_port->max_lanes = 4;
 
 	intel_infoframe_init(dig_port);
 
diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 0405396c7750..403249345f12 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5148,12 +5148,10 @@ void intel_ddi_init(struct intel_display *display,
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
 
@@ -5191,9 +5189,6 @@ void intel_ddi_init(struct intel_display *display,
 
 	intel_encoder_link_check_init(encoder, intel_ddi_link_check);
 
-	mutex_init(&dig_port->hdcp.mutex);
-	dig_port->hdcp.num_streams = 0;
-
 	encoder->hotplug = intel_ddi_hotplug;
 	encoder->compute_output_type = intel_ddi_compute_output_type;
 	encoder->compute_config = intel_ddi_compute_config;
@@ -5331,7 +5326,6 @@ void intel_ddi_init(struct intel_display *display,
 
 	dig_port->ddi_a_4_lanes = DISPLAY_VER(display) < 11 && ddi_buf_ctl & DDI_A_4_LANES;
 
-	dig_port->dp.output_reg = INVALID_MMIO_REG;
 	dig_port->max_lanes = intel_ddi_max_lanes(dig_port);
 
 	if (need_aux_ch(encoder, init_dp)) {
diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
index 0b7bd26f4339..f9ce81320d68 100644
--- a/drivers/gpu/drm/i915/display/intel_encoder.c
+++ b/drivers/gpu/drm/i915/display/intel_encoder.c
@@ -80,3 +80,21 @@ void intel_encoder_shutdown_all(struct intel_display *display)
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

