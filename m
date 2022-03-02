Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5B034CA852
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Mar 2022 15:40:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C2AB10EB05;
	Wed,  2 Mar 2022 14:40:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F50410EB64
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Mar 2022 14:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646232005; x=1677768005;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=om9sXlZ5AarjtNtYzWL82hPoYLkN8yJN65h6VWkG3zA=;
 b=AOw+PFZIoJodTy1rkecM5+JW65IAbMn0HNu5pWGUek1zyFQ86Na/je5F
 SOuP0npdIayO0Xwv3oakLBpMyiDc+obUODuTClRGCNPCHzCivzxIvFpC/
 T4Z3UtpDTZQrYnUhkqKdSHWAISL3rXIV/sQ9mmOJC95l/QxOPt5IUXmDo
 S8/WevRGH9DB8Tya5MlAZj7K5QLjzWDPCF2eAPpPVPmm3Jb7elJvS//GD
 f4q6qH18IOrFHQ6FDDotht15HkFK2FyE3ZSYGAm9/Y0CXFH07eF9N4V0m
 6T8A+xDi2lvrDMTMeX7iDSvnavFPO+j3Rxwq44FD7NVbs1Zi8WOnVvcvk w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10274"; a="253339473"
X-IronPort-AV: E=Sophos;i="5.90,149,1643702400"; d="scan'208";a="253339473"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2022 06:40:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,149,1643702400"; d="scan'208";a="508219404"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orsmga002.jf.intel.com with ESMTP; 02 Mar 2022 06:40:03 -0800
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Mar 2022 16:40:30 +0200
Message-Id: <20220302144030.24153-2-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
In-Reply-To: <20220302144030.24153-1-stanislav.lisovskiy@intel.com>
References: <20220124090653.14547-5-stanislav.lisovskiy@intel.com>
 <20220302144030.24153-1-stanislav.lisovskiy@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Don't use PIN_MAPPABLE for dpt
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
Cc: matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cannot use PIN_MAPPABLE pin on MTL because there's no mappable window.
Change dpt allocation as per suggestion from Chris.

v2: - Added forgotten/dropped include

Signed-off-by: Stanslav Lisovskiy <stanislav.lisovskiy@intel.com>
Signed-off-by: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
Cc: Chris Wilson <chris.p.wilson@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpt.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c b/drivers/gpu/drm/i915/display/intel_dpt.c
index 15b2716172f7..11f328a42e19 100644
--- a/drivers/gpu/drm/i915/display/intel_dpt.c
+++ b/drivers/gpu/drm/i915/display/intel_dpt.c
@@ -4,6 +4,7 @@
  */
 
 #include "gem/i915_gem_domain.h"
+#include "gem/i915_gem_internal.h"
 #include "gt/gen8_ppgtt.h"
 
 #include "i915_drv.h"
@@ -128,6 +129,10 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
 	void __iomem *iomem;
 	struct i915_gem_ww_ctx ww;
 	int err;
+	u64 pin_flags = 0;
+
+	if (i915_gem_object_is_stolen(dpt->obj))
+		pin_flags |= PIN_MAPPABLE; /* for i915_vma_pin_iomap(stolen) */
 
 	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
 	atomic_inc(&i915->gpu_error.pending_fb_pin);
@@ -138,7 +143,7 @@ struct i915_vma *intel_dpt_pin(struct i915_address_space *vm)
 			continue;
 
 		vma = i915_gem_object_ggtt_pin_ww(dpt->obj, &ww, NULL, 0, 4096,
-						  HAS_LMEM(i915) ? 0 : PIN_MAPPABLE);
+						  pin_flags);
 		if (IS_ERR(vma)) {
 			err = PTR_ERR(vma);
 			continue;
@@ -248,10 +253,11 @@ intel_dpt_create(struct intel_framebuffer *fb)
 
 	size = round_up(size * sizeof(gen8_pte_t), I915_GTT_PAGE_SIZE);
 
-	if (HAS_LMEM(i915))
-		dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
-	else
+	dpt_obj = i915_gem_object_create_lmem(i915, size, I915_BO_ALLOC_CONTIGUOUS);
+	if (IS_ERR(dpt_obj) && i915_ggtt_has_aperture(to_gt(i915)->ggtt))
 		dpt_obj = i915_gem_object_create_stolen(i915, size);
+	if (IS_ERR(dpt_obj))
+		dpt_obj = i915_gem_object_create_internal(i915, size);
 	if (IS_ERR(dpt_obj))
 		return ERR_CAST(dpt_obj);
 
-- 
2.24.1.485.gad05a3d8e5

