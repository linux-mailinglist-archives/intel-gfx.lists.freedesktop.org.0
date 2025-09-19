Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FB0B8ADD2
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 20:09:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AC1E10EA6A;
	Fri, 19 Sep 2025 18:09:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O7Kcs9N6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D21B10EA67;
 Fri, 19 Sep 2025 18:09:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758305344; x=1789841344;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WB3I6mqGkxNcWfLKqxy0n97AB61Ey1b5MDDChlji5M0=;
 b=O7Kcs9N6DPO5urAVKQhqH1lD9WNZlzMfF4cNW8x6Ks3QK+NKO06Y0BNp
 M1LKLUZXC4KEms+DErMOhCuGt07ylXwlfC/ax2Lx3h01l84D7aRt2Flvr
 JLaxvrAxIo7g0r74shvcdSBfH6CIJ9X+awL/4JtbOhVHYZv8yFeV8PBuO
 oSgSKBWviPZahrf70pbhytzHBt8/DIx82zQYngxQgk4cg3Axu479dVwDe
 S+dOnyimyEjFPJip9KbYHzjPj0njQO9ingP3qXy1QfjIgZpNIFJIeKzhO
 UuJrFE6c0GvlqYS7Ya/7IBliig2CwSYqHtBYm8XhnktrQJpaR/0ky7BI/ g==;
X-CSE-ConnectionGUID: 9PZbW88cQTK1RZTlVvYmSw==
X-CSE-MsgGUID: LoLXA4+/Qg2LJS3F6Tmbew==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64458820"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64458820"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:08:55 -0700
X-CSE-ConnectionGUID: 8in22T7SS4murCFVtGV+RA==
X-CSE-MsgGUID: 5W8yg5uFSUmi8ae4CMB1xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="181019131"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:08:54 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915: s/intel_get_linetime_us()/skl_wm_linetime_us()/
Date: Fri, 19 Sep 2025 21:08:38 +0300
Message-ID: <20250919180838.10498-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250919180838.10498-1-ville.syrjala@linux.intel.com>
References: <20250919180838.10498-1-ville.syrjala@linux.intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Rename intel_get_linetime_us() to skl_wm_linetime_us() to better
reflect that it's not meant to be used for anything apart from
the watermark calculations.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 3eaaf26100f1..e8ed9df34b1f 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1636,9 +1636,8 @@ skl_wm_method2(u32 pixel_rate, u32 pipe_htotal, u32 latency,
 	return ret;
 }
 
-static int
-intel_get_linetime_us(const struct intel_crtc_state *crtc_state,
-		      int pixel_rate)
+static int skl_wm_linetime_us(const struct intel_crtc_state *crtc_state,
+			      int pixel_rate)
 {
 	return DIV_ROUND_UP(crtc_state->hw.pipe_mode.crtc_htotal * 1000,
 			    pixel_rate);
@@ -1729,7 +1728,7 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 	wp->y_tile_minimum = mul_u32_fixed16(wp->y_min_scanlines,
 					     wp->plane_blocks_per_line);
 
-	wp->linetime_us = intel_get_linetime_us(crtc_state, plane_pixel_rate);
+	wp->linetime_us = skl_wm_linetime_us(crtc_state, plane_pixel_rate);
 
 	return 0;
 }
-- 
2.49.1

