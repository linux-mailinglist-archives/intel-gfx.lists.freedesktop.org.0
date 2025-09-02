Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D7FDB3F418
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Sep 2025 07:02:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE30610E590;
	Tue,  2 Sep 2025 05:02:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xy8ENusv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8856310E58E;
 Tue,  2 Sep 2025 05:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756789372; x=1788325372;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TctqbmKzrE5r2uH6yZY+QpUPpCAjogp4Qf24J7HDkqc=;
 b=Xy8ENusvBVh3HC93aa1jzxN9le94s/JLW7vnMlX+HM89iKERj0hFp+Gb
 hVfp8uOBibe3gkm5GttWnVRHM09FdUN3g5pNTe5EbznbwZqON7+EJlEux
 b/uiAjVydjEpMVqySXPEkr9kxl80wjB4+xEAtN8n48ZCEAs6mw/SN8ONn
 svF8PvdlYF+LIM+JMFsdIad7/qwy0fGSVAouNfodJL4BmesE/TkO5T2/z
 iv3WnrRjODWd8PaK8GP7IwdEfEElxi7YpqzdeSk+rneUC2Z6lsVOXFJkV
 EJ+a+ZlU/lI88ayQGj/qsH0OKNo6sIdxinLrN8fCJ+j+8wfa635RLPPI5 w==;
X-CSE-ConnectionGUID: vDuIHDI5SoahzoNDFaV2HA==
X-CSE-MsgGUID: Pe+mjSh5QnK3CyD77oPWXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11540"; a="70151954"
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="70151954"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 22:02:51 -0700
X-CSE-ConnectionGUID: 2jlJBdO6QAaCDD3rFXqY6g==
X-CSE-MsgGUID: 1stALrWCR1Kykrj3tG/jCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,230,1751266800"; d="scan'208";a="175537297"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2025 22:02:49 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: [PATCH 03/13] drm/i915/skl_scaler: Introduce helper for chroma
 downscale factor
Date: Tue,  2 Sep 2025 10:18:55 +0530
Message-ID: <20250902044905.3446011-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250902044905.3446011-1-ankit.k.nautiyal@intel.com>
References: <20250902044905.3446011-1-ankit.k.nautiyal@intel.com>
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
index 74ab10a04e83..97b42bbf5642 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -30,6 +30,7 @@
 #include "intel_plane.h"
 #include "intel_wm.h"
 #include "skl_universal_plane_regs.h"
+#include "skl_scaler.h"
 #include "skl_watermark.h"
 #include "skl_watermark_regs.h"
 
@@ -2182,8 +2183,7 @@ dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
 	const struct intel_crtc_scaler_state *scaler_state =
 					&crtc_state->scaler_state;
 	int num_scaler_users = hweight32(scaler_state->scaler_users);
-	int chroma_downscaling_factor =
-		crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR420 ? 4 : 1;
+	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
 	u32 dsc_prefill_latency = 0;
 
 	if (!crtc_state->dsc.compression_enable ||
@@ -2223,8 +2223,7 @@ scaler_prefill_latency(const struct intel_crtc_state *crtc_state, int linetime)
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

