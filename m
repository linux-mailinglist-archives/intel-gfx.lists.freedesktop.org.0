Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1CE5AB5489
	for <lists+intel-gfx@lfdr.de>; Tue, 13 May 2025 14:17:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4547A10E588;
	Tue, 13 May 2025 12:17:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K/ZcoDjy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AC7110E585;
 Tue, 13 May 2025 12:17:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747138637; x=1778674637;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Sh9RjmdFBPolkzHtfua1a2IafTMFT+ZyeMdDaQLzUlA=;
 b=K/ZcoDjyqurW9gKCzgToKjHeQLKLB6VsJh0+AkJQUS4f1cLHACfuckKV
 YWnxGd01/1shZTRyH7VvVreQOpzBIXYlljDQG30GcXHUjSQbEMOSyIF7Z
 yBnL4aeESx7PdTttMo19nBCnWo5fr1vH7SFqGEiU4eu4bTrUEmVwRRI+P
 ilq0UJdFKuqLkyX0b5iVHzvvCXbByD9V291E1VViZ0zrbGbblAaNMNjx/
 fCQx1mHNPTIIKDAaz8xEtRprg/zrUKXaJc7IDzLZwkWq5bJkuL/bMYdxu
 wl+0shzkfGUNxKDf8zLXxH8SswRlQSBktX1nYqJbaFJctbXktL+CHUWWs A==;
X-CSE-ConnectionGUID: eZRBcvMdRECkq9rVadM9AA==
X-CSE-MsgGUID: YyDNRfKlR32K4q8vNpGDVQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11431"; a="48235856"
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="48235856"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 05:17:17 -0700
X-CSE-ConnectionGUID: AcR5QqeWTpqwVgwzwwEC1g==
X-CSE-MsgGUID: HpS5bZjlQKayeNXi4r4uuQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,285,1739865600"; d="scan'208";a="138205797"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.175])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2025 05:17:17 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 1/8] drm/i915/sbi: move intel_sbi.[ch] under display/
Date: Tue, 13 May 2025 15:17:00 +0300
Message-Id: <f4665a781408f9d5f826da49db4487b2e324c0fd.1747138550.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1747138550.git.jani.nikula@intel.com>
References: <cover.1747138550.git.jani.nikula@intel.com>
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

The LPT/WPT SBI is arguably part of south display, and it's only used by
intel_pch_refclk.c anyway. Move it under display/.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile                  | 2 +-
 drivers/gpu/drm/i915/{ => display}/intel_sbi.c | 0
 drivers/gpu/drm/i915/{ => display}/intel_sbi.h | 0
 drivers/gpu/drm/i915/i915_driver.c             | 2 +-
 4 files changed, 2 insertions(+), 2 deletions(-)
 rename drivers/gpu/drm/i915/{ => display}/intel_sbi.c (100%)
 rename drivers/gpu/drm/i915/{ => display}/intel_sbi.h (100%)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 1a90eb1f180a..333847892e18 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -40,7 +40,6 @@ i915-y += \
 	intel_pcode.o \
 	intel_region_ttm.o \
 	intel_runtime_pm.o \
-	intel_sbi.o \
 	intel_step.o \
 	intel_uncore.o \
 	intel_uncore_trace.o \
@@ -288,6 +287,7 @@ i915-y += \
 	display/intel_pmdemand.o \
 	display/intel_psr.o \
 	display/intel_quirks.o \
+	display/intel_sbi.o \
 	display/intel_sprite.o \
 	display/intel_sprite_uapi.o \
 	display/intel_tc.o \
diff --git a/drivers/gpu/drm/i915/intel_sbi.c b/drivers/gpu/drm/i915/display/intel_sbi.c
similarity index 100%
rename from drivers/gpu/drm/i915/intel_sbi.c
rename to drivers/gpu/drm/i915/display/intel_sbi.c
diff --git a/drivers/gpu/drm/i915/intel_sbi.h b/drivers/gpu/drm/i915/display/intel_sbi.h
similarity index 100%
rename from drivers/gpu/drm/i915/intel_sbi.h
rename to drivers/gpu/drm/i915/display/intel_sbi.h
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 2b0bcb9aa3c7..092a700d2046 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -61,6 +61,7 @@
 #include "display/intel_overlay.h"
 #include "display/intel_pch_refclk.h"
 #include "display/intel_pps.h"
+#include "display/intel_sbi.h"
 #include "display/intel_sprite_uapi.h"
 #include "display/skl_watermark.h"
 
@@ -107,7 +108,6 @@
 #include "intel_pci_config.h"
 #include "intel_pcode.h"
 #include "intel_region_ttm.h"
-#include "intel_sbi.h"
 #include "vlv_iosf_sb.h"
 #include "vlv_suspend.h"
 
-- 
2.39.5

