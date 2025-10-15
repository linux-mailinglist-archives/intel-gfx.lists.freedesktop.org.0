Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF946BDC501
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 05:18:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A88110E711;
	Wed, 15 Oct 2025 03:18:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pow2h14M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9F0610E711;
 Wed, 15 Oct 2025 03:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760498302; x=1792034302;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=MGQsmKqOanAEKnuAgyTglGTowwJq4h9SFP2r5TZopDA=;
 b=Pow2h14MniV0oZJOwHSjOboZ6Vg/KuwHkYLhThlEwy+Em/wiTHdugIVm
 VjUHPVdR8SprcuXut+E7oMNKF/1ftl8BoXkD55vSLvoYXDe2nXEMLEuKX
 wezHWrVTj4ae6DJRM9N81bVOtxogm9IbKgTc1OCxfb/V+aPLKPUdmwJsm
 ENX+6IUWa4ZTR5ZysE2AsJT/7zaWVfuJpDpD0lbPjVEBZHz8d0x5Jto5Z
 al3rzw9m7+w/513Olw14jweYm54jcy4ArwPDmLw9K9YbVWa36YiutzlBc
 RfdfISpYLz7G8bISTA5YeED/Z+l3hG0FlAcC9+Bay2GOdyxHH7LtG+44W Q==;
X-CSE-ConnectionGUID: I1C41aSGRcav2zIL4koXYw==
X-CSE-MsgGUID: xx6ozAOWRyehE4U2r1hqCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11582"; a="62702569"
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="62702569"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:22 -0700
X-CSE-ConnectionGUID: U0VI10xbSuiacAocvu7VuA==
X-CSE-MsgGUID: IPib5HHlQqmTpNG/AviP0Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,230,1754982000"; d="scan'208";a="186303003"
Received: from smoehrl-linux.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.185])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 20:18:19 -0700
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Wed, 15 Oct 2025 00:15:25 -0300
Subject: [PATCH 25/32] drm/i915/xe3p_lpd: Add FBC support for FP16 formats
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-xe3p_lpd-basic-enabling-v1-25-d2d1e26520aa@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
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
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>, 
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
index 75c78bef54f2..715a9acabe89 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -64,6 +64,7 @@
 #include "intel_fbc.h"
 #include "intel_fbc_regs.h"
 #include "intel_frontbuffer.h"
+#include "skl_universal_plane_regs.h"
 
 #define for_each_fbc_id(__display, __fbc_id) \
 	for ((__fbc_id) = INTEL_FBC_A; (__fbc_id) < I915_MAX_FBCS; (__fbc_id)++) \
@@ -154,6 +155,8 @@ static unsigned int intel_fbc_cfb_cpp(const struct intel_plane_state *plane_stat
 	case DRM_FORMAT_XBGR16161616:
 	case DRM_FORMAT_ARGB16161616:
 	case DRM_FORMAT_ABGR16161616:
+	case DRM_FORMAT_ARGB16161616F:
+	case DRM_FORMAT_ABGR16161616F:
 		return 8;
 	default:
 		return 4;
@@ -696,6 +699,30 @@ static void skl_fbc_program_cfb_stride(struct intel_fbc *fbc)
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
@@ -811,6 +838,8 @@ static void intel_fbc_nuke(struct intel_fbc *fbc)
 static void intel_fbc_activate(struct intel_fbc *fbc)
 {
 	struct intel_display *display = fbc->display;
+	struct intel_plane *plane = fbc->state.plane;
+	struct intel_plane_state *plane_state = to_intel_plane_state(plane->base.state);
 
 	lockdep_assert_held(&fbc->lock);
 
@@ -823,6 +852,11 @@ static void intel_fbc_activate(struct intel_fbc *fbc)
 	 */
 	drm_WARN_ON(display->drm, fbc->active && HAS_FBC_DIRTY_RECT(display));
 
+	drm_WARN_ON(display->drm,
+		    DISPLAY_VER(display) >= 35 &&
+		    xe3p_lpd_fbc_is_fp16_format(plane_state) &&
+		    (plane_state->pixel_normalizer & PLANE_PIXEL_NORMALIZE_ENABLE) == 0);
+
 	intel_fbc_hw_activate(fbc);
 	intel_fbc_nuke(fbc);
 
@@ -1140,6 +1174,9 @@ static bool xe3p_lpd_fbc_pixel_format_is_valid(const struct intel_plane_state *p
 {
 	const struct drm_framebuffer *fb = plane_state->hw.fb;
 
+	if (xe3p_lpd_fbc_is_fp16_format(plane_state))
+		return true;
+
 	switch (fb->format->format) {
 	case DRM_FORMAT_XRGB8888:
 	case DRM_FORMAT_XBGR8888:
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index 0e715cb6b4e6..e14dc359ecf5 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -52,5 +52,6 @@ void intel_fbc_prepare_dirty_rect(struct intel_atomic_state *state,
 				  struct intel_crtc *crtc);
 void intel_fbc_dirty_rect_update_noarm(struct intel_dsb *dsb,
 				       struct intel_plane *plane);
+bool intel_fbc_is_fp16_format_supported(const struct intel_plane_state *plane_state);
 
 #endif /* __INTEL_FBC_H__ */

-- 
2.51.0

