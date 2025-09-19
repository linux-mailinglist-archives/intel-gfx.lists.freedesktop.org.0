Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 732E1B8ADCC
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 20:08:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11A3D10EA69;
	Fri, 19 Sep 2025 18:08:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W9d6HzbH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 796AB10EA67;
 Fri, 19 Sep 2025 18:08:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758305326; x=1789841326;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=2A97RxnNGQn+VZJZKiUQZpHvLxlp4fR61i1SlI4nJG0=;
 b=W9d6HzbHaZ+f9QCoWt0Nqtfq5HG9HIl+J1kIY8ySuV75kuRGdYKgIral
 r56b07Tl87T1bKviruZ/xTz7oLanJwkG8KTrW3M4ncpw7n6ajBPKspHAL
 lksSsDOSd1pSfTWUFaDW3/bflDGXWDjLTdDYO5uSjh3nmiTmR44IqZNYL
 PBWsfXetuZO5YEkntv2iFzzKKKheBK0HDPEca2c36ofudhnb/cFNe3/f0
 lQLQ9a3u5oPZDYtUyJlt2vb+un/eLSFgBqNTEG5MACCiNQvgZPac83DGS
 yKheVkFJj9hSD33EEsTps1oh6OFD89Ext0LSRVRFY/7LUjU0sRQu2bv7U w==;
X-CSE-ConnectionGUID: Q8bAZgZ+RW6VikSuqMZbiw==
X-CSE-MsgGUID: o+ggmJZBQDWO9DZu1sGgLQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64458720"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64458720"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:08:46 -0700
X-CSE-ConnectionGUID: NSbThLi2SeubEvHNBQxn9A==
X-CSE-MsgGUID: sWgdV9yORVuQNsR12RIPeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="181019109"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 11:08:46 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/3] drm/i915: Use the the correct pixel rate to compute wm
 line time
Date: Fri, 19 Sep 2025 21:08:36 +0300
Message-ID: <20250919180838.10498-2-ville.syrjala@linux.intel.com>
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

The line time used for the watermark calculations is supposed to
based on the plane's adjusted pixel rate, not the pipe's adjusted
pixel rate. The current code will give incorrect answers if plane
downscaling is used.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d74cbb43ae6f..bdd005c6cc2d 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -1637,18 +1637,16 @@ skl_wm_method2(u32 pixel_rate, u32 pipe_htotal, u32 latency,
 }
 
 static uint_fixed_16_16_t
-intel_get_linetime_us(const struct intel_crtc_state *crtc_state)
+intel_get_linetime_us(const struct intel_crtc_state *crtc_state,
+		      int pixel_rate)
 {
 	struct intel_display *display = to_intel_display(crtc_state);
-	u32 pixel_rate;
 	u32 crtc_htotal;
 	uint_fixed_16_16_t linetime_us;
 
 	if (!crtc_state->hw.active)
 		return u32_to_fixed16(0);
 
-	pixel_rate = crtc_state->pixel_rate;
-
 	if (drm_WARN_ON(display->drm, pixel_rate == 0))
 		return u32_to_fixed16(0);
 
@@ -1743,7 +1741,8 @@ skl_compute_wm_params(const struct intel_crtc_state *crtc_state,
 	wp->y_tile_minimum = mul_u32_fixed16(wp->y_min_scanlines,
 					     wp->plane_blocks_per_line);
 
-	wp->linetime_us = fixed16_to_u32_round_up(intel_get_linetime_us(crtc_state));
+	wp->linetime_us = fixed16_to_u32_round_up(intel_get_linetime_us(crtc_state,
+									plane_pixel_rate));
 
 	return 0;
 }
-- 
2.49.1

