Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D698B911CE6
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jun 2024 09:34:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FFE310EC2F;
	Fri, 21 Jun 2024 07:34:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L2jLHGGH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE1F710EC2F;
 Fri, 21 Jun 2024 07:34:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718955279; x=1750491279;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=oO5wPK0VwvDSyweozPX1efnwc4s2BgTjlc3nPijL/tM=;
 b=L2jLHGGHnC+O4lAV7/GbLxhTWf7p6CYM+EBLjp5BJsCtWWm1qsg9P47F
 r8n8i7h0xpp8i7o7NEKorVH4i9OXMAqs92G1f/LBPhk4FsrmKjwOKy0FD
 PXG3M6ECLPuONPLFYc5mK7oh5grwwAMoY7d1ReVcb04b9FIuJ4luN+8BR
 /BRS1N7zW3oBT/CWTtMW8kiBN/bQS0NvW2gKDsyCezr3CVyJfoiwfdyXr
 gjLX7cuKjxVLWZz8PN7Am988xCFD1qanBe50ZrW4W6V0ZHWKiAPSc54YG
 5maYWjHdFM05ihOBj40aEZ1b5ymbJOHang3HRoOwz/tV3NLzjy2J4p5BR Q==;
X-CSE-ConnectionGUID: caxyL5C6RAaKNUcIfz7sbA==
X-CSE-MsgGUID: 4sprXNmnRye+EzodW1qKvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11109"; a="33518822"
X-IronPort-AV: E=Sophos;i="6.08,254,1712646000"; d="scan'208";a="33518822"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2024 00:34:38 -0700
X-CSE-ConnectionGUID: P5TgM6JfT7WbLC2qpchWKA==
X-CSE-MsgGUID: hPWFgmxgTe+bLD1e1q9rYA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,254,1712646000"; d="scan'208";a="47030520"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa004.fm.intel.com with ESMTP; 21 Jun 2024 00:34:36 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, rodrigo.vivi@intel.com,
 jani.nikula@linux.intel.com, suraj.kandpal@intel.com,
 ankit.k.nautiyal@intel.com, nathan@kernel.org
Subject: [PATCH] drm/i915/display: Consider adjusted_pixel_rate to be u64
Date: Fri, 21 Jun 2024 13:04:54 +0530
Message-ID: <20240621073454.1421676-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
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

Consider adjusted_pixel_rate to be a u64 to match the return
type of mul_u32_u32() and avoid any compiler dependency for
do_div.

Fixes: 1676ecd303ac ("drm/i915: Compute CMRR and calculate vtotal")
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Nathan Chancellor <nathan@kernel.org>
Cc: intel-xe@lists.freedesktop.org
Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 6430da25957d..5a0da64c7db3 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -137,7 +137,7 @@ static unsigned int
 cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
 {
 	int multiplier_m = 1, multiplier_n = 1, vtotal, desired_refresh_rate;
-	long long adjusted_pixel_rate;
+	u64 adjusted_pixel_rate;
 	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
 
 	desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);
-- 
2.45.2

