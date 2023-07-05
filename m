Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 504E8748EC7
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jul 2023 22:21:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78BBD10E3C8;
	Wed,  5 Jul 2023 20:21:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2F4D10E3C7
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jul 2023 20:21:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688588506; x=1720124506;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=mV3eo038VmyhgVYMxeyFlGnwn+41lQICFtocVDJRzBk=;
 b=d5TDVWzASMy5NZWj/XpA8Fch2pDUdQ8x6UDOlNTKno8koQMYnbTnNsNQ
 4KDQ5xZTVnU8GH+UZMsqsf6M48RZnNMtzTxKua7Yq7T/VTdB67zBV08BI
 4Ow/43UhvBrQoJ9Qlpv2wlm/CNeE6Apj6fuSPFYGDlj99Ww4EBJ+8YZ3u
 SaBOxuYNUPaPRsP3h0LkdevD5KLsx1YnkweeBlAfZAIKXKO7Ep9856MoM
 1AMdRk+wovJ4Zbv7ieOYwK/jPkZrD9xmNjpUUQNizBtTJTnPa8CbKcoY6
 k4bdVCmR6IRZF3MiU4V/xm85dW4OdtRdz6BJ7ydFT72I0Wnw2IV6kP9+w Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="353269061"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="353269061"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2023 13:21:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10762"; a="754491122"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="754491122"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 05 Jul 2023 13:21:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 05 Jul 2023 23:21:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  5 Jul 2023 23:21:16 +0300
Message-Id: <20230705202122.17915-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
References: <20230705202122.17915-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/13] drm/i915/sdvo: Fail gracefully if the TV
 dotclock is out of range
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

Instead of warning and continuing with bogus state when the
requested dotclock isn't acceptable just print some debug
spew and fail gracefully.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 75a8e5583358..fcf3a95393d9 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -1269,7 +1269,7 @@ intel_sdvo_get_preferred_input_mode(struct intel_sdvo *intel_sdvo,
 	return true;
 }
 
-static void i9xx_adjust_sdvo_tv_clock(struct intel_crtc_state *pipe_config)
+static int i9xx_adjust_sdvo_tv_clock(struct intel_crtc_state *pipe_config)
 {
 	struct drm_i915_private *dev_priv = to_i915(pipe_config->uapi.crtc->dev);
 	unsigned int dotclock = pipe_config->hw.adjusted_mode.crtc_clock;
@@ -1292,11 +1292,14 @@ static void i9xx_adjust_sdvo_tv_clock(struct intel_crtc_state *pipe_config)
 		clock->m1 = 12;
 		clock->m2 = 8;
 	} else {
-		drm_WARN(&dev_priv->drm, 1,
-			 "SDVO TV clock out of range: %i\n", dotclock);
+		drm_dbg_kms(&dev_priv->drm,
+			    "SDVO TV clock out of range: %i\n", dotclock);
+		return -EINVAL;
 	}
 
 	pipe_config->clock_set = true;
+
+	return 0;
 }
 
 static bool intel_has_hdmi_sink(struct intel_sdvo_connector *intel_sdvo_connector,
@@ -1414,8 +1417,13 @@ static int intel_sdvo_compute_config(struct intel_encoder *encoder,
 					       conn_state);
 
 	/* Clock computation needs to happen after pixel multiplier. */
-	if (IS_TV(intel_sdvo_connector))
-		i9xx_adjust_sdvo_tv_clock(pipe_config);
+	if (IS_TV(intel_sdvo_connector)) {
+		int ret;
+
+		ret = i9xx_adjust_sdvo_tv_clock(pipe_config);
+		if (ret)
+			return ret;
+	}
 
 	if (conn_state->picture_aspect_ratio)
 		adjusted_mode->picture_aspect_ratio =
-- 
2.39.3

