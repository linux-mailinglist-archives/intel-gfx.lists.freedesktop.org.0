Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A08AC4C89
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 12:59:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C18B10E492;
	Tue, 27 May 2025 10:59:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l71yMaZu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 787C110E48D;
 Tue, 27 May 2025 10:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748343564; x=1779879564;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aWx84qkMKvccmV48cIFKCiz0KruY2Qt5gZZoYf0wuwE=;
 b=l71yMaZuVyNKJq/o53R3SpTXJWSC9dmCcRJC/PAGhsApS+TUFsZCXBdK
 0a3nagNQ5607tD4KQW1ufBUND575NfI23exd+I76e20FtKHwRNew3qoJj
 U5UcyJ0R2v0mHiNruzwkVf/D26hP7986TkJoxLRpZobw90fQYGWDIOm8V
 p81LIQYiP8ZkyOTG/PozM5XTmhJDiuSJh81+3yIN2sjoQxwOt4RJ7gqLj
 OTctPZcgSAFR8qc9pzpFAa1qAyO/5wPup/bGysfQjTqR1s72Gx8B+pFoR
 GgsdipqgiCFE7VNSF4VXW7e/+d5gDC2/ppuI751EZVnZEYlTrOnw71fsa A==;
X-CSE-ConnectionGUID: yV+M/IgITLSmTpmn1KBQNA==
X-CSE-MsgGUID: wa94eSOXR+6og5UloXaxlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11445"; a="72859851"
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="72859851"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 03:59:24 -0700
X-CSE-ConnectionGUID: O9M/J5kVTk2NlhiZZqSsMQ==
X-CSE-MsgGUID: km/Wye6IQHykMCyO4oPVVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,318,1739865600"; d="scan'208";a="142768844"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.119])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 03:59:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [RESEND 1/8] drm/i915/sbi: move intel_sbi.[ch] under display/
Date: Tue, 27 May 2025 13:59:07 +0300
Message-Id: <341268d633e9705bc582f1cc985dc4554e39d87d.1748343520.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1748343520.git.jani.nikula@intel.com>
References: <cover.1748343520.git.jani.nikula@intel.com>
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
index 3b0bda74697d..a77afea47202 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -63,6 +63,7 @@
 #include "display/intel_overlay.h"
 #include "display/intel_pch_refclk.h"
 #include "display/intel_pps.h"
+#include "display/intel_sbi.h"
 #include "display/intel_sprite_uapi.h"
 #include "display/skl_watermark.h"
 
@@ -109,7 +110,6 @@
 #include "intel_pci_config.h"
 #include "intel_pcode.h"
 #include "intel_region_ttm.h"
-#include "intel_sbi.h"
 #include "vlv_iosf_sb.h"
 #include "vlv_suspend.h"
 
-- 
2.39.5

