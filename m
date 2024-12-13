Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FED79F0BD3
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2024 13:04:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACF558912D;
	Fri, 13 Dec 2024 12:04:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RNjfKL5b";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 972588912D;
 Fri, 13 Dec 2024 12:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734091453; x=1765627453;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k16/ErdBcQ48upbbK53uG9MkczSbhBpc9cJVphwdma0=;
 b=RNjfKL5bNhsjGTN3SgLT+UQNMeAMCVvtWqC/Bj9S5QEKw5TgHi8hNqMh
 QgxSVis5eZkYOpgO71PygCRS431x5QjmyepLhkyBa0T1UfkZNk6KpVJAL
 xUxKAJyOnAaV1E6WGh/0Rcl8gohUdWTTfXjb63onA4vLmzojMDXIQvq1N
 krnIw1Qy+8eq5YlQh/STggt+JoN/m/Rs7V3GShevaeE6TtTOAIKewsgkb
 MZP7aQ0LCNB563UMQgliVFR4C+Tx77BUuD2sAnsaydoqoe+qSOxiInLtX
 hEPwzmV+459rSwN+XvqBHtz9k32h8zkXa9HPplF6nxthcALvY0nld+X55 w==;
X-CSE-ConnectionGUID: I4YcPqkSTCq6UV3GkFYgSQ==
X-CSE-MsgGUID: 4FZ5+bLOSRmUcG0zaO6iRA==
X-IronPort-AV: E=McAfee;i="6700,10204,11278"; a="45926208"
X-IronPort-AV: E=Sophos;i="6.12,214,1728975600"; d="scan'208";a="45926208"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 04:04:13 -0800
X-CSE-ConnectionGUID: RG9Q6L+QTumyfz82WGI9Fg==
X-CSE-MsgGUID: qhnnVxhpR3+ZCb4WnjYVzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="101092187"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO vgovind2-mobl3..)
 ([10.245.245.212])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2024 04:04:11 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, ville.syrjala@intel.com,
 uma.shankar@intel.com, jani.saarinen@intel.com
Subject: [PATCH] drm/i915/xe3: do not configure auto min dbuf for cursor WMs
Date: Fri, 13 Dec 2024 14:03:57 +0200
Message-Id: <20241213120357.300584-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
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

Cursor planes do not have the minimum dbuf confguation. The
ddb allocation and registration routines handle this correctly.
But the plane wm handling for cursor need to be differentiated
for this case. Auto minimum buf enable flag should not be
enabled for cursor wm registers in xe3.

Fixes: a831920c370c ("drm/i915/xe3: Use hw support for min/interim ddb allocations for async flip")
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d3506e8ccd9b..29e8ea91c858 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1922,10 +1922,11 @@ static int skl_wm_max_lines(struct drm_i915_private *i915)
 		return 31;
 }
 
-static bool xe3_auto_min_alloc_capable(struct intel_display *display,
-				       int level)
+static bool xe3_auto_min_alloc_capable(struct intel_plane *plane, int level)
 {
-	return DISPLAY_VER(display) >= 30 && level == 0;
+	struct intel_display *display = to_intel_display(plane);
+
+	return DISPLAY_VER(display) >= 30 && level == 0 && plane->id != PLANE_CURSOR;
 }
 
 static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
@@ -1937,7 +1938,6 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 				 struct skl_wm_level *result /* out */)
 {
 	struct drm_i915_private *i915 = to_i915(crtc_state->uapi.crtc->dev);
-	struct intel_display *display = to_intel_display(crtc_state);
 	uint_fixed_16_16_t method1, method2;
 	uint_fixed_16_16_t selected_result;
 	u32 blocks, lines, min_ddb_alloc = 0;
@@ -2061,7 +2061,7 @@ static void skl_compute_plane_wm(const struct intel_crtc_state *crtc_state,
 	/* Bspec says: value >= plane ddb allocation -> invalid, hence the +1 here */
 	result->min_ddb_alloc = max(min_ddb_alloc, blocks) + 1;
 	result->enable = true;
-	result->auto_min_alloc_wm_enable = xe3_auto_min_alloc_capable(display, level);
+	result->auto_min_alloc_wm_enable = xe3_auto_min_alloc_capable(plane, level);
 
 	if (DISPLAY_VER(i915) < 12 && i915->display.sagv.block_time_us)
 		result->can_sagv = latency >= i915->display.sagv.block_time_us;
-- 
2.34.1

