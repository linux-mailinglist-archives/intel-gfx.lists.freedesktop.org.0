Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D802BBC7D2C
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 09:55:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6569E10E968;
	Thu,  9 Oct 2025 07:55:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZsyTgycL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8CF310E970
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Oct 2025 07:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759996551; x=1791532551;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=geVWHSIXc5JKI61B1V2pWXJwbIabiZISCE0cJM+yZUk=;
 b=ZsyTgycLiMgW2wgvrysu5XLtu471f8Cc+EVY7e21QwSnCDLmGgPHEChY
 /1Sl1BpCBP8vevbqkP0Xq5B+6m8H4xTZwEaMQxEWwDmcXVfQtVUptidJP
 370YT1gB2a1AH/0g+UxR7nbqcrTMtPtfdiunBC3720SbbffFk6NCy9Vk7
 9fIStQk6YUAkNKBqXdAXLuR/Ypc0dwCC6ifgmezuXc+fgosKiJrgyzCiw
 rgmA8LwOqZphGq9RwtqgNLlw7RfOhmeQkrWxgYX7dcFJ5UZiow3BZLUiE
 2WnAHIMjaMp1mYU3NkJSepWSmA9/c/T2YBAInOKRWKqMhqDJm4SfrV9/m g==;
X-CSE-ConnectionGUID: b5tZcCitRmqUEjPc2ftO2A==
X-CSE-MsgGUID: opA2KzHuQgGDK+FXCcD6ug==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="72880751"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="72880751"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:55:51 -0700
X-CSE-ConnectionGUID: dMqAhzQOTWqXA0zx8y2Wcw==
X-CSE-MsgGUID: OyNRaaoVT9Gn0253KEMP9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="211600978"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.0])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:55:49 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v3 7/7] drm/i915/wm: reduce size of y_min_scanlines to u8
Date: Thu,  9 Oct 2025 10:54:38 +0300
Message-ID: <20251009075517.837587-8-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251009075517.837587-1-luciano.coelho@intel.com>
References: <20251009075517.837587-1-luciano.coelho@intel.com>
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

We don't need more than an u8 to represent y_min_scanlines in the
watermark code, so we can convert it from u32 to u8 and use it to fill
one hole in the structure, saving 4 bytes.

Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index fc771f476bbe..c125e46e2530 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -64,16 +64,16 @@ enum wm_tiling_mode {
 struct skl_wm_params {
 	enum wm_tiling_mode tiling;
 	u32 width;
-	u8 cpp;
-	bool rc_surface;
-	bool is_planar;
 	u32 plane_pixel_rate;
-	u32 y_min_scanlines;
 	u32 plane_bytes_per_line;
 	uint_fixed_16_16_t plane_blocks_per_line;
 	uint_fixed_16_16_t y_tile_minimum;
 	u32 linetime_us;
 	u32 dbuf_block_size;
+	u8 cpp;
+	u8 y_min_scanlines;
+	bool rc_surface;
+	bool is_planar;
 };
 
 u8 intel_enabled_dbuf_slices_mask(struct intel_display *display)
-- 
2.51.0

