Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CD8AC4AD5AF
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 11:46:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3D1310E62A;
	Tue,  8 Feb 2022 10:45:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BAA410E224;
 Tue,  8 Feb 2022 10:45:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644317113; x=1675853113;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5gO6T8XWL1W/zM0H8HQzYzQpnrwHGrQIalBC7oa3aUw=;
 b=Dzj9JSF1wKP5Z3TbMO89es8lpN/GooZ7sL2b+YAMHGIEqMeok2yaWFFW
 g3VepS/y4ZPHTHpfxDfGVyvPNAwq0OdIMwJgLNl0rBEvUSW2UBciPD9/C
 vx40ktMByqfM/aXdETSOaaiITQ/4XlRJt4/gupMzUlrai+9ohQYgTFT/r
 zkLE9UUf3XKSv92+bR2dpH7Hy3bHq2tFvyx1f1QIlFws/jlpxwUU2oO0r
 J/ddi9pQpyDzNwVk4wykv4BU77528msMsJ53ubMhSbRdnnFmGYVBkDYqv
 IuFSIFReuJFRh+xLPDiizgHRJeBh+tLt6s4FDkXac5kek7ZgKPXJQ4Foa w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10251"; a="246511544"
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="246511544"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 02:45:11 -0800
X-IronPort-AV: E=Sophos;i="5.88,352,1635231600"; d="scan'208";a="700804117"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.202])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 02:45:09 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Tue,  8 Feb 2022 02:45:10 -0800
Message-Id: <20220208104524.2516209-5-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220208104524.2516209-1-lucas.demarchi@intel.com>
References: <20220208104524.2516209-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 04/18] drm/i915/guc: Keep iosys_map of
 ads_blob around
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Convert intel_guc_ads_create() and initialization to use iosys_map
rather than plain pointer and save it in the guc struct. This will help
with additional updates to the ads_blob after the
creation/initialization by abstracting the IO vs system memory.

Cc: Matt Roper <matthew.d.roper@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: John Harrison <John.C.Harrison@Intel.com>
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.h     | 4 +++-
 drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 6 ++++++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
index 697d9d66acef..9b9ba79f7594 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
@@ -6,8 +6,9 @@
 #ifndef _INTEL_GUC_H_
 #define _INTEL_GUC_H_
 
-#include <linux/xarray.h>
 #include <linux/delay.h>
+#include <linux/iosys-map.h>
+#include <linux/xarray.h>
 
 #include "intel_uncore.h"
 #include "intel_guc_fw.h"
@@ -148,6 +149,7 @@ struct intel_guc {
 	struct i915_vma *ads_vma;
 	/** @ads_blob: contents of the GuC ADS */
 	struct __guc_ads_blob *ads_blob;
+	struct iosys_map ads_map;
 	/** @ads_regset_size: size of the save/restore regsets in the ADS */
 	u32 ads_regset_size;
 	/** @ads_golden_ctxt_size: size of the golden contexts in the ADS */
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
index e61150adcbe9..13671b186908 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
@@ -624,6 +624,11 @@ int intel_guc_ads_create(struct intel_guc *guc)
 	if (ret)
 		return ret;
 
+	if (i915_gem_object_is_lmem(guc->ads_vma->obj))
+		iosys_map_set_vaddr_iomem(&guc->ads_map, (void __iomem *)guc->ads_blob);
+	else
+		iosys_map_set_vaddr(&guc->ads_map, guc->ads_blob);
+
 	__guc_ads_init(guc);
 
 	return 0;
@@ -645,6 +650,7 @@ void intel_guc_ads_destroy(struct intel_guc *guc)
 {
 	i915_vma_unpin_and_release(&guc->ads_vma, I915_VMA_RELEASE_MAP);
 	guc->ads_blob = NULL;
+	iosys_map_clear(&guc->ads_map);
 }
 
 static void guc_ads_private_data_reset(struct intel_guc *guc)
-- 
2.35.1

