Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA5091515A
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 17:05:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D0D810E484;
	Mon, 24 Jun 2024 15:05:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D6WGW0Mz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBDB110E4B3
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 15:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719241550; x=1750777550;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JBopUyjTDuom9aJUqzZOphPD86GiKwF5JjKHOMJ/j9E=;
 b=D6WGW0MzNex2QpcHSDdg6JYrX3DsVGO4lA1ADifq/3J3aa+FLvRH/L1x
 sPDxbK/XqcK7GBwJTfwWZGnN3BnHimIIVKXz8R/lBbQ57f3u65GwoOk9z
 C8TEb7VTkbdhkY7QK1QnxzBd+LPo3TjVmw/95eOfLeci18aFOKgINGIyp
 vLTfZD87eJD5s2V9a9FWRYqSRSRfBCptsu45VYoRtdQR0b20jA5Qj/Df/
 JewavpRUnZ1ssG5mdGMm76kYyMF1D2kYNFyOYdJzC5kt+cWLyU8OylGE9
 +kVR6SGg7o168WUe4SNZ3PJJnUce/FVv53kf31DbHTQt11knKdwOE1NoG w==;
X-CSE-ConnectionGUID: MLPPhCSlQdmABQphhKYaOw==
X-CSE-MsgGUID: ydhiymIORFOChLwmzPWgzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="19117863"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="19117863"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 08:05:49 -0700
X-CSE-ConnectionGUID: 810dkiFLQeu+hKAiR2K6Zw==
X-CSE-MsgGUID: Qh6IOi8FRvKa/IHMlWlieQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43298658"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 08:05:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 18:05:47 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/5] drm/i915: Enable 10bpc + CCS on ICL
Date: Mon, 24 Jun 2024 18:05:36 +0300
Message-ID: <20240624150538.24102-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240624150538.24102-1-ville.syrjala@linux.intel.com>
References: <20240624150538.24102-1-ville.syrjala@linux.intel.com>
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

ICL supports 10bpc compressed scanout. Enable it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c       |  8 +++
 .../drm/i915/display/skl_universal_plane.c    | 65 +++++++++++++++++++
 2 files changed, 73 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 43d0574814a6..1376476b7d60 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -44,6 +44,14 @@ static const struct drm_format_info skl_ccs_formats[] = {
 	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, .has_alpha = true, },
 	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
 	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, .has_alpha = true, },
+	{ .format = DRM_FORMAT_XRGB2101010, .depth = 30, .num_planes = 2,
+	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, },
+	{ .format = DRM_FORMAT_XBGR2101010, .depth = 30, .num_planes = 2,
+	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, },
+	{ .format = DRM_FORMAT_ARGB2101010, .depth = 32, .num_planes = 2,
+	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, .has_alpha = true, },
+	{ .format = DRM_FORMAT_ABGR2101010, .depth = 32, .num_planes = 2,
+	  .cpp = { 4, 1, }, .hsub = 8, .vsub = 16, .has_alpha = true, },
 };
 
 /*
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 92e5db82cbd9..c80a89b71ef7 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2301,6 +2301,60 @@ static bool skl_plane_format_mod_supported(struct drm_plane *_plane,
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
@@ -2362,6 +2416,15 @@ static const struct drm_plane_funcs skl_plane_funcs = {
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
@@ -2538,6 +2601,8 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
 
 	if (DISPLAY_VER(dev_priv) >= 12)
 		plane_funcs = &gen12_plane_funcs;
+	else if (DISPLAY_VER(dev_priv) == 11)
+		plane_funcs = &icl_plane_funcs;
 	else
 		plane_funcs = &skl_plane_funcs;
 
-- 
2.44.2

