Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8250F97BE2F
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:45:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 242B610E5C6;
	Wed, 18 Sep 2024 14:45:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zf9fHniS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46C8D10E5C6
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 14:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670699; x=1758206699;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cDh0M+EQk67qA15wwlwPHOxGiQgm4NHmtBFUx2lPXN8=;
 b=Zf9fHniSLu86lMhXnIsCe5jjiKVjjS2XcAHCCqPCymLvzjCIhUBVIVn9
 NPL6068P/OPSA3sC9j5pT4jjX0wcozt0ns8tRDqunUNMe3b6y9BOSrk+M
 mlFlHOhZLSL0PXdrGjMZQJ8tFqe9GLJKpIOsR8Gk+SibnGpi16SSlLPi4
 /8B2l07BrqwFjFWoVtpsUYQgpumtYIiJXGGetyS64twIvFX9uzVArWCKr
 ssSFxbyANhyupKxs8i5LJQb6DQdu5nsWqGBNffgtynzDXiaE3xJlakriQ
 ITYGu4Ap2f6sf86Rl8bPMaR5fbomjwitaAduNvBn8BFqCvxm5YsZfbCnp g==;
X-CSE-ConnectionGUID: qFSUz2L+SASKVOUrxE9sYg==
X-CSE-MsgGUID: TcVHnr3eQGGbEdRfFipXtA==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="36963605"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="36963605"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:44:59 -0700
X-CSE-ConnectionGUID: ih0soj+oR6iK71RvlkAkRA==
X-CSE-MsgGUID: R0F5F7QhQhG1ncZ1Y0CqTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69711332"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Sep 2024 07:44:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Sep 2024 17:44:56 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 4/7] drm/i915: Enable 10bpc + CCS on ICL
Date: Wed, 18 Sep 2024 17:44:42 +0300
Message-ID: <20240918144445.5716-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
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

ICL also supports compressed 10bpc scanout. Enable it.

v2: Set .depth=30 for all variants to match drm_fourcc.c

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c       |  8 +++
 .../drm/i915/display/skl_universal_plane.c    | 65 +++++++++++++++++++
 2 files changed, 73 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 9b9da4f71f73..83495e165da7 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -45,6 +45,14 @@ static const struct drm_format_info skl_ccs_formats[] = {
 	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, .has_alpha = true, },
 	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
 	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, .has_alpha = true, },
+	{ .format = DRM_FORMAT_XRGB2101010, .depth = 30, .num_planes = 2,
+	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, },
+	{ .format = DRM_FORMAT_XBGR2101010, .depth = 30, .num_planes = 2,
+	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, },
+	{ .format = DRM_FORMAT_ARGB2101010, .depth = 30, .num_planes = 2,
+	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, .has_alpha = true, },
+	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 2,
+	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, .has_alpha = true, },
 };
 
 /*
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 9f34df60b112..8817758ef10d 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2302,6 +2302,60 @@ static bool skl_plane_format_mod_supported(struct drm_plane *_plane,
 	}
 }
 
+static bool icl_plane_format_mod_supported(struct drm_plane *_plane,
+					   u32 format, u64 modifier)
+{
+	struct intel_plane *plane = to_intel_plane(_plane);
+
+	if (!intel_fb_plane_supports_modifier(plane, modifier))
+		return false;
+
+	switch (format) {
+	case DRM_FORMAT_XRGB8888:
+	case DRM_FORMAT_XBGR8888:
+	case DRM_FORMAT_ARGB8888:
+	case DRM_FORMAT_ABGR8888:
+	case DRM_FORMAT_XRGB2101010:
+	case DRM_FORMAT_XBGR2101010:
+	case DRM_FORMAT_ARGB2101010:
+	case DRM_FORMAT_ABGR2101010:
+		if (intel_fb_is_ccs_modifier(modifier))
+			return true;
+		fallthrough;
+	case DRM_FORMAT_RGB565:
+	case DRM_FORMAT_YUYV:
+	case DRM_FORMAT_YVYU:
+	case DRM_FORMAT_UYVY:
+	case DRM_FORMAT_VYUY:
+	case DRM_FORMAT_NV12:
+	case DRM_FORMAT_XYUV8888:
+	case DRM_FORMAT_P010:
+	case DRM_FORMAT_P012:
+	case DRM_FORMAT_P016:
+	case DRM_FORMAT_XVYU2101010:
+		if (modifier == I915_FORMAT_MOD_Yf_TILED)
+			return true;
+		fallthrough;
+	case DRM_FORMAT_C8:
+	case DRM_FORMAT_XBGR16161616F:
+	case DRM_FORMAT_ABGR16161616F:
+	case DRM_FORMAT_XRGB16161616F:
+	case DRM_FORMAT_ARGB16161616F:
+	case DRM_FORMAT_Y210:
+	case DRM_FORMAT_Y212:
+	case DRM_FORMAT_Y216:
+	case DRM_FORMAT_XVYU12_16161616:
+	case DRM_FORMAT_XVYU16161616:
+		if (modifier == DRM_FORMAT_MOD_LINEAR ||
+		    modifier == I915_FORMAT_MOD_X_TILED ||
+		    modifier == I915_FORMAT_MOD_Y_TILED)
+			return true;
+		fallthrough;
+	default:
+		return false;
+	}
+}
+
 static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
 					     u32 format, u64 modifier)
 {
@@ -2363,6 +2417,15 @@ static const struct drm_plane_funcs skl_plane_funcs = {
 	.format_mod_supported = skl_plane_format_mod_supported,
 };
 
+static const struct drm_plane_funcs icl_plane_funcs = {
+	.update_plane = drm_atomic_helper_update_plane,
+	.disable_plane = drm_atomic_helper_disable_plane,
+	.destroy = intel_plane_destroy,
+	.atomic_duplicate_state = intel_plane_duplicate_state,
+	.atomic_destroy_state = intel_plane_destroy_state,
+	.format_mod_supported = icl_plane_format_mod_supported,
+};
+
 static const struct drm_plane_funcs gen12_plane_funcs = {
 	.update_plane = drm_atomic_helper_update_plane,
 	.disable_plane = drm_atomic_helper_disable_plane,
@@ -2542,6 +2605,8 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 
 	if (DISPLAY_VER(dev_priv) >= 12)
 		plane_funcs = &gen12_plane_funcs;
+	else if (DISPLAY_VER(dev_priv) == 11)
+		plane_funcs = &icl_plane_funcs;
 	else
 		plane_funcs = &skl_plane_funcs;
 
-- 
2.44.2

