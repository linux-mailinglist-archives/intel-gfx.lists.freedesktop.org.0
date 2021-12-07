Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D1CFE46BDCC
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Dec 2021 15:34:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B495738B2;
	Tue,  7 Dec 2021 14:34:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E84B738B2
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 14:34:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="298380817"
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="298380817"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 06:34:01 -0800
X-IronPort-AV: E=Sophos;i="5.87,293,1631602800"; d="scan'208";a="515296116"
Received: from ramaling-i9x.iind.intel.com ([10.99.66.205])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 06:33:58 -0800
From: Ramalingam C <ramalingam.c@intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>
Date: Tue,  7 Dec 2021 20:03:36 +0530
Message-Id: <20211207143336.11381-3-ramalingam.c@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20211207143336.11381-1-ramalingam.c@intel.com>
References: <20211207143336.11381-1-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Test all device memory on probing
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
Cc: CQ Tang <cq.tang@intel.com>, Andi <andi.shyti@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Chris Wilson <chris@chris-wilson.co.uk>

This extends the previous sanitychecking of device memory to read/write
all the memory on the device during the device probe, ala memtest86,
as an optional module parameter: i915.memtest=1. This is not expected to
be fast, but a reasonably thorough verfification that the device memory
is accessible and doesn't return bit errors.

Suggested-by: Matthew Auld <matthew.auld@intel.com>
Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: CQ Tang <cq.tang@intel.com>
Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
---
 drivers/gpu/drm/i915/i915_params.c         |  3 ++
 drivers/gpu/drm/i915/i915_params.h         |  1 +
 drivers/gpu/drm/i915/intel_memory_region.c | 36 ++++++++++++++--------
 3 files changed, 28 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index e07f4cfea63a..525ae832aa9a 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -140,6 +140,9 @@ i915_param_named_unsafe(invert_brightness, int, 0400,
 i915_param_named(disable_display, bool, 0400,
 	"Disable display (default: false)");
 
+i915_param_named(memtest, bool, 0400,
+	"Perform a read/write test of all device memory on module load (default: off)");
+
 i915_param_named(mmio_debug, int, 0400,
 	"Enable the MMIO debug code for the first N failures (default: off). "
 	"This may negatively affect performance.");
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 8d725b64592d..c9d53ff910a0 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -64,6 +64,7 @@ struct drm_printer;
 	param(char *, guc_firmware_path, NULL, 0400) \
 	param(char *, huc_firmware_path, NULL, 0400) \
 	param(char *, dmc_firmware_path, NULL, 0400) \
+	param(bool, memtest, false, 0400) \
 	param(int, mmio_debug, -IS_ENABLED(CONFIG_DRM_I915_DEBUG_MMIO), 0600) \
 	param(int, edp_vswing, 0, 0400) \
 	param(unsigned int, reset, 3, 0600) \
diff --git a/drivers/gpu/drm/i915/intel_memory_region.c b/drivers/gpu/drm/i915/intel_memory_region.c
index c53e07f1d0c0..95adc2cf5dde 100644
--- a/drivers/gpu/drm/i915/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/intel_memory_region.c
@@ -93,9 +93,12 @@ static resource_size_t random_page(resource_size_t last)
 	return prandom_u32_max(last >> PAGE_SHIFT) << PAGE_SHIFT;
 }
 
-static int iomemtest(struct intel_memory_region *mem, const void *caller)
+static int iomemtest(struct intel_memory_region *mem,
+		     bool test_all,
+		     const void *caller)
 {
 	resource_size_t last = resource_size(&mem->region) - PAGE_SIZE;
+	resource_size_t page;
 	int err;
 
 	/*
@@ -109,17 +112,25 @@ static int iomemtest(struct intel_memory_region *mem, const void *caller)
 	 * a random offset within as a quick spot check for bad memory.
 	 */
 
-	err = iopagetest(mem, 0, caller);
-	if (err)
-		return err;
+	if (test_all) {
+		for (page = 0; page <= last; page += PAGE_SIZE) {
+			err = iopagetest(mem, page, caller);
+			if (err)
+				return err;
+		}
+	} else {
+		err = iopagetest(mem, 0, caller);
+		if (err)
+			return err;
 
-	err = iopagetest(mem, last, caller);
-	if (err)
-		return err;
+		err = iopagetest(mem, last, caller);
+		if (err)
+			return err;
 
-	err = iopagetest(mem, random_page(last), caller);
-	if (err)
-		return err;
+		err = iopagetest(mem, random_page(last), caller);
+		if (err)
+			return err;
+	}
 
 	return 0;
 }
@@ -221,8 +232,9 @@ intel_memory_region_create(struct drm_i915_private *i915,
 			goto err_free;
 	}
 
-	if (io_start && IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM)) {
-		err = iomemtest(mem, (void *)_RET_IP_);
+	if (io_start &&
+	    (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM) || i915->params.memtest)) {
+		err = iomemtest(mem, i915->params.memtest, (void *)_RET_IP_);
 		if (err)
 			goto err_release;
 	}
-- 
2.20.1

