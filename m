Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2BD4EAFD8
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 17:08:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 399DB10E8C4;
	Tue, 29 Mar 2022 15:07:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8222510E8C4
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 15:07:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648566477; x=1680102477;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=7urcNgN2xCpJ3ExW6RG11k4pQXHuekoRmw+Fha7VbcA=;
 b=KPSJeLTl6c/E7aLwcHmCJZI3Ygw8CV5XE9gMNCvh3p/HYXpy802pGgN2
 rxIM1v4Fs8F+Jc0eqBEh4qU2kjjD/eGjlO6gitIMl4fo42xBJlJ6+/Mlw
 X5nwA3QXw+u2xfzuVUgB7T33VbU9r5yaAT02s+cC38L4v4EzufsP2Ykom
 tBGo/XyoYmpkPn2cubuzNbI1HnxrUR0bBwfjAnPQojwJAhf0toVoYs3KX
 YYy56Z1LA2KU8GSsD2LLkPdbQmc77zVH5W/qgFtUYBH0ZqA39wjfgBejI
 rhbHAbACu4PRkzFwInc2WCm8XQkdoACVB2pyqrPvA5Zk7K19W4QOAfiS5 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="319969243"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="319969243"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 08:07:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="521471124"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by orsmga006.jf.intel.com with SMTP; 29 Mar 2022 08:07:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 29 Mar 2022 18:07:54 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 29 Mar 2022 18:07:35 +0300
Message-Id: <20220329150742.31783-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
References: <20220329150742.31783-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/11] drm/i915: Nuke intel_drrs_init()
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

intel_drrs_init() is a mostly pointless wrapper around
intel_panel_add_edid_downclock_mode(), get rid of it.

The only really useful thing left in there is the debug
print regarding the DRRS type supported by the connector.
Let's just move that into intel_panel_init().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_drrs.c  | 24 ----------------------
 drivers/gpu/drm/i915/display/intel_drrs.h  |  1 -
 drivers/gpu/drm/i915/display/intel_panel.c |  6 ++++++
 4 files changed, 7 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 544b16e3a0d9..e734ef42671c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5070,7 +5070,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 	intel_panel_add_edid_fixed_mode(intel_connector);
 	if (intel_panel_preferred_fixed_mode(intel_connector) &&
 	    intel_edp_has_drrs(intel_dp))
-		intel_drrs_init(intel_connector);
+		intel_panel_add_edid_downclock_mode(intel_connector);
 
 	/* MSO requires information from the EDID */
 	intel_edp_mso_init(intel_dp);
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index 8fd280c7c83f..3ebea697f77a 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -354,27 +354,3 @@ void intel_crtc_drrs_init(struct intel_crtc *crtc)
 	mutex_init(&crtc->drrs.mutex);
 	crtc->drrs.cpu_transcoder = INVALID_TRANSCODER;
 }
-
-/**
- * intel_drrs_init - Init DRRS for eDP connector
- * @connector: eDP connector
- *
- * This function is called only once at driver load to initialize
- * DRRS support for the connector.
- *
- * Returns:
- * Downclock mode if panel supports it, else return NULL.
- * DRRS support is determined by the presence of downclock mode (apart
- * from VBT setting).
- */
-void intel_drrs_init(struct intel_connector *connector)
-{
-	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
-
-	intel_panel_add_edid_downclock_mode(connector);
-
-	drm_dbg_kms(&dev_priv->drm,
-		    "[CONNECTOR:%d:%s] DRRS type: %s\n",
-		    connector->base.base.id, connector->base.name,
-		    intel_drrs_type_str(dev_priv->vbt.drrs_type));
-}
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/i915/display/intel_drrs.h
index 3ea52220cd69..084c3f4f8403 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.h
+++ b/drivers/gpu/drm/i915/display/intel_drrs.h
@@ -27,6 +27,5 @@ void intel_drrs_compute_config(struct intel_connector *connector,
 			       struct intel_crtc_state *pipe_config,
 			       int output_bpp, bool constant_n);
 void intel_crtc_drrs_init(struct intel_crtc *crtc);
-void intel_drrs_init(struct intel_connector *connector);
 
 #endif /* __INTEL_DRRS_H__ */
diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
index 1e56ca9033e0..5ecc6fc80588 100644
--- a/drivers/gpu/drm/i915/display/intel_panel.c
+++ b/drivers/gpu/drm/i915/display/intel_panel.c
@@ -35,6 +35,7 @@
 #include "intel_connector.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
+#include "intel_drrs.h"
 #include "intel_panel.h"
 
 bool intel_panel_use_ssc(struct drm_i915_private *i915)
@@ -634,6 +635,11 @@ int intel_panel_init(struct intel_connector *connector)
 
 	intel_backlight_init_funcs(panel);
 
+	drm_dbg_kms(connector->base.dev,
+		    "[CONNECTOR:%d:%s] DRRS type: %s\n",
+		    connector->base.base.id, connector->base.name,
+		    intel_drrs_type_str(intel_panel_drrs_type(connector)));
+
 	return 0;
 }
 
-- 
2.34.1

