Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE2D284BAD
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Oct 2020 14:33:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C14B6E483;
	Tue,  6 Oct 2020 12:33:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC5E66E483
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Oct 2020 12:33:15 +0000 (UTC)
IronPort-SDR: Haq/WKUK5lkYG45NsZWMVfPWI7oYLIKyOIHEfXjLa47WbJR6U3AM2aLmJQUYj6a2nqFh/OPWxB
 AunTEyn/f/7w==
X-IronPort-AV: E=McAfee;i="6000,8403,9765"; a="161851697"
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="161851697"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 05:33:15 -0700
IronPort-SDR: QRds9JNCQWEx2ZIE9Z17kTO/nhnfESTB3bONAGSOUDjsSkDUYkwyuw5V+nDNZWot2HaMsLIotK
 WBZlWJ++03dA==
X-IronPort-AV: E=Sophos;i="5.77,343,1596524400"; d="scan'208";a="527333652"
Received: from unknown (HELO linux-desktop.iind.intel.com) ([10.223.34.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2020 05:33:14 -0700
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Oct 2020 18:36:47 +0530
Message-Id: <20201006130654.331-4-uma.shankar@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201006130654.331-1-uma.shankar@intel.com>
References: <20201006130654.331-1-uma.shankar@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [v7 03/10] drm/i915/display: Attach HDR property for
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

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c    | 20 +++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_lspcon.c |  6 +++++-
 drivers/gpu/drm/i915/display/intel_lspcon.h |  1 +
 3 files changed, 25 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index b4c520348b3b..5ad92e9861af 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -5111,7 +5111,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 {
 	struct intel_digital_port *dig_port;
 	struct intel_encoder *encoder;
-	bool init_hdmi, init_dp;
+	bool init_hdmi, init_dp, init_lspcon = false;
 	enum phy phy = intel_port_to_phy(dev_priv, port);
 
 	/*
@@ -5137,6 +5137,7 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 		 * is initialized before lspcon.
 		 */
 		init_dp = true;
+		init_lspcon = true;
 		init_hdmi = false;
 		drm_dbg_kms(&dev_priv->drm, "VBT says port %c has lspcon\n",
 			    port_name(port));
@@ -5256,6 +5257,23 @@ void intel_ddi_init(struct drm_i915_private *dev_priv, enum port port)
 
 	intel_infoframe_init(dig_port);
 
+	if (init_lspcon) {
+		if (lspcon_init(dig_port))
+			/* TODO: handle hdmi info frame part */
+			drm_dbg_kms(&dev_priv->drm,
+				    "LSPCON init success on port %c\n",
+				    port_name(port));
+		else
+			/*
+			 * LSPCON init failed at driver load, this will be re-attempted
+			 * after hotplug.
+			 * Note: There is an issue on some LSPCON configurations which
+			 * triggered the need for this WA.
+			 */
+			drm_dbg_kms(&dev_priv->drm, "LSPCON init failed at driver load on port %c\n",
+				    port_name(port));
+	}
+
 	return;
 
 err:
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.c b/drivers/gpu/drm/i915/display/intel_lspcon.c
index 04951cec9625..440d2b3c2212 100644
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
@@ -588,6 +588,10 @@ static bool lspcon_init(struct intel_digital_port *dig_port)
 	}
 
 	lspcon_detect_hdr_capability(lspcon);
+	if (lspcon->hdr_supported)
+		drm_object_attach_property(&connector->base,
+					   connector->dev->mode_config.hdr_output_metadata_property,
+					   0);
 
 	connector->ycbcr_420_allowed = true;
 	lspcon->active = true;
diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
index 00722f8aec1a..9505e234e2fd 100644
--- a/drivers/gpu/drm/i915/display/intel_lspcon.h
+++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
@@ -15,6 +15,7 @@ struct intel_digital_port;
 struct intel_encoder;
 struct intel_lspcon;
 
+bool lspcon_init(struct intel_digital_port *dig_port);
 void lspcon_resume(struct intel_digital_port *dig_port);
 void lspcon_wait_pcon_mode(struct intel_lspcon *lspcon);
 void lspcon_write_infoframe(struct intel_encoder *encoder,
-- 
2.26.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
