Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 525FFC70B61
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Nov 2025 19:53:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DED8A10E688;
	Wed, 19 Nov 2025 18:53:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Su3syzyG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4B6210E689;
 Wed, 19 Nov 2025 18:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763578411; x=1795114411;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wroKjEttzOaEzOWrvo1xkV1OxHMG6bWsXM9fK/B2+RA=;
 b=Su3syzyGC5Srfn7reHrWuqnIFNJx73CTPsf/tVRyn3+Z6w7Y/uF96oDd
 HEoRHt1l5Y/S2xquS3RRDhEPcugKgfmtd5F9EcOwwYIakjuM5+CcSfnHm
 zV3Hq8zfK+IiTXjCvEa4l+KGXqAkB0rfpF3aAEsgR5cOIS3RkOM9mWBGL
 u6S306OeewOgh0e/aqIv5xFXIa5U06f9F6l0g3kupjXthyooMDB/wAcVg
 xQm7hAu87b6WJI6wDGAnUX9f2YAZsIEAvPynMeu2DpRa0iyBIr1urydgZ
 AX3Ulwn/cX3tjYPfmlOnltNtGqQnudjvs9JHVbPW4GK9yYI6m8Tl6U8/B g==;
X-CSE-ConnectionGUID: 8UDsVZr4SZyaj+P2O1iEDQ==
X-CSE-MsgGUID: VTC1Br6mRD+gZ3w8/J2sOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11618"; a="65672362"
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="65672362"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:30 -0800
X-CSE-ConnectionGUID: DdDiL2IBQI65GnFZuotu5w==
X-CSE-MsgGUID: 2lintlWKRky2jYVxLjoC1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,316,1754982000"; d="scan'208";a="196279719"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.187])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2025 10:53:29 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 07/13] drm/i915: move intel_rom.[ch] from soc/ to display/
Date: Wed, 19 Nov 2025 20:52:46 +0200
Message-ID: <352ec255a6e9b81c7d1e35d8fbf7018d4049d4d3.1763578288.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763578288.git.jani.nikula@intel.com>
References: <cover.1763578288.git.jani.nikula@intel.com>
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

The sole user of intel_rom.[ch] has always been in display. Move them
under display.

This allows us to remove the compat soc/intel_rom.h from xe, as well as
the Makefile rules to build anything from soc/.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                          |  4 ++--
 drivers/gpu/drm/i915/display/intel_bios.c              |  3 +--
 drivers/gpu/drm/i915/{soc => display}/intel_rom.c      |  0
 drivers/gpu/drm/i915/{soc => display}/intel_rom.h      |  0
 drivers/gpu/drm/xe/Makefile                            | 10 +---------
 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_rom.h |  6 ------
 6 files changed, 4 insertions(+), 19 deletions(-)
 rename drivers/gpu/drm/i915/{soc => display}/intel_rom.c (100%)
 rename drivers/gpu/drm/i915/{soc => display}/intel_rom.h (100%)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/soc/intel_rom.h

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 838c8e58e4a2..12f948f0062c 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -58,8 +58,7 @@ i915-y += \
 
 # core peripheral code
 i915-y += \
-	soc/intel_gmch.o \
-	soc/intel_rom.o
+	soc/intel_gmch.o
 
 # core library code
 i915-y += \
@@ -303,6 +302,7 @@ i915-y += \
 	display/intel_pmdemand.o \
 	display/intel_psr.o \
 	display/intel_quirks.o \
+	display/intel_rom.o \
 	display/intel_sbi.o \
 	display/intel_sprite.o \
 	display/intel_sprite_uapi.o \
diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 4b41068e9e35..a639c5eb3245 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -34,14 +34,13 @@
 #include <drm/drm_fixed.h>
 #include <drm/drm_print.h>
 
-#include "soc/intel_rom.h"
-
 #include "intel_display.h"
 #include "intel_display_core.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
 #include "intel_display_utils.h"
 #include "intel_gmbus.h"
+#include "intel_rom.h"
 
 #define _INTEL_BIOS_PRIVATE
 #include "intel_vbt_defs.h"
diff --git a/drivers/gpu/drm/i915/soc/intel_rom.c b/drivers/gpu/drm/i915/display/intel_rom.c
similarity index 100%
rename from drivers/gpu/drm/i915/soc/intel_rom.c
rename to drivers/gpu/drm/i915/display/intel_rom.c
diff --git a/drivers/gpu/drm/i915/soc/intel_rom.h b/drivers/gpu/drm/i915/display/intel_rom.h
similarity index 100%
rename from drivers/gpu/drm/i915/soc/intel_rom.h
rename to drivers/gpu/drm/i915/display/intel_rom.h
diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
index 85642340a8fa..9331212117a1 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -195,11 +195,6 @@ subdir-ccflags-$(CONFIG_DRM_XE_DISPLAY) += \
 	-I$(srctree)/drivers/gpu/drm/i915/display/ \
 	-Ddrm_i915_private=xe_device
 
-# Rule to build SOC code shared with i915
-$(obj)/i915-soc/%.o: $(srctree)/drivers/gpu/drm/i915/soc/%.c FORCE
-	$(call cmd,force_checksrc)
-	$(call if_changed_rule,cc_o_c)
-
 # Rule to build display code shared with i915
 $(obj)/i915-display/%.o: $(srctree)/drivers/gpu/drm/i915/display/%.c FORCE
 	$(call cmd,force_checksrc)
@@ -222,10 +217,6 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	display/xe_stolen.o \
 	display/xe_tdf.o
 
-# SOC code shared with i915
-xe-$(CONFIG_DRM_XE_DISPLAY) += \
-	i915-soc/intel_rom.o
-
 # Display code shared with i915
 xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/icl_dsi.o \
@@ -312,6 +303,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
 	i915-display/intel_psr.o \
 	i915-display/intel_qp_tables.o \
 	i915-display/intel_quirks.o \
+	i915-display/intel_rom.o \
 	i915-display/intel_snps_hdmi_pll.o \
 	i915-display/intel_snps_phy.o \
 	i915-display/intel_tc.o \
diff --git a/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_rom.h b/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_rom.h
deleted file mode 100644
index 05cbfb697b2b..000000000000
--- a/drivers/gpu/drm/xe/compat-i915-headers/soc/intel_rom.h
+++ /dev/null
@@ -1,6 +0,0 @@
-/* SPDX-License-Identifier: MIT */
-/*
- * Copyright © 2024 Intel Corporation
- */
-
-#include "../../../i915/soc/intel_rom.h"
-- 
2.47.3

