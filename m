Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFC6BC7B92
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 09:30:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F32D110E946;
	Thu,  9 Oct 2025 07:30:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ddarewlY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31D9F10E946;
 Thu,  9 Oct 2025 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759995053; x=1791531053;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AEWQ+mLQ4FCyb6GTbjZTPI3kMaBtxs5NKV9SgWaljPU=;
 b=ddarewlY2qGLJ3OTfa/PEFekegqQI0xQnPfCBbvtKAPbiPJceKKub6I2
 imbV63sRvoNmq0ZPuR8g4ZSCkWuxnEa075rEXBOajsmxoPLMCfXCkZALY
 ZoeIvF7NOvxnImgFxa/0fYrr/bVgn+Xz45Z4F48aXHYmQlO/EwL3/nbWS
 OrdtVuNelvgKQArwhi34h34+Aae3oGhqne+oQeZTRdMaJYh7UVL/6p+1y
 L7wR+GPm/p53VSmtaocYloneSUMp08//5Ymh8lwUOEUcxLDNku9dxcjmV
 b1Hy6TMi6VUguw+iXWO+I/kSS73G+Zpgtkn5ZdIsLK7gMV/0Ufb+8bByZ g==;
X-CSE-ConnectionGUID: YRgZp0kRRm6wAo/wdybwqg==
X-CSE-MsgGUID: 9gzovENZR2GLz88nH8YvEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="66050821"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="66050821"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:30:53 -0700
X-CSE-ConnectionGUID: H6im2kSaQheaILhlTFID5g==
X-CSE-MsgGUID: KiW0sLjdRw6DHY+BY5mnvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="181073483"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 00:30:51 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/8] drm/i915/vblank: Add helper to get correct vblank length
Date: Thu,  9 Oct 2025 12:47:31 +0530
Message-ID: <20251009071736.800248-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251009071736.800248-1-ankit.k.nautiyal@intel.com>
References: <20251009071736.800248-1-ankit.k.nautiyal@intel.com>
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

Currently crtc_vblank_start is assumed to be the vblank_start for the fixed
refresh rate case. That value can be different from the variable refresh
rate case whenever always_use_vrr_tg()==false. On icl/tgl it's always
different due to the extra vblank delay, and also on adl+ it could be
different if we were to use an optimized guardband.

So places where crtc_vblank_start is used to compute vblank length needs
change so as to account for cases where vrr is enabled. Specifically
with vrr.enable the effective vblank length is actually guardband.

Add a helper to get the correct vblank length for both vrr and fixed
refresh rate cases. Use this helper where vblank_start is used to
compute the vblank length.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vblank.c  | 10 ++++++++++
 drivers/gpu/drm/i915/display/intel_vblank.h  |  2 ++
 drivers/gpu/drm/i915/display/skl_watermark.c |  3 ++-
 3 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
index 0b7fcc05e64c..2fc0c1c0bb87 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.c
+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
@@ -767,3 +767,13 @@ int intel_vblank_evade(struct intel_vblank_evade_ctx *evade)
 
 	return scanline;
 }
+
+int intel_crtc_vblank_length(const struct intel_crtc_state *crtc_state)
+{
+	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
+
+	if (crtc_state->vrr.enable)
+		return crtc_state->vrr.guardband;
+	else
+		return adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
index 21fbb08d61d5..98d04cacd65f 100644
--- a/drivers/gpu/drm/i915/display/intel_vblank.h
+++ b/drivers/gpu/drm/i915/display/intel_vblank.h
@@ -48,4 +48,6 @@ const struct intel_crtc_state *
 intel_pre_commit_crtc_state(struct intel_atomic_state *state,
 			    struct intel_crtc *crtc);
 
+int intel_crtc_vblank_length(const struct intel_crtc_state *crtc_state);
+
 #endif /* __INTEL_VBLANK_H__ */
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 9df9ee137bf9..06e5e6c77d2e 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -28,6 +28,7 @@
 #include "intel_flipq.h"
 #include "intel_pcode.h"
 #include "intel_plane.h"
+#include "intel_vblank.h"
 #include "intel_wm.h"
 #include "skl_universal_plane_regs.h"
 #include "skl_watermark.h"
@@ -2241,7 +2242,7 @@ skl_is_vblank_too_short(const struct intel_crtc_state *crtc_state,
 		scaler_prefill_latency(crtc_state) +
 		dsc_prefill_latency(crtc_state) +
 		wm0_lines >
-		adjusted_mode->crtc_vtotal - adjusted_mode->crtc_vblank_start;
+		intel_crtc_vblank_length(crtc_state);
 }
 
 static int skl_max_wm0_lines(const struct intel_crtc_state *crtc_state)
-- 
2.45.2

