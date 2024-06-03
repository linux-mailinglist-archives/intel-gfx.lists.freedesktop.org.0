Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 333808D7D71
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 10:35:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D51E810E123;
	Mon,  3 Jun 2024 08:35:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gohKqNeB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 801B310E123
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 08:35:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717403725; x=1748939725;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=bDiPg/ZHawnv//Bx2bSI5TuMndynePNIAqSs7DgTD80=;
 b=gohKqNeBM9BSr5h5KXq0MLBUTPWpBQgBYnKcecXU2/TlKyzwqLlAappx
 USr8HuQuhDA+yqPvAiU8wa9fhoqZC+DJlzD12X9fh+ZdV8z37fWgxVVqW
 FYalbhD3jo06BxxK0pXSOOlfBfv5E3YWjRL6dBMknv2yAsgx9bwT9OIKa
 U3QPU9TVdtS2BR74TFR7EGhEl7V1y6WCn1rVFizpY4F95QvABH1coWaVS
 A7IFHpOFuLHwd2p/sU8bLIP46hRIqi62kpawJE2WT9YhZ79TnnJUDnPwG
 s59t/KXU/62J3ZeM9VZdoPc7wU5O4HghBOsV7EySe2/ffDo5/9vW8yaAl Q==;
X-CSE-ConnectionGUID: WICJOVGmS66Wci84Z8MCyA==
X-CSE-MsgGUID: Aww1wJXFS2Oc/JvqzsWBRQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11091"; a="25288762"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="25288762"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 01:35:18 -0700
X-CSE-ConnectionGUID: PRM0jrTaQuyYmP7hQOETNQ==
X-CSE-MsgGUID: mvQPm/StTz2owxF2Aoi7RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="36814879"
Received: from basicluh01.gar.corp.intel.com (HELO localhost.localdomain)
 ([10.223.131.46])
 by fmviesa006.fm.intel.com with ESMTP; 03 Jun 2024 01:35:16 -0700
From: Melanie Lobo <melanie.lobo@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: juha-pekka.heikkila@intel.com, swati2.sharma@intel.com,
 bhanuprakash.modem@intel.com, vidya.srinivas@intel.com,
 Melanie Lobo <melanie.lobo@intel.com>,
 Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH] drm/i915: Support RGB16161616_64B compressed formats
Date: Mon,  3 Jun 2024 14:17:45 +0530
Message-Id: <20240603084745.1881-1-melanie.lobo@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231011102356.22014-1-melanie.lobo@intel.com>
References: <20231011102356.22014-1-melanie.lobo@intel.com>
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

Add support for a RGB64(FP16) format where each color component is a
16-bit floating point value. FP16 format which is a binary
floating-point computer number format that occupies 16 bits in computer
memory. Platform shall render compression in display engine to receive
FP16 compressed formats.

This kernel change was tested with IGT patch,
https://patchwork.freedesktop.org/series/134353/
https://lore.kernel.org/all/20240603081607.30930-1-melanie.lobo@intel.com/

Test-with: 20240603081607.30930-1-melanie.lobo@intel.com

Credits: Juha-Pekka <juha-pekka.heikkila@intel.com>
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
Cc: Swati Sharma <swati2.sharma@intel.com>
Signed-off-by: Melanie Lobo <melanie.lobo@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c        | 18 ++++++++++++++++++
 .../gpu/drm/i915/display/skl_universal_plane.c |  4 ++--
 2 files changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index b6638726949d..88b8489f4ed2 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -91,6 +91,11 @@ static const struct drm_format_info gen12_ccs_formats[] = {
 	{ .format = DRM_FORMAT_P016, .num_planes = 4,
 	  .char_per_block = { 2, 4, 1, 1 }, .block_w = { 1, 1, 2, 2 }, .block_h = { 1, 1, 1, 1 },
 	  .hsub = 2, .vsub = 2, .is_yuv = true },
+	{ .format = DRM_FORMAT_XRGB16161616F, .depth = 64, .num_planes = 2,
+	  .char_per_block = { 8, 1}, .block_w = { 1, 4}, .block_h = { 1, 2}, .hsub = 1, .vsub = 1},
+	{ .format = DRM_FORMAT_ARGB16161616F, .depth = 64, .num_planes = 2,
+	  .char_per_block = { 8, 1}, .block_w = { 1, 4}, .block_h = { 1, 2},
+	  .hsub = 1, .vsub = 1, .has_alpha = true},
 };
 
 /*
@@ -421,6 +426,8 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
 			       u8 plane_caps,
 			       const struct intel_modifier_desc *md)
 {
+	const struct drm_format_info *info;
+
 	if (!IS_DISPLAY_VER(i915, md->display_ver.from, md->display_ver.until))
 		return false;
 
@@ -435,6 +442,17 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
 	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
 		return false;
 
+	/* Check if CSS modifier and FP16 format is supported on different platforms */
+	info = lookup_format_info(md->formats, md->format_count, DRM_FORMAT_XRGB16161616F);
+	if (intel_fb_is_ccs_modifier(md->modifier) && info &&
+	    info->format == DRM_FORMAT_XRGB16161616F && DISPLAY_VER(i915) < 12)
+	       return false;
+
+	info = lookup_format_info(md->formats, md->format_count, DRM_FORMAT_ARGB16161616F);
+	if (intel_fb_is_ccs_modifier(md->modifier) && info &&
+	    info->format == DRM_FORMAT_ARGB16161616F && DISPLAY_VER(i915) < 12)
+		return false;
+
 	return true;
 }
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index b7678b8a7f3d..9255affed543 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2184,6 +2184,8 @@ static bool skl_plane_format_mod_supported(struct drm_plane *_plane,
 	case DRM_FORMAT_XBGR8888:
 	case DRM_FORMAT_ARGB8888:
 	case DRM_FORMAT_ABGR8888:
+	case DRM_FORMAT_XRGB16161616F:
+	case DRM_FORMAT_ARGB16161616F:
 		if (intel_fb_is_ccs_modifier(modifier))
 			return true;
 		fallthrough;
@@ -2208,8 +2210,6 @@ static bool skl_plane_format_mod_supported(struct drm_plane *_plane,
 	case DRM_FORMAT_C8:
 	case DRM_FORMAT_XBGR16161616F:
 	case DRM_FORMAT_ABGR16161616F:
-	case DRM_FORMAT_XRGB16161616F:
-	case DRM_FORMAT_ARGB16161616F:
 	case DRM_FORMAT_Y210:
 	case DRM_FORMAT_Y212:
 	case DRM_FORMAT_Y216:
-- 
2.17.1

