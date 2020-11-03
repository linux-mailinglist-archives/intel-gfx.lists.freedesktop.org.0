Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96CD52A48A6
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 15:54:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F2F1892BC;
	Tue,  3 Nov 2020 14:54:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49E706ECC4
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 14:54:18 +0000 (UTC)
IronPort-SDR: HS8gpl8PY0eXuIzCAJKXs53iyE2AP1mDAgo2G36r9oPdUyPEZ+X8zJz9AnsaYMCyVoW3jy/UOx
 i5HmdnVT5rzw==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="230690803"
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="230690803"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 06:54:18 -0800
IronPort-SDR: mOpC5L40Q3cvwQJ0h6mQQ60xmUgzA4WJ5VZulEe7rIAb9/s7lKotH9nY2vHzjzaVkO1uNrRq6q
 yzAV+jWZynfw==
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="470824294"
Received: from linux-desktop.iind.intel.com ([10.223.34.173])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 06:54:16 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Nov 2020 20:58:25 +0530
Message-Id: <20201103152834.12727-4-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201103152834.12727-1-uma.shankar@intel.com>
References: <20201103152834.12727-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v9 03/12] drm/i915/display: Attach HDR property for
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
index cf09aca7607b..0ce3204473fa 100644
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
@@ -6727,6 +6729,15 @@ intel_dp_connector_register(struct drm_connector *connector)
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
