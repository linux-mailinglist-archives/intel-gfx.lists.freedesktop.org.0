Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45009915159
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 17:05:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05F9210E49A;
	Mon, 24 Jun 2024 15:05:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MT+hhdjv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 268C310E480
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 15:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719241547; x=1750777547;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ohFsY/cLW7o6pMQ8dwfmL2AJbtHYttGjRGn/JQolYhE=;
 b=MT+hhdjvjtEAGa4WXOnrcKZZOXnmi7l/Li6mRI+r6rwrrNT8snTrZTkx
 4fjBDhAc9fvuXOS6yBzCjyYxjeJ7cAM3IH9GVX0CZwcNhM6eXbE8MYx8d
 O6cL+Ay8Oo0DMKK8R5vRnoxI2n/On/cRL24tipmNwRrSq6H2RCTZrrAzw
 qpijrWUTvatKAnGCYPi4t/shFCWUnMDUZumnZTHeVxZgO3QogeQMJGAlk
 eTYGgcKY564m5ZqaI0cYiG1OM7kxmUV5OOP6bw6W5P4mqG0n6adk3WSPI
 LbKtV9uOwupLi0Xzw0muXpxod7oK9qQsDt284QdK5XSLpW7L1948YtRjL g==;
X-CSE-ConnectionGUID: 0kiwh6SYRZin7NFt6H3VlQ==
X-CSE-MsgGUID: QS3cmweURDqfxt14p4ICCw==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="19117854"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="19117854"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 08:05:47 -0700
X-CSE-ConnectionGUID: WKcAuk0fQ8eqBpMC3bXKUw==
X-CSE-MsgGUID: IC5zy7B8RmSgDY6QAP9Y/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43298641"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 08:05:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 18:05:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 2/5] drm/i915: Expose CCS for 10bpc RGB formats on TGL+
Date: Mon, 24 Jun 2024 18:05:35 +0300
Message-ID: <20240624150538.24102-3-ville.syrjala@linux.intel.com>
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

CCS + 10bpc formats has been a thing for a while now. Expose it
it on TGL+.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c       | 36 +++++++++++++++++++
 .../drm/i915/display/skl_universal_plane.c    |  8 ++---
 2 files changed, 40 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index f23547a88b1f..43d0574814a6 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -66,6 +66,18 @@ static const struct drm_format_info gen12_ccs_formats[] = {
 	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
 	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
 	  .hsub = 1, .vsub = 1, .has_alpha = true },
+	{ .format = DRM_FORMAT_XRGB2101010, .depth = 30, .num_planes = 2,
+	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_XBGR2101010, .depth = 30, .num_planes = 2,
+	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_ARGB2101010, .depth = 32, .num_planes = 2,
+	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
+	{ .format = DRM_FORMAT_ABGR2101010, .depth = 32, .num_planes = 2,
+	  .char_per_block = { 4, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
 	{ .format = DRM_FORMAT_YUYV, .num_planes = 2,
 	  .char_per_block = { 2, 1 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
 	  .hsub = 2, .vsub = 1, .is_yuv = true },
@@ -112,6 +124,18 @@ static const struct drm_format_info gen12_ccs_cc_formats[] = {
 	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 3,
 	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
 	  .hsub = 1, .vsub = 1, .has_alpha = true },
+	{ .format = DRM_FORMAT_XRGB2101010, .depth = 30, .num_planes = 3,
+	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_XBGR2101010, .depth = 30, .num_planes = 3,
+	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_ARGB2101010, .depth = 32, .num_planes = 3,
+	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
+	{ .format = DRM_FORMAT_ABGR2101010, .depth = 32, .num_planes = 3,
+	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
 };
 
 static const struct drm_format_info gen12_flat_ccs_cc_formats[] = {
@@ -127,6 +151,18 @@ static const struct drm_format_info gen12_flat_ccs_cc_formats[] = {
 	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
 	  .char_per_block = { 4, 0 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
 	  .hsub = 1, .vsub = 1, .has_alpha = true },
+	{ .format = DRM_FORMAT_XRGB2101010, .depth = 30, .num_planes = 2,
+	  .char_per_block = { 4, 0 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_XBGR2101010, .depth = 30, .num_planes = 2,
+	  .char_per_block = { 4, 0 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
+	  .hsub = 1, .vsub = 1, },
+	{ .format = DRM_FORMAT_ARGB2101010, .depth = 32, .num_planes = 2,
+	  .char_per_block = { 4, 0 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
+	{ .format = DRM_FORMAT_ABGR2101010, .depth = 32, .num_planes = 2,
+	  .char_per_block = { 4, 0 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
+	  .hsub = 1, .vsub = 1, .has_alpha = true },
 };
 
 struct intel_modifier_desc {
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index ba5a628b4757..92e5db82cbd9 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2314,6 +2314,10 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
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
@@ -2330,10 +2334,6 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
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

