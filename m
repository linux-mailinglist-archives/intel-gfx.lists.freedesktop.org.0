Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E00315B5928
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 13:19:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B855A10E3CF;
	Mon, 12 Sep 2022 11:18:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7034010E3BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 11:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662981526; x=1694517526;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OGnNpRfTKYawipsk3m2WIdR0tcsBnMzOMpGgoR26II8=;
 b=mfwZb1DAJwrIeq7WaFi9tI+u01YLQwxLi61XD7H5Q8Lt4t80g88dzdWr
 T+XDhfDzeh+bNqaG4SvlJhsfxC+utEkDCbyc5HXtrwe5y6/OvGtuOsLaY
 H9X8eB0kS0i+vSuhNBCupfT9Wzyd3e0LP1d+pv9zAJFnuT90VpHhlD/Vy
 Vl3CBCR6IXmBzyGfRanYTJnAlhVGOCzu5SI1JyP9VsH/7dsb6FSrG3cQx
 9V62GtP7I2UPn/u3wrRcabaCpGyDAekG52Hy6e9NUehInqtJThF7a2dfl
 iMpW2lH3GuyVbzmGY9Qe6gFVjIfJWU6xj6PKl1ybTTXb09esfOKdNaUpt Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10467"; a="324072063"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="324072063"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 04:18:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="618518529"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 12 Sep 2022 04:18:44 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 14:18:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 12 Sep 2022 14:18:09 +0300
Message-Id: <20220912111814.17466-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
References: <20220912111814.17466-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/15] drm/i915: Move eDP scaling_mode prop
 setup to the proper place
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

We have an eDP specific intel_edp_add_properties() so move
the eDP scaling_mode property setup there from
intel_dp_add_properties().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 23 ++++++++++-------------
 1 file changed, 10 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index de5a4d2df78e..049228a09364 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5183,19 +5183,6 @@ intel_dp_add_properties(struct intel_dp *intel_dp, struct drm_connector *connect
 	if (has_gamut_metadata_dip(dev_priv, port))
 		drm_connector_attach_hdr_output_metadata_property(connector);
 
-	if (intel_dp_is_edp(intel_dp)) {
-		u32 allowed_scalers;
-
-		allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) | BIT(DRM_MODE_SCALE_FULLSCREEN);
-		if (!HAS_GMCH(dev_priv))
-			allowed_scalers |= BIT(DRM_MODE_SCALE_CENTER);
-
-		drm_connector_attach_scaling_mode_property(connector, allowed_scalers);
-
-		connector->state->scaling_mode = DRM_MODE_SCALE_ASPECT;
-
-	}
-
 	if (HAS_VRR(dev_priv))
 		drm_connector_attach_vrr_capable_property(connector);
 }
@@ -5207,6 +5194,16 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_preferred_fixed_mode(connector);
+	u32 allowed_scalers;
+
+	allowed_scalers = BIT(DRM_MODE_SCALE_ASPECT) |
+		BIT(DRM_MODE_SCALE_FULLSCREEN);
+	if (!HAS_GMCH(i915))
+		allowed_scalers |= BIT(DRM_MODE_SCALE_CENTER);
+
+	drm_connector_attach_scaling_mode_property(&connector->base, allowed_scalers);
+
+	connector->base.state->scaling_mode = DRM_MODE_SCALE_ASPECT;
 
 	if (!fixed_mode)
 		return;
-- 
2.35.1

