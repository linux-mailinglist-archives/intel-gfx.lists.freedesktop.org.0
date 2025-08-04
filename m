Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DDF9B1A385
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Aug 2025 15:38:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0E3010E51B;
	Mon,  4 Aug 2025 13:38:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HtuPwUwG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD5AC10E51B;
 Mon,  4 Aug 2025 13:38:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754314727; x=1785850727;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BRAVpeTthYAqCnc6UUR4k/J/XoRYxSSizx2xRw4grGQ=;
 b=HtuPwUwGwKbkYStIyO5ESh4CiFLNVbLYBhDqeaxrRjAjPfeQaGPazPwP
 4YS3LvdWX07MlVMhIqGfP1wo8DeYquFWt6H5dl6qVqJy3yJ5ff7lojtJj
 AEUdUD/M/EXPUws6L2wFB55t9YuzNN2j77rlY/UrQuz41/mzjlggceKwV
 FprkUChHpY0AFVcw08DtScPbgRErmj9+x9phOCpp24PzorArX21FSkZq1
 BIqX7jiAWr+LIbvyVk0011FQxiy6L8HGmE0dKA/zAUkJood2vjyAQ8ilf
 z5SxNRZBOPun/BIJZQlAISVEmzQC6Jyt500d7r9V+CRKA9obLHQKkRJYB Q==;
X-CSE-ConnectionGUID: S1LMvvN1StWPSk5glXFJ6Q==
X-CSE-MsgGUID: RQd7kaZESaO9+xNRxK0m7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="56447376"
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="56447376"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:38:47 -0700
X-CSE-ConnectionGUID: 4zIuWtbyQNOMRQ/AdZVhCg==
X-CSE-MsgGUID: FK93Y0soQGCv70VwIvHEEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,258,1747724400"; d="scan'208";a="163430645"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2025 06:38:45 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 04/15] drm/i915/skl_scaler: Introduce helper for chroma
 downscale factor
Date: Mon,  4 Aug 2025 18:54:29 +0530
Message-ID: <20250804132441.990441-5-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250804132441.990441-1-ankit.k.nautiyal@intel.com>
References: <20250804132441.990441-1-ankit.k.nautiyal@intel.com>
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
---
 drivers/gpu/drm/i915/display/skl_scaler.c    | 5 +++++
 drivers/gpu/drm/i915/display/skl_scaler.h    | 2 ++
 drivers/gpu/drm/i915/display/skl_watermark.c | 7 +++----
 3 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index 4cc55f4e1f9f..a8244684df62 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -938,3 +938,8 @@ void skl_scaler_get_config(struct intel_crtc_state *crtc_state)
 	else
 		scaler_state->scaler_users &= ~(1 << SKL_CRTC_INDEX);
 }
+
+int skl_scaler_chroma_downscale_factor(const struct intel_crtc_state *crtc_state)
+{
+	return crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
+}
diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
index e3b35d2c13be..80b0eaa64bde 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.h
+++ b/drivers/gpu/drm/i915/display/skl_scaler.h
@@ -42,4 +42,6 @@ skl_scaler_mode_valid(struct intel_display *display,
 		      enum intel_output_format output_format,
 		      int num_joined_pipes);
 
+int skl_scaler_chroma_downscale_factor(const struct intel_crtc_state *crtc_state);
+
 #endif
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 97f08d78d22f..6c7e9e7d7b8e 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -31,6 +31,7 @@
 #include "intel_plane.h"
 #include "intel_wm.h"
 #include "skl_universal_plane_regs.h"
+#include "skl_scaler.h"
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
 
@@ -2183,8 +2184,7 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
 	const struct intel_crtc_scaler_state *scaler_state =
 					&crtc_state->scaler_state;
 	int num_scaler_users = hweight32(scaler_state->scaler_users);
-	int chroma_downscaling_factor =
-		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
+	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
 	u32 dsc_prefill_latency = 0;
 
 	if (!crtc_state->dsc.compression_enable ||
@@ -2225,8 +2225,7 @@ scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
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

