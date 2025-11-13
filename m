Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0AC0C56B8E
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 10:58:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4548910E15D;
	Thu, 13 Nov 2025 09:58:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l1pXdHqJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94E7F10E15D;
 Thu, 13 Nov 2025 09:58:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763027925; x=1794563925;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8QKo3VyWYSSY3UjfH5rxDwje81y7hqPyD32R5Oe+5KQ=;
 b=l1pXdHqJUTghhM8CNsJiawzq5u4MVvV7L0Pm9K65SROY81JkvYTGAAYD
 2nIXpA5ZDa36+s5myNB5X/qEgGoCu5LQKmM049nWDRBgzEd5cW+9gRA1T
 5otDGSqRDP34EwRjTTNIDtAqgKhvUFh/ibP6VYkguabRSSvn9PPmFNdVz
 fh1T9cE3j9sNe4DJJ+J3J6Osa9ZCg63MBn4mt6jAVtG3fkWTUzqNPtnFW
 CnkrF5jQPeZSg+LG+9n39/Oflie2KnKX+mDUWzJJRnTxoud8pQ79+K9wY
 fTlr6q1/zaOa3hwzCufDrvUuwB6ilbaQkMSVNyG/51U/Ok6PPYVDn+1Ur Q==;
X-CSE-ConnectionGUID: IgKdENUSQjW05ZLJNpTURQ==
X-CSE-MsgGUID: NpMBZtJaTriOjFjj12PpQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="65262527"
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="65262527"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 01:58:44 -0800
X-CSE-ConnectionGUID: +7F/GDSyRC+LcEEzDY7Ihw==
X-CSE-MsgGUID: iHOdmODvT+6/Yws+bYDsNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="226764182"
Received: from aotchere-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.135])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 01:58:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com, uma.shankar@intel.com
Subject: [PATCH 7/8] drm/i915: move intel_rom.[ch] from soc/ to display/
Date: Thu, 13 Nov 2025 11:58:04 +0200
Message-ID: <4ca7936685c4b2b5c4d01c072610b9ad63439f41.1763027774.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1763027774.git.jani.nikula@intel.com>
References: <cover.1763027774.git.jani.nikula@intel.com>
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
index dddc5ce76462..c7ef64b8f99a 100644
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
@@ -302,6 +301,7 @@ i915-y += \
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
index cddd07debc3c..7d0d4c780145 100644
--- a/drivers/gpu/drm/xe/Makefile
+++ b/drivers/gpu/drm/xe/Makefile
@@ -194,11 +194,6 @@ subdir-ccflags-$(CONFIG_DRM_XE_DISPLAY) += \
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
@@ -310,6 +301,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
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

