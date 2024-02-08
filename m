Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F5F84E3CE
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Feb 2024 16:17:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 449C210E893;
	Thu,  8 Feb 2024 15:17:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ULxs5zS3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0133210E893
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Feb 2024 15:17:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707405453; x=1738941453;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0V/oOHqiCxYqfjRspKqDd/IiB66DRSmXa+jNPk3TKr8=;
 b=ULxs5zS3UnnGHRQkTBkkQpzOyMLydgmvoEYkXzlHoZvPEV4LOpbxfgJ+
 JoxHePGUNmo8eQJDwBNHn4jA19pv5vc8TUrFZ1Tez5+uxnI0yFPgbizRq
 CkWaMyMrYKamUs9aGlAIrIu8hStp+EQZrTqUoxU7IycB5B9S4L4wc2j0s
 MojrWYnngFrgurKRXuAdvIz6ILhTFCnjX+HDqekAN0YrbJLHdOkZ2fQWw
 Jpv+j5uKxSY1TC8t2sFnxXOy+anuvELAli6CaJpfi2OsR6x+zNQ7PYLXo
 XJG24T9rFnHP5ZKOcE/u6SZbbtn5pgj4Bd1dpTY4D3ROVvy4q9kCjCgi/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="4219193"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; 
   d="scan'208";a="4219193"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2024 07:17:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10978"; a="824863654"
X-IronPort-AV: E=Sophos;i="6.05,254,1701158400"; d="scan'208";a="824863654"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 08 Feb 2024 07:17:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 08 Feb 2024 17:17:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 03/13] drm/i915/sdvo: Fix up code alignment
Date: Thu,  8 Feb 2024 17:17:10 +0200
Message-ID: <20240208151720.7866-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
References: <20240208151720.7866-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Realign a bunch of code that has become messy.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 104 +++++++++++-----------
 1 file changed, 52 insertions(+), 52 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index a6724447ca17..412c15d32f07 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -762,7 +762,7 @@ static bool intel_sdvo_get_timing(struct intel_sdvo *intel_sdvo, u8 cmd,
 }
 
 static bool intel_sdvo_set_input_timing(struct intel_sdvo *intel_sdvo,
-					 struct intel_sdvo_dtd *dtd)
+					struct intel_sdvo_dtd *dtd)
 {
 	return intel_sdvo_set_timing(intel_sdvo,
 				     SDVO_CMD_SET_INPUT_TIMINGS_PART1, dtd);
@@ -930,8 +930,8 @@ static bool intel_sdvo_check_supp_encode(struct intel_sdvo *intel_sdvo)
 
 	BUILD_BUG_ON(sizeof(encode) != 2);
 	return intel_sdvo_get_value(intel_sdvo,
-				  SDVO_CMD_GET_SUPP_ENCODE,
-				  &encode, sizeof(encode));
+				    SDVO_CMD_GET_SUPP_ENCODE,
+				    &encode, sizeof(encode));
 }
 
 static bool intel_sdvo_set_encode(struct intel_sdvo *intel_sdvo,
@@ -1995,30 +1995,30 @@ static bool intel_sdvo_get_capabilities(struct intel_sdvo *intel_sdvo, struct in
 		return false;
 
 	drm_dbg_kms(&i915->drm, "SDVO capabilities:\n"
-		      "  vendor_id: %d\n"
-		      "  device_id: %d\n"
-		      "  device_rev_id: %d\n"
-		      "  sdvo_version_major: %d\n"
-		      "  sdvo_version_minor: %d\n"
-		      "  sdvo_num_inputs: %d\n"
-		      "  smooth_scaling: %d\n"
-		      "  sharp_scaling: %d\n"
-		      "  up_scaling: %d\n"
-		      "  down_scaling: %d\n"
-		      "  stall_support: %d\n"
-		      "  output_flags: %d\n",
-		      caps->vendor_id,
-		      caps->device_id,
-		      caps->device_rev_id,
-		      caps->sdvo_version_major,
-		      caps->sdvo_version_minor,
-		      caps->sdvo_num_inputs,
-		      caps->smooth_scaling,
-		      caps->sharp_scaling,
-		      caps->up_scaling,
-		      caps->down_scaling,
-		      caps->stall_support,
-		      caps->output_flags);
+		    "  vendor_id: %d\n"
+		    "  device_id: %d\n"
+		    "  device_rev_id: %d\n"
+		    "  sdvo_version_major: %d\n"
+		    "  sdvo_version_minor: %d\n"
+		    "  sdvo_num_inputs: %d\n"
+		    "  smooth_scaling: %d\n"
+		    "  sharp_scaling: %d\n"
+		    "  up_scaling: %d\n"
+		    "  down_scaling: %d\n"
+		    "  stall_support: %d\n"
+		    "  output_flags: %d\n",
+		    caps->vendor_id,
+		    caps->device_id,
+		    caps->device_rev_id,
+		    caps->sdvo_version_major,
+		    caps->sdvo_version_minor,
+		    caps->sdvo_num_inputs,
+		    caps->smooth_scaling,
+		    caps->sharp_scaling,
+		    caps->up_scaling,
+		    caps->down_scaling,
+		    caps->stall_support,
+		    caps->output_flags);
 
 	return true;
 }
@@ -2050,7 +2050,7 @@ static u16 intel_sdvo_get_hotplug_support(struct intel_sdvo *intel_sdvo)
 		return 0;
 
 	if (!intel_sdvo_get_value(intel_sdvo, SDVO_CMD_GET_HOT_PLUG_SUPPORT,
-					&hotplug, sizeof(hotplug)))
+				  &hotplug, sizeof(hotplug)))
 		return 0;
 
 	return hotplug;
@@ -2812,7 +2812,7 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, u16 type)
 	intel_connector = &intel_sdvo_connector->base;
 	connector = &intel_connector->base;
 	if (intel_sdvo_get_hotplug_support(intel_sdvo) &
-		intel_sdvo_connector->output_flag) {
+	    intel_sdvo_connector->output_flag) {
 		intel_sdvo->hotplug_active |= intel_sdvo_connector->output_flag;
 		/*
 		 * Some SDVO devices have one-shot hotplug interrupts.
@@ -3092,8 +3092,8 @@ static bool intel_sdvo_tv_create_property(struct intel_sdvo *intel_sdvo,
 
 
 	intel_sdvo_connector->tv_format =
-			drm_property_create(dev, DRM_MODE_PROP_ENUM,
-					    "mode", intel_sdvo_connector->format_supported_num);
+		drm_property_create(dev, DRM_MODE_PROP_ENUM,
+				    "mode", intel_sdvo_connector->format_supported_num);
 	if (!intel_sdvo_connector->tv_format)
 		return false;
 
@@ -3168,7 +3168,7 @@ intel_sdvo_create_enhance_property_tv(struct intel_sdvo *intel_sdvo,
 			return false;
 
 		drm_object_attach_property(&connector->base,
-					      intel_sdvo_connector->right, 0);
+					   intel_sdvo_connector->right, 0);
 		drm_dbg_kms(&i915->drm, "h_overscan: max %d, default %d, current %d\n",
 			    data_value[0], data_value[1], response);
 	}
@@ -3189,7 +3189,7 @@ intel_sdvo_create_enhance_property_tv(struct intel_sdvo *intel_sdvo,
 		intel_sdvo_connector->max_vscan = data_value[0];
 		intel_sdvo_connector->top =
 			drm_property_create_range(dev, 0,
-					    "top_margin", 0, data_value[0]);
+						  "top_margin", 0, data_value[0]);
 		if (!intel_sdvo_connector->top)
 			return false;
 
@@ -3198,12 +3198,12 @@ intel_sdvo_create_enhance_property_tv(struct intel_sdvo *intel_sdvo,
 
 		intel_sdvo_connector->bottom =
 			drm_property_create_range(dev, 0,
-					    "bottom_margin", 0, data_value[0]);
+						  "bottom_margin", 0, data_value[0]);
 		if (!intel_sdvo_connector->bottom)
 			return false;
 
 		drm_object_attach_property(&connector->base,
-					      intel_sdvo_connector->bottom, 0);
+					   intel_sdvo_connector->bottom, 0);
 		drm_dbg_kms(&i915->drm, "v_overscan: max %d, default %d, current %d\n",
 			    data_value[0], data_value[1], response);
 	}
@@ -3490,23 +3490,23 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 		goto err_output;
 
 	drm_dbg_kms(&dev_priv->drm, "%s device VID/DID: %02X:%02X.%02X, "
-			"clock range %dMHz - %dMHz, "
-			"num inputs: %d, "
-			"output 1: %c, output 2: %c\n",
-			SDVO_NAME(intel_sdvo),
-			intel_sdvo->caps.vendor_id, intel_sdvo->caps.device_id,
-			intel_sdvo->caps.device_rev_id,
-			intel_sdvo->pixel_clock_min / 1000,
-			intel_sdvo->pixel_clock_max / 1000,
-			intel_sdvo->caps.sdvo_num_inputs,
-			/* check currently supported outputs */
-			intel_sdvo->caps.output_flags &
-			(SDVO_OUTPUT_TMDS0 | SDVO_OUTPUT_RGB0 |
-			 SDVO_OUTPUT_LVDS0 | SDVO_OUTPUT_SVID0 |
-			 SDVO_OUTPUT_CVBS0 | SDVO_OUTPUT_YPRPB0) ? 'Y' : 'N',
-			intel_sdvo->caps.output_flags &
-			(SDVO_OUTPUT_TMDS1 | SDVO_OUTPUT_RGB1 |
-			 SDVO_OUTPUT_LVDS1) ? 'Y' : 'N');
+		    "clock range %dMHz - %dMHz, "
+		    "num inputs: %d, "
+		    "output 1: %c, output 2: %c\n",
+		    SDVO_NAME(intel_sdvo),
+		    intel_sdvo->caps.vendor_id, intel_sdvo->caps.device_id,
+		    intel_sdvo->caps.device_rev_id,
+		    intel_sdvo->pixel_clock_min / 1000,
+		    intel_sdvo->pixel_clock_max / 1000,
+		    intel_sdvo->caps.sdvo_num_inputs,
+		    /* check currently supported outputs */
+		    intel_sdvo->caps.output_flags &
+		    (SDVO_OUTPUT_TMDS0 | SDVO_OUTPUT_RGB0 |
+		     SDVO_OUTPUT_LVDS0 | SDVO_OUTPUT_SVID0 |
+		     SDVO_OUTPUT_CVBS0 | SDVO_OUTPUT_YPRPB0) ? 'Y' : 'N',
+		    intel_sdvo->caps.output_flags &
+		    (SDVO_OUTPUT_TMDS1 | SDVO_OUTPUT_RGB1 |
+		     SDVO_OUTPUT_LVDS1) ? 'Y' : 'N');
 	return true;
 
 err_output:
-- 
2.43.0

