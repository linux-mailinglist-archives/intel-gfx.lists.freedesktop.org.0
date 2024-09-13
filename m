Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C0797819E
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 15:54:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B9B210ED1B;
	Fri, 13 Sep 2024 13:54:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E7K2y4bt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D34410E278
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 13:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726235690; x=1757771690;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=izlOGzt1ly1R63u3bAtVtufgwhCbqfYBmTQxqmCEdBg=;
 b=E7K2y4btsTub1WPmpuLnXnNCjt+gzeesZ4EVXPl1CFgmM0Vo/uka2B4J
 onjxh+eL7Z8BKpAD5H0acQrY6hazj9B8OdGYx2ruH95I8iDqI0ctRtvrJ
 NdA2ibusirHqUyTtirmYQpAYdPYttu2LeUa+tfGs/0BddKCg/qo+A7+i/
 i7hzeuAIhgDS/zZdjpJGeXvmEWPIkuLDC2en8C56ZRV2QYNtRyticbUHY
 BSx/YOq03T7cnVoZWghAwAPU5zmRRUrJ6Z8YKw+SO+pVkEIT3uOq8nvng
 lDYCbh4l3hhD83GiL5abWNrnkkZB474Skcwut9gttAW8tNFqNLWP2sFrA g==;
X-CSE-ConnectionGUID: oDMvxwNhQ2q5YDIMzLwmtw==
X-CSE-MsgGUID: Gvt13Z2GT/+zogBl1Ds9VA==
X-IronPort-AV: E=McAfee;i="6700,10204,11194"; a="42612209"
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="42612209"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 06:54:50 -0700
X-CSE-ConnectionGUID: DK0jIUatS0+tG5ibYA+NUA==
X-CSE-MsgGUID: XMNNqftZSn67x5QgM5zSlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,226,1719903600"; d="scan'208";a="72872248"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.64])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 06:54:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/2] drm/i915: move intel_get_pipe_from_crtc_id_ioctl to
 intel_crtc.c
Date: Fri, 13 Sep 2024 16:54:38 +0300
Message-Id: <edcf4477e6f38cc1f36a8afc0d09fd98544803ab.1726235647.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1726235647.git.jani.nikula@intel.com>
References: <cover.1726235647.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Reduce the size of and dependencies on intel_display.[ch], and move
intel_get_pipe_from_crtc_id_ioctl() to intel_crtc.[ch]. Rename to
intel_crtc_get_pipe_from_crtc_id_ioctl() while at it.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c    | 17 +++++++++++++++++
 drivers/gpu/drm/i915/display/intel_crtc.h    |  4 ++++
 drivers/gpu/drm/i915/display/intel_display.c | 17 -----------------
 drivers/gpu/drm/i915/display/intel_display.h |  3 ---
 drivers/gpu/drm/i915/i915_driver.c           |  4 ++--
 5 files changed, 23 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index aed3853952be..f95d169fc324 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -389,6 +389,23 @@ int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe)
 	return ret;
 }
 
+int intel_crtc_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
+					   struct drm_file *file)
+{
+	struct drm_i915_get_pipe_from_crtc_id *pipe_from_crtc_id = data;
+	struct drm_crtc *drm_crtc;
+	struct intel_crtc *crtc;
+
+	drm_crtc = drm_crtc_find(dev, file, pipe_from_crtc_id->crtc_id);
+	if (!drm_crtc)
+		return -ENOENT;
+
+	crtc = to_intel_crtc(drm_crtc);
+	pipe_from_crtc_id->pipe = crtc->pipe;
+
+	return 0;
+}
+
 static bool intel_crtc_needs_vblank_work(const struct intel_crtc_state *crtc_state)
 {
 	return crtc_state->hw.active &&
diff --git a/drivers/gpu/drm/i915/display/intel_crtc.h b/drivers/gpu/drm/i915/display/intel_crtc.h
index 0de8c772df2e..a58ecd11bba2 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.h
+++ b/drivers/gpu/drm/i915/display/intel_crtc.h
@@ -10,7 +10,9 @@
 
 enum i9xx_plane_id;
 enum pipe;
+struct drm_device;
 struct drm_display_mode;
+struct drm_file;
 struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
@@ -32,6 +34,8 @@ int intel_usecs_to_scanlines(const struct drm_display_mode *adjusted_mode,
 void intel_crtc_arm_vblank_event(struct intel_crtc_state *crtc_state);
 u32 intel_crtc_max_vblank_count(const struct intel_crtc_state *crtc_state);
 int intel_crtc_init(struct drm_i915_private *dev_priv, enum pipe pipe);
+int intel_crtc_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
+					   struct drm_file *file_priv);
 struct intel_crtc_state *intel_crtc_state_alloc(struct intel_crtc *crtc);
 void intel_crtc_state_reset(struct intel_crtc_state *crtc_state,
 			    struct intel_crtc *crtc);
diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index fdf244a32b24..7bba54a31eda 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7706,23 +7706,6 @@ void intel_plane_destroy(struct drm_plane *plane)
 	kfree(to_intel_plane(plane));
 }
 
-int intel_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
-				      struct drm_file *file)
-{
-	struct drm_i915_get_pipe_from_crtc_id *pipe_from_crtc_id = data;
-	struct drm_crtc *drmmode_crtc;
-	struct intel_crtc *crtc;
-
-	drmmode_crtc = drm_crtc_find(dev, file, pipe_from_crtc_id->crtc_id);
-	if (!drmmode_crtc)
-		return -ENOENT;
-
-	crtc = to_intel_crtc(drmmode_crtc);
-	pipe_from_crtc_id->pipe = crtc->pipe;
-
-	return 0;
-}
-
 static u32 intel_encoder_possible_clones(struct intel_encoder *encoder)
 {
 	struct drm_device *dev = encoder->base.dev;
diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
index 7ca26e5cb20e..d10608526eee 100644
--- a/drivers/gpu/drm/i915/display/intel_display.h
+++ b/drivers/gpu/drm/i915/display/intel_display.h
@@ -471,9 +471,6 @@ bool intel_encoder_is_snps(struct intel_encoder *encoder);
 bool intel_encoder_is_tc(struct intel_encoder *encoder);
 enum tc_port intel_encoder_to_tc(struct intel_encoder *encoder);
 
-int intel_get_pipe_from_crtc_id_ioctl(struct drm_device *dev, void *data,
-				      struct drm_file *file_priv);
-
 int ilk_get_lanes_required(int target_clock, int link_bw, int bpp);
 void vlv_wait_port_ready(struct drm_i915_private *dev_priv,
 			 struct intel_digital_port *dig_port,
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 943e938040c0..7f98f2dbd881 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -48,8 +48,8 @@
 #include "display/intel_acpi.h"
 #include "display/intel_bw.h"
 #include "display/intel_cdclk.h"
+#include "display/intel_crtc.h"
 #include "display/intel_display_driver.h"
-#include "display/intel_display.h"
 #include "display/intel_dmc.h"
 #include "display/intel_dp.h"
 #include "display/intel_dpt.h"
@@ -1724,7 +1724,7 @@ static const struct drm_ioctl_desc i915_ioctls[] = {
 	DRM_IOCTL_DEF_DRV(I915_GEM_SET_TILING, i915_gem_set_tiling_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GEM_GET_TILING, i915_gem_get_tiling_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_GEM_GET_APERTURE, i915_gem_get_aperture_ioctl, DRM_RENDER_ALLOW),
-	DRM_IOCTL_DEF_DRV(I915_GET_PIPE_FROM_CRTC_ID, intel_get_pipe_from_crtc_id_ioctl, 0),
+	DRM_IOCTL_DEF_DRV(I915_GET_PIPE_FROM_CRTC_ID, intel_crtc_get_pipe_from_crtc_id_ioctl, 0),
 	DRM_IOCTL_DEF_DRV(I915_GEM_MADVISE, i915_gem_madvise_ioctl, DRM_RENDER_ALLOW),
 	DRM_IOCTL_DEF_DRV(I915_OVERLAY_PUT_IMAGE, intel_overlay_put_image_ioctl, DRM_MASTER),
 	DRM_IOCTL_DEF_DRV(I915_OVERLAY_ATTRS, intel_overlay_attrs_ioctl, DRM_MASTER),
-- 
2.39.2

