Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6AA62F311
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 11:56:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 817D410E6FB;
	Fri, 18 Nov 2022 10:56:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79FA410E6D1
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 10:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668768958; x=1700304958;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1Z3gMtSA2OfFNWIsiXMPPY6OrMuTNHNRugUCpkMVH5M=;
 b=iA1XXOE82gg5gRqCLKTUm+d809cYJGTvDTjNfH8ZGU67rjYXz4P9QGQb
 jELPx8oQe/8yjQJgyCF89h/RNRAuGdtb/qVKI25QSzWfxq6EAxGj1b4UU
 ouG9hkY0h6y/kqutxHVbKqjhyExxswVJ1dJ6vwXOCUQYVhLANWA+8ozXb
 Zob+RPSN34HNc4fJiblKKbZN64RvlJuCh+sKXsYvQz0WwplLlWbkK5gZU
 10OsbzP8lkvi9PRPMFmm67jDjKweGYlzK/JwTeyb+yZxjdq9YFzGEvIqO
 87ac/UDZH9OUsv8o2qYez5eKizFUOPLqNYM2e/lfm2ZOcMwtXlVwifSth A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="310741727"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="310741727"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 02:55:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="708994389"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="708994389"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga004.fm.intel.com with SMTP; 18 Nov 2022 02:55:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Nov 2022 12:55:34 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Nov 2022 12:55:19 +0200
Message-Id: <20221118105525.27254-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
References: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/9] drm/i915/dvo: Actually initialize the DVO
 encoder type
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

We call drm_encoder_init() before determining the correct
encoder type, thus we always end up with DRM_MODE_ENCODER_NONE.
Determine the correct encoder type earlier.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dvo.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index 8859e400b860..fe61cb41d83b 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -387,13 +387,26 @@ static enum port intel_dvo_port(i915_reg_t dvo_reg)
 		return PORT_C;
 }
 
+static int intel_dvo_encoder_type(const struct intel_dvo_device *dvo)
+{
+	switch (dvo->type) {
+	case INTEL_DVO_CHIP_TMDS:
+		return DRM_MODE_ENCODER_TMDS;
+	case INTEL_DVO_CHIP_LVDS_NO_FIXED:
+	case INTEL_DVO_CHIP_LVDS:
+		return DRM_MODE_ENCODER_LVDS;
+	default:
+		MISSING_CASE(dvo->type);
+		return DRM_MODE_ENCODER_NONE;
+	}
+}
+
 void intel_dvo_init(struct drm_i915_private *dev_priv)
 {
 	struct intel_encoder *intel_encoder;
 	struct intel_dvo *intel_dvo;
 	struct intel_connector *intel_connector;
 	int i;
-	int encoder_type = DRM_MODE_ENCODER_NONE;
 
 	intel_dvo = kzalloc(sizeof(*intel_dvo), GFP_KERNEL);
 	if (!intel_dvo)
@@ -481,7 +494,8 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 
 		port = intel_dvo_port(dvo->dvo_reg);
 		drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
-				 &intel_dvo_enc_funcs, encoder_type,
+				 &intel_dvo_enc_funcs,
+				 intel_dvo_encoder_type(dvo),
 				 "DVO %c", port_name(port));
 
 		intel_encoder->type = INTEL_OUTPUT_DVO;
@@ -500,14 +514,12 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 			drm_connector_init(&dev_priv->drm, connector,
 					   &intel_dvo_connector_funcs,
 					   DRM_MODE_CONNECTOR_DVII);
-			encoder_type = DRM_MODE_ENCODER_TMDS;
 			break;
 		case INTEL_DVO_CHIP_LVDS_NO_FIXED:
 		case INTEL_DVO_CHIP_LVDS:
 			drm_connector_init(&dev_priv->drm, connector,
 					   &intel_dvo_connector_funcs,
 					   DRM_MODE_CONNECTOR_LVDS);
-			encoder_type = DRM_MODE_ENCODER_LVDS;
 			break;
 		}
 
-- 
2.37.4

