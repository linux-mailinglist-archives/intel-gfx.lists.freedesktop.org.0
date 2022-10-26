Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC3E60DEA7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 12:12:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8C9910E4A7;
	Wed, 26 Oct 2022 10:11:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 486E210E492
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 10:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666779105; x=1698315105;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5BE8s96l7cobHdCdF9nVeQCgz5A3zSOHnQdAQMHquiQ=;
 b=D7zOztWUTlJMqB8Ege7o6ApStRxDwP2ci+q5bzRRfg1ralTpFd2p9hu3
 C+p2FuwBqErwoL09OgI00KgaGYI2RgPUD8f6H9HuIxZaH0ypnMS/ngc7A
 6LUGlh1UOFWCbk3ODtdw2YJEybTMLlRv1agy/R4IIsUKkKd2CPqbuXIRD
 Pw4ARn7kdqjNF5wVhnr7uemF/PFAdDo5px/fGa3oIr4o27R8kSh57lH1F
 pcrprk5AEQ49IQufrSkL4D6JfFVYNlgnGHd7ssQbmPfVyMAK5UkXknqs2
 mFg1upIu+nMJ8zouHIjsUA5uRcBwb54b3fSa7O0G8pPPZ/GZnvB3ccR1i w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="394222255"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="394222255"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 03:11:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="695305864"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="695305864"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 26 Oct 2022 03:11:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 13:11:40 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 13:11:28 +0300
Message-Id: <20221026101134.20865-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
References: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/8] drm/i915/sdvo: Setup DDC fully before
 output init
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Call intel_sdvo_select_ddc_bus() before initializing any
of the outputs. And before that is functional (assuming no VBT)
we have to set up the controlled_outputs thing. Otherwise DDC
won't be functional during the output init but LVDS really
needs it for the fixed mode setup.

Note that the whole multi output support still looks very
bogus, and more work will be needed to make it correct.
But for now this should at least fix the LVDS EDID fixed mode
setup.

Cc: stable@vger.kernel.org
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7301
Fixes: aa2b88074a56 ("drm/i915/sdvo: Fix multi function encoder stuff")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 31 +++++++++--------------
 1 file changed, 12 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index c6200a91a777..ccf81d616cb4 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2746,13 +2746,10 @@ intel_sdvo_dvi_init(struct intel_sdvo *intel_sdvo, int device)
 	if (!intel_sdvo_connector)
 		return false;
 
-	if (device == 0) {
-		intel_sdvo->controlled_output |= SDVO_OUTPUT_TMDS0;
+	if (device == 0)
 		intel_sdvo_connector->output_flag = SDVO_OUTPUT_TMDS0;
-	} else if (device == 1) {
-		intel_sdvo->controlled_output |= SDVO_OUTPUT_TMDS1;
+	else if (device == 1)
 		intel_sdvo_connector->output_flag = SDVO_OUTPUT_TMDS1;
-	}
 
 	intel_connector = &intel_sdvo_connector->base;
 	connector = &intel_connector->base;
@@ -2807,7 +2804,6 @@ intel_sdvo_tv_init(struct intel_sdvo *intel_sdvo, int type)
 	encoder->encoder_type = DRM_MODE_ENCODER_TVDAC;
 	connector->connector_type = DRM_MODE_CONNECTOR_SVIDEO;
 
-	intel_sdvo->controlled_output |= type;
 	intel_sdvo_connector->output_flag = type;
 
 	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
@@ -2848,13 +2844,10 @@ intel_sdvo_analog_init(struct intel_sdvo *intel_sdvo, int device)
 	encoder->encoder_type = DRM_MODE_ENCODER_DAC;
 	connector->connector_type = DRM_MODE_CONNECTOR_VGA;
 
-	if (device == 0) {
-		intel_sdvo->controlled_output |= SDVO_OUTPUT_RGB0;
+	if (device == 0)
 		intel_sdvo_connector->output_flag = SDVO_OUTPUT_RGB0;
-	} else if (device == 1) {
-		intel_sdvo->controlled_output |= SDVO_OUTPUT_RGB1;
+	else if (device == 1)
 		intel_sdvo_connector->output_flag = SDVO_OUTPUT_RGB1;
-	}
 
 	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
 		kfree(intel_sdvo_connector);
@@ -2884,13 +2877,10 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 	encoder->encoder_type = DRM_MODE_ENCODER_LVDS;
 	connector->connector_type = DRM_MODE_CONNECTOR_LVDS;
 
-	if (device == 0) {
-		intel_sdvo->controlled_output |= SDVO_OUTPUT_LVDS0;
+	if (device == 0)
 		intel_sdvo_connector->output_flag = SDVO_OUTPUT_LVDS0;
-	} else if (device == 1) {
-		intel_sdvo->controlled_output |= SDVO_OUTPUT_LVDS1;
+	else if (device == 1)
 		intel_sdvo_connector->output_flag = SDVO_OUTPUT_LVDS1;
-	}
 
 	if (intel_sdvo_connector_init(intel_sdvo_connector, intel_sdvo) < 0) {
 		kfree(intel_sdvo_connector);
@@ -2945,8 +2935,14 @@ static u16 intel_sdvo_filter_output_flags(u16 flags)
 static bool
 intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo, u16 flags)
 {
+	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
+
 	flags = intel_sdvo_filter_output_flags(flags);
 
+	intel_sdvo->controlled_output = flags;
+
+	intel_sdvo_select_ddc_bus(i915, intel_sdvo);
+
 	if (flags & SDVO_OUTPUT_TMDS0)
 		if (!intel_sdvo_dvi_init(intel_sdvo, 0))
 			return false;
@@ -2987,7 +2983,6 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo, u16 flags)
 	if (flags == 0) {
 		unsigned char bytes[2];
 
-		intel_sdvo->controlled_output = 0;
 		memcpy(bytes, &intel_sdvo->caps.output_flags, 2);
 		DRM_DEBUG_KMS("%s: Unknown SDVO output type (0x%02x%02x)\n",
 			      SDVO_NAME(intel_sdvo),
@@ -3399,8 +3394,6 @@ bool intel_sdvo_init(struct drm_i915_private *dev_priv,
 	 */
 	intel_sdvo->base.cloneable = 0;
 
-	intel_sdvo_select_ddc_bus(dev_priv, intel_sdvo);
-
 	/* Set the input timing to the screen. Assume always input 0. */
 	if (!intel_sdvo_set_target_input(intel_sdvo))
 		goto err_output;
-- 
2.37.4

