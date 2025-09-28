Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3E36BA69B8
	for <lists+intel-gfx@lfdr.de>; Sun, 28 Sep 2025 09:19:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BA3410E1E8;
	Sun, 28 Sep 2025 07:19:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zbdr+7Uz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4689A10E1E8;
 Sun, 28 Sep 2025 07:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759043950; x=1790579950;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RHibbxt2s5JQn18vhUH/mWx4W3weR2JqcvU/QIp7VcI=;
 b=Zbdr+7UzY7GaJ7iAiiAf18JkJiglv0e5MZEtbBV+1EpjU12GUvqcI47R
 79ZRBCSUTPNaNwLpTtZ5r3bhOYjUrhhS7yLWJqHtUAWsvO80iiN4o0xbo
 MwOy1gYI26JTAwOm7gkJeOXE3DCG9sbTHlhmBjd3wkxLMnPspGLr91PZz
 chy8PpvdyKo7dwl10RU/BcPxFFc9r5TwMvmJyfJEMma17z+hFdklpElUv
 tqjaCib+Ry4vWMjNTCAJfa4es4NGyHJI0D4r8NB7zEan2DHjm6+1A3kj+
 UjcB4WoSVYdt7gSibbi8ICRA0lcJ1JzgCeP+z+ALcgoW33Ruv9e6FAv8X g==;
X-CSE-ConnectionGUID: Wkc3G5t0Q1qOpC0kTfvboQ==
X-CSE-MsgGUID: bJgYSKesShSsEGMOmUzheg==
X-IronPort-AV: E=McAfee;i="6800,10657,11566"; a="60528493"
X-IronPort-AV: E=Sophos;i="6.18,299,1751266800"; d="scan'208";a="60528493"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 00:19:09 -0700
X-CSE-ConnectionGUID: FeSF0bQSTtG9GjnExJ/0bg==
X-CSE-MsgGUID: Hbr60cPwSY6fyH7vj5B+RQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,299,1751266800"; d="scan'208";a="215094026"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2025 00:19:08 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 04/15] drm/i915/skl_scaler: Introduce helper for chroma
 downscale factor
Date: Sun, 28 Sep 2025 12:35:29 +0530
Message-ID: <20250928070541.3892890-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
References: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
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

For 444 to 420 output format conversion, scaler uses 2x downscaling in
each direction. Introduce skl_scaler_chroma_downscale_factor() to
encapsulate the chroma subsampling adjustment used in scaler/dsc
pre-fill latency calculations.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c    | 5 +++++
 drivers/gpu/drm/i915/display/skl_scaler.h    | 3 +++
 drivers/gpu/drm/i915/display/skl_watermark.c | 7 +++----
 3 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index c6cccf170ff1..af2cbd54c32e 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -968,3 +968,8 @@ void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state)
 			  1);
 	intel_de_write(display, XELPD_DISPLAY_ERR_FATAL_MASK, 0);
 }
+
+int skl_scaler_chroma_downscale_factor(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
+}
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index 12a19016c5f6..257330d4c329 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -45,4 +45,7 @@ skl_scaler_mode_valid(struct intel_display *display,
 void adl_scaler_ecc_mask(const struct intel_crtc_state *crtc_state);
 
 void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state);
+
+int skl_scaler_chroma_downscale_factor(const struct intel_crtc_state *crtc_state);
+
 #endif
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index be87a861eb70..2da54569f06a 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -30,6 +30,7 @@
 #include "intel_plane.h"
 #include "intel_wm.h"
 #include "skl_universal_plane_regs.h"
+#include "skl_scaler.h"
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
 
@@ -2185,8 +2186,7 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
 	const struct intel_crtc_scaler_state *scaler_state =
 					&crtc_state->scaler_state;
 	int num_scaler_users = hweight32(scaler_state->scaler_users);
-	int chroma_downscaling_factor =
-		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
+	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
 	u32 dsc_prefill_latency = 0;
 
 	if (!crtc_state->dsc.compression_enable ||
@@ -2226,8 +2226,7 @@ scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
 	if (num_scaler_users > 1) {
 		u64 hscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
 		u64 vscale_k = max(1000, mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
-		int chroma_downscaling_factor =
-			crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
+		int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
 		int latency;
 
 		latency = DIV_ROUND_UP_ULL((4 * linetime * hscale_k * vscale_k *
-- 
2.45.2

