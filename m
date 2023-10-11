Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 700BB7C4FC1
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 12:11:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D922F10E637;
	Wed, 11 Oct 2023 10:11:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0DB410E638
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 10:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697019076; x=1728555076;
 h=from:to:cc:subject:date:message-id;
 bh=OtQmE2Sryy/b2LgCBrCcL8G6dg1cOMuWWr5q9DsY1eo=;
 b=mk4aqpRHrGgVTOaeS8dcEkQFujwBJtg1GTECAM2rf/27jU/OVqdSI9vU
 1hkmoWXoY9aJCqK5sb4cb8uNbTaApsUzsK5LEG3Gs7sn9788As5Vn6aa5
 DA7JDjDkIrTLfejE10Q7PORbzXyZIm8e7+KFoU0Tjw2VMBxF0mJd0rrZI
 zT1COU5Sdyoie5GJRVLqioE6j05Lt/GtbEfoj9UBcmVGRXZYSULIGG6RH
 bHBOmOBVBBiiIV6Oiq0e5Iibq3UNXT+DK+3NMVKqerae851/vp4rC3Hui
 aP5mOPjKbR1ptsp0xmrNBvc9R/KvokuiA1PeRCmSV5TnQMg9Ts8J7DnEy w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="415671330"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="415671330"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 03:11:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="1085177469"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="1085177469"
Received: from basicluh01.gar.corp.intel.com (HELO localhost.localdomain)
 ([10.223.131.46])
 by fmsmga005.fm.intel.com with ESMTP; 11 Oct 2023 03:11:04 -0700
From: Melanie Lobo <melanie.lobo@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Oct 2023 15:53:56 +0530
Message-Id: <20231011102356.22014-1-melanie.lobo@intel.com>
X-Mailer: git-send-email 2.17.1
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

MTL supports FP16 format which is a binary floating-point computer
number format that occupies 16 bits in computer memory.Platform shall
render compression in display engine to receive FP16 compressed formats.

This kernel change was tested with IGT patch,
https://patchwork.freedesktop.org/patch/562014/

Test-with: 20231011095520.10768-1-melanie.lobo@intel.com

Signed-off-by: Melanie Lobo <melanie.lobo@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c            | 2 ++
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index e7678571b0d7..868cfc75e687 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -91,6 +91,8 @@ static const struct drm_format_info gen12_ccs_formats[] = {
 	{ .format = DRM_FORMAT_P016, .num_planes = 4,
 	  .char_per_block = { 2, 4, 1, 1 }, .block_w = { 1, 1, 2, 2 }, .block_h = { 1, 1, 1, 1 },
 	  .hsub = 2, .vsub = 2, .is_yuv = true },
+	{ .format = DRM_FORMAT_XRGB16161616F, .depth = 64, .num_planes = 2,
+	  .char_per_block = { 4, 1}, .block_w = { 1, 2}, .block_h = { 1, 1}, .hsub = 1, .vsub = 1 },
 };
 
 /*
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 245a64332cc7..64c1d6c2bd76 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2122,8 +2122,7 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
 	case DRM_FORMAT_Y216:
 	case DRM_FORMAT_XVYU12_16161616:
 	case DRM_FORMAT_XVYU16161616:
-		if (!intel_fb_is_ccs_modifier(modifier))
-			return true;
+		return true;
 		fallthrough;
 	default:
 		return false;
-- 
2.17.1

