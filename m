Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCC34D6783
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 18:24:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A12CA10E66B;
	Fri, 11 Mar 2022 17:24:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A894D10E643
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 17:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647019486; x=1678555486;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KxJQ/B2e7/HuaoQCYcJEVjf4A2Hsg5ffgJMzXPPdwu0=;
 b=kFauEJI+2SS8UvJu2TU18CRFWAKr5WdpEuvs21nArDJmUSZLGg9vXBUN
 38mZgXyWc3q1QbYr2OY/E0dzTy5cETpcYAvrAOim4gax56DnlgIjCSBmj
 7YNtQ2vtixwH1Xlt59tcCxfyBdRu53TdBWR9YgET7npym80mrG8bk+KXE
 oqLr3IrxZYODmIC5hAk8Yn+3nW2jRAgEiAvXHIxSacs4KfCIHEFAHOzSG
 xkGwcSZ8oXFRAC0iIRt35Z8PML/mGKHEtZPtBeC0nzX+kQ4F6C7G5U0K2
 UlyvDFTxA5+ZRRtbCcevX9hBurT7npgc7ryRmU8QOSzeBDAhuBU0hhpIY A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="237787074"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="237787074"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 09:24:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="579354044"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 11 Mar 2022 09:24:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Mar 2022 19:24:43 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 19:24:17 +0200
Message-Id: <20220311172428.14685-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 05/16] drm/i915: Nuke dev_priv->drrs.type
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

When we found a downclock mode dev_priv->drrs.type is just a
straight copy of dev_priv->vbt.drrs_type. And in case we
couldn't find a downclock mode can_enable_drrs() won't let
us enable DRRS anyway so the minor distinction between the
two is irrelevant. So let's just nuke dev_priv->drrs.type
and consult the VBT version directly.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c |  2 +-
 drivers/gpu/drm/i915/display/intel_drrs.c            | 10 ++++------
 drivers/gpu/drm/i915/i915_drv.h                      |  1 -
 3 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index e511500ee26a..2a6fd15b1471 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1156,7 +1156,7 @@ static void drrs_status_per_crtc(struct seq_file *m,
 		seq_printf(m, "%s:\n", connector->name);
 
 		if (connector->connector_type == DRM_MODE_CONNECTOR_eDP &&
-		    drrs->type == DRRS_TYPE_SEAMLESS)
+		    dev_priv->vbt.drrs_type == DRRS_TYPE_SEAMLESS)
 			supported = true;
 
 		seq_printf(m, "\tDRRS Supported: %s\n", str_yes_no(supported));
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index c97b5dee8cae..4afbc903f169 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -65,7 +65,7 @@ static bool can_enable_drrs(struct intel_connector *connector,
 		return false;
 
 	return connector->panel.downclock_mode &&
-		i915->drrs.type == DRRS_TYPE_SEAMLESS;
+		i915->vbt.drrs_type == DRRS_TYPE_SEAMLESS;
 }
 
 void
@@ -154,7 +154,7 @@ static void intel_drrs_set_state(struct drm_i915_private *dev_priv,
 		return;
 	}
 
-	if (dev_priv->drrs.type != DRRS_TYPE_SEAMLESS) {
+	if (dev_priv->vbt.drrs_type != DRRS_TYPE_SEAMLESS) {
 		drm_dbg_kms(&dev_priv->drm, "Only Seamless DRRS supported.\n");
 		return;
 	}
@@ -269,7 +269,7 @@ intel_drrs_update(struct intel_dp *intel_dp,
 {
 	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 
-	if (dev_priv->drrs.type != DRRS_TYPE_SEAMLESS)
+	if (dev_priv->vbt.drrs_type != DRRS_TYPE_SEAMLESS)
 		return;
 
 	mutex_lock(&dev_priv->drrs.mutex);
@@ -325,7 +325,7 @@ static void intel_drrs_frontbuffer_update(struct drm_i915_private *dev_priv,
 	struct drm_crtc *crtc;
 	enum pipe pipe;
 
-	if (dev_priv->drrs.type != DRRS_TYPE_SEAMLESS)
+	if (dev_priv->vbt.drrs_type != DRRS_TYPE_SEAMLESS)
 		return;
 
 	cancel_delayed_work(&dev_priv->drrs.work);
@@ -460,8 +460,6 @@ intel_drrs_init(struct intel_connector *connector,
 		return NULL;
 	}
 
-	dev_priv->drrs.type = dev_priv->vbt.drrs_type;
-
 	dev_priv->drrs.refresh_rate = DRRS_REFRESH_RATE_HIGH;
 	drm_dbg_kms(&dev_priv->drm,
 		    "[CONNECTOR:%d:%s] seamless DRRS supported\n",
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 7d622d1afe93..6a59fc2cb9c2 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -213,7 +213,6 @@ struct i915_drrs {
 	struct intel_dp *dp;
 	unsigned busy_frontbuffer_bits;
 	enum drrs_refresh_rate refresh_rate;
-	enum drrs_type type;
 };
 
 #define QUIRK_LVDS_SSC_DISABLE (1<<1)
-- 
2.34.1

