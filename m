Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A54C7D2DC5
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 11:11:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7576610E1A7;
	Mon, 23 Oct 2023 09:11:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C12510E19E
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 09:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698052309; x=1729588309;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=EKczvGHE5NJfvIcNO/D6C9YfjZrB+nz5OdaA0ttfhTM=;
 b=Es2FD4iUFz5DzDoUHfD7+L3VpMGcd1VXGmx4cNSU8nrzMvQcxZ6i6eg7
 sjsThnOMZRzmtW4MDY87FAnZFru9s6BE4hfKA6lgKB1cHPkNY7CRgFBf+
 Ly+H3sH+nB34dscExEtRrEQ01vh9W7LoZ0gkWxkSP2EEzh8uEgouSKJ9x
 uttBxAnrtj6c5UsV+EiRx1PYyP2Nib7s+3qB50U5voI2ZeUwbu2FUf29O
 0SGGNstZoLRShAd4lDLU4WOV2+k1NI3ajORJgZmtdXPKX+5g0vqezt13T
 4rA7AXUSjfWgBcEkW/I37O7fpCqq2GyYOeKh7fzk+BPFFgVQkg+ShOnaP w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="473013556"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="473013556"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 02:11:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="761680203"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="761680203"
Received: from basicluh01.gar.corp.intel.com (HELO localhost.localdomain)
 ([10.223.131.46])
 by fmsmga007.fm.intel.com with ESMTP; 23 Oct 2023 02:11:47 -0700
From: Melanie Lobo <melanie.lobo@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 23 Oct 2023 14:55:37 +0530
Message-Id: <20231023092537.19608-1-melanie.lobo@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20231012062620.23886-1-melanie.lobo@intel.com>
References: <20231012062620.23886-1-melanie.lobo@intel.com>
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

Credits: Juha-Pekka <juha-pekka.heikkila@intel.com>
Signed-off-by: Melanie Lobo <melanie.lobo@intel.com>
Reported-by: kernel test robot <lkp@intel.com>
Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
Closes: https://lore.kernel.org/r/202310150454.S9QF86bl-lkp@intel.com/

---
 drivers/gpu/drm/i915/display/intel_fb.c            | 2 ++
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 +---
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index e7678571b0d7..d48f0daf89e7 100644
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

