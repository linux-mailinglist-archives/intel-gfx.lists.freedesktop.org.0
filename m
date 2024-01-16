Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C612882EA78
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jan 2024 08:57:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C0B510E434;
	Tue, 16 Jan 2024 07:57:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB4E10E434
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jan 2024 07:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705391842; x=1736927842;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8m5PltZO92r9BiVhwuE+mV2CSJMtI9ioB6Xd0SG32rI=;
 b=hbDcxssPXALGLiZkilU6f9x9Gbz0qmMU+W2nDfkYBd/9E6g+QkvzOv4U
 GxclxLGdfMcZrqbj66eQ86amYIH199yZg5DtJJ4DEWilbIZj84lxn2oN+
 30l75FWoyFbDhc7p+OYiieiFweTS+sfO0A8CzNlnMEZAjZrU7lVdpLLAi
 Q97yLCE1JpBd3DRgRfouVGAcVrwhg0ZPfdyJy0nyCeeMEqqSTwxNDmKJb
 cPgvXc4NrMlwZKmLLgDy5ZquOJVDT1asCVyCi+UNFFyIXCcmyBP7fn+SV
 07UXu5l13I+nMVU3+e/MpL/WtVIn/i2VPk1AWQgrHMWRLa6Ftn86bD6T9 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="430948705"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="430948705"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2024 23:57:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10954"; a="776947039"
X-IronPort-AV: E=Sophos;i="6.04,198,1695711600"; d="scan'208";a="776947039"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Jan 2024 23:57:19 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 16 Jan 2024 09:57:18 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v3 12/16] drm/i915: Simplify intel_initial_plane_config()
 calling convention
Date: Tue, 16 Jan 2024 09:56:32 +0200
Message-ID: <20240116075636.6121-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
References: <20240116075636.6121-1-ville.syrjala@linux.intel.com>
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

There's no reason the caller of intel_initial_plane_config() should
have to loop over the CRTCs. Pull the loop into the function to
make life simpler for the caller.

Cc: Paz Zcharya <pazz@chromium.org>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/intel_display_driver.c   |  7 +---
 .../drm/i915/display/intel_plane_initial.c    | 40 +++++++++++--------
 .../drm/i915/display/intel_plane_initial.h    |  4 +-
 3 files changed, 26 insertions(+), 25 deletions(-)

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
-- 
2.41.0

