Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EF797BE2E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:44:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2F3710E5C4;
	Wed, 18 Sep 2024 14:44:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GrwvCeyg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 876F110E5C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 14:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670697; x=1758206697;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=VeOGWxc1FrZL7Jws55bKrP0RdxKMd5Cz6ALp2f0drjg=;
 b=GrwvCeygi/WU8oSv09lyO9J/9b2UBKSjeUjXBv3uzfau66/vze1aC4GS
 M1UN2xrMBg+bNBoOTkh5NI1xSar87HIvF+JyRSMAahibGYtFO0w/wgE7j
 yTcMugcPfH9gMPQdmCakpjRCARlSw5F30qeTEN1GuMVUgFbS0yQ2HNm0l
 j7klbf9X2vt7kFaSVR0yaeZOB2vKX9DvBvLljZ0VqivxxH6qZZk0WRLEv
 KZj980JNUS3ZTb7EG77ov+sIVbZeKjmLqNwgr7eOdHXpidIJpuXpBDW74
 7yfqcp9gyuXBBI5wOWrdhx1JSLeKe+pMvfd7vflrp53Rkx0rNo8n71TlH w==;
X-CSE-ConnectionGUID: o/dBp3mKT7GcbdkoBgwTYQ==
X-CSE-MsgGUID: qijc+hgURAi4KdqlRrpiKQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="36963603"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="36963603"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:44:57 -0700
X-CSE-ConnectionGUID: 6t3tF5T5TRGGcX7aDR/qXw==
X-CSE-MsgGUID: 32hKI0g7TACj6iv2BeQdow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69711331"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Sep 2024 07:44:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Sep 2024 17:44:53 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/7] drm/i915: Enable 10bpc + CCS on TGL+
Date: Wed, 18 Sep 2024 17:44:41 +0300
Message-ID: <20240918144445.5716-4-ville.syrjala@linux.intel.com>
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

TGL+ support 10bpc compressed scanout. Enable it.

v2: Set .depth=30 for all variants to match drm_fourcc.c
    Set clear color block size to 0x0

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c       | 36 +++++++++++++++++++
 .../drm/i915/display/skl_universal_plane.c    |  8 ++---
 2 files changed, 40 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index bcf0d016f499..9b9da4f71f73 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -67,6 +67,18 @@ static const struct drm_format_info gen12_ccs_formats[] = {
 	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
 	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
 	  .hsub = 1, .vsub = 1, .has_alpha = true },
+	{ .format = DRM_FORMAT_XRGB2101010, .depth = 30, .num_planes = 2,
+	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_XBGR2101010, .depth = 30, .num_planes = 2,
+	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_ARGB2101010, .depth = 30, .num_planes = 2,
+	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
+	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 2,
+	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
 	{ .format = DRM_FORMAT_YUYV, .num_planes = 2,
 	  .char_per_block = { 2, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
 	  .hsub = 2, .vsub = 1, .is_yuv = true },
@@ -113,6 +125,18 @@ static const struct drm_format_info gen12_ccs_cc_formats[] = {
 	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 3,
 	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
 	  .hsub = 1, .vsub = 1, .has_alpha = true },
+	{ .format = DRM_FORMAT_XRGB2101010, .depth = 30, .num_planes = 3,
+	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_XBGR2101010, .depth = 30, .num_planes = 3,
+	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_ARGB2101010, .depth = 30, .num_planes = 3,
+	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
+	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 3,
+	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
 };
 
 static const struct drm_format_info gen12_flat_ccs_cc_formats[] = {
@@ -128,6 +152,18 @@ static const struct drm_format_info gen12_flat_ccs_cc_formats[] = {
 	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
 	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
 	  .hsub = 1, .vsub = 1, .has_alpha = true },
+	{ .format = DRM_FORMAT_XRGB2101010, .depth = 30, .num_planes = 2,
+	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_XBGR2101010, .depth = 30, .num_planes = 2,
+	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_ARGB2101010, .depth = 30, .num_planes = 2,
+	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
+	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 2,
+	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
 };
 
 struct intel_modifier_desc {
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 17d4c880ecc4..9f34df60b112 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2315,6 +2315,10 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
 	case DRM_FORMAT_XBGR8888:
 	case DRM_FORMAT_ARGB8888:
 	case DRM_FORMAT_ABGR8888:
+	case DRM_FORMAT_XRGB2101010:
+	case DRM_FORMAT_XBGR2101010:
+	case DRM_FORMAT_ARGB2101010:
+	case DRM_FORMAT_ABGR2101010:
 		if (intel_fb_is_ccs_modifier(modifier))
 			return true;
 		fallthrough;
@@ -2331,10 +2335,6 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
 			return true;
 		fallthrough;
 	case DRM_FORMAT_RGB565:
-	case DRM_FORMAT_XRGB2101010:
-	case DRM_FORMAT_XBGR2101010:
-	case DRM_FORMAT_ARGB2101010:
-	case DRM_FORMAT_ABGR2101010:
 	case DRM_FORMAT_XVYU2101010:
 	case DRM_FORMAT_C8:
 	case DRM_FORMAT_XBGR16161616F:
-- 
2.44.2

