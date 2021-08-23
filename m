Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67ACE3F4A9A
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Aug 2021 14:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D15B89DA6;
	Mon, 23 Aug 2021 12:25:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6890F89DA6
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Aug 2021 12:25:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10084"; a="215245812"
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="215245812"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 05:25:55 -0700
X-IronPort-AV: E=Sophos;i="5.84,344,1620716400"; d="scan'208";a="535339524"
Received: from todonova-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.44.47])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2021 05:25:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com,
	daniel@ffwll.ch
Date: Mon, 23 Aug 2021 15:25:32 +0300
Message-Id: <08bf0f72435a4f9acb0ef31b82ca312b048c6bf6.1629721467.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1629721467.git.jani.nikula@intel.com>
References: <cover.1629721467.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915: add HAS_ASYNC_FLIPS feature macro
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

This will be needed in multiple places soon.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 9 ++-------
 drivers/gpu/drm/i915/i915_drv.h              | 2 ++
 2 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index eea9553845b2..d93a2d675ae2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -977,11 +977,6 @@ static unsigned int intel_linear_alignment(const struct drm_i915_private *dev_pr
 		return 0;
 }
 
-static bool has_async_flips(struct drm_i915_private *i915)
-{
-	return DISPLAY_VER(i915) >= 5;
-}
-
 unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
 				  int color_plane)
 {
@@ -1015,7 +1010,7 @@ unsigned int intel_surf_alignment(const struct drm_framebuffer *fb,
 	case DRM_FORMAT_MOD_LINEAR:
 		return intel_linear_alignment(dev_priv);
 	case I915_FORMAT_MOD_X_TILED:
-		if (has_async_flips(dev_priv))
+		if (HAS_ASYNC_FLIPS(dev_priv))
 			return 256 * 1024;
 		return 0;
 	case I915_FORMAT_MOD_Y_TILED_GEN12_MC_CCS:
@@ -12161,7 +12156,7 @@ static void intel_mode_config_init(struct drm_i915_private *i915)
 
 	mode_config->funcs = &intel_mode_funcs;
 
-	mode_config->async_page_flip = has_async_flips(i915);
+	mode_config->async_page_flip = HAS_ASYNC_FLIPS(i915);
 
 	/*
 	 * Maximum framebuffer dimensions, chosen to match
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 0a2b63072ff5..106f218cec2b 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1721,6 +1721,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_VRR(i915)	(GRAPHICS_VER(i915) >= 12)
 
+#define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
+
 /* Only valid when HAS_DISPLAY() is true */
 #define INTEL_DISPLAY_ENABLED(dev_priv) \
 	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
-- 
2.20.1

