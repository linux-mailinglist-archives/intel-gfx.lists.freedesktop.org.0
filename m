Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4879B79D8
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Oct 2024 12:39:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8748510E838;
	Thu, 31 Oct 2024 11:38:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j6xGiAd4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B06FA10E3F9;
 Thu, 31 Oct 2024 11:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730374736; x=1761910736;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UuyAk6zy2kPCTFaVWpq+LKfA6mOGW1HAsaoLxrjb5+w=;
 b=j6xGiAd4w7yeCoOADsN+Bm+PQengdEMFp7Enoe3GybuvXHIJa9A2PcG6
 Z9GqN2XAOUuGIC2DYW2mGX77oSwMIO0az7l9CdG3/ib/q9BkxrXmuyBUJ
 ZFRxMpnDoMZkThBb1/S8+/usIyNi8J+QnHSjzR1Kje8B0pc8VGoMO5DeC
 W63R+ld+/hclQ9c21Gk22OzZ1X6dXQQkdLKAgNqbeb5YfxpPNFurI5FmR
 huoyqHqoz928ZqRHmyD9BwkO87sGZAYh3f/XYrN1En9NInkcXFf9bGF4+
 iFUyya8sC5uusEa22M2KkCKJQDms0q0Yq9XfZceJMhQ/LP1v4ainlqHjO w==;
X-CSE-ConnectionGUID: lqPdkWe7SeKFaxkA+Jvu0w==
X-CSE-MsgGUID: nwLg/s2KSLSkV9ZapAy8lA==
X-IronPort-AV: E=McAfee;i="6700,10204,11241"; a="30000645"
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="30000645"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 04:38:56 -0700
X-CSE-ConnectionGUID: +lAgO6ZvRBKnqhXgeiz1oQ==
X-CSE-MsgGUID: SkuPjPBHQ96BKqOrYxamoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,247,1725346800"; d="scan'208";a="87744359"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.204])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2024 04:38:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/6] drm/i915/display: add intel_display_conversion.c to hide
 stuff better
Date: Thu, 31 Oct 2024 13:38:33 +0200
Message-Id: <f08d3740e464b52bffd80b344e8abf5b1fda975c.1730374470.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1730374470.git.jani.nikula@intel.com>
References: <cover.1730374470.git.jani.nikula@intel.com>
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

The __to_intel_display() generics require the definition of struct
drm_i915_private i.e. inclusion of i915_drv.h. Add
intel_display_conversion.c with a __i915_to_display() function to do the
conversion without the intel_display_conversion.h having an implicit
dependency on i915_drv.h.

The long term goal is to remove __to_intel_display() and the
intel_display_conversion.[ch] files altoghether, and this is merely a
transitional step to make the dependencies on i915_drv.h explicit.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                           | 1 +
 drivers/gpu/drm/i915/display/intel_display_conversion.c | 9 +++++++++
 drivers/gpu/drm/i915/display/intel_display_conversion.h | 9 +++++++--
 drivers/gpu/drm/xe/Makefile                             | 1 +
 4 files changed, 18 insertions(+), 2 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_conversion.c

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index ac47d7e988fc..43686d843ef7 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -237,6 +237,7 @@ i915-y += \
 	display/intel_crtc_state_dump.o \
 	display/intel_cursor.o \
 	display/intel_display.o \
+	display/intel_display_conversion.o \
 	display/intel_display_driver.o \
 	display/intel_display_irq.o \
 	display/intel_display_params.o \
diff --git a/drivers/gpu/drm/i915/display/intel_display_conversion.c b/drivers/gpu/drm/i915/display/intel_display_conversion.c
new file mode 100644
index 000000000000..bdd947f5ccd8
--- /dev/null
+++ b/drivers/gpu/drm/i915/display/intel_display_conversion.c
@@ -0,0 +1,9 @@
+// SPDX-License-Identifier: MIT
+/* Copyright © 2024 Intel Corporation */
+
+#include "i915_drv.h"
+
+struct intel_display *__i915_to_display(struct drm_i915_private *i915)
+{
+	return &i915->display;
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_conversion.h b/drivers/gpu/drm/i915/display/intel_display_conversion.h
index ad8545c8055d..790d0be698dc 100644
--- a/drivers/gpu/drm/i915/display/intel_display_conversion.h
+++ b/drivers/gpu/drm/i915/display/intel_display_conversion.h
@@ -8,14 +8,19 @@
 #ifndef __INTEL_DISPLAY_CONVERSION__
 #define __INTEL_DISPLAY_CONVERSION__
 
+struct drm_i915_private;
+struct intel_display;
+
+struct intel_display *__i915_to_display(struct drm_i915_private *i915);
+
 /*
  * Transitional macro to optionally convert struct drm_i915_private * to struct
  * intel_display *, also accepting the latter.
  */
 #define __to_intel_display(p)						\
 	_Generic(p,							\
-		 const struct drm_i915_private *: (&((const struct drm_i915_private *)(p))->display), \
-		 struct drm_i915_private *: (&((struct drm_i915_private *)(p))->display), \
+		 const struct drm_i915_private *: __i915_to_display((struct drm_i915_private *)(p)), \
+		 struct drm_i915_private *: __i915_to_display((struct drm_i915_private *)(p)), \
 		 const struct intel_display *: (p),			\
 		 struct intel_display *: (p))
 
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index bc7a04ce69fd..c357b3afb011 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -206,6 +206,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_ddi.o \
 	i915-display/intel_ddi_buf_trans.o \
 	i915-display/intel_display.o \
+	i915-display/intel_display_conversion.o \
 	i915-display/intel_display_device.o \
 	i915-display/intel_display_driver.o \
 	i915-display/intel_display_irq.o \
-- 
2.39.5

