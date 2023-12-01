Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 045D8800652
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Dec 2023 09:54:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F46D10E82A;
	Fri,  1 Dec 2023 08:54:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44BA810E82A
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Dec 2023 08:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701420887; x=1732956887;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=p8wwQ4Pn65yJvCj5QOMiJLkZGijniQ9RRaxmjp1VerM=;
 b=nzDIMOCOhj+wnS6I3TIfInPnAW9o1paA75Skmm4Tm09/6K+kuS48wn1D
 PgTW+PktXTcgjhhzJ2rbAQM/JlLtsU6Wt0fzzFyhQ3Xz6eg+vjElasmwg
 C+kcUS2O29hREJrMD/5+KS9HIBzwMQrvKdU3doMnPdzQK97OvhVF4lmPv
 UGEAwU3tqb27dfPxAiSe1ar3cU8R2Q+7kxvzrz9eSTQ3lz5ej9qDG01EG
 XbtCPagN8eJVvhVxLWn7bkHw+sSnrgDT6Lj8b4gNAifXLNZ7YsiTj6vVX
 uFhq/orD6yiODppsZ+X4jPiE5f6QJBaaWmigcq51+sbcLgPv0PIGTK8jQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="390628935"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="390628935"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2023 00:54:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10910"; a="769613856"
X-IronPort-AV: E=Sophos;i="6.04,241,1695711600"; d="scan'208";a="769613856"
Received: from basicluh01.gar.corp.intel.com (HELO localhost.localdomain)
 ([10.223.131.46])
 by orsmga002.jf.intel.com with ESMTP; 01 Dec 2023 00:54:41 -0800
From: Melanie Lobo <melanie.lobo@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  1 Dec 2023 14:41:33 +0530
Message-Id: <20231201091133.23508-1-melanie.lobo@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231011102356.22014-1-melanie.lobo@intel.com>
References: <20231011102356.22014-1-melanie.lobo@intel.com>
Subject: [Intel-gfx] [PATCH] drm/i915: Support FP16 compressed formats on MTL
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
Cc: juha-pekka.heikkila@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Supports FP16 format which is a binary floating-point computer
number format that occupies 16 bits in computer memory.Platform shall
render compression in display engine to receive FP16 compressed formats.

This kernel change was tested with IGT patch,
https://patchwork.freedesktop.org/patch/562014/

Test-with: 20231011095520.10768-1-melanie.lobo@intel.com

Credits: Juha-Pekka <juha-pekka.heikkila@intel.com>
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Cc: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
Cc: Swati Sharma <swati2.sharma@intel.com>
Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/r/202310150454.S9QF86bl-lkp@intel.com/HEAD detached at 29b1181aa95a
Signed-off-by: Melanie Lobo <melanie.lobo@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c            | 10 ++++++++++
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  2 +-
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index e7678571b0d7..494baf20f76b 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -91,6 +91,8 @@ static const struct drm_format_info gen12_ccs_formats[] = {
 	{ .format = DRM_FORMAT_P016, .num_planes = 4,
 	  .char_per_block = { 2, 4, 1, 1 }, .block_w = { 1, 1, 2, 2 }, .block_h = { 1, 1, 1, 1 },
 	  .hsub = 2, .vsub = 2, .is_yuv = true },
+	{ .format = DRM_FORMAT_XRGB16161616F, .depth = 64, .num_planes = 2,
+	  .char_per_block = { 8, 1}, .block_w = { 1, 4}, .block_h = { 1, 2}, .hsub = 1, .vsub = 1 },
 };
 
 /*
@@ -394,6 +396,9 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
 			       u8 plane_caps,
 			       const struct intel_modifier_desc *md)
 {
+	const struct drm_format_info *info =
+		lookup_format_info(md->formats, md->format_count, DRM_FORMAT_XRGB16161616F);
+
 	if (!IS_DISPLAY_VER(i915, md->display_ver.from, md->display_ver.until))
 		return false;
 
@@ -408,6 +413,11 @@ static bool plane_has_modifier(struct drm_i915_private *i915,
 	    HAS_FLAT_CCS(i915) != !md->ccs.packed_aux_planes)
 		return false;
 
+	/* Check if CSS modifier and FP16 format is supported on different platforms */
+	if (intel_fb_is_ccs_modifier(md->modifier) && info &&
+	    info->format == DRM_FORMAT_XRGB16161616F && DISPLAY_VER(i915) < 14)
+	       return false;
+
 	return true;
 }
 
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 245a64332cc7..f5e9be57a74b 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2091,6 +2091,7 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
 	case DRM_FORMAT_XBGR8888:
 	case DRM_FORMAT_ARGB8888:
 	case DRM_FORMAT_ABGR8888:
+	case DRM_FORMAT_XRGB16161616F:
 		if (intel_fb_is_ccs_modifier(modifier))
 			return true;
 		fallthrough;
@@ -2115,7 +2116,6 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
 	case DRM_FORMAT_C8:
 	case DRM_FORMAT_XBGR16161616F:
 	case DRM_FORMAT_ABGR16161616F:
-	case DRM_FORMAT_XRGB16161616F:
 	case DRM_FORMAT_ARGB16161616F:
 	case DRM_FORMAT_Y210:
 	case DRM_FORMAT_Y212:
-- 
2.17.1

