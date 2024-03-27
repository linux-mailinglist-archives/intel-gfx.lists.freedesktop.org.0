Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F154888ECE5
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Mar 2024 18:46:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8243710FECC;
	Wed, 27 Mar 2024 17:46:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QZxsxLWj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6688110FEC9
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Mar 2024 17:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711561559; x=1743097559;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=lKsENPf8wEdSGseThU1004HMBs1fpx5i4IiXmlSxx+c=;
 b=QZxsxLWj0rSQRTqFqUtHn4ucaQs12GFicy8gLzH9m5w7bLkWfRTGuTWa
 4NQ2+ZcLFM4pKgbh9cKeJQeK57XDF4lkqn9DSH1dGzm3nheDjO8rv8RHV
 BxgrTC4Ey9MQs5AMNuNJ5eS4Ec7/bJ0PGxH3gDP8C1NsdxGq+wlwJOsGs
 FQhsTnqp3Rno3fIFNi+acD6itoLI8UBD1GQOL46knQubeglDRUf6scoDd
 yn0WqSGtpSlKOUyXoKlyKyyxMqyBQTW5lnvZcVIpxzaDiiMeQDJ2TNvrM
 /UTUvUrgB+cnCVeMcE1F10NQUh24aOnY+aQ1UxapRIfvgwMqOQX3O078g g==;
X-CSE-ConnectionGUID: GbJS7U3/Ru6KCMQaeHPfTw==
X-CSE-MsgGUID: b1vQtmasQVuOFWQ1Rh/qaQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="6795402"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; 
   d="scan'208";a="6795402"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2024 10:45:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="827785907"
X-IronPort-AV: E=Sophos;i="6.07,159,1708416000"; d="scan'208";a="827785907"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 27 Mar 2024 10:45:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 27 Mar 2024 19:45:56 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 04/13] drm/i915/cdclk: Indicate whether CDCLK change happens
 during pre or post plane update
Date: Wed, 27 Mar 2024 19:45:35 +0200
Message-ID: <20240327174544.983-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240327174544.983-1-ville.syrjala@linux.intel.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 19 ++++++-------------
 1 file changed, 6 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 99d2657f29a7..98546f384023 100644
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
@@ -2623,7 +2614,8 @@ intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state)
 
 	drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
-	intel_set_cdclk(i915, &cdclk_config, new_cdclk_state->pipe);
+	intel_set_cdclk(i915, &cdclk_config, new_cdclk_state->pipe,
+			"Pre changing CDCLK to");
 }
 
 /**
@@ -2651,7 +2643,8 @@ intel_set_cdclk_post_plane_update(struct intel_atomic_state *state)
 
 	drm_WARN_ON(&i915->drm, !new_cdclk_state->base.changed);
 
-	intel_set_cdclk(i915, &new_cdclk_state->actual, new_cdclk_state->pipe);
+	intel_set_cdclk(i915, &new_cdclk_state->actual, new_cdclk_state->pipe,
+			"Post changing CDCLK to");
 }
 
 static int intel_pixel_rate_to_cdclk(const struct intel_crtc_state *crtc_state)
-- 
2.43.2

