Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F8767C6536
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Oct 2023 08:13:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E65010E411;
	Thu, 12 Oct 2023 06:13:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEEF410E411
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 06:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697091207; x=1728627207;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=gAVMxM26nb53qFApEmHXqVE/+auyR66kS8BlNEAsVi8=;
 b=BFAb+hkYEZ2VhUd9vSorDriMptCO2By+sTZB7DOHBeLXfs/2Pr3lZQut
 MeP8hg00GLfTRuYydfPiEVF2kXQ62riKawjCj1Svb5DCPpf69H2I48hjG
 2n/f/Fjb8LSf0G6PDKbSu4m50qUCfnrItH8ZFe0jUsdFwjoOfBGfIp07U
 d40OZq8RHpDqcF+JEXlel695joBUkLTUQv3acko9n0A4as3dwZEicaE8C
 7hobjsvX964ochXxAEdyaERASzGFccqmx56eR4so8rLaxiavdp2c+f90c
 CsOrOKLaKQLMJuPnsvaY3KnICs2a1nfILuV2Lfqvv6dRE8x+r2ZhVzzYd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="471097242"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="471097242"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 23:13:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="877986021"
X-IronPort-AV: E=Sophos;i="6.03,218,1694761200"; d="scan'208";a="877986021"
Received: from basicluh01.gar.corp.intel.com (HELO localhost.localdomain)
 ([10.223.131.46])
 by orsmga004.jf.intel.com with ESMTP; 11 Oct 2023 23:13:25 -0700
From: Melanie Lobo <melanie.lobo@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 Oct 2023 11:56:20 +0530
Message-Id: <20231012062620.23886-1-melanie.lobo@intel.com>
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

MTL supports FP16 format which is a binary floating-point computer
number format that occupies 16 bits in computer memory.Platform shall
render compression in display engine to receive FP16 compressed formats.

This kernel change was tested with IGT patch,
https://patchwork.freedesktop.org/patch/562014/

Test-with: 20231011095520.10768-1-melanie.lobo@intel.com

Signed-off-by: Melanie Lobo <melanie.lobo@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c            | 2 ++
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 +---
 2 files changed, 3 insertions(+), 3 deletions(-)

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
index 245a64332cc7..6ec5b96904c3 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2122,9 +2122,7 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
 	case DRM_FORMAT_Y216:
 	case DRM_FORMAT_XVYU12_16161616:
 	case DRM_FORMAT_XVYU16161616:
-		if (!intel_fb_is_ccs_modifier(modifier))
-			return true;
-		fallthrough;
+		return true;
 	default:
 		return false;
 	}
-- 
2.17.1

