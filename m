Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59BAFAA6CEA
	for <lists+intel-gfx@lfdr.de>; Fri,  2 May 2025 10:50:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58A9E10E392;
	Fri,  2 May 2025 08:50:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PXOiktEz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3A0010E8C3;
 Fri,  2 May 2025 08:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746175807; x=1777711807;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0h+jg/DokUzLb7bH96F/Wfo+/qMF0lyBYsyjue9pB78=;
 b=PXOiktEzIuOZV9Ke9x1KQt5FXEad+KuRcZ1NmKBm5+GCUQfKQig5+jFg
 vesWKhEdmNLSEuS4xCgaMppD0bNfzrvz90aF+iW+AZaT8aORzn6X6JNYg
 MlQ8lSZ6Hfw0/C05w8tty/zcqdWwys2K/nENaA/BLM6RGH4abXuA8OgXk
 8oUmjdyYI8YK45PR3Odz1d9dMne+aUGdxZiVmrCPU8cGqr5prV83SXSaI
 Yb40dPN9knQZITh+IBtjCdtrCnQ/BP/r2/n4wl6D9R3UQ1IEfwMC2TswL
 ibvuPKTGCQHXJgq3mjEkOzfOWQq9GVNg9seYJYTrk/8aNpWlNTEHkBfZO A==;
X-CSE-ConnectionGUID: Ud6s7Q5EQmOepNR6li6qIQ==
X-CSE-MsgGUID: SAMdxJghQOi28FPXKZ/XKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11420"; a="47115165"
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="47115165"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:50:07 -0700
X-CSE-ConnectionGUID: 5VDY22wXTDSo4i/EVjbIww==
X-CSE-MsgGUID: JLF3QBTNSzOHzyJpXiqV0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,256,1739865600"; d="scan'208";a="138612651"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.144])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2025 01:50:05 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 1/3] drm/i915/dpt: convert intel_dpt_common.c to struct
 intel_display
Date: Fri,  2 May 2025 11:49:54 +0300
Message-Id: <7bc340e05c535479b0f0698372835ba04fd5c8f8.1746175756.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1746175756.git.jani.nikula@intel.com>
References: <cover.1746175756.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Type: text/plain; charset=UTF-8
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

Remove the last uses of struct drm_i915_private from intel_dpt_common.c,
and drop the dependency on i915_drv.h.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt_common.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt_common.c b/drivers/gpu/drm/i915/display/intel_dpt_common.c
index d2dede0a5229..ce5aa0ca0fa5 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt_common.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt_common.c
@@ -3,7 +3,6 @@
  * Copyright © 2023 Intel Corporation
  */
 
-#include "i915_drv.h"
 #include "i915_reg.h"
 #include "intel_de.h"
 #include "intel_display_types.h"
@@ -12,9 +11,9 @@
 
 void intel_dpt_configure(struct intel_crtc *crtc)
 {
-	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+	struct intel_display *display = to_intel_display(crtc);
 
-	if (DISPLAY_VER(i915) == 14) {
+	if (DISPLAY_VER(display) == 14) {
 		enum pipe pipe = crtc->pipe;
 		enum plane_id plane_id;
 
@@ -22,15 +21,15 @@ void intel_dpt_configure(struct intel_crtc *crtc)
 			if (plane_id == PLANE_CURSOR)
 				continue;
 
-			intel_de_rmw(i915, PLANE_CHICKEN(pipe, plane_id),
+			intel_de_rmw(display, PLANE_CHICKEN(pipe, plane_id),
 				     PLANE_CHICKEN_DISABLE_DPT,
-				     i915->display.params.enable_dpt ? 0 :
+				     display->params.enable_dpt ? 0 :
 				     PLANE_CHICKEN_DISABLE_DPT);
 		}
-	} else if (DISPLAY_VER(i915) == 13) {
-		intel_de_rmw(i915, CHICKEN_MISC_2,
+	} else if (DISPLAY_VER(display) == 13) {
+		intel_de_rmw(display, CHICKEN_MISC_2,
 			     CHICKEN_MISC_DISABLE_DPT,
-			     i915->display.params.enable_dpt ? 0 :
+			     display->params.enable_dpt ? 0 :
 			     CHICKEN_MISC_DISABLE_DPT);
 	}
 }
-- 
2.39.5

