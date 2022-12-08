Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C3964725D
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 16:01:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66C2210E4AE;
	Thu,  8 Dec 2022 15:01:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7D6210E4AE
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 15:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670511665; x=1702047665;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=3qsMwEKA1zeayM7rPw50ADMeh4dxONcAT7Kn3UmBf68=;
 b=RKjZ7/5EnHl6WG4WmHxxbd1EMmOQpTDO4EzDtP76r+Bz3hN9u74ud9IU
 XqB3yU10echMqHJbOlDAzvS+/mOiiOd2F49UuOkvwe1/mkMmJf4We9Ntv
 +jqjAM1zfdD5pPHQQE3v6KdhlllBlkLKaH57TeLGidQma4311bs+hgp3i
 tpv5gQLH5k0vi6owdUnhTePnwPVk4UmjaUyW0wuI4d+jRgErXseaCEZYw
 X2fPZVXwVG5yDoe+njzKa2V2O2RbFT7i6xhCfNUfW/bXLcyASlDlq03dn
 FD8LNwZ1Cf025wF8qUzFa9B7fWaWkhb8m/WO1GT426NZzhdfeaG2i/zJl w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="381494566"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="381494566"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 06:23:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10555"; a="735811111"
X-IronPort-AV: E=Sophos;i="5.96,227,1665471600"; d="scan'208";a="735811111"
Received: from danyang-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.18.245])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2022 06:23:51 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Dec 2022 16:23:47 +0200
Message-Id: <20221208142347.602726-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: add new "soc" sub-directory and move
 PCH and DRAM code there
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
Cc: jani.nikula@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add a new sub-directory for things that aren't specifically about the
GPU and don't really belong in the i915 driver top level, but also don't
belong under any of the existing sub-directories either.

Name it "soc", and move the PCH and DRAM code there.

Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>

---

Naming, always the naming! soc? ext? offcore? In the Makefile I'm adding
comment "core peripheral code", which is also silly. *facepalm*
---
 drivers/gpu/drm/i915/Makefile               | 7 +++++--
 drivers/gpu/drm/i915/i915_driver.c          | 3 ++-
 drivers/gpu/drm/i915/i915_drv.h             | 3 ++-
 drivers/gpu/drm/i915/{ => soc}/intel_dram.c | 0
 drivers/gpu/drm/i915/{ => soc}/intel_dram.h | 0
 drivers/gpu/drm/i915/{ => soc}/intel_pch.c  | 0
 drivers/gpu/drm/i915/{ => soc}/intel_pch.h  | 0
 7 files changed, 9 insertions(+), 4 deletions(-)
 rename drivers/gpu/drm/i915/{ => soc}/intel_dram.c (100%)
 rename drivers/gpu/drm/i915/{ => soc}/intel_dram.h (100%)
 rename drivers/gpu/drm/i915/{ => soc}/intel_pch.c (100%)
 rename drivers/gpu/drm/i915/{ => soc}/intel_pch.h (100%)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 01974b82d205..7046e435a155 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -48,9 +48,7 @@ i915-y += i915_driver.o \
 	  i915_sysfs.o \
 	  i915_utils.o \
 	  intel_device_info.o \
-	  intel_dram.o \
 	  intel_memory_region.o \
-	  intel_pch.o \
 	  intel_pcode.o \
 	  intel_pm.o \
 	  intel_region_ttm.o \
@@ -62,6 +60,11 @@ i915-y += i915_driver.o \
 	  vlv_sideband.o \
 	  vlv_suspend.o
 
+# core peripheral code
+i915-y += \
+	soc/intel_dram.o \
+	soc/intel_pch.o
+
 # core library code
 i915-y += \
 	i915_memcpy.o \
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 4cc3ced83959..6c87cfa0d7c8 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -75,6 +75,8 @@
 
 #include "pxp/intel_pxp_pm.h"
 
+#include "soc/intel_dram.h"
+
 #include "i915_file_private.h"
 #include "i915_debugfs.h"
 #include "i915_driver.h"
@@ -93,7 +95,6 @@
 #include "i915_sysfs.h"
 #include "i915_utils.h"
 #include "i915_vgpu.h"
-#include "intel_dram.h"
 #include "intel_gvt.h"
 #include "intel_memory_region.h"
 #include "intel_pci_config.h"
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index a8a5bd426e78..b6d0c12ffeea 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -49,6 +49,8 @@
 #include "gt/intel_workarounds.h"
 #include "gt/uc/intel_uc.h"
 
+#include "soc/intel_pch.h"
+
 #include "i915_drm_client.h"
 #include "i915_gem.h"
 #include "i915_gpu_error.h"
@@ -58,7 +60,6 @@
 #include "i915_utils.h"
 #include "intel_device_info.h"
 #include "intel_memory_region.h"
-#include "intel_pch.h"
 #include "intel_runtime_pm.h"
 #include "intel_step.h"
 #include "intel_uncore.h"
diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
similarity index 100%
rename from drivers/gpu/drm/i915/intel_dram.c
rename to drivers/gpu/drm/i915/soc/intel_dram.c
diff --git a/drivers/gpu/drm/i915/intel_dram.h b/drivers/gpu/drm/i915/soc/intel_dram.h
similarity index 100%
rename from drivers/gpu/drm/i915/intel_dram.h
rename to drivers/gpu/drm/i915/soc/intel_dram.h
diff --git a/drivers/gpu/drm/i915/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
similarity index 100%
rename from drivers/gpu/drm/i915/intel_pch.c
rename to drivers/gpu/drm/i915/soc/intel_pch.c
diff --git a/drivers/gpu/drm/i915/intel_pch.h b/drivers/gpu/drm/i915/soc/intel_pch.h
similarity index 100%
rename from drivers/gpu/drm/i915/intel_pch.h
rename to drivers/gpu/drm/i915/soc/intel_pch.h
-- 
2.34.1

