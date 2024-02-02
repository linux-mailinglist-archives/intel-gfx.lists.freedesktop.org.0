Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CC4847C78
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 23:44:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7C3C10F11A;
	Fri,  2 Feb 2024 22:44:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PcJ5l/dD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 726A310F11A
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 22:44:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706913870; x=1738449870;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HAz0vHB8z9ZufABCsUZkz3K/YMzvRqqNdAQZvTAbjTw=;
 b=PcJ5l/dD9+IJ6v3VQ5ttkXUPKRDpiP1K/CY2ZzMyiZmrEHrB2/Ab0Mze
 8HGB2/a1/kHV5+WYWdfKFZM86fWoRqhCVp171RcbiEYr9XQ6bMg0+bQmZ
 BSSmgmThGeO9E/ME6G1NcymwShM0eWKu9cKl5bCNYvtjQkfwXlw2SJ+pE
 nODvlGY82zwBsJCata+kGfAhrBjb9O0GGMS+1gVokJgUMESG/aflsF/j4
 +/Sd6Emw4MBtQC+n00My96/1eoGbt9nxL5OEzm0UlMiCwH1NHxnHdm3PB
 SE5dxY9G5RMsoifI0QyETcYtT1L9woIr/6Vit9n4tK7t29BzuUbF8rELg Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="153782"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="153782"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 14:44:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="823332062"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="823332062"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 02 Feb 2024 14:44:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 03 Feb 2024 00:44:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Andrzej Hajda <andrzej.hajda@intel.com>,
 Paz Zcharya <pazz@chromium.org>
Subject: [PATCH v4 12/16] drm/i915: Simplify intel_initial_plane_config()
 calling convention
Date: Sat,  3 Feb 2024 00:43:36 +0200
Message-ID: <20240202224340.30647-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
References: <20240202224340.30647-1-ville.syrjala@linux.intel.com>
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

There's no reason the caller of intel_initial_plane_config() should
have to loop over the CRTCs. Pull the loop into the function to
make life simpler for the caller.

v2: "fix" xe

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Tested-by: Paz Zcharya <pazz@chromium.org>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_driver.c   |  7 +---
 .../drm/i915/display/intel_plane_initial.c    | 40 +++++++++++--------
 .../drm/i915/display/intel_plane_initial.h    |  4 +-
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 40 +++++++++++--------
 4 files changed, 49 insertions(+), 42 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index ecf9cb74734b..f3fe1743243b 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -415,7 +415,6 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
 {
 	struct drm_device *dev = &i915->drm;
 	enum pipe pipe;
-	struct intel_crtc *crtc;
 	int ret;
 
 	if (!HAS_DISPLAY(i915))
@@ -467,11 +466,7 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
 	intel_acpi_assign_connector_fwnodes(i915);
 	drm_modeset_unlock_all(dev);
 
-	for_each_intel_crtc(dev, crtc) {
-		if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
-			continue;
-		intel_crtc_initial_plane_config(crtc);
-	}
+	intel_initial_plane_config(i915);
 
 	/*
 	 * Make sure hardware watermarks really match the state we read out.
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
index 78bff6181ceb..b7e12b60d68b 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
@@ -357,25 +357,31 @@ static void plane_config_fini(struct intel_initial_plane_config *plane_config)
 		i915_vma_put(plane_config->vma);
 }
 
-void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
+void intel_initial_plane_config(struct drm_i915_private *i915)
 {
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
-	struct intel_initial_plane_config plane_config = {};
+	struct intel_crtc *crtc;
 
-	/*
-	 * Note that reserving the BIOS fb up front prevents us
-	 * from stuffing other stolen allocations like the ring
-	 * on top.  This prevents some ugliness at boot time, and
-	 * can even allow for smooth boot transitions if the BIOS
-	 * fb is large enough for the active pipe configuration.
-	 */
-	dev_priv->display.funcs.display->get_initial_plane_config(crtc, &plane_config);
+	for_each_intel_crtc(&i915->drm, crtc) {
+		struct intel_initial_plane_config plane_config = {};
 
-	/*
-	 * If the fb is shared between multiple heads, we'll
-	 * just get the first one.
-	 */
-	intel_find_initial_plane_obj(crtc, &plane_config);
+		if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
+			continue;
 
-	plane_config_fini(&plane_config);
+		/*
+		 * Note that reserving the BIOS fb up front prevents us
+		 * from stuffing other stolen allocations like the ring
+		 * on top.  This prevents some ugliness at boot time, and
+		 * can even allow for smooth boot transitions if the BIOS
+		 * fb is large enough for the active pipe configuration.
+		 */
+		i915->display.funcs.display->get_initial_plane_config(crtc, &plane_config);
+
+		/*
+		 * If the fb is shared between multiple heads, we'll
+		 * just get the first one.
+		 */
+		intel_find_initial_plane_obj(crtc, &plane_config);
+
+		plane_config_fini(&plane_config);
+	}
 }
diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.h b/drivers/gpu/drm/i915/display/intel_plane_initial.h
index c7e35ab3182b..64ab95239cd4 100644
--- a/drivers/gpu/drm/i915/display/intel_plane_initial.h
+++ b/drivers/gpu/drm/i915/display/intel_plane_initial.h
@@ -6,8 +6,8 @@
 #ifndef __INTEL_PLANE_INITIAL_H__
 #define __INTEL_PLANE_INITIAL_H__
 
-struct intel_crtc;
+struct drm_i915_private;
 
-void intel_crtc_initial_plane_config(struct intel_crtc *crtc);
+void intel_initial_plane_config(struct drm_i915_private *i915);
 
 #endif
diff --git a/drivers/gpu/drm/xe/display/xe_plane_initial.c b/drivers/gpu/drm/xe/display/xe_plane_initial.c
index ccf83c12b545..0aaf4eb2cdc5 100644
--- a/drivers/gpu/drm/xe/display/xe_plane_initial.c
+++ b/drivers/gpu/drm/xe/display/xe_plane_initial.c
@@ -267,25 +267,31 @@ static void plane_config_fini(struct intel_initial_plane_config *plane_config)
 	}
 }
 
-void intel_crtc_initial_plane_config(struct intel_crtc *crtc)
+void intel_initial_plane_config(struct drm_i915_private *i915)
 {
-	struct xe_device *xe = to_xe_device(crtc->base.dev);
-	struct intel_initial_plane_config plane_config = {};
+	struct intel_crtc *crtc;
 
-	/*
-	 * Note that reserving the BIOS fb up front prevents us
-	 * from stuffing other stolen allocations like the ring
-	 * on top.  This prevents some ugliness at boot time, and
-	 * can even allow for smooth boot transitions if the BIOS
-	 * fb is large enough for the active pipe configuration.
-	 */
-	xe->display.funcs.display->get_initial_plane_config(crtc, &plane_config);
+	for_each_intel_crtc(&i915->drm, crtc) {
+		struct intel_initial_plane_config plane_config = {};
 
-	/*
-	 * If the fb is shared between multiple heads, we'll
-	 * just get the first one.
-	 */
-	intel_find_initial_plane_obj(crtc, &plane_config);
+		if (!to_intel_crtc_state(crtc->base.state)->uapi.active)
+			continue;
 
-	plane_config_fini(&plane_config);
+		/*
+		 * Note that reserving the BIOS fb up front prevents us
+		 * from stuffing other stolen allocations like the ring
+		 * on top.  This prevents some ugliness at boot time, and
+		 * can even allow for smooth boot transitions if the BIOS
+		 * fb is large enough for the active pipe configuration.
+		 */
+		i915->display.funcs.display->get_initial_plane_config(crtc, &plane_config);
+
+		/*
+		 * If the fb is shared between multiple heads, we'll
+		 * just get the first one.
+		 */
+		intel_find_initial_plane_obj(crtc, &plane_config);
+
+		plane_config_fini(&plane_config);
+	}
 }
-- 
2.43.0

