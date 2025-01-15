Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DF2A12728
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 16:20:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7651910E713;
	Wed, 15 Jan 2025 15:20:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YuYIpuZB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C07BB10E734;
 Wed, 15 Jan 2025 15:20:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736954442; x=1768490442;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8Lic0QJVhHyJKD1W5or3cF05YsF+fYpnZxAXGMtg46c=;
 b=YuYIpuZBFbzwJlE/Hhk5QnDQUW+bzDmoim6l3DsA5Iyl/zBdSIwLO3gN
 0H/4PfGsBCa1NUJITcLuZjrk18JtgNQh8S2/dWMiSq8m4sfw+HOqqqbwI
 C0NCV52u5TNK5b02eZykoaL5PNzW+swv0rD2Mrd3Gpccle5bGXMbqOw2n
 2AGfjhP87o3d+GUrzd0n14C9FTnyKPiVToY4zx0novS04I8Cf1mCY3+b2
 6hwjwMd1Iu+Rw4lePIt+qHuoKxLanrpPdArsUfZacBpL+vtNmJDoG2Hza
 HGkLjVpE3dmXfZhc3sReKcIqrB9OJOxHXD8a4UWPLOuTr0pcgriKQqLQn g==;
X-CSE-ConnectionGUID: E73phFEdQDmoIiX35F2DPQ==
X-CSE-MsgGUID: +pj4wCGLTK+R7CuTQUtNEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="24894505"
X-IronPort-AV: E=Sophos;i="6.13,206,1732608000"; d="scan'208";a="24894505"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 07:20:42 -0800
X-CSE-ConnectionGUID: FToRzw5OT4SDn0S00Vz6Cg==
X-CSE-MsgGUID: 9ef8lR1gSLyQDWjrXO4t0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="110298524"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa005.jf.intel.com with ESMTP; 15 Jan 2025 07:20:40 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org,
	v5-000intel-xe@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, jani.nikula@intel.com, ville.syrjala@intel.com
Subject: [PATCH v5 5/7] drm/i915/scaler: Limit pipe scaler downscaling factors
 for YUV420
Date: Wed, 15 Jan 2025 20:47:12 +0530
Message-ID: <20250115151714.3665211-6-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.0
In-Reply-To: <20250115151714.3665211-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20250115151714.3665211-1-mitulkumar.ajitkumar.golani@intel.com>
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

Limit downscaling to less than 1.5 (source/destination) in
the horizontal direction and 1.0 in the vertical direction,
When configured for Pipe YUV 420 encoding for port output.

Bspec: 50441

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 72344044d9d3..c9d7966b37ff 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -456,6 +456,16 @@ static int intel_atomic_setup_scaler(struct intel_crtc_state *crtc_state,
 		calculate_max_scale(crtc, 0, *scaler_id,
 				    &max_hscale, &max_vscale);
 
+		/*
+		 * When configured for Pipe YUV 420 encoding for port output,
+		 * limit downscaling to less than 1.5 (source/destination) in
+		 * the horizontal direction and 1.0 in the vertical direction.
+		 */
+		if (crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
+			max_hscale = 0x18000 - 1;
+			max_vscale = 0x10000;
+		}
+
 		hscale = drm_rect_calc_hscale(&src, &crtc_state->pch_pfit.dst,
 					      0, max_hscale);
 		vscale = drm_rect_calc_vscale(&src, &crtc_state->pch_pfit.dst,
-- 
2.48.0

