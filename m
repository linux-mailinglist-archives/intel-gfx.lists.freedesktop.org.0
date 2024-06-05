Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3F3C8FC326
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jun 2024 07:52:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35A9A10E68F;
	Wed,  5 Jun 2024 05:52:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FWc03q1e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 040CA10E68F
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jun 2024 05:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717566750; x=1749102750;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=n48gYpCAuaeb2EBo6NGRPJsmPS8SNCeo90wmwY0ymdg=;
 b=FWc03q1eF4ggjkVyX4XbKm0fgZuaBzxKoa2wuGMgOcELHJgWpSt0MDe2
 FKc6iJz6vy3DNLv49adKwwXQQJ45j+NdmqATrb1etBzqpzPUkuaqyfOIm
 bXJwecoLHOb4SOJLC51pBdgcLu3isHbuTrpE8CSGnHaKQn3tQKrD7Qj6Y
 D3REy26ts9zuO9Frivw7T7LqFZJVDsStlxMrtpRwBghL/ZonH3vpzw/k/
 aikNofmK7ePZX4G3gGDhStQsn2pwouqRp+wOkjOJGcdl9l2RKHPNUwZq/
 R7KFL9szfZlW1eKnV+2iLUtx4FI5cXtmDX7CicfrkyOt4sV8mfwNKFqs9 Q==;
X-CSE-ConnectionGUID: e6VjK7qRQsu7g6tAH7bRyg==
X-CSE-MsgGUID: Ey02GGW2SEqYp0vr74Me9w==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="31690243"
X-IronPort-AV: E=Sophos;i="6.08,215,1712646000"; d="scan'208";a="31690243"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 22:52:28 -0700
X-CSE-ConnectionGUID: hsN7RwxKQNG8CBJJJiGmtw==
X-CSE-MsgGUID: Nq3p/jESSPaGTrp7ZtcTfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,215,1712646000"; d="scan'208";a="37476108"
Received: from basicluh01.gar.corp.intel.com (HELO localhost.localdomain)
 ([10.223.131.46])
 by fmviesa006.fm.intel.com with ESMTP; 04 Jun 2024 22:52:25 -0700
From: Melanie Lobo <melanie.lobo@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: juha-pekka.heikkila@intel.com, swati2.sharma@intel.com,
 bhanuprakash.modem@intel.com, vidya.srinivas@intel.com,
 Melanie Lobo <melanie.lobo@intel.com>,
 Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH] drm/i915: Support RGB16161616_64B compressed formats
Date: Wed,  5 Jun 2024 11:34:57 +0530
Message-Id: <20240605060457.10086-1-melanie.lobo@intel.com>
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
 drivers/gpu/drm/i915/display/intel_fb.c            | 5 +++++
 drivers/gpu/drm/i915/display/skl_universal_plane.c | 4 ++--
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
index b6638726949d..91f2def14243 100644
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
diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
index 1aa70fc35b9d..7719cb04bdf8 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
@@ -2242,6 +2242,8 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
 	case DRM_FORMAT_XBGR8888:
 	case DRM_FORMAT_ARGB8888:
 	case DRM_FORMAT_ABGR8888:
+	case DRM_FORMAT_XRGB16161616F:
+	case DRM_FORMAT_ARGB16161616F:
 		if (intel_fb_is_ccs_modifier(modifier))
 			return true;
 		fallthrough;
@@ -2266,8 +2268,6 @@ static bool gen12_plane_format_mod_supported(struct drm_plane *_plane,
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

