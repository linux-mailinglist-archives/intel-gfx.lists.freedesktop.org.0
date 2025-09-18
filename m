Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8FA8B83917
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 10:41:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CDCE10E67F;
	Thu, 18 Sep 2025 08:41:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bD4izzBB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8614E10E67E;
 Thu, 18 Sep 2025 08:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758184873; x=1789720873;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=7RagO20bNd6mZ8XMRDpqaZzPkXWVGdGNVHi9JTK6qLQ=;
 b=bD4izzBBkJ9szfiomelSZak+sypN4EzBX2B8sJFn03aN1fkuoZ2qntn1
 j2LQWJ51gnsYBAhngvTwaGGFGGeVh729MfCnLOi+jYtV7OdWLyQuNOZ8d
 DCnb47WO3kik23Fhn4vgdRhQE4Vc2yFOujeR7aI+dzE7UiXauf6VH2G7V
 opuxwl0pJJ7UM5S0HW1XLN8FA6uAHq8qLpwM0z090V42hs0nXRrUYs1HE
 LuA20Jcp91NiFTv/6c9cLnOJOFj8fjlF+kMAUw9EjazRPhdqWIvM/pMk1
 x1Di7EmM5CTbF+LaJTKkMKlX4mxYqoCYqyVL01VGaalu9Px7qHW60+kKR A==;
X-CSE-ConnectionGUID: pNtcVwA/Tlyt2F0NcanFBQ==
X-CSE-MsgGUID: sM9XgWuORuS+Os4ozeNtBw==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="71932916"
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="71932916"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:13 -0700
X-CSE-ConnectionGUID: MoyJhurkSHmwH3fRWjDRAg==
X-CSE-MsgGUID: by9CS5ehTuuLcwXw2Rnw5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,274,1751266800"; d="scan'208";a="174760685"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.185])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 01:41:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 01/10] drm/xe/fbdev: use the same 64-byte stride alignment
 as i915
Date: Thu, 18 Sep 2025 11:40:51 +0300
Message-ID: <7f4972104de8b179d5724ae83892ee294d3f3fd3.1758184771.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1758184771.git.jani.nikula@intel.com>
References: <cover.1758184771.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

For reasons unknown, xe uses XE_PAGE_SIZE alignment for
stride. Presumably it's just a confusion between stride alignment and bo
allocation size alignment. Switch to 64 byte alignment to, uh, align
with i915.

This will also be helpful in deduplicating and unifying the xe and i915
framebuffer allocation.

Link: https://lore.kernel.org/r/aLqsC87Ol_zCXOkN@intel.com
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/intel_fbdev_fb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
index 8ea9a472113c..bce4cb16f682 100644
--- a/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
+++ b/drivers/gpu/drm/xe/display/intel_fbdev_fb.c
@@ -33,7 +33,7 @@ struct intel_framebuffer *intel_fbdev_fb_alloc(struct drm_fb_helper *helper,
 	mode_cmd.height = sizes->surface_height;
 
 	mode_cmd.pitches[0] = ALIGN(mode_cmd.width *
-				    DIV_ROUND_UP(sizes->surface_bpp, 8), XE_PAGE_SIZE);
+				    DIV_ROUND_UP(sizes->surface_bpp, 8), 64);
 	mode_cmd.pixel_format = drm_mode_legacy_fb_format(sizes->surface_bpp,
 							  sizes->surface_depth);
 
-- 
2.47.3

