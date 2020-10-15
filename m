Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3201328FB88
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Oct 2020 01:15:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6797D6E314;
	Thu, 15 Oct 2020 23:15:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B16846E28A
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Oct 2020 23:15:12 +0000 (UTC)
IronPort-SDR: e/WGTwFCNDLLKncQmuMME1jE/ssdOdu7X0c88xIz5VarGObsqlAaaI4g4+q4qEBUt5lxU6mdnl
 LiYnXZnvV4Zw==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="163010294"
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="163010294"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 16:15:12 -0700
IronPort-SDR: 5I5EeIy0uBK/q17+VFh+uermt6dab54l1uBFUwoPo6Bf/f3WAaqPQSTEyPWxEmU2uCHwmj+L4B
 4a2R9+goHM7Q==
X-IronPort-AV: E=Sophos;i="5.77,380,1596524400"; d="scan'208";a="531450355"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2020 16:15:10 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Oct 2020 05:18:53 +0530
Message-Id: <20201015234902.7134-4-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201015234902.7134-1-uma.shankar@intel.com>
References: <20201015234902.7134-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v8 03/12] drm/i915/display: Attach HDR property for
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

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 11 +++++++++++
 drivers/gpu/drm/i915/display/intel_lspcon.c |  2 +-
 drivers/gpu/drm/i915/display/intel_lspcon.h |  1 +
 3 files changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4f8266c3ed43..d434cb32f0ff 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6675,6 +6675,8 @@ intel_dp_connector_register(struct drm_connector *connector)
 {
 	struct drm_i915_private *i915 = to_i915(connector->dev);
 	struct intel_dp *intel_dp = intel_attached_dp(to_intel_connector(connector));
+	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
+	struct intel_lspcon *lspcon = &dig_port->lspcon;
 	int ret;
 
 	ret = intel_connector_register(connector);
@@ -6688,6 +6690,15 @@ intel_dp_connector_register(struct drm_connector *connector)
 	ret = drm_dp_aux_register(&intel_dp->aux);
 	if (!ret)
 		drm_dp_cec_register_connector(&intel_dp->aux, connector);
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
index 9c821f569081..2f480f2fc213 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.c
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.c
@@ -563,7 +563,7 @@ void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon)
 	lspcon_wait_mode(lspcon, DRM_LSPCON_MODE_PCON);
 }
 
-static bool lspcon_init(struct intel_digital_port *dig_port)
+bool lspcon_init(struct intel_digital_port *dig_port)
 {
 	struct intel_dp *dp = &dig_port->dp;
 	struct intel_lspcon *lspcon = &dig_port->lspcon;
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
index 0726418d6a9b..972afa3b2168 100644
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
