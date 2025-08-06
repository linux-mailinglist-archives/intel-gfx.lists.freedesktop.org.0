Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 748BFB1CA22
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 18:56:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 060A210E7D8;
	Wed,  6 Aug 2025 16:56:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HexsqIa0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78F6810E7CD;
 Wed,  6 Aug 2025 16:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754499392; x=1786035392;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=O0+hFxGblFWaySHHE+uj1Ne4x8alHt8xKjb6gkCQ7vU=;
 b=HexsqIa0XhXpR7+0lXAa/xowNNRKLtwffrF5CRiQgjt2Vxe4s8cpP6MF
 IeR0AKRUGnkntbs5OI7lD72jEE/iQCeXQ66Dz2RTj8SZmp374O3CxEYOZ
 AMB4SkE109G1xubJoiOZlOGof4x/2PIO3FAkAlyroQ7er2pH1WwfFI5v5
 J9mnd4rJQDgToFgidJcZRYgCZYuf9zhx2qZnziwT60/4Jr3+q2R22d0EN
 Z5Z57t5s2Ea909vcnuuFr3Mb2VDNs0f1SCmZrtYFpb9xKpc47nhc5I0WE
 M7yddja+H4AC6fCe9/JBYnTXqRGDEr2irK/kIeplJMxOqXtOBSxpYjKg8 Q==;
X-CSE-ConnectionGUID: s99Y0WZeTqCPLY54YkC1oQ==
X-CSE-MsgGUID: AE5JD5aVTHueDHynmOQWYQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56691609"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56691609"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:56:32 -0700
X-CSE-ConnectionGUID: QMRRV051QiqEdhGe6TPwlg==
X-CSE-MsgGUID: NSZr77nOTK2AKVEwrGr6YA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="168999936"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.70])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 09:56:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 15/15] drm/i915/display: drop __to_intel_display() usage
Date: Wed,  6 Aug 2025 19:55:16 +0300
Message-Id: <d2c4a5aab3d69cec6f0640eed157a97531bd72f2.1754499175.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1754499174.git.jani.nikula@intel.com>
References: <cover.1754499174.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

All the places that use __to_intel_display() now get passed a struct
intel_display pointer, and the transitional adaptation macro has served
its purpose. Remove the macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 .../gpu/drm/i915/display/intel_display_conversion.c  |  2 +-
 .../gpu/drm/i915/display/intel_display_conversion.h  | 12 ------------
 drivers/gpu/drm/i915/display/intel_display_device.h  |  7 +++----
 drivers/gpu/drm/i915/display/intel_pch.h             |  4 +---
 4 files changed, 5 insertions(+), 20 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_conversion.c b/drivers/gpu/drm/i915/display/intel_display_conversion.c
index 4d565935e2cc..d56065f22655 100644
--- a/drivers/gpu/drm/i915/display/intel_display_conversion.c
+++ b/drivers/gpu/drm/i915/display/intel_display_conversion.c
@@ -4,7 +4,7 @@
 #include "i915_drv.h"
 #include "intel_display_conversion.h"
 
-struct intel_display *__i915_to_display(struct drm_i915_private *i915)
+static struct intel_display *__i915_to_display(struct drm_i915_private *i915)
 {
 	return i915->display;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_display_conversion.h b/drivers/gpu/drm/i915/display/intel_display_conversion.h
index 46c7208d42ba..d497bc58a73f 100644
--- a/drivers/gpu/drm/i915/display/intel_display_conversion.h
+++ b/drivers/gpu/drm/i915/display/intel_display_conversion.h
@@ -9,20 +9,8 @@
 #define __INTEL_DISPLAY_CONVERSION__
 
 struct drm_device;
-struct drm_i915_private;
 struct intel_display;
 
-struct intel_display *__i915_to_display(struct drm_i915_private *i915);
 struct intel_display *__drm_to_display(struct drm_device *drm);
-/*
- * Transitional macro to optionally convert struct drm_i915_private * to struct
- * intel_display *, also accepting the latter.
- */
-#define __to_intel_display(p)						\
-	_Generic(p,							\
-		 const struct drm_i915_private *: __i915_to_display((struct drm_i915_private *)(p)), \
-		 struct drm_i915_private *: __i915_to_display((struct drm_i915_private *)(p)), \
-		 const struct intel_display *: (p),			\
-		 struct intel_display *: (p))
 
 #endif /* __INTEL_DISPLAY_CONVERSION__ */
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 4308822f0415..6e87b763fe7c 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -9,7 +9,6 @@
 #include <linux/bitops.h>
 #include <linux/types.h>
 
-#include "intel_display_conversion.h"
 #include "intel_display_limits.h"
 
 struct drm_printer;
@@ -224,8 +223,8 @@ struct intel_display_platforms {
 	(IS_DISPLAY_VERx100((__display), (ipver), (ipver)) && \
 	 IS_DISPLAY_STEP((__display), (from), (until)))
 
-#define DISPLAY_INFO(__display)		(__to_intel_display(__display)->info.__device_info)
-#define DISPLAY_RUNTIME_INFO(__display)	(&__to_intel_display(__display)->info.__runtime_info)
+#define DISPLAY_INFO(__display)		((__display)->info.__device_info)
+#define DISPLAY_RUNTIME_INFO(__display)	(&(__display)->info.__runtime_info)
 
 #define DISPLAY_VER(__display)		(DISPLAY_RUNTIME_INFO(__display)->ip.ver)
 #define DISPLAY_VERx100(__display)	(DISPLAY_RUNTIME_INFO(__display)->ip.ver * 100 + \
@@ -236,7 +235,7 @@ struct intel_display_platforms {
 #define INTEL_DISPLAY_STEP(__display)	(DISPLAY_RUNTIME_INFO(__display)->step)
 
 #define IS_DISPLAY_STEP(__display, since, until) \
-	(drm_WARN_ON(__to_intel_display(__display)->drm, INTEL_DISPLAY_STEP(__display) == STEP_NONE), \
+	(drm_WARN_ON((__display)->drm, INTEL_DISPLAY_STEP(__display) == STEP_NONE), \
 	 INTEL_DISPLAY_STEP(__display) >= (since) && INTEL_DISPLAY_STEP(__display) < (until))
 
 #define ARLS_HOST_BRIDGE_PCI_ID1 0x7D1C
diff --git a/drivers/gpu/drm/i915/display/intel_pch.h b/drivers/gpu/drm/i915/display/intel_pch.h
index cf4dab1b98bf..19cac7412d0a 100644
--- a/drivers/gpu/drm/i915/display/intel_pch.h
+++ b/drivers/gpu/drm/i915/display/intel_pch.h
@@ -6,8 +6,6 @@
 #ifndef __INTEL_PCH__
 #define __INTEL_PCH__
 
-#include "intel_display_conversion.h"
-
 struct intel_display;
 
 /*
@@ -36,7 +34,7 @@ enum intel_pch {
 	PCH_LNL,
 };
 
-#define INTEL_PCH_TYPE(_display)		(__to_intel_display(_display)->pch_type)
+#define INTEL_PCH_TYPE(_display)		((_display)->pch_type)
 #define HAS_PCH_DG2(display)			(INTEL_PCH_TYPE(display) == PCH_DG2)
 #define HAS_PCH_ADP(display)			(INTEL_PCH_TYPE(display) == PCH_ADP)
 #define HAS_PCH_DG1(display)			(INTEL_PCH_TYPE(display) == PCH_DG1)
-- 
2.39.5

