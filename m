Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C53EBC08AB
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 09:58:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA9C310E59E;
	Tue,  7 Oct 2025 07:57:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kG9G71+p";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29B7010E5A0
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Oct 2025 07:57:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759823877; x=1791359877;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UoPA2dsk0w90wm4RdXxeBF3ABHjGX1Vh8SWzoQrWsLk=;
 b=kG9G71+poUOQMvKugAJJ3KVnvVNHv6oZNjf+lKs1XMM1QWsK+oyPOhdl
 rmoS4/1fL+YHM92jACpJdLBk5KRq9gw5v7JRLWgu7chw4elTrdOgU8YWr
 WMj5DWJPUMCc6sCB/r9rM4h+XKvykmlQrkmxQCmqXo/ub7NxE3O40srRb
 AEusptmQvgBPOY7lx4P8wdv3osK/OQLUUnKIhUYdIBpd1GqF7kyw88S6K
 89RpLw7/IWPptyqOaWrBqtssfgsvK3I/kX0bWUo/bSm3y4Nm8BvEOYeNq
 /MOHtoRZbCy9SayNHKIFtbPjhVOMqGdKnQgx0IKH3LnAceB//bLOOtZr8 g==;
X-CSE-ConnectionGUID: UfOYGCLGTZu9uuFzecAFew==
X-CSE-MsgGUID: 7Z9+fOoERy+j2nYEdBIohg==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="73104948"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="73104948"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 00:57:57 -0700
X-CSE-ConnectionGUID: jp5tF0ZkQ2mR8VYBNJ/8Tw==
X-CSE-MsgGUID: xbr9vZ3ASf2DhzA56Dys8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="180017739"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.206])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 00:57:55 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 7/7] drm/i915/wm: reduce size of y_min_scanlines to u8
Date: Tue,  7 Oct 2025 10:56:41 +0300
Message-ID: <20251007075729.468669-8-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251007075729.468669-1-luciano.coelho@intel.com>
References: <20251007075729.468669-1-luciano.coelho@intel.com>
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

Suggested-by: Ville Syrälä <ville.syrjala@linux.intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 4f9fd8c6ccb4..4149b891615e 100644
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

