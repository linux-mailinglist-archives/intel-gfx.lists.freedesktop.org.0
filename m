Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 669A84D3E67
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Mar 2022 01:48:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8132E10E5E1;
	Thu, 10 Mar 2022 00:48:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0FE310E5E1
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Mar 2022 00:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646873303; x=1678409303;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WI8hgrtjpzlLby0etBfpkl9AI+8Xft3hdsSszh1s/cs=;
 b=X9hJXT0Ew4kdncsbWJZMUvjMHplVcN9kNNZDpOKeBU1H9hAGhUm5Pjyd
 JwqG6AuWf2nMKrfSin69Sej2R1kXlTvjM0zMWMuREo8RrB2MItvJg44bx
 +S3njv6My1DNSSLkBSVGsrxq1lw2yKxn6NEt1MGq4Wbg7wJNN6UOI0a5w
 5l6GZ4MU6MwcqZCVkhlvhsVjvjnD9HOugOBoO7g3y7QgjyYpKV4mjebMm
 FaZhUnZJRus9aApOBOSW1SBNaUyope7vE9YH/xJxDZ4swnfHR5+x77ses
 iXfhtnYl4YYGYpm+F+QfuIKtP0wGYVOqLyXsA2U9GVu34WLCfMQxaZWQ7 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="235733538"
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="235733538"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 16:48:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,169,1643702400"; d="scan'208";a="547832463"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga007.fm.intel.com with SMTP; 09 Mar 2022 16:48:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Mar 2022 02:48:20 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 10 Mar 2022 02:47:55 +0200
Message-Id: <20220310004802.16310-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
References: <20220310004802.16310-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/13] drm/i915: Polish drrs type enum
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

Make the drrs type enum less convoluted.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c            | 10 +++++-----
 drivers/gpu/drm/i915/display/intel_display_debugfs.c |  2 +-
 drivers/gpu/drm/i915/display/intel_drrs.c            | 10 +++++-----
 drivers/gpu/drm/i915/i915_drv.h                      | 12 ++++++------
 4 files changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 93dc32fb3e40..c7afe19dd44a 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -257,16 +257,16 @@ parse_panel_options(struct drm_i915_private *i915,
 	 */
 	switch (drrs_mode) {
 	case 0:
-		i915->vbt.drrs_type = STATIC_DRRS_SUPPORT;
+		i915->vbt.drrs_type = DRRS_TYPE_STATIC;
 		drm_dbg_kms(&i915->drm, "DRRS supported mode is static\n");
 		break;
 	case 2:
-		i915->vbt.drrs_type = SEAMLESS_DRRS_SUPPORT;
+		i915->vbt.drrs_type = DRRS_TYPE_SEAMLESS;
 		drm_dbg_kms(&i915->drm,
 			    "DRRS supported mode is seamless\n");
 		break;
 	default:
-		i915->vbt.drrs_type = DRRS_NOT_SUPPORTED;
+		i915->vbt.drrs_type = DRRS_TYPE_NONE;
 		drm_dbg_kms(&i915->drm,
 			    "DRRS not supported (VBT input)\n");
 		break;
@@ -740,7 +740,7 @@ parse_driver_features(struct drm_i915_private *i915,
 		 * driver->drrs_enabled=false
 		 */
 		if (!driver->drrs_enabled)
-			i915->vbt.drrs_type = DRRS_NOT_SUPPORTED;
+			i915->vbt.drrs_type = DRRS_TYPE_NONE;
 
 		i915->vbt.psr.enable = driver->psr_enabled;
 	}
@@ -769,7 +769,7 @@ parse_power_conservation_features(struct drm_i915_private *i915,
 	 * power->drrs & BIT(panel_type)=false
 	 */
 	if (!(power->drrs & BIT(panel_type)))
-		i915->vbt.drrs_type = DRRS_NOT_SUPPORTED;
+		i915->vbt.drrs_type = DRRS_TYPE_NONE;
 
 	if (bdb->version >= 232)
 		i915->vbt.edp.hobl = power->hobl & BIT(panel_type);
diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 41b81d5dd5f4..28414472110e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1163,7 +1163,7 @@ static void drrs_status_per_crtc(struct seq_file *m,
 		seq_printf(m, "%s:\n", connector->name);
 
 		if (connector->connector_type == DRM_MODE_CONNECTOR_eDP &&
-		    drrs->type == SEAMLESS_DRRS_SUPPORT)
+		    drrs->type == DRRS_TYPE_SEAMLESS)
 			supported = true;
 
 		seq_printf(m, "\tDRRS Supported: %s\n", str_yes_no(supported));
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 5b3711fe0674..7c4a3ecee93a 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -65,7 +65,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
 		return false;
 
 	return connector->panel.downclock_mode &&
-		i915->drrs.type == SEAMLESS_DRRS_SUPPORT;
+		i915->drrs.type == DRRS_TYPE_SEAMLESS;
 }
 
 void
@@ -155,7 +155,7 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (dev_priv->drrs.type != SEAMLESS_DRRS_SUPPORT) {
+	if (dev_priv->drrs.type != DRRS_TYPE_SEAMLESS) {
 		drm_dbg_kms(&dev_priv->drm, "Only Seamless DRRS supported.\n");
 		return;
 	}
@@ -274,7 +274,7 @@ intel_drrs_update(struct intel_dp *intel_dp,
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	if (dev_priv->drrs.type != SEAMLESS_DRRS_SUPPORT)
+	if (dev_priv->drrs.type != DRRS_TYPE_SEAMLESS)
 		return;
 
 	mutex_lock(&dev_priv->drrs.mutex);
@@ -329,7 +329,7 @@ static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
 	struct drm_crtc *crtc;
 	enum pipe pipe;
 
-	if (dev_priv->drrs.type != SEAMLESS_DRRS_SUPPORT)
+	if (dev_priv->drrs.type != DRRS_TYPE_SEAMLESS)
 		return;
 
 	cancel_delayed_work(&dev_priv->drrs.work);
@@ -449,7 +449,7 @@ intel_drrs_init(struct intel_connector *connector,
 		return NULL;
 	}
 
-	if (dev_priv->vbt.drrs_type != SEAMLESS_DRRS_SUPPORT) {
+	if (dev_priv->vbt.drrs_type != DRRS_TYPE_SEAMLESS) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "[CONNECTOR:%d:%s] DRRS not supported according to VBT\n",
 			    connector->base.base.id, connector->base.name);
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 020c5f7602a2..0fc5d7e447b9 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -207,10 +207,10 @@ enum drrs_refresh_rate_type {
 	DRRS_MAX_RR, /* RR count */
 };
 
-enum drrs_support_type {
-	DRRS_NOT_SUPPORTED = 0,
-	STATIC_DRRS_SUPPORT = 1,
-	SEAMLESS_DRRS_SUPPORT = 2
+enum drrs_type {
+	DRRS_TYPE_NONE,
+	DRRS_TYPE_STATIC,
+	DRRS_TYPE_SEAMLESS,
 };
 
 struct i915_drrs {
@@ -219,7 +219,7 @@ struct i915_drrs {
 	struct intel_dp *dp;
 	unsigned busy_frontbuffer_bits;
 	enum drrs_refresh_rate_type refresh_rate_type;
-	enum drrs_support_type type;
+	enum drrs_type type;
 };
 
 #define QUIRK_LVDS_SSC_DISABLE (1<<1)
@@ -349,7 +349,7 @@ struct intel_vbt_data {
 	bool override_afc_startup;
 	u8 override_afc_startup_val;
 
-	enum drrs_support_type drrs_type;
+	enum drrs_type drrs_type;
 
 	struct {
 		int rate;
-- 
2.34.1

