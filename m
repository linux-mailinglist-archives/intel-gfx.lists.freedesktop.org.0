Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA21BF9793
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 02:32:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69E1210E69B;
	Wed, 22 Oct 2025 00:32:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nq5xmnCy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5B9510E699;
 Wed, 22 Oct 2025 00:32:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761093149; x=1792629149;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=YKgD7vFmRg6409KtX9uuvsTSWtN20L1HUcJabFGaRGI=;
 b=Nq5xmnCyER6sgGB5GD8HC2wOIggTnq25Vf6fUijjsDZy+SbKpj6YKNhP
 g32UAiG4JoYpo/h5jK47CDHDR8m0zSyiv6JgT+sa1tvIeibv5yFFti5vZ
 4EfgxugRn9Ds5ejQ3XOjA5019xLcyGcSkSnlYLctlCwT2b/7D7/HN0B0L
 j9dIUmeddq6x5i3zfjzGS0GZe63eAM6PsjhLRv3xaCg7sQlDSsnr8/jb8
 rnQWjcr4lf44b0gY9vFalYDcDz3MS4aQEDFSodtubnOCt26m4b2a2SVZn
 aYgdygRujET2pq6XCGbb6KEKtCacWxeUOSU8eTwtCLlRy/EaPb87WMwxr g==;
X-CSE-ConnectionGUID: NTw/o+XxTu2koUpWjNnaTQ==
X-CSE-MsgGUID: z4bw/lfXRHWhAjLywnckNg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="85855799"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="85855799"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:28 -0700
X-CSE-ConnectionGUID: V+AweSClQb6/XXeSttkz1g==
X-CSE-MsgGUID: 09NfdAeRS3CJ2NnAM25F3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="188132518"
Received: from gpacheco-mobl.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.221.26])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 17:32:25 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Tue, 21 Oct 2025 21:28:50 -0300
Subject: [PATCH v2 25/32] drm/i915/xe3p_lpd: Add FBC support for FP16 formats
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-xe3p_lpd-basic-enabling-v2-25-10eae6d655b8@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
In-Reply-To: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, 
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>, 
 Gustavo Sousa <gustavo.sousa@intel.com>, 
 =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>, 
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>, 
 Luca Coelho <luciano.coelho@intel.com>, 
 Lucas De Marchi <lucas.demarchi@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, 
 Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
X-Mailer: b4 0.15-dev
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

From: Vinod Govindapillai <vinod.govindapillai@intel.com>

Add supported FP16 formats for FBC. FBC can be enabled with FP16 formats
only when plane pixel normalizer block is enabled.

Bspec: 6881, 69863, 68904
Cc: Shekhar Chauhan <shekhar.chauhan@intel.com>
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 37 ++++++++++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fbc.h |  1 +
 2 files changed, 38 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 368b1ff1dc8c..6f31294c6a6d 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -63,6 +63,7 @@
 #include "intel_fbc.h"
 #include "intel_fbc_regs.h"
 #include "intel_frontbuffer.h"
+#include "skl_universal_plane_regs.h"
 
 #define for_each_fbc_id(__display, __fbc_id) \
 	for ((__fbc_id) = INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
@@ -153,6 +154,8 @@ static unsigned int intel_fbc_cfb_cpp(const struct intel_plane_state *plane_stat
 	case DRM_FORMAT_XBGR16161616:
 	case DRM_FORMAT_ARGB16161616:
 	case DRM_FORMAT_ABGR16161616:
+	case DRM_FORMAT_ARGB16161616F:
+	case DRM_FORMAT_ABGR16161616F:
 		return 8;
 	default:
 		return 4;
@@ -695,6 +698,30 @@ static void skl_fbc_program_cfb_stride(struct intel_fbc *fbc)
 		     CHICKEN_FBC_STRIDE_MASK, val);
 }
 
+static bool
+xe3p_lpd_fbc_is_fp16_format(const struct intel_plane_state *plane_state)
+{
+	const struct drm_framebuffer *fb = plane_state->hw.fb;
+
+	switch (fb->format->format) {
+	case DRM_FORMAT_ARGB16161616F:
+	case DRM_FORMAT_ABGR16161616F:
+		return true;
+	default:
+		return false;
+	}
+}
+
+bool
+intel_fbc_is_fp16_format_supported(const struct intel_plane_state *plane_state)
+{
+	struct intel_display *display = to_intel_display(plane_state);
+
+	if (DISPLAY_VER(display) >= 35)
+		return xe3p_lpd_fbc_is_fp16_format(plane_state);
+
+	return false;
+}
 static u32 ivb_dpfc_ctl(struct intel_fbc *fbc)
 {
 	struct intel_display *display = fbc->display;
@@ -810,6 +837,8 @@ static void intel_fbc_nuke(struct intel_fbc *fbc)
 static void intel_fbc_activate(struct intel_fbc *fbc)
 {
 	struct intel_display *display = fbc->display;
+	struct intel_plane *plane = fbc->state.plane;
+	struct intel_plane_state *plane_state = to_intel_plane_state(plane->base.state);
 
 	lockdep_assert_held(&fbc->lock);
 
@@ -822,6 +851,11 @@ static void intel_fbc_activate(struct intel_fbc *fbc)
 	 */
 	drm_WARN_ON(display->drm, fbc->active && HAS_FBC_DIRTY_RECT(display));
 
+	drm_WARN_ON(display->drm,
+		    DISPLAY_VER(display) >= 35 &&
+		    xe3p_lpd_fbc_is_fp16_format(plane_state) &&
+		    (plane_state->pixel_normalizer & PLANE_PIXEL_NORMALIZE_ENABLE) == 0);
+
 	intel_fbc_hw_activate(fbc);
 	intel_fbc_nuke(fbc);
 
@@ -1142,6 +1176,9 @@ static bool xe3p_lpd_fbc_pixel_format_is_valid(const struct intel_plane_state *p
 {
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 
+	if (xe3p_lpd_fbc_is_fp16_format(plane_state))
+		return true;
+
 	switch (fb->format->format) {
 	case DRM_FORMAT_XRGB8888:
 	case DRM_FORMAT_XBGR8888:
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index c86562404a00..dc7c76bfd135 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -53,5 +53,6 @@ void intel_fbc_prepare_dirty_rect(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
 void intel_fbc_dirty_rect_update_noarm(struct intel_dsb *dsb,
 				       struct intel_plane *plane);
+bool intel_fbc_is_fp16_format_supported(const struct intel_plane_state *plane_state);
 
 #endif /* __INTEL_FBC_H__ */

-- 
2.51.0

