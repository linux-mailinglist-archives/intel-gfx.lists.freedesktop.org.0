Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A21CC36AB
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 15:05:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02C3610E7FA;
	Tue, 16 Dec 2025 14:05:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Wp8y2Co6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71E9710E2D6;
 Tue, 16 Dec 2025 14:05:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765893925; x=1797429925;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FSrfAIRGNRTOG1kihz2jz0HY5jiji1F1d0j9XukoSwk=;
 b=Wp8y2Co6P7w8iYFn+pFlK2Y3SnFg+KactD7ihW52r99cB4gmugsdxYvZ
 hMExquLaHlSNNSrG10pYfwEKwF2XRHKJ7Rwv9n895BbTdCYuNvIEjP+b/
 svd37AnZmNQ9LEyyfn4u4fyj7McrjrOGZQFZx+K47fjqrEPCCIPx7OeaS
 8/sgQKvg63hDN4Fwxnlotdys7tkevOPlpDDsWR0wO477GaVaNC/cm2S1i
 bGQ+AFkgw9yKuYSDFvyo4mj9oP93hLNWpYb7urejdbAFzeOZbmjX5ItHv
 yyS8ottLuUcM5plTR4xO40ldtKQ/LyiotMZomDbfZkstK7nQiCFmjKni+ g==;
X-CSE-ConnectionGUID: W0Vi+F12QfebkRKGYub6iA==
X-CSE-MsgGUID: yB7Z193jTvaA4JeOholjFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="67567373"
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="67567373"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 06:05:25 -0800
X-CSE-ConnectionGUID: UQpapJe2RnaPwxyaTcW4Yg==
X-CSE-MsgGUID: 12zWlOrQRuu3iwXG9978IA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="197121325"
Received: from abityuts-desk.ger.corp.intel.com (HELO
 vgovind2-mobl4.intel.com) ([10.245.244.244])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 06:05:21 -0800
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, matthew.d.roper@intel.com,
 ville.syrjala@intel.com
Subject: [PATCH] drm/i915/display: update the wa_22014263786
Date: Tue, 16 Dec 2025 16:05:08 +0200
Message-ID: <20251216140508.975258-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo
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

For DG2, wa_22014263786 is applicable only if the number of active
planes is greater than 1 in pipe A and pipe B. Cursor planes and
any planes on pipe C or pipe D are not considered for this.

Bspec: 54077, 72197
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 .../gpu/drm/i915/display/intel_display_wa.c   | 29 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  6 ++++
 2 files changed, 34 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
index a00af39f7538..ffc2356283aa 100644
--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
@@ -7,6 +7,7 @@
 
 #include "i915_reg.h"
 #include "intel_de.h"
+#include "intel_display_types.h"
 #include "intel_display_core.h"
 #include "intel_display_regs.h"
 #include "intel_display_wa.h"
@@ -53,6 +54,32 @@ static bool intel_display_needs_wa_16025573575(struct intel_display *display)
 		DISPLAY_VERx100(display) == 3500;
 }
 
+static bool intel_display_needs_wa_22014263786(struct intel_display *display)
+{
+	if (!IS_DISPLAY_VERx100(display, 1100, 1400))
+		return false;
+
+	if (display->platform.dg2) {
+		u8 pipe_mask = PIPE_A | PIPE_B;
+		int num_active_planes = 0;
+		struct intel_crtc *crtc;
+
+		for_each_intel_crtc_in_pipe_mask(display->drm, crtc, pipe_mask) {
+			const struct intel_crtc_state *crtc_state =
+				to_intel_crtc_state(crtc->base.state);
+			u8 active_planes =
+				crtc_state->active_planes & ~BIT(PLANE_CURSOR);
+
+			num_active_planes += hweight8(active_planes);
+		}
+
+		if (num_active_planes <= 1)
+			return false;
+	}
+
+	return true;
+}
+
 /*
  * Wa_14011503117:
  * Fixes: Before enabling the scaler DE fatal error is masked
@@ -69,7 +96,7 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
 	case INTEL_DISPLAY_WA_14011503117:
 		return DISPLAY_VER(display) == 13;
 	case INTEL_DISPLAY_WA_22014263786:
-		return IS_DISPLAY_VERx100(display, 1100, 1400);
+		return intel_display_needs_wa_22014263786(display);
 	case INTEL_DISPLAY_WA_15018326506:
 		return display->platform.battlemage;
 	case INTEL_DISPLAY_WA_14025769978:
diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index fef2f35ff1e9..5b0a83cb5386 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -944,10 +944,16 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
 	 * Wa_22014263786
 	 * Fixes: Screen flicker with FBC and Package C state enabled
 	 * Workaround: Forced SLB invalidation before start of new frame.
+	 *             For DG2, wa is applied only if the number of planes
+	 *             in PIPE A and PIPE B is > 1. If the wa condition is
+	 *             not met, this chicken bit must be unset for DG2.
 	 */
 	if (intel_display_wa(display, 22014263786))
 		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
 			     0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
+	else if (display->platform.dg2)
+		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
+			     DPFC_CHICKEN_FORCE_SLB_INVALIDATION, 0);
 
 	/* wa_18038517565 Disable DPFC clock gating before FBC enable */
 	if (display->platform.dg2 || DISPLAY_VER(display) >= 14)
-- 
2.43.0

