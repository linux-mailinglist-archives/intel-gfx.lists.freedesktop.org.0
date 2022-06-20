Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50882551338
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:49:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4156610E5CD;
	Mon, 20 Jun 2022 08:49:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BBD210E5CF
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655714984; x=1687250984;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=c6bvfLIfOpNvwo91cWp6VgZ0hsVfTNmhQPK2eAz4+XY=;
 b=E989I7M/EsiHuA/LiYHkGYAvvfCdfmJ/y1KXsrhoPtFZN0gb/YM7m82t
 MOWyHOTFDl41O1s1yjQq5sPFWAzcsa+Lv0CIqKyUqgRvfrLJKXYAxHFNh
 gnUmRKpKe7hP7aT8VJpNcDzpYUWmhSxZ1sLklQeE389K9PQhGBv/3AbNe
 ulp3nXb568DzsEVCIfswYWhmonK6KsO/+XT9sEjqdc4RcWVZDAWVsOrUJ
 6Y+tFOom/75TrVg/0TOt3qpXVhwLyHr74gsGSp1ZPEX4gxVmVSsqbStN9
 25+ju7OqXSgeYpK551DeQDVdCw0oHV1aHbJ2xDIs7VvJK7TwLIOSxODee w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="280897616"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="280897616"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:49:43 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="833015509"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:49:39 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Jun 2022 11:49:30 +0300
Message-Id: <b5b0abf35bb84c222d3dbc15eb03ada886447ed8.1655712106.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1655712106.git.jani.nikula@intel.com>
References: <cover.1655712106.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/16] drm/i915: move graphics.ver and
 graphics.rel to runtime info
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If it's	modified runtime, it's runtime info.

mock_gem_device() is the only one that modifies them. If that could be
fixed, we wouldn't have to do this.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h                  |  6 +++---
 drivers/gpu/drm/i915/i915_pci.c                  | 12 ++++++------
 drivers/gpu/drm/i915/intel_device_info.c         |  8 ++++----
 drivers/gpu/drm/i915/intel_device_info.h         |  3 ++-
 drivers/gpu/drm/i915/selftests/mock_gem_device.c |  2 +-
 5 files changed, 16 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 6ad71a859cd5..1343350b4dfc 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -856,9 +856,9 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
 
 #define IP_VER(ver, rel)		((ver) << 8 | (rel))
 
-#define GRAPHICS_VER(i915)		(INTEL_INFO(i915)->graphics.ver)
-#define GRAPHICS_VER_FULL(i915)		IP_VER(INTEL_INFO(i915)->graphics.ver, \
-					       INTEL_INFO(i915)->graphics.rel)
+#define GRAPHICS_VER(i915)		(RUNTIME_INFO(i915)->graphics.ver)
+#define GRAPHICS_VER_FULL(i915)		IP_VER(RUNTIME_INFO(i915)->graphics.ver, \
+					       RUNTIME_INFO(i915)->graphics.rel)
 #define IS_GRAPHICS_VER(i915, from, until) \
 	(GRAPHICS_VER(i915) >= (from) && GRAPHICS_VER(i915) <= (until))
 
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 64794063860c..1a75acfd1fc1 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -33,7 +33,7 @@
 
 #define PLATFORM(x) .platform = (x)
 #define GEN(x) \
-	.graphics.ver = (x), \
+	.__runtime.graphics.ver = (x), \
 	.media.ver = (x), \
 	.display.ver = (x)
 
@@ -915,7 +915,7 @@ static const struct intel_device_info rkl_info = {
 static const struct intel_device_info dg1_info = {
 	GEN12_FEATURES,
 	DGFX_FEATURES,
-	.graphics.rel = 10,
+	.__runtime.graphics.rel = 10,
 	PLATFORM(INTEL_DG1),
 	.display.pipe_mask = BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C) | BIT(PIPE_D),
 	.require_force_probe = 1,
@@ -1009,8 +1009,8 @@ static const struct intel_device_info adl_p_info = {
 		I915_GTT_PAGE_SIZE_2M
 
 #define XE_HP_FEATURES \
-	.graphics.ver = 12, \
-	.graphics.rel = 50, \
+	.__runtime.graphics.ver = 12, \
+	.__runtime.graphics.rel = 50, \
 	XE_HP_PAGE_SIZES, \
 	.dma_mask_size = 46, \
 	.has_3d_pipeline = 1, \
@@ -1056,7 +1056,7 @@ static const struct intel_device_info xehpsdv_info = {
 	XE_HP_FEATURES, \
 	XE_HPM_FEATURES, \
 	DGFX_FEATURES, \
-	.graphics.rel = 55, \
+	.__runtime.graphics.rel = 55, \
 	.media.rel = 55, \
 	PLATFORM(INTEL_DG2), \
 	.has_4tile = 1, \
@@ -1099,7 +1099,7 @@ static const struct intel_device_info pvc_info = {
 	XE_HPC_FEATURES,
 	XE_HPM_FEATURES,
 	DGFX_FEATURES,
-	.graphics.rel = 60,
+	.__runtime.graphics.rel = 60,
 	.media.rel = 60,
 	PLATFORM(INTEL_PONTEVECCHIO),
 	.display = { 0 },
diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index f9280f6f66d2..43fefcc52ef1 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -91,11 +91,11 @@ void intel_device_info_print(const struct intel_device_info *info,
 			     const struct intel_runtime_info *runtime,
 			     struct drm_printer *p)
 {
-	if (info->graphics.rel)
-		drm_printf(p, "graphics version: %u.%02u\n", info->graphics.ver,
-			   info->graphics.rel);
+	if (runtime->graphics.rel)
+		drm_printf(p, "graphics version: %u.%02u\n", runtime->graphics.ver,
+			   runtime->graphics.rel);
 	else
-		drm_printf(p, "graphics version: %u\n", info->graphics.ver);
+		drm_printf(p, "graphics version: %u\n", runtime->graphics.ver);
 
 	if (info->media.rel)
 		drm_printf(p, "media version: %u.%02u\n", info->media.ver, info->media.rel);
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index 8724621944a9..c354afd1c842 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -197,6 +197,8 @@ struct ip_version {
 };
 
 struct intel_runtime_info {
+	struct ip_version graphics;
+
 	/*
 	 * Platform mask is used for optimizing or-ed IS_PLATFORM calls into
 	 * into single runtime conditionals, and also to provide groundwork
@@ -234,7 +236,6 @@ struct intel_runtime_info {
 };
 
 struct intel_device_info {
-	struct ip_version graphics;
 	struct ip_version media;
 
 	enum intel_platform platform;
diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
index 207e6996f423..f5904e659ef2 100644
--- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
+++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
@@ -172,7 +172,7 @@ struct drm_i915_private *mock_gem_device(void)
 	/* Using the global GTT may ask questions about KMS users, so prepare */
 	drm_mode_config_init(&i915->drm);
 
-	mkwrite_device_info(i915)->graphics.ver = -1;
+	RUNTIME_INFO(i915)->graphics.ver = -1;
 
 	RUNTIME_INFO(i915)->page_sizes =
 		I915_GTT_PAGE_SIZE_4K |
-- 
2.30.2

