Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2070862F313
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 11:56:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FAC910E700;
	Fri, 18 Nov 2022 10:56:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A915C10E6FB
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 10:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668768958; x=1700304958;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Q3C0mohDTFYKgFgaPqweOENJNjibU6/Mi0W0mHz6eGw=;
 b=QPcxVi9OCoFoypEJRS3Zooikga9FZcFW6OXOJ9wl5HzrIg/7GzZbl8nN
 Y7LNAg69ioQlq1DgS0JuO1nlKtpdIN0COgsyYRfCGSPEusdF5iVw5UZ8g
 mE+jjh4CPnh8Jm1DU12QwwfPKMngM94stMQcpvGZLydutDum2OtZg2Dap
 qfX9HiBzU/EWs/xfAl2WD7pKZ4uMYikZTQ0dYaNq7rBUNwccgJEiPvuWD
 joj2W023EmFOBugvWmyUedVJ5x9YInRLRoRtOnAgtp8PmXBbmXPyBoXyv
 Wla61tX21MmzBqM7POcMc0vloVxQ21gfMkIYqtoBmJslgGOgOBRp46x69 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="310741732"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="310741732"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 02:55:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="708994395"
X-IronPort-AV: E=Sophos;i="5.96,174,1665471600"; d="scan'208";a="708994395"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga004.fm.intel.com with SMTP; 18 Nov 2022 02:55:37 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 18 Nov 2022 12:55:36 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 18 Nov 2022 12:55:20 +0200
Message-Id: <20221118105525.27254-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
References: <20221118105525.27254-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/9] drm/i915/dvo: Introduce
 intel_dvo_connector_type()
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

Introduce intel_dvo_connector_type() as a counterpart to
intel_dvo_encoder_type(), mainly to declutter intel_dvo_init()
a bit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dvo.c | 32 ++++++++++++++----------
 1 file changed, 19 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dvo.c b/drivers/gpu/drm/i915/display/intel_dvo.c
index fe61cb41d83b..9ce3b4ec6a4d 100644
--- a/drivers/gpu/drm/i915/display/intel_dvo.c
+++ b/drivers/gpu/drm/i915/display/intel_dvo.c
@@ -401,6 +401,20 @@ static int intel_dvo_encoder_type(const struct intel_dvo_device *dvo)
 	}
 }
 
+static int intel_dvo_connector_type(const struct intel_dvo_device *dvo)
+{
+	switch (dvo->type) {
+	case INTEL_DVO_CHIP_TMDS:
+		return DRM_MODE_CONNECTOR_DVII;
+	case INTEL_DVO_CHIP_LVDS_NO_FIXED:
+	case INTEL_DVO_CHIP_LVDS:
+		return DRM_MODE_CONNECTOR_LVDS;
+	default:
+		MISSING_CASE(dvo->type);
+		return DRM_MODE_CONNECTOR_Unknown;
+	}
+}
+
 void intel_dvo_init(struct drm_i915_private *dev_priv)
 {
 	struct intel_encoder *intel_encoder;
@@ -507,21 +521,13 @@ void intel_dvo_init(struct drm_i915_private *dev_priv)
 			intel_encoder->cloneable = BIT(INTEL_OUTPUT_ANALOG) |
 				BIT(INTEL_OUTPUT_DVO);
 
-		switch (dvo->type) {
-		case INTEL_DVO_CHIP_TMDS:
+		if (dvo->type == INTEL_DVO_CHIP_TMDS)
 			intel_connector->polled = DRM_CONNECTOR_POLL_CONNECT |
 				DRM_CONNECTOR_POLL_DISCONNECT;
-			drm_connector_init(&dev_priv->drm, connector,
-					   &intel_dvo_connector_funcs,
-					   DRM_MODE_CONNECTOR_DVII);
-			break;
-		case INTEL_DVO_CHIP_LVDS_NO_FIXED:
-		case INTEL_DVO_CHIP_LVDS:
-			drm_connector_init(&dev_priv->drm, connector,
-					   &intel_dvo_connector_funcs,
-					   DRM_MODE_CONNECTOR_LVDS);
-			break;
-		}
+
+		drm_connector_init(&dev_priv->drm, connector,
+				   &intel_dvo_connector_funcs,
+				   intel_dvo_connector_type(dvo));
 
 		drm_connector_helper_add(connector,
 					 &intel_dvo_connector_helper_funcs);
-- 
2.37.4

