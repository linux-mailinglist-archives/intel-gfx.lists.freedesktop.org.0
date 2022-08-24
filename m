Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 522EF59FB0E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 15:17:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8441B512C;
	Wed, 24 Aug 2022 13:17:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CE34B5095
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 13:17:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661347026; x=1692883026;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=l9qomy2AdrjbR15386NlJWPADv7naeeBqEeZJalEuUQ=;
 b=JVbfnbknFAE9xEgjfou2Ipx8OXuPI4xAfFmp9yGCNoEHbuom5KKzFeh4
 f17i/6jKD9FqxEdXOEvHS2sZ16ZN2DC4SYDHtPR6+ApO69i1KMYS7RIfI
 +PvdghvnOqh5UVDDJ4MtpX1L6yM2/buQnDbXQeo19kbNPTCWVbzyGbhno
 VKQ6SeDQ2sMJu+ikINK+ExftLEbctbFQAboMrLzJW8mKcHQ5HWlY6GaYn
 SgVfCP+jk8LHyiEnSxC9OI5Y2Jgn6IXOxibJbSkQZEuXuRg9AgSKu7Con
 DJGxyzaAtQ5nXI6E4YtPQa6PFueWqFdPWqI/LUXGIpEQLeWmM7TyXYDRU w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="380254782"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="380254782"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 06:16:35 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="937904833"
Received: from zlim2-mobl.gar.corp.intel.com (HELO localhost) ([10.252.52.23])
 by fmsmga005-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Aug 2022 06:16:33 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 16:15:32 +0300
Message-Id: <16ff8df6c08411c0e5aac3356dffe7f5120fcfeb.1661346845.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1661346845.git.jani.nikula@intel.com>
References: <cover.1661346845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/38] drm/i915: move fdi_funcs to
 display.funcs
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
Cc: jani.nikula@intel.com, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Move display fdi functions under drm_i915_private display sub-struct.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_core.h | 4 ++++
 drivers/gpu/drm/i915/display/intel_fdi.c          | 8 ++++----
 drivers/gpu/drm/i915/i915_drv.h                   | 4 ----
 3 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
index b829b304c487..afb1b0a73457 100644
--- a/drivers/gpu/drm/i915/display/intel_display_core.h
+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
@@ -14,6 +14,7 @@ struct intel_cdclk_funcs;
 struct intel_crtc;
 struct intel_crtc_state;
 struct intel_dpll_funcs;
+struct intel_fdi_funcs;
 struct intel_hotplug_funcs;
 struct intel_initial_plane_config;
 
@@ -67,6 +68,9 @@ struct intel_display {
 
 		/* pm display functions */
 		const struct intel_wm_funcs *wm;
+
+		/* fdi display functions */
+		const struct intel_fdi_funcs *fdi;
 	} funcs;
 };
 
diff --git a/drivers/gpu/drm/i915/display/intel_fdi.c b/drivers/gpu/drm/i915/display/intel_fdi.c
index 67d2484afbaa..03ad5f5c8417 100644
--- a/drivers/gpu/drm/i915/display/intel_fdi.c
+++ b/drivers/gpu/drm/i915/display/intel_fdi.c
@@ -113,7 +113,7 @@ void intel_fdi_link_train(struct intel_crtc *crtc,
 {
 	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 
-	dev_priv->fdi_funcs->fdi_link_train(crtc, crtc_state);
+	dev_priv->display.funcs.fdi->fdi_link_train(crtc, crtc_state);
 }
 
 /* units of 100MHz */
@@ -1066,11 +1066,11 @@ void
 intel_fdi_init_hook(struct drm_i915_private *dev_priv)
 {
 	if (IS_IRONLAKE(dev_priv)) {
-		dev_priv->fdi_funcs = &ilk_funcs;
+		dev_priv->display.funcs.fdi = &ilk_funcs;
 	} else if (IS_SANDYBRIDGE(dev_priv)) {
-		dev_priv->fdi_funcs = &gen6_funcs;
+		dev_priv->display.funcs.fdi = &gen6_funcs;
 	} else if (IS_IVYBRIDGE(dev_priv)) {
 		/* FIXME: detect B0+ stepping and use auto training */
-		dev_priv->fdi_funcs = &ivb_funcs;
+		dev_priv->display.funcs.fdi = &ivb_funcs;
 	}
 }
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 31c9d302deaa..aa57bb069c91 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -90,7 +90,6 @@ struct intel_connector;
 struct intel_dp;
 struct intel_encoder;
 struct intel_fbdev;
-struct intel_fdi_funcs;
 struct intel_gmbus;
 struct intel_limit;
 struct intel_overlay;
@@ -486,9 +485,6 @@ struct drm_i915_private {
 	/* pm private clock gating functions */
 	const struct drm_i915_clock_gating_funcs *clock_gating_funcs;
 
-	/* fdi display functions */
-	const struct intel_fdi_funcs *fdi_funcs;
-
 	/* Display internal color functions */
 	const struct intel_color_funcs *color_funcs;
 
-- 
2.34.1

