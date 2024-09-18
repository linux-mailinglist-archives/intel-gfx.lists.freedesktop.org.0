Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9854D97BE2C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2024 16:44:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35F0C10E5B8;
	Wed, 18 Sep 2024 14:44:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SLOCm0wY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C96310E5C4
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2024 14:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726670691; x=1758206691;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=guCDQAszplc3zRkYdlbF8LgY1pMdFQ8ota/wdYXTonM=;
 b=SLOCm0wYj7Dx7wyyQjpA5wuUe7+6bGCPyU8a3z9/TWvQgMFCZsVs0tqu
 ZCpX5d5wHRkEZWUi9ey+ktIopvy2kkZ7/d3vCnmVKH/vflLV58C3Xawao
 Iy9ja376A9sPCGvuACRjyKTcdjorNPXvKttjjDUKHmsJQrypzUfgloz2+
 0P0iDvsbqsMU8oKFW67m/V15ZbxGVsYHAA4ztx6JD13XIp0UCU/O053s6
 Ohq+r5LHbh/JvfhsciWxEzQ6H6uNH+2Xq10R2wTMJq3luuhjLu2MMqEth
 q0e0CfoC1XMBioVrmFEgdxUehig3upaHNq9ivnUv24Z1R1oKIVjbhv4Ab Q==;
X-CSE-ConnectionGUID: qXo7i24KQqiO12aPHWXCNQ==
X-CSE-MsgGUID: liZVwXUwT6WMdE4vOeFZhg==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="36963595"
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="36963595"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2024 07:44:51 -0700
X-CSE-ConnectionGUID: yK/GWfbHSqaT8nUGfRsvtA==
X-CSE-MsgGUID: PMKcZJIYQJGi+LUU6eqSBw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,239,1719903600"; d="scan'208";a="69711329"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Sep 2024 07:44:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 18 Sep 2024 17:44:48 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/7] drm/i915: Set clear color block size to 0x0
Date: Wed, 18 Sep 2024 17:44:39 +0300
Message-ID: <20240918144445.5716-2-ville.syrjala@linux.intel.com>
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

We don't use the block size information for the clear color
plane. Technically the entire fb is the single block for the
single 64B clear color surface, so there is just no way to
delcare that as a constant since the fb size can be anything.

Define the clear color block size as 0x0 to make things less
confusing. We already declared that cpp/chars_per_block=0 for
the clear color as well. That also causes the drm core code
to mostly ignore the clear color plane, which is exactly
what we want since that code doesn't know how to deal with
the clear color plane.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_fb.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index d2ff21e98545..bcf0d016f499 100644
--- a/drivers/gpu/drm/i915/display/intel_fb.c
+++ b/drivers/gpu/drm/i915/display/intel_fb.c
@@ -102,31 +102,31 @@ static const struct drm_format_info gen12_ccs_formats[] = {
  */
 static const struct drm_format_info gen12_ccs_cc_formats[] = {
 	{ .format = DRM_FORMAT_XRGB8888, .depth = 24, .num_planes = 3,
-	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
+	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
 	  .hsub = 1, .vsub = 1, },
 	{ .format = DRM_FORMAT_XBGR8888, .depth = 24, .num_planes = 3,
-	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
+	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
 	  .hsub = 1, .vsub = 1, },
 	{ .format = DRM_FORMAT_ARGB8888, .depth = 32, .num_planes = 3,
-	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
+	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
 	  .hsub = 1, .vsub = 1, .has_alpha = true },
 	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 3,
-	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 2 }, .block_h = { 1, 1, 1 },
+	  .char_per_block = { 4, 1, 0 }, .block_w = { 1, 2, 0 }, .block_h = { 1, 1, 0 },
 	  .hsub = 1, .vsub = 1, .has_alpha = true },
 };
 
 static const struct drm_format_info gen12_flat_ccs_cc_formats[] = {
 	{ .format = DRM_FORMAT_XRGB8888, .depth = 24, .num_planes = 2,
-	  .char_per_block = { 4, 0 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
+	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
 	  .hsub = 1, .vsub = 1, },
 	{ .format = DRM_FORMAT_XBGR8888, .depth = 24, .num_planes = 2,
-	  .char_per_block = { 4, 0 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
+	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
 	  .hsub = 1, .vsub = 1, },
 	{ .format = DRM_FORMAT_ARGB8888, .depth = 32, .num_planes = 2,
-	  .char_per_block = { 4, 0 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
+	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
 	  .hsub = 1, .vsub = 1, .has_alpha = true },
 	{ .format = DRM_FORMAT_ABGR8888, .depth = 32, .num_planes = 2,
-	  .char_per_block = { 4, 0 }, .block_w = { 1, 2 }, .block_h = { 1, 1 },
+	  .char_per_block = { 4, 0 }, .block_w = { 1, 0 }, .block_h = { 1, 0 },
 	  .hsub = 1, .vsub = 1, .has_alpha = true },
 };
 
-- 
2.44.2

