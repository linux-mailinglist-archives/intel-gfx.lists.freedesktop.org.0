Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4191F2A5E68
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Nov 2020 07:56:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11C596E94B;
	Wed,  4 Nov 2020 06:56:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CF6C46E94B
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Nov 2020 06:56:34 +0000 (UTC)
IronPort-SDR: eRW1dppf34RxS5svDfCfuEpRrrGLLev3nZ35cvO4R7FYOLAzfh6lMiGMcDOWe4xZSbqlzmyGtH
 2B5x267hCFBQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9794"; a="187033347"
X-IronPort-AV: E=Sophos;i="5.77,450,1596524400"; d="scan'208";a="187033347"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 22:56:34 -0800
IronPort-SDR: a/rs+zA9plxzM6W/jDiao2sUZpeT+LSo4NNqn7N9oc//DPSIhLLg0EcvyfQNt2ZAyUc+LPfXqx
 yy3+MirCo3Bw==
X-IronPort-AV: E=Sophos;i="5.77,450,1596524400"; d="scan'208";a="353646291"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 22:56:32 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Nov 2020 13:00:53 +0530
Message-Id: <20201104073053.32318-1-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201103152834.12727-4-uma.shankar@intel.com>
References: <20201103152834.12727-4-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v10 03/12] drm/i915/display: Attach HDR property for
 capable Gen9 devices
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

Attach HDR property for Gen9 devices with MCA LSPCON
chips.

v2: Cleaned HDR property attachment logic based on capability
as per Jani Nikula's suggestion.

v3: Fixed the HDR property attachment logic as per the new changes
by Kai-Feng to align with lspcon detection failure on some devices.

v4: Add HDR proprty in late_register to handle lspcon detection,
as suggested by Ville.

v5: Init Lspcon only if advertized from BIOS.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_lspcon.c |  2 +-
 drivers/gpu/drm/i915/display/intel_lspcon.h |  1 +
 3 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cf09aca7607b..07eda10f8add 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6714,6 +6714,8 @@ intel_dp_connector_register(struct drm_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct intel_lspcon *lspcon = &dig_port->lspcon;
 	int ret;
 
 	ret = intel_connector_register(connector);
@@ -6727,6 +6729,18 @@ intel_dp_connector_register(struct drm_connector *connector)
 	ret = drm_dp_aux_register(&intel_dp->aux);
 	if (!ret)
 		drm_dp_cec_register_connector(&intel_dp->aux, connector);
+
+	if (!intel_bios_is_lspcon_present(i915, dig_port->base.port))
+		return ret;
+
+	if (lspcon_init(dig_port)) {
+		lspcon_detect_hdr_capability(lspcon);
+		if (lspcon->hdr_supported)
+			drm_object_attach_property(&connector->base,
+						   connector->dev->mode_config.hdr_output_metadata_property,
+						   0);
+	}
+
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 46565ae555b1..336494b60d11 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -553,7 +553,7 @@ void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon)
 	lspcon_wait_mode(lspcon, DRM_LSPCON_MODE_PCON);
 }
 
-static bool lspcon_init(struct intel_digital_port *dig_port)
+bool lspcon_init(struct intel_digital_port *dig_port)
 {
 	struct intel_dp *dp = &dig_port->dp;
 	struct intel_lspcon *lspcon = &dig_port->lspcon;
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
index 98043ba50dd4..42ccb21c908f 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.h
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
@@ -15,6 +15,7 @@ struct intel_digital_port;
 struct intel_encoder;
 struct intel_lspcon;
 
+bool lspcon_init(struct intel_digital_port *dig_port);
 void lspcon_detect_hdr_capability(struct intel_lspcon *lspcon);
 void lspcon_resume(struct intel_digital_port *dig_port);
 void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
