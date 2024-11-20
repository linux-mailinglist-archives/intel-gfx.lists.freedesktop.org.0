Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA75E9D3A2A
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 13:04:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7293910E731;
	Wed, 20 Nov 2024 12:04:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TDkz5S3/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B5EB10E72E;
 Wed, 20 Nov 2024 12:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732104246; x=1763640246;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AUV1tRWQ3hPxuoy+IKe7YDWBfinsgF+0ZOy8wYwzDjE=;
 b=TDkz5S3/cxUy1IbSAJm0utn97sNHnxndDA7X/K/lWO3NP/NXjYizfmDQ
 aaFa1073bcQKatTUKXn5H2a2IeIdsy3rlwocV/p/Hz2Q2H/cCvg/cqeX8
 iV8Q4dCUeaoyONzVp1NbWiFQ3rgT0aX9mRY71Sq5M2DEGhxq9J3qAwza8
 JAO23Ta2OucqJ5+om44FD0SoBMXccAAq9fT/Kv6uC67kryEkn6lYj5jqu
 q7levwGbgJDzNSuXTBToYGzgrf5Kk7gXkIMqn01JiYpbXIzrcwI57xEIv
 VFr+VDGiu5ovkfcRCHecECCQDwhAhH5MjpfwaCkOqFKr2a0JInJqoUgBK Q==;
X-CSE-ConnectionGUID: Kd7dSyaRTmaf70Hr2uty8Q==
X-CSE-MsgGUID: CcISMyvpSaGARHHNqtqvSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="43540137"
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="43540137"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:04:06 -0800
X-CSE-ConnectionGUID: 57dHQKd8TsOV4ZeWlZAYWA==
X-CSE-MsgGUID: EVcnzrYLT6O+gDaXapTG4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,169,1728975600"; d="scan'208";a="90277935"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 04:04:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 5/6] drm/i915/display: add struct drm_device to struct
 intel_display conversion function
Date: Wed, 20 Nov 2024 14:03:36 +0200
Message-Id: <cbbf26fa58ef662946303c972b1a1ff1547ddcfe.1732104170.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1732104170.git.jani.nikula@intel.com>
References: <cover.1732104170.git.jani.nikula@intel.com>
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

Add a __drm_to_display() conversion function to hide the to_i915() usage
and the implicit dependency on i915_drv.h from intel_display_types.h.

The goal is for this implementation to be a transitional helper
only. One idea I've floated around in the past would be to require a
struct intel_display pointer member to be placed right after struct
drm_device member in struct drm_i915_private and struct xe_device
[1][2].

[1] https://lore.kernel.org/r/7777ff70e2be0663de4398aa6f75f0c54146cbfc.1709727127.git.jani.nikula@intel.com
[2] https://lore.kernel.org/r/0b9459da6c8cba0f74bf2781d69182fa6801cd97.1709727127.git.jani.nikula@intel.com

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_conversion.c | 5 +++++
 drivers/gpu/drm/i915/display/intel_display_conversion.h | 3 ++-
 drivers/gpu/drm/i915/display/intel_display_types.h      | 3 ++-
 3 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_conversion.c b/drivers/gpu/drm/i915/display/intel_display_conversion.c
index bdd947f5ccd8..0578b68404da 100644
--- a/drivers/gpu/drm/i915/display/intel_display_conversion.c
+++ b/drivers/gpu/drm/i915/display/intel_display_conversion.c
@@ -7,3 +7,8 @@ struct intel_display *__i915_to_display(struct drm_i915_private *i915)
 {
 	return &i915->display;
 }
+
+struct intel_display *__drm_to_display(struct drm_device *drm)
+{
+	return __i915_to_display(to_i915(drm));
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_conversion.h b/drivers/gpu/drm/i915/display/intel_display_conversion.h
index 790d0be698dc..46c7208d42ba 100644
--- a/drivers/gpu/drm/i915/display/intel_display_conversion.h
+++ b/drivers/gpu/drm/i915/display/intel_display_conversion.h
@@ -8,11 +8,12 @@
 #ifndef __INTEL_DISPLAY_CONVERSION__
 #define __INTEL_DISPLAY_CONVERSION__
 
+struct drm_device;
 struct drm_i915_private;
 struct intel_display;
 
 struct intel_display *__i915_to_display(struct drm_i915_private *i915);
-
+struct intel_display *__drm_to_display(struct drm_device *drm);
 /*
  * Transitional macro to optionally convert struct drm_i915_private * to struct
  * intel_display *, also accepting the latter.
diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 339e4b0f7698..2098e14b7ae7 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -45,6 +45,7 @@
 #include "i915_vma_types.h"
 #include "intel_bios.h"
 #include "intel_display.h"
+#include "intel_display_conversion.h"
 #include "intel_display_limits.h"
 #include "intel_display_power.h"
 #include "intel_dpll_mgr.h"
@@ -2086,7 +2087,7 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
  * intel_display pointer.
  */
 #define __drm_device_to_intel_display(p) \
-	((p) ? &to_i915(p)->display : NULL)
+	((p) ? __drm_to_display(p) : NULL)
 #define __device_to_intel_display(p)				\
 	__drm_device_to_intel_display(dev_get_drvdata(p))
 #define __pci_dev_to_intel_display(p)				\
-- 
2.39.5

