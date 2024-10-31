Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 594F99B79DA
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 12:39:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAD5F10E3F9;
	Thu, 31 Oct 2024 11:39:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M5ryE/jN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C980310E83C;
 Thu, 31 Oct 2024 11:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730374751; x=1761910751;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LRGr4+Jes3HGhZFEUDdq6v7D4ONUK9hYGDD8MMNxtr0=;
 b=M5ryE/jNIXBWVBFFXwxTBpd9ksAMDhX4NVucIJ557m5L7nzel4dplub3
 e+Vlw96FMglkL9eF/8AgzKTeN50jCCR14BnOzM8RhLSleNJKPZXzyLzZW
 zTJSiVoKV+ezH8/CXD64KRdIeA/NmmDxUebt0bgX5w/TFMprUFt3yIzLB
 eEuYApEJnwYpN9Z5ahgnZXzYD7j+pb7P7y8Fz+If6JfRgRE/PFdIn6NNY
 8o47QKqDtmQfzSpjFfm59jP+f5rSjt6o4BT4KA4/sNFBODN6xDo1G8ZHv
 X0CWSbrjdAEzbHGSrlsVd+QsNmGyHc5puz63mczIY9s1a/rhsm4dWHmKD g==;
X-CSE-ConnectionGUID: EAYOq2lKS5yW6bTrS9/6lA==
X-CSE-MsgGUID: BL4ZRWxlSnGxpxGNqBTeJg==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="30000662"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="30000662"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 04:39:05 -0700
X-CSE-ConnectionGUID: 3fHYYJCZS2aiq2TL32dhaw==
X-CSE-MsgGUID: fBGfNVXyRFWS07B7zlac4Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="87744372"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 04:39:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 5/6] drm/i915/display: add struct drm_device to struct
 intel_display conversion function
Date: Thu, 31 Oct 2024 13:38:35 +0200
Message-Id: <5b537ddf8c8f2c7f8f7d0888e59dd6204b3ea4e3.1730374470.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730374470.git.jani.nikula@intel.com>
References: <cover.1730374470.git.jani.nikula@intel.com>
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
index e63a1d23316c..69c6646a9124 100644
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
@@ -2083,7 +2084,7 @@ to_intel_frontbuffer(struct drm_framebuffer *fb)
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

