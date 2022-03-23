Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 725F24E586B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 19:30:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E84310E1B7;
	Wed, 23 Mar 2022 18:30:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5669710E1FC
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 18:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648060205; x=1679596205;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=rqyySXaBB8B/VVz53Ftt3LOqKZj5Re+UvpdNT4TmAmg=;
 b=KPp60uy0pzEA/G05dXUBaFs3W9jl+ef1GwuDXsG7BCP4kWZrTUkpSre7
 mg44cMR+ghZMNRGY2TcSoH5hnZiBqh25T1dzs/M7yThHpbgsOKVOyHBqx
 Ey5quJe/vl5G2/m9aoANP0m2dixHc2eEt+YPk/qocLx+XTUtaDeQtsTxi
 lb/FnyTzVCMiYU0Amx6UfFP5MYvfpFuBffaJSOMWZ2ZOBwOSl3pU1PsrQ
 w0oJoyv3LBzkypnFWt/xPFyRx9mmtZKI6BQpCLChoaIQlJwr9KJCfsXWy
 vVYnllM1Za29+XbF870FqCSTC1as81ZTyE3OFC5bLTkGAoVKDZB7EgVJ6 Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="318909515"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="318909515"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 11:30:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="552593400"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga007.fm.intel.com with SMTP; 23 Mar 2022 11:30:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 23 Mar 2022 20:30:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Mar 2022 20:29:35 +0200
Message-Id: <20220323182935.4701-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
References: <20220323182935.4701-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 9/9] drm/i915: Change SDVO fixed mode handling
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

SDVO is the only connector type currently returning the VBT
fixed mode directly from .get_modes(), everyone else just
adds it to the fixed_modes list and then returns that from
.get_modes(). Adjust SDVO to follow the common behaviour.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_sdvo.c | 29 ++++++++---------------
 1 file changed, 10 insertions(+), 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 62e2e8b4358c..c9c3f71818d9 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -2291,27 +2291,12 @@ static int intel_sdvo_get_lvds_modes(struct drm_connector *connector)
 {
 	struct intel_sdvo *intel_sdvo = intel_attached_sdvo(to_intel_connector(connector));
 	struct drm_i915_private *dev_priv = to_i915(connector->dev);
-	struct drm_display_mode *newmode;
 	int num_modes = 0;
 
 	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
 		    connector->base.id, connector->name);
 
-	/*
-	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
-	 * SDVO->LVDS transcoders can't cope with the EDID mode.
-	 */
-	newmode = intel_panel_vbt_sdvo_fixed_mode(to_intel_connector(connector));
-	if (newmode) {
-		drm_mode_probed_add(connector, newmode);
-		num_modes++;
-	}
-
-	/*
-	 * Attempt to get the mode list from DDC.
-	 * Assume that the preferred modes are
-	 * arranged in priority order.
-	 */
+	num_modes += intel_panel_get_modes(to_intel_connector(connector));
 	num_modes += intel_ddc_get_modes(connector, &intel_sdvo->ddc);
 
 	return num_modes;
@@ -2915,9 +2900,15 @@ intel_sdvo_lvds_init(struct intel_sdvo *intel_sdvo, int device)
 	if (!intel_sdvo_create_enhance_property(intel_sdvo, intel_sdvo_connector))
 		goto err;
 
-	intel_sdvo_get_lvds_modes(connector);
-
-	fixed_mode = intel_panel_edid_fixed_mode(intel_connector);
+	/*
+	 * Fetch modes from VBT. For SDVO prefer the VBT mode since some
+	 * SDVO->LVDS transcoders can't cope with the EDID mode.
+	 */
+	fixed_mode = intel_panel_vbt_sdvo_fixed_mode(intel_connector);
+	if (!fixed_mode) {
+		intel_ddc_get_modes(connector, &intel_sdvo->ddc);
+		fixed_mode = intel_panel_edid_fixed_mode(intel_connector);
+	}
 
 	intel_panel_init(intel_connector, fixed_mode, NULL);
 
-- 
2.34.1

