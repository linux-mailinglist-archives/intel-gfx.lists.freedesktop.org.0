Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A19314ED87C
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 13:28:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04F8610F30C;
	Thu, 31 Mar 2022 11:28:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DAB210F2E5
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 11:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648726117; x=1680262117;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=U/Xby1dyOQP2wrUVoYQGuNQd2V/uZzIOg8ptsSAHLPA=;
 b=Lxle92PZhCggiRAgHxsZNK+/YErzrQ7Bxl+BCCHzHnsCxwUe2gC7MxtL
 r3EnCr8ClF/u8JLnhqA7O13MZxsD1QkOFKDinQ+y7krn1xdlE5oYS/fZe
 eh5uZv5CovWLjeo+mHZoPDQ4JrHJaQgAzlpD2OM/iWN1lM6g/jpWWmmxr
 2FtcO0BSZQjnZmq9p6YWw9VWhDzZP2wAR29Sa1wSs1iNpDiJYc8F7g0oU
 GHCsToyG2AN7ukQmZd3ry9f9HIuae1xlge6cwhnLKH3OTCOZWzqdwl8uD
 mFZ81H5IZSWlB/YzMICmSoDwadh885Uuwl8ssc/bJGZzjQzFQhq96vrBf g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259513972"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="259513972"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 04:28:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="555042257"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga007.fm.intel.com with SMTP; 31 Mar 2022 04:28:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 31 Mar 2022 14:28:33 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Mar 2022 14:28:15 +0300
Message-Id: <20220331112822.11462-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/11] drm/i915: Nuke intel_drrs_init()
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
index 67472555211d..e539bc315d7b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5075,7 +5075,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
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

