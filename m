Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7CF495F5F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 14:01:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03C6210EA5E;
	Fri, 21 Jan 2022 13:01:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E3AA10EA42
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 13:01:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642770090; x=1674306090;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VIeiMnf1DHgw/oVbr1VJyocQGIZKgXngGRGds6EUAyQ=;
 b=ZXBzilPTnm+BaK3ZZL03khiCuqEE36G+BuFg4z/ahPO+dgFssYlUHldi
 JYS4B+XoeEVSf/p2PXS/S7aPX6GnadwwrXFQ8K0Zja4v+cV7Bix+X4qGd
 Ci/Vjh9PSGoewCUNksEQ+ujPiQKh90ppngXrllXZiCaYlQ5Wv2cJawNSr
 8I0mIlU4sIhCfk5hh5yjYCbJXwYn8xVgo6VLjd0gQqDrAGawBT5UQBvXx
 9d4s2l8sK37qk9dygwG4d06szvUWB7PIuRRaeGd4Q/SjTEFGuVMMqFzWC
 1/CFSmM1a92jHdlWdgwguv61YjFfS8Splybx0lgAsPvXbcYJb6s8TNTsz Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="306369165"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="306369165"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:01:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="519064781"
Received: from chandra2-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.104])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 05:01:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 15:00:37 +0200
Message-Id: <80469a83a74912ad69c4518d9cc68f07d65e9aaf.1642769982.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1642769982.git.jani.nikula@intel.com>
References: <cover.1642769982.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 8/9] drm/i915/cdclk: update
 intel_dump_cdclk_config() logging
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Gather some intel_dump_cdclk_config() changes together to avoid extra
churn: Rename to intel_cdclk_dump_config() to following naming
conventions. Pass in i915. Use i915 for struct drm_device based
logging. Switch to KMS drm debug class.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 21 ++++++++++---------
 drivers/gpu/drm/i915/display/intel_cdclk.h    |  3 ++-
 drivers/gpu/drm/i915/display/intel_display.c  |  2 +-
 .../drm/i915/display/intel_display_power.c    |  2 +-
 4 files changed, 15 insertions(+), 13 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 7e20967307df..c4b48b831ced 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1156,7 +1156,7 @@ static void skl_sanitize_cdclk(struct drm_i915_private *dev_priv)
 		goto sanitize;
 
 	intel_update_cdclk(dev_priv);
-	intel_dump_cdclk_config(&dev_priv->cdclk.hw, "Current CDCLK");
+	intel_cdclk_dump_config(dev_priv, &dev_priv->cdclk.hw, "Current CDCLK");
 
 	/* Is PLL enabled and locked ? */
 	if (dev_priv->cdclk.hw.vco == 0 ||
@@ -1817,7 +1817,7 @@ static void bxt_sanitize_cdclk(struct drm_i915_private *dev_priv)
 	int cdclk, clock, vco;
 
 	intel_update_cdclk(dev_priv);
-	intel_dump_cdclk_config(&dev_priv->cdclk.hw, "Current CDCLK");
+	intel_cdclk_dump_config(dev_priv, &dev_priv->cdclk.hw, "Current CDCLK");
 
 	if (dev_priv->cdclk.hw.vco == 0 ||
 	    dev_priv->cdclk.hw.cdclk == dev_priv->cdclk.hw.bypass)
@@ -2057,13 +2057,14 @@ static bool intel_cdclk_changed(const struct intel_cdclk_config *a,
 		a->voltage_level != b->voltage_level;
 }
 
-void intel_dump_cdclk_config(const struct intel_cdclk_config *cdclk_config,
+void intel_cdclk_dump_config(struct drm_i915_private *i915,
+			     const struct intel_cdclk_config *cdclk_config,
 			     const char *context)
 {
-	DRM_DEBUG_DRIVER("%s %d kHz, VCO %d kHz, ref %d kHz, bypass %d kHz, voltage level %d\n",
-			 context, cdclk_config->cdclk, cdclk_config->vco,
-			 cdclk_config->ref, cdclk_config->bypass,
-			 cdclk_config->voltage_level);
+	drm_dbg_kms(&i915->drm, "%s %d kHz, VCO %d kHz, ref %d kHz, bypass %d kHz, voltage level %d\n",
+		    context, cdclk_config->cdclk, cdclk_config->vco,
+		    cdclk_config->ref, cdclk_config->bypass,
+		    cdclk_config->voltage_level);
 }
 
 /**
@@ -2087,7 +2088,7 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 	if (drm_WARN_ON_ONCE(&dev_priv->drm, !dev_priv->cdclk_funcs->set_cdclk))
 		return;
 
-	intel_dump_cdclk_config(cdclk_config, "Changing CDCLK to");
+	intel_cdclk_dump_config(dev_priv, cdclk_config, "Changing CDCLK to");
 
 	for_each_intel_encoder_with_psr(&dev_priv->drm, encoder) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -2130,8 +2131,8 @@ static void intel_set_cdclk(struct drm_i915_private *dev_priv,
 	if (drm_WARN(&dev_priv->drm,
 		     intel_cdclk_changed(&dev_priv->cdclk.hw, cdclk_config),
 		     "cdclk state doesn't match!\n")) {
-		intel_dump_cdclk_config(&dev_priv->cdclk.hw, "[hw state]");
-		intel_dump_cdclk_config(cdclk_config, "[sw state]");
+		intel_cdclk_dump_config(dev_priv, &dev_priv->cdclk.hw, "[hw state]");
+		intel_cdclk_dump_config(dev_priv, cdclk_config, "[sw state]");
 	}
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
index 71dd84740ae3..df66f66fbad0 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.h
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
@@ -62,7 +62,8 @@ bool intel_cdclk_needs_modeset(const struct intel_cdclk_config *a,
 			       const struct intel_cdclk_config *b);
 void intel_set_cdclk_pre_plane_update(struct intel_atomic_state *state);
 void intel_set_cdclk_post_plane_update(struct intel_atomic_state *state);
-void intel_dump_cdclk_config(const struct intel_cdclk_config *cdclk_config,
+void intel_cdclk_dump_config(struct drm_i915_private *i915,
+			     const struct intel_cdclk_config *cdclk_config,
 			     const char *context);
 int intel_modeset_calc_cdclk(struct intel_atomic_state *state);
 void intel_cdclk_get_cdclk(struct drm_i915_private *dev_priv,
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 0964b2403e2d..ebd786021793 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -9478,7 +9478,7 @@ void intel_modeset_init_hw(struct drm_i915_private *i915)
 	cdclk_state = to_intel_cdclk_state(i915->cdclk.obj.state);
 
 	intel_update_cdclk(i915);
-	intel_dump_cdclk_config(&i915->cdclk.hw, "Current CDCLK");
+	intel_cdclk_dump_config(i915, &i915->cdclk.hw, "Current CDCLK");
 	cdclk_state->logical = cdclk_state->actual = i915->cdclk.hw;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
index ee4617299e64..369317805d24 100644
--- a/drivers/gpu/drm/i915/display/intel_display_power.c
+++ b/drivers/gpu/drm/i915/display/intel_display_power.c
@@ -5580,7 +5580,7 @@ static void hsw_restore_lcpll(struct drm_i915_private *dev_priv)
 	intel_uncore_forcewake_put(&dev_priv->uncore, FORCEWAKE_ALL);
 
 	intel_update_cdclk(dev_priv);
-	intel_dump_cdclk_config(&dev_priv->cdclk.hw, "Current CDCLK");
+	intel_cdclk_dump_config(dev_priv, &dev_priv->cdclk.hw, "Current CDCLK");
 }
 
 /*
-- 
2.30.2

