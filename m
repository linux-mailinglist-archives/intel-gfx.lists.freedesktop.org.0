Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 008DD60DEB1
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 12:12:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2087510E4B3;
	Wed, 26 Oct 2022 10:12:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6C4510E492
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 10:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666779118; x=1698315118;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=jNU/1v1GP0rcb4Xyy9XBmX9z5RJpgfUh/x3iS3IIgwg=;
 b=ZJNJ+5TQQ9XNsboaKey9i5hHu7pWdgS0jw2Rsi7v3mGKp8rp+/COxu6P
 b0MSAyW2VbIBafuXxcxKujrkZSFELlgib/6QlkyOONEV2+mY+H+61GJb8
 CZG9Id+y7YCEt2ytfeop2QPdeodGmzFicQUicjgzedSKCbHoZ5FZCSQJO
 2qSUf3TzVyCEBUf4WfyoYngWbrc+RiclBfU6Tb/iXGLx+gJxW/BQM7yUz
 8op0ADiu0TJDFnd6Y1mHoT2JgxqQHT89SuHLhxBZXJcy5bp46O5ZCFBqJ
 fReou5Vzvak+BEF+a2OC1Dw7PdHH5wrLbGJ7YRQ68lPCei6/c9jANxpWM Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="369976358"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="369976358"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 03:11:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="631950638"
X-IronPort-AV: E=Sophos;i="5.95,214,1661842800"; d="scan'208";a="631950638"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 26 Oct 2022 03:11:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Oct 2022 13:11:55 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 26 Oct 2022 13:11:33 +0300
Message-Id: <20221026101134.20865-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
References: <20221026101134.20865-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 7/8] drm/i915/sdvo: Reduce copy-pasta in output
 setup
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

Avoid having to call the output init function for each
output type separately. We can just call the right one
based on the "class" of the output.

Technically we could just walk the bits of the bitmask
but that could change the order in which we initialize
the outputs. To avoid any behavioural changes keep to
the same explicit probe order as before.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 66 +++++++++++------------
 1 file changed, 33 insertions(+), 33 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 4784c05a1b71..58d147cc7633 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2922,11 +2922,38 @@ static u16 intel_sdvo_filter_output_flags(u16 flags)
 	return flags;
 }
 
+static bool intel_sdvo_output_init(struct intel_sdvo *sdvo, u16 type)
+{
+	if (type & SDVO_TMDS_MASK)
+		return intel_sdvo_dvi_init(sdvo, type);
+	else if (type & SDVO_TV_MASK)
+		return intel_sdvo_tv_init(sdvo, type);
+	else if (type & SDVO_RGB_MASK)
+		return intel_sdvo_analog_init(sdvo, type);
+	else if (type & SDVO_LVDS_MASK)
+		return intel_sdvo_lvds_init(sdvo, type);
+	else
+		return false;
+}
+
 static bool
 intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo)
 {
+	static const u16 probe_order[] = {
+		SDVO_OUTPUT_TMDS0,
+		SDVO_OUTPUT_TMDS1,
+		/* TV has no XXX1 function block */
+		SDVO_OUTPUT_SVID0,
+		SDVO_OUTPUT_CVBS0,
+		SDVO_OUTPUT_YPRPB0,
+		SDVO_OUTPUT_RGB0,
+		SDVO_OUTPUT_RGB1,
+		SDVO_OUTPUT_LVDS0,
+		SDVO_OUTPUT_LVDS1,
+	};
 	struct drm_i915_private *i915 = to_i915(intel_sdvo->base.base.dev);
 	u16 flags;
+	int i;
 
 	flags = intel_sdvo_filter_output_flags(intel_sdvo->caps.output_flags);
 
@@ -2940,42 +2967,15 @@ intel_sdvo_output_setup(struct intel_sdvo *intel_sdvo)
 
 	intel_sdvo_select_ddc_bus(i915, intel_sdvo);
 
-	if (flags & SDVO_OUTPUT_TMDS0)
-		if (!intel_sdvo_dvi_init(intel_sdvo, SDVO_OUTPUT_TMDS0))
-			return false;
-
-	if (flags & SDVO_OUTPUT_TMDS1)
-		if (!intel_sdvo_dvi_init(intel_sdvo, SDVO_OUTPUT_TMDS1))
-			return false;
-
-	/* TV has no XXX1 function block */
-	if (flags & SDVO_OUTPUT_SVID0)
-		if (!intel_sdvo_tv_init(intel_sdvo, SDVO_OUTPUT_SVID0))
-			return false;
-
-	if (flags & SDVO_OUTPUT_CVBS0)
-		if (!intel_sdvo_tv_init(intel_sdvo, SDVO_OUTPUT_CVBS0))
-			return false;
+	for (i = 0; i < ARRAY_SIZE(probe_order); i++) {
+		u16 type = flags & probe_order[i];
 
-	if (flags & SDVO_OUTPUT_YPRPB0)
-		if (!intel_sdvo_tv_init(intel_sdvo, SDVO_OUTPUT_YPRPB0))
-			return false;
-
-	if (flags & SDVO_OUTPUT_RGB0)
-		if (!intel_sdvo_analog_init(intel_sdvo, SDVO_OUTPUT_RGB0))
-			return false;
-
-	if (flags & SDVO_OUTPUT_RGB1)
-		if (!intel_sdvo_analog_init(intel_sdvo, SDVO_OUTPUT_RGB1))
-			return false;
-
-	if (flags & SDVO_OUTPUT_LVDS0)
-		if (!intel_sdvo_lvds_init(intel_sdvo, SDVO_OUTPUT_LVDS0))
-			return false;
+		if (!type)
+			continue;
 
-	if (flags & SDVO_OUTPUT_LVDS1)
-		if (!intel_sdvo_lvds_init(intel_sdvo, SDVO_OUTPUT_LVDS1))
+		if (!intel_sdvo_output_init(intel_sdvo, type))
 			return false;
+	}
 
 	intel_sdvo->base.pipe_mask = ~0;
 
-- 
2.37.4

