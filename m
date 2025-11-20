Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF99C72912
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 08:19:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5C8010E6F0;
	Thu, 20 Nov 2025 07:19:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Emfh4udq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF5FE10E700;
 Thu, 20 Nov 2025 07:19:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763623177; x=1795159177;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QE7FSAljad7cTESaeD6r6DyoNOB/B49ilD/hFY+NdNw=;
 b=Emfh4udqXlTKfRfsrd4FqFjr/AZI9Zox2RwcKIZNsTHjnbGKSDXVaJ5f
 P+iwqtjUypo6zbtR13xjflaps+5xlXx7R5mpn8w3zqBNPXY9t47cfbLv8
 1CO7YwkrDUFVY8USfDThlk/cLsqsXyCx+XoG+er7iXdn7oiqSle82YLvP
 w44AteYLOKDPodKqmbFVtHFScywb/hbkXSNUhxLB06ignv2JELyTNtltW
 sVL4x34hIrzSjM2CaKcEWfClH/mt+RgXev0xUbhBvZ+Lcbrge4lMo0i38
 eXD4zuYEVwgVp+Vm+wbPfAh3wN5LrmWteR4OUpCr0jiOhNVustI1/OVbC A==;
X-CSE-ConnectionGUID: ZOTgEJETQ9S8vK8FYP5pXw==
X-CSE-MsgGUID: SS5luvwqSLqOAJAmUm7I7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65559111"
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="65559111"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:36 -0800
X-CSE-ConnectionGUID: CqznyuCiTJCfcCZtIhc9/w==
X-CSE-MsgGUID: brZ8i5FdRHKgXAM78e/GdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,317,1754982000"; d="scan'208";a="191073692"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 23:19:35 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 10/11] drm/i915/dp: Account for DSC slice overhead in
 intel_dp_mode_valid()
Date: Thu, 20 Nov 2025 12:36:38 +0530
Message-ID: <20251120070640.727040-11-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251120070640.727040-1-ankit.k.nautiyal@intel.com>
References: <20251120070640.727040-1-ankit.k.nautiyal@intel.com>
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

Account for DSC slice overhead bubbles to determine if the mode can be
supported with DSC for a given number of pipes joined.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c   | 8 +++++++-
 drivers/gpu/drm/i915/display/intel_vdsc.c | 1 -
 drivers/gpu/drm/i915/display/intel_vdsc.h | 2 ++
 3 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 275f2f820110..d8198a039f17 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -1575,6 +1575,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 	for (int i = 0; i < ARRAY_SIZE(joiner_candidates); i++) {
 		int max_dotclk = display->cdclk.max_dotclk_freq;
 		enum joiner_type joiner = joiner_candidates[i];
+		int adjusted_clock = target_clock;
 
 		status = MODE_CLOCK_HIGH;
 
@@ -1621,9 +1622,14 @@ intel_dp_mode_valid(struct drm_connector *_connector,
 							    target_clock, 64))
 			continue;
 
+		if (dsc)
+			adjusted_clock = intel_dsc_get_pixel_rate_with_dsc_bubbles(target_clock,
+										   mode->htotal,
+										   dsc_slice_count);
+
 		max_dotclk *= num_joined_pipes;
 
-		if (target_clock > max_dotclk)
+		if (adjusted_clock > max_dotclk)
 			continue;
 
 		status = MODE_OK;
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
index 31b59e9491a3..ae6f5c1832a7 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.c
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
@@ -1050,7 +1050,6 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
 }
 
-static
 int intel_dsc_get_pixel_rate_with_dsc_bubbles(int pixel_rate, int htotal,
 					      int dsc_horizontal_slices)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.h b/drivers/gpu/drm/i915/display/intel_vdsc.h
index 99f64ac54b27..ebf011c4cca1 100644
--- a/drivers/gpu/drm/i915/display/intel_vdsc.h
+++ b/drivers/gpu/drm/i915/display/intel_vdsc.h
@@ -35,5 +35,7 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
 			   const struct intel_crtc_state *crtc_state);
 int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state);
 unsigned int intel_vdsc_prefill_lines(const struct intel_crtc_state *crtc_state);
+int intel_dsc_get_pixel_rate_with_dsc_bubbles(int pixel_rate, int htotal,
+					      int dsc_horizontal_slices);
 
 #endif /* __INTEL_VDSC_H__ */
-- 
2.45.2

