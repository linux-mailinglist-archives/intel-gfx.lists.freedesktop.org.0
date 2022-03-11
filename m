Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D774D6781
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 18:24:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABF3D10E641;
	Fri, 11 Mar 2022 17:24:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C79210E641
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 17:24:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647019480; x=1678555480;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=u2p+heynD0fCAD6KO4KdwKxzWc1HLqWmSludpjWymfk=;
 b=XR4AlfLDWOg+NhbWm52lPsWG5oDgydnCHmr4FEkoIyGruzoWmxGBWbf1
 xBLHfqYp5D8d9jqHBDao/Fy95FUgneUvtwo8PvYTgIF9v2s2UeDCtvVta
 BUrc3xVIXq5TzZVDzEKra+eypQt/rWJIyY7tEPTsUswBhFdYhd/vMYY4v
 /G7wtXxbu4kZaYc4iYxfDSYlA6kLXUJewtu1ChLebFRRHJOZI/WLQV3CY
 YDIu1JWSsnO5sXPNaW55SM4oUwAGixYpL4uXO/VWpMTpcCmBvf5gWP8/z
 OQbQzrpjv3hT2K8/iHER+e8vBR6NVoRjUl8KZpIkZ11v7SGvid+WxXgOe g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="318835957"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="318835957"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 09:24:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="539063656"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 11 Mar 2022 09:24:38 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Mar 2022 19:24:37 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 19:24:15 +0200
Message-Id: <20220311172428.14685-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 03/16] drm/i915/lvds: Pass fixed_mode to
 compute_is_dual_link_lvds()
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

We want to eventually get rid of the connector->panel.fixed_mode
pointer so avoid using it during LVDS setup. Since this all
happens during the encoder init we already have the fixed_mode
around, just pass that in.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_lvds.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 9fced37bed70..dd7292d3c88e 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -784,7 +784,8 @@ bool intel_is_dual_link_lvds(struct drm_i915_private *dev_priv)
 	return encoder && to_lvds_encoder(&encoder->base)->is_dual_link;
 }
 
-static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_encoder)
+static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_encoder,
+				      const struct drm_display_mode *fixed_mode)
 {
 	struct drm_device *dev = lvds_encoder->base.base.dev;
 	unsigned int val;
@@ -795,7 +796,7 @@ static bool compute_is_dual_link_lvds(struct intel_lvds_encoder *lvds_encoder)
 		return dev_priv->params.lvds_channel_mode == 2;
 
 	/* single channel LVDS is limited to 112 MHz */
-	if (lvds_encoder->attached_connector->panel.fixed_mode->clock > 112999)
+	if (fixed_mode->clock > 112999)
 		return true;
 
 	if (dmi_check_system(intel_dual_link_lvds))
@@ -1004,7 +1005,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
 	intel_panel_init(&intel_connector->panel, fixed_mode, downclock_mode);
 	intel_backlight_setup(intel_connector, INVALID_PIPE);
 
-	lvds_encoder->is_dual_link = compute_is_dual_link_lvds(lvds_encoder);
+	lvds_encoder->is_dual_link = compute_is_dual_link_lvds(lvds_encoder, fixed_mode);
 	drm_dbg_kms(&dev_priv->drm, "detected %s-link lvds configuration\n",
 		    lvds_encoder->is_dual_link ? "dual" : "single");
 
-- 
2.34.1

