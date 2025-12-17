Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FD49CC62A6
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 07:10:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D150510EBA3;
	Wed, 17 Dec 2025 06:10:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IjfW0s0T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11EDF10EB9D;
 Wed, 17 Dec 2025 06:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765951842; x=1797487842;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=chn1JR2mzMrNyYY79wHL63+JUjLak3xvQrgKrgE0Bio=;
 b=IjfW0s0TOa/C9/QrhPMrlFuNZ6CABb3tvQnwbx6KSUZi3epLl9RYzNqh
 o7TM9GGrueXZoBnJI1NJhzySr9B2Yjsgw5Gg49P/z+j7SuCjSsJaClPNA
 9nB9tZ8lRyPqRF1+WlUKYh16r5FI/cn4+7uZEeKJrQBjFwRyerRk1A1mn
 ns7mth2o4DP1u7+DjrcjsSqAao7XVYjsv6c/mMkbJmHNJRX1fqnPlOE/D
 T0NOFXf/QV/83yIjvFN05d9pRigqhbQX2I1ZEtFC3Son+ZSjwruBDORG9
 9PDeUjt//xIWvXBQY7tR1z4eSfFzPmE5YbEq7o/cp/Mh2t3HKzdgbEN2w Q==;
X-CSE-ConnectionGUID: JlEWW9AMS869UnTQZJ5l7A==
X-CSE-MsgGUID: 9ZWUsiEuThWHILnfN5PXoA==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="85471204"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="85471204"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 22:10:42 -0800
X-CSE-ConnectionGUID: zcFaNJxfSweUS4j7vc4cag==
X-CSE-MsgGUID: Cippw83fQyuU5yAFgmjSVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="198105201"
Received: from cfl-desktop.iind.intel.com ([10.190.239.20])
 by fmviesa006.fm.intel.com with ESMTP; 16 Dec 2025 22:10:40 -0800
From: Uma Shankar <uma.shankar@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 Uma Shankar <uma.shankar@intel.com>
Subject: [PATCH 13/19] drm/{i915, xe}: Remove i915_reg.h from intel_rom.c
Date: Wed, 17 Dec 2025 11:52:03 +0530
Message-ID: <20251217062209.852324-14-uma.shankar@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251217062209.852324-1-uma.shankar@intel.com>
References: <20251217062209.852324-1-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
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

Make intel_rom.c free from including i915_reg.h.

Signed-off-by: Uma Shankar <uma.shankar@intel.com>
---
 drivers/gpu/drm/i915/display/intel_rom.c  | 4 ++--
 drivers/gpu/drm/i915/i915_reg.h           | 8 --------
 include/drm/intel/intel_gmd_common_regs.h | 8 ++++++++
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_rom.c b/drivers/gpu/drm/i915/display/intel_rom.c
index 2f17dc856e7f..2b9801d370a3 100644
--- a/drivers/gpu/drm/i915/display/intel_rom.c
+++ b/drivers/gpu/drm/i915/display/intel_rom.c
@@ -3,9 +3,9 @@
  * Copyright © 2024 Intel Corporation
  */
 
-#include "i915_drv.h"
-#include "i915_reg.h"
+#include <drm/intel/intel_gmd_common_regs.h>
 
+#include "i915_drv.h"
 #include "intel_rom.h"
 #include "intel_uncore.h"
 
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 77ae9a9ba27a..fd3f87f0bcd9 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -891,14 +891,6 @@
 #define   SGGI_DIS			REG_BIT(15)
 #define   SGR_DIS			REG_BIT(13)
 
-#define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
-#define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
-#define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
-#define SPI_STATIC_REGIONS			_MMIO(0x102090)
-#define   OPTIONROM_SPI_REGIONID_MASK		REG_GENMASK(7, 0)
-#define OROM_OFFSET				_MMIO(0x1020c0)
-#define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
-
 #define MTL_MEDIA_GSI_BASE		0x380000
 
 #endif /* _I915_REG_H_ */
diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
index 01fffc983e47..59ea27228935 100644
--- a/include/drm/intel/intel_gmd_common_regs.h
+++ b/include/drm/intel/intel_gmd_common_regs.h
@@ -291,4 +291,12 @@
 #define   INSTPM_TLB_INVALIDATE	(1 << 9)
 #define   INSTPM_SYNC_FLUSH	(1 << 5)
 
+#define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
+#define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
+#define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
+#define SPI_STATIC_REGIONS			_MMIO(0x102090)
+#define   OPTIONROM_SPI_REGIONID_MASK		REG_GENMASK(7, 0)
+#define OROM_OFFSET				_MMIO(0x1020c0)
+#define   OROM_OFFSET_MASK			REG_GENMASK(20, 16)
+
 #endif
-- 
2.50.1

