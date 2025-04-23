Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4447AA984EE
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 11:10:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8B8010E41B;
	Wed, 23 Apr 2025 09:10:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bumdBdkS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05C1C10E64E;
 Wed, 23 Apr 2025 09:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745399405; x=1776935405;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0h+jg/DokUzLb7bH96F/Wfo+/qMF0lyBYsyjue9pB78=;
 b=bumdBdkSGeXLhg5C/70NvjoO3cAZPYOBR720f/6w4Jk8BZuUaAlutf2q
 bMvtjZJcC2/c4S0R4mmcKIXogcpL3SN4fCs249N/RNPCdtUp/PpY35IHE
 8HsTF6FU64ld3OFf9mK4qkYGpmzXbEVqjOeIP7qU489qua5pV37ndYjnP
 0GfMUStdXRmu7p56vh5aIMu7nTSpnmfbzbpqlPAozIlpDclow7Wrjgkze
 3aqEKYux9izumbeBBKK+b2Zpd2dS1n2+v5hSZuwTUYZpvYYB9cIPBoCvb
 byo/p6q47EmszQIgZHg6S5vkR9MGMlZ3eG8X51j4tqv0cQHNgSD0rL2DM w==;
X-CSE-ConnectionGUID: sdzR+zNnTySzfEbH+PbYpg==
X-CSE-MsgGUID: R7/+OluhQBekZTUbAh9ZIw==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="46686940"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="46686940"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 02:10:05 -0700
X-CSE-ConnectionGUID: UBb9WF0iTV6FAspuBrr7fA==
X-CSE-MsgGUID: 7i2/slaaRieFJmhSKIvo1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="163317714"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.175])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 02:10:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/3] drm/i915/dpt: convert intel_dpt_common.c to struct
 intel_display
Date: Wed, 23 Apr 2025 12:09:46 +0300
Message-Id: <d5b11987e97c642a1c7ee9de93b9bd24d97d5a67.1745399318.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1745399318.git.jani.nikula@intel.com>
References: <cover.1745399318.git.jani.nikula@intel.com>
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

