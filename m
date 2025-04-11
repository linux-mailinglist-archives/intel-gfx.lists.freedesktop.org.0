Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 444D8A8586E
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Apr 2025 11:54:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD38410EB4D;
	Fri, 11 Apr 2025 09:54:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lfDnIJBB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DEBD10EB4D;
 Fri, 11 Apr 2025 09:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744365267; x=1775901267;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qHXAEPfFr+7DNA8vH6hB4jsLGvuSpyi9C0VCX7SSJes=;
 b=lfDnIJBBIVMX3T20mIH451TdONmZ1fO7BhSrzxB7Su+4DbrtgahhskZQ
 upCQPxCDgH6AMtH4CuVH/Cpx0hPVJf8LuQlI60nozAo+TkZc12NRb3Ztn
 DbX79wh7eVrFlx7NFuiwK7Ey9L+PjAi4qAQeKPAI3P+qA0lK/cV9ikrEY
 nyP9/eYUiO7W1s8aFIVhffWdxW7VdV8MJzjMD99RaPq41rdQRkh6hLW/I
 /flg9q+oOW2d90UL6CuzimD9OGz3R+YcmNRQGR1/ufNfkbl8fSAw5I3+Q
 WufBKBuZvMAcH4h1FjMmseEBG3crQvdv1v0LR3+uomUkYG5QovVWJ1FVx Q==;
X-CSE-ConnectionGUID: aTv/SOk6QC23cSDg7na/fw==
X-CSE-MsgGUID: PlQBq96ySna9TeOS4OodlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11400"; a="56094847"
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="56094847"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 02:54:27 -0700
X-CSE-ConnectionGUID: UvPzAWSkRjKRPQcon/wMKQ==
X-CSE-MsgGUID: YG/8wwTCRRefbCG60CtkbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,203,1739865600"; d="scan'208";a="133265579"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.115])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2025 02:54:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 1/4] drm/{i915,xe}: Move intel_pch under display
Date: Fri, 11 Apr 2025 12:54:11 +0300
Message-Id: <041e3dee494aa15c22172360f2bdd9b15e4acb00.1744364975.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1744364975.git.jani.nikula@intel.com>
References: <cover.1744364975.git.jani.nikula@intel.com>
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

From: Rodrigo Vivi <rodrigo.vivi@intel.com>

The only usage of the "PCH" infra is to detect which South Display
Engine we should be using. Move it under display so we can convert
all its callers towards intel_display struct later.

No functional or code change.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                          | 2 +-
 drivers/gpu/drm/i915/{soc => display}/intel_pch.c      | 2 +-
 drivers/gpu/drm/i915/{soc => display}/intel_pch.h      | 2 +-
 drivers/gpu/drm/i915/i915_drv.h                        | 3 +--
 drivers/gpu/drm/xe/Makefile                            | 2 +-
 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h | 6 ------
 drivers/gpu/drm/xe/xe_device_types.h                   | 2 +-
 7 files changed, 6 insertions(+), 13 deletions(-)
 rename drivers/gpu/drm/i915/{soc => display}/intel_pch.c (99%)
 rename drivers/gpu/drm/i915/{soc => display}/intel_pch.h (98%)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index c8fc271b33b7..13d4a16f7d33 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -52,7 +52,6 @@ i915-y += \
 i915-y += \
 	soc/intel_dram.o \
 	soc/intel_gmch.o \
-	soc/intel_pch.o \
 	soc/intel_rom.o
 
 # core library code
@@ -282,6 +281,7 @@ i915-y += \
 	display/intel_modeset_setup.o \
 	display/intel_modeset_verify.o \
 	display/intel_overlay.o \
+	display/intel_pch.o \
 	display/intel_pch_display.o \
 	display/intel_pch_refclk.o \
 	display/intel_plane_initial.o \
diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/display/intel_pch.c
similarity index 99%
rename from drivers/gpu/drm/i915/soc/intel_pch.c
rename to drivers/gpu/drm/i915/display/intel_pch.c
index 82dc7fbd1a3e..37766e40fd1c 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.c
+++ b/drivers/gpu/drm/i915/display/intel_pch.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: MIT
 /*
- * Copyright 2019 Intel Corporation.
+ * Copyright 2025 Intel Corporation.
  */
 
 #include "i915_drv.h"
diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/display/intel_pch.h
similarity index 98%
rename from drivers/gpu/drm/i915/soc/intel_pch.h
rename to drivers/gpu/drm/i915/display/intel_pch.h
index 635aea7a5539..b9fa2b2f07bc 100644
--- a/drivers/gpu/drm/i915/soc/intel_pch.h
+++ b/drivers/gpu/drm/i915/display/intel_pch.h
@@ -1,6 +1,6 @@
 /* SPDX-License-Identifier: MIT */
 /*
- * Copyright 2019 Intel Corporation.
+ * Copyright 2025 Intel Corporation.
  */
 
 #ifndef __INTEL_PCH__
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 236c48d282e4..65e795a4ecba 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -38,6 +38,7 @@
 
 #include "display/intel_display_limits.h"
 #include "display/intel_display_core.h"
+#include "display/intel_pch.h"
 
 #include "gem/i915_gem_context_types.h"
 #include "gem/i915_gem_shrinker.h"
@@ -49,8 +50,6 @@
 #include "gt/intel_workarounds.h"
 #include "gt/uc/intel_uc.h"
 
-#include "soc/intel_pch.h"
-
 #include "i915_drm_client.h"
 #include "i915_gem.h"
 #include "i915_gpu_error.h"
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index c5d6681645ed..3ecac0a38b82 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -198,7 +198,6 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 # SOC code shared with i915
 xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-soc/intel_dram.o \
-	i915-soc/intel_pch.o \
 	i915-soc/intel_rom.o
 
 # Display code shared with i915
@@ -273,6 +272,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_panel.o \
 	i915-display/intel_pfit.o \
 	i915-display/intel_pmdemand.o \
+	i915-display/intel_pch.o \
 	i915-display/intel_pps.o \
 	i915-display/intel_psr.o \
 	i915-display/intel_qp_tables.o \
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h b/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h
deleted file mode 100644
index 9c46556d33a4..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_pch.h
+++ /dev/null
@@ -1,6 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2023 Intel Corporation
- */
-
-#include "../../../i915/soc/intel_pch.h"
diff --git a/drivers/gpu/drm/xe/xe_device_types.h b/drivers/gpu/drm/xe/xe_device_types.h
index 0369fc09c9da..9662bbfb257c 100644
--- a/drivers/gpu/drm/xe/xe_device_types.h
+++ b/drivers/gpu/drm/xe/xe_device_types.h
@@ -31,7 +31,7 @@
 #endif
 
 #if IS_ENABLED(CONFIG_DRM_XE_DISPLAY)
-#include "soc/intel_pch.h"
+#include "intel_pch.h"
 #include "intel_display_core.h"
 #include "intel_display_device.h"
 #endif
-- 
2.39.5

