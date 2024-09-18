Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6598297BE30
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:45:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0066210E5C8;
	Wed, 18 Sep 2024 14:45:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UBHTsUWz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2185310E5CE
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 14:45:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670702; x=1758206702;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=I2MvHBZNGqBHdCi9gzHQXA/k2IPwVrMtl5msyG5qACs=;
 b=UBHTsUWzJFCXRBP9Qy6QCO9MjtrtVxEkAvsGPwBcIGVsME3Km3C1HN29
 ejl++T5cEmiJa7UnWOu/Dhsx1+qIaXDVkNS/iUTm38Bsmccn1Jy4aSwVC
 eg7IoimhswEBXYbTeWYyh8kHgYW9cKMXVulncyJAkV50OQkxJNbX3lQw3
 wEywhpkLY0jbAs6ifbLcX9ryMYtf+OwZyt/s0fvp337w2KM2/Dv4guJYd
 3OxeACoqxCUk++v/bpVGvoxkEdDzp2KwNkd+OPqvCaxotMrTvVheBiqdn
 eymXz8TEJB5xPHz8X+L3dPxBIFJ2p5YwMAYCh1R1nFPo7zAPgjDoK4BRG A==;
X-CSE-ConnectionGUID: n73Cl2xZT6+3ia+5F+K6ig==
X-CSE-MsgGUID: QBEhbwQVRpWsy9smM0Bt/Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="36963610"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="36963610"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:45:02 -0700
X-CSE-ConnectionGUID: EiabAqIISNu0Rn+HPXlkjw==
X-CSE-MsgGUID: JZRqIsNsS6eqD0XokLewzA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69711333"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Sep 2024 07:45:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Sep 2024 17:44:59 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 5/7] drm/i915: Enable fp16 + CCS on TGL+
Date: Wed, 18 Sep 2024 17:44:43 +0300
Message-ID: <20240918144445.5716-6-ville.syrjala@linux.intel.com>
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

TGL+ support compressed fp16 scanout. Enable it.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c       | 36 +++++++++++++++++++
 .../drm/i915/display/skl_universal_plane.c    |  8 ++---
 2 files changed, 40 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index 83495e165da7..2d384092416e 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -87,6 +87,18 @@ static const struct drm_format_info gen12_ccs_formats[] = {
 	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 2,
 	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
 	  .hsub = 1, .vsub = 1, .has_alpha = true },
+	{ .format = DRM_FORMAT_XRGB16161616F, .depth = 0, .num_planes = 2,
+	  .char_per_block = { 8, 1 }, .block_w = { 1, 1 }, .block_h = { 1, 1 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_XBGR16161616F, .depth = 0, .num_planes = 2,
+	  .char_per_block = { 8, 1 }, .block_w = { 1, 1 }, .block_h = { 1, 1 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_ARGB16161616F, .depth = 0, .num_planes = 2,
+	  .char_per_block = { 8, 1 }, .block_w = { 1, 1 }, .block_h = { 1, 1 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
+	{ .format = DRM_FORMAT_ABGR16161616F, .depth = 0, .num_planes = 2,
+	  .char_per_block = { 8, 1 }, .block_w = { 1, 1 }, .block_h = { 1, 1 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
 	{ .format = DRM_FORMAT_YUYV, .num_planes = 2,
 	  .char_per_block = { 2, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
 	  .hsub = 2, .vsub = 1, .is_yuv = true },
@@ -145,6 +157,18 @@ static const struct drm_format_info gen12_ccs_cc_formats[] = {
 	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 3,
 	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
 	  .hsub = 1, .vsub = 1, .has_alpha = true },
+	{ .format = DRM_FORMAT_XRGB16161616F, .depth = 0, .num_planes = 3,
+	  .char_per_block = { 8, 1, 0 }, .block_w = { 1, 1, 0 }, .block_h = { 1, 1, 0 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_XBGR16161616F, .depth = 0, .num_planes = 3,
+	  .char_per_block = { 8, 1, 0 }, .block_w = { 1, 1, 0 }, .block_h = { 1, 1, 0 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_ARGB16161616F, .depth = 0, .num_planes = 3,
+	  .char_per_block = { 8, 1, 0 }, .block_w = { 1, 1, 0 }, .block_h = { 1, 1, 0 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
+	{ .format = DRM_FORMAT_ABGR16161616F, .depth = 0, .num_planes = 3,
+	  .char_per_block = { 8, 1, 0 }, .block_w = { 1, 1, 0 }, .block_h = { 1, 1, 0 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
 };
 
 static const struct drm_format_info gen12_flat_ccs_cc_formats[] = {
@@ -172,6 +196,18 @@ static const struct drm_format_info gen12_flat_ccs_cc_formats[] = {
 	{ .format = DRM_FORMAT_ABGR2101010, .depth = 30, .num_planes = 2,
 	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
 	  .hsub = 1, .vsub = 1, .has_alpha = true },
+	{ .format = DRM_FORMAT_XRGB16161616F, .depth = 0, .num_planes = 2,
+	  .char_per_block = { 8, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_XBGR16161616F, .depth = 0, .num_planes = 2,
+	  .char_per_block = { 8, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_ARGB16161616F, .depth = 0, .num_planes = 2,
+	  .char_per_block = { 8, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
+	{ .format = DRM_FORMAT_ABGR16161616F, .depth = 0, .num_planes = 2,
+	  .char_per_block = { 8, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
 };
 
 struct intel_modifier_desc {
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 8817758ef10d..afaa92a6d91c 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2373,6 +2373,10 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
 	case DRM_FORMAT_XBGR2101010:
 	case DRM_FORMAT_ARGB2101010:
 	case DRM_FORMAT_ABGR2101010:
+	case DRM_FORMAT_XBGR16161616F:
+	case DRM_FORMAT_ABGR16161616F:
+	case DRM_FORMAT_XRGB16161616F:
+	case DRM_FORMAT_ARGB16161616F:
 		if (intel_fb_is_ccs_modifier(modifier))
 			return true;
 		fallthrough;
@@ -2391,10 +2395,6 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
 	case DRM_FORMAT_RGB565:
 	case DRM_FORMAT_XVYU2101010:
 	case DRM_FORMAT_C8:
-	case DRM_FORMAT_XBGR16161616F:
-	case DRM_FORMAT_ABGR16161616F:
-	case DRM_FORMAT_XRGB16161616F:
-	case DRM_FORMAT_ARGB16161616F:
 	case DRM_FORMAT_Y210:
 	case DRM_FORMAT_Y212:
 	case DRM_FORMAT_Y216:
-- 
2.44.2

