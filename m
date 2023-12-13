Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9018106DC
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Dec 2023 01:43:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A697010E6E7;
	Wed, 13 Dec 2023 00:43:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 077FE10E6E8
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Dec 2023 00:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702428199; x=1733964199;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Y1pQ99AKRWofXQi8byTWydePomSiVkv11sqGB0C/LRc=;
 b=bM+theB+qkkGPxYoyen2jQTGMVBRM93VWAeXXxMAN19c2hvUvTcB424F
 BhhM2zLoTz6s+D3Q3XHJuVG10flVDpcACmugsGi9JSk9BVznce/jf5XNO
 3eOL8XpKI9AbVOE53QN0u3IwKVhtE+7P7fMmzfEsZWxYgfBwWyOyaBqcE
 y5StK0mt0c98nu60/aCoUZBg1hd3e2UhjL6yn98SntHwoiInAsDfolSpX
 oCy5Q+5AUPuO+4G9OodrGmdG+TZdflLfdge0qiFXgzrUpiHG8fA2uISnO
 cMz1UvxRG90z0Yjx3LiD68QybZswvFBqE/A9ynlT/g4/etFdE3M+02wBc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="385309711"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="385309711"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2023 16:43:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10922"; a="767011938"
X-IronPort-AV: E=Sophos;i="6.04,271,1695711600"; d="scan'208";a="767011938"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 12 Dec 2023 16:43:16 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 13 Dec 2023 02:43:16 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 12/12] drm/i915: Simplify intel_initial_plane_config() calling
 convention
Date: Wed, 13 Dec 2023 02:42:37 +0200
Message-ID: <20231213004237.20375-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
References: <20231213004237.20375-1-ville.syrjala@linux.intel.com>
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

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_driver.c   |  7 +---
 .../drm/i915/display/intel_plane_initial.c    | 40 +++++++++++--------
 .../drm/i915/display/intel_plane_initial.h    |  4 +-
 3 files changed, 26 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 62f7b10484be..2fe0f4ad359c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -285,7 +285,6 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
 {
 	struct drm_device *dev = &i915->drm;
 	enum pipe pipe;
-	struct intel_crtc *crtc;
 	int ret;
 
 	if (!HAS_DISPLAY(i915))
@@ -335,11 +334,7 @@ int intel_display_driver_probe_nogem(struct drm_i915_private *i915)
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
-- 
2.41.0

