Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A56F28958BD
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 17:50:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 379E210FE10;
	Tue,  2 Apr 2024 15:50:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KKbeXtvT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88CB410FE10
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 15:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712073032; x=1743609032;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kHkiu+xnNn/JottLoCWRxZaijmVuJ3tqkPVGcOtnq+Y=;
 b=KKbeXtvTglaSRmxlRFD1tYDkkdRHzkNFHBGIXNY+k22reIRcp8NCJgQs
 zEuhdSnVJDvRiCM/D9C8ykxoXTWkTDx6OlxmYf0dxHuj7wS0NRKxq+GX8
 Na4/Can9leHxBu1zsboaPzoKH9iGdMoSDpXMLNEpEqaR+YROFjg9HPXg6
 SWeMLxAMRuy6zCL8tmdO4Y4HGS2Itq9NklaYql/f9kfoQ4rL++X3zS4L6
 muSihDHyOQ4fpC5wI4EHKgboifcPYxZMApb2H273wdFIfCDYGM7kHw/3J
 aXFGc24aC3e5MI4uZkb5SSC0Wyk/9s1ufnXgY28rIrPbvE/tTqLGcBv/6 w==;
X-CSE-ConnectionGUID: /qNtoMrbSMuPseH70pnBhw==
X-CSE-MsgGUID: z5V1bJG3TxyRzBCa+L/8VQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="17980821"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="17980821"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 08:50:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11032"; a="827789468"
X-IronPort-AV: E=Sophos;i="6.07,175,1708416000"; d="scan'208";a="827789468"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Apr 2024 08:50:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 02 Apr 2024 18:50:29 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Uma Shankar <uma.shankar@intel.com>,
 Gustavo Sousa <gustavo.sousa@intel.com>
Subject: [PATCH v2 04/14] drm/i915/cdclk: Indicate whether CDCLK change
 happens during pre or post plane update
Date: Tue,  2 Apr 2024 18:50:06 +0300
Message-ID: <20240402155016.13733-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
References: <20240402155016.13733-1-ville.syrjala@linux.intel.com>
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

Currently we just get a plain "Changing CDCLK to ..." in the
logs. It would actually be interesting to see whether we're
doing the programming during the pre or post plane phase of
the commit. Include that information in the debug message.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 19 ++++++-------------
 1 file changed, 6 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 8d937e77f91a..ed8d9ee094b8 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -2434,18 +2434,9 @@ static void intel_pcode_notify(struct drm_i915_private *i915,
 			ret);
 }
 
-/**
- * intel_set_cdclk - Push the CDCLK configuration to the hardware
- * @dev_priv: i915 device
- * @cdclk_config: new CDCLK configuration
- * @pipe: pipe with which to synchronize the update
- *
- * Program the hardware based on the passed in CDCLK state,
- * if necessary.
- */
 static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 			    const struct intel_cdclk_config *cdclk_config,
-			    enum pipe pipe)
+			    enum pipe pipe, const char *context)
 {
 	struct intel_encoder *encoder;
 
@@ -2455,7 +2446,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->display.funcs.cdclk->set_cdclk))
 		return;
 
-	intel_cdclk_dump_config(dev_priv, cdclk_config, "Changing CDCLK to");
+	intel_cdclk_dump_config(dev_priv, cdclk_config, context);
 
 	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -2628,7 +2619,8 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 
 	drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
-	intel_set_cdclk(i915, &cdclk_config, pipe);
+	intel_set_cdclk(i915, &cdclk_config, pipe,
+			"Pre changing CDCLK to");
 }
 
 /**
@@ -2663,7 +2655,8 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 
 	drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
-	intel_set_cdclk(i915, &new_cdclk_state->actual, pipe);
+	intel_set_cdclk(i915, &new_cdclk_state->actual, pipe,
+			"Post changing CDCLK to");
 }
 
 static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
-- 
2.43.2

