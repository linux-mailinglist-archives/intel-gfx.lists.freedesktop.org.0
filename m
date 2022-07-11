Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDDA568710
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jul 2022 13:45:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D6E910FEA8;
	Wed,  6 Jul 2022 11:45:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CEE410F7A3
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jul 2022 11:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657107906; x=1688643906;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KhCt74Bje3qdmODyWCFzqhE1VcM2zonwoqz6dGScG38=;
 b=KM3vD7F84OGn0TTzkSd0KejpxHLg0nnkv6M/BN9L2e2BVOiYFaIFsr8k
 WZchHXZ0D4H2R2kAhlzO5nRkqSkPtIOJyxrnUT/eIWmcO1nnS7lc5canz
 jdAcfBAUpxLG59BXfXCiLiCpEXoBLKBA0mKW8Bz1yT1XGD689ZiJUwAQt
 kK1ZGXUPePdeRod2DGADDTlduN4A5GfD3CxaIcExqOl002E4F40iHFmL4
 LIs1cIDdpjcZMQLhLThfpkni114anZFFVXJMY7pKRHJdmDeMhoAgTwk4v
 +jvg0q1kTfPDuml1ZriX7/mJ5AAphzu07uJnJDNLO0lSK0agPqEn6RJ4J A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10399"; a="284459632"
X-IronPort-AV: E=Sophos;i="5.92,249,1650956400"; d="scan'208";a="284459632"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 04:44:42 -0700
X-IronPort-AV: E=Sophos;i="5.92,249,1650956400"; d="scan'208";a="650630298"
Received: from sannilnx.jer.intel.com ([10.12.26.175])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jul 2022 04:44:38 -0700
From: Alexander Usyskin <alexander.usyskin@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Date: Wed,  6 Jul 2022 14:43:44 +0300
Message-Id: <20220706114345.1128018-14-alexander.usyskin@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220706114345.1128018-1-alexander.usyskin@intel.com>
References: <20220706114345.1128018-1-alexander.usyskin@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v5 13/14] drm/i915/gsc: allocate extended
 operational memory in LMEM
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
Cc: Alan Previn <alan.previn.teres.alexis@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-kernel@vger.kernel.org,
 Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tomas Winkler <tomas.winkler@intel.com>

GSC requires more operational memory than available on chip.
Reserve 4M of LMEM for GSC operation. The memory is provided to the
GSC as struct resource to the auxiliary data of the child device.

Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gsc.c | 92 ++++++++++++++++++++++++++---
 drivers/gpu/drm/i915/gt/intel_gsc.h |  3 +
 2 files changed, 88 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
index bfc307e49bf9..4d87519d5773 100644
--- a/drivers/gpu/drm/i915/gt/intel_gsc.c
+++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
@@ -7,6 +7,7 @@
 #include <linux/mei_aux.h>
 #include "i915_drv.h"
 #include "i915_reg.h"
+#include "gem/i915_gem_region.h"
 #include "gt/intel_gsc.h"
 #include "gt/intel_gt.h"
 
@@ -36,12 +37,68 @@ static int gsc_irq_init(int irq)
 	return irq_set_chip_data(irq, NULL);
 }
 
+static int
+gsc_ext_om_alloc(struct intel_gsc *gsc, struct intel_gsc_intf *intf, size_t size)
+{
+	struct intel_gt *gt = gsc_to_gt(gsc);
+	struct drm_i915_gem_object *obj;
+	void *vaddr;
+	int err;
+
+	obj = i915_gem_object_create_lmem(gt->i915, size, I915_BO_ALLOC_CONTIGUOUS);
+	if (IS_ERR(obj)) {
+		drm_err(&gt->i915->drm, "Failed to allocate gsc memory\n");
+		return PTR_ERR(obj);
+	}
+
+	err = i915_gem_object_pin_pages_unlocked(obj);
+	if (err) {
+		drm_err(&gt->i915->drm, "Failed to pin pages for gsc memory\n");
+		goto out_put;
+	}
+
+	vaddr = i915_gem_object_pin_map_unlocked(obj, i915_coherent_map_type(gt->i915, obj, true));
+	if (IS_ERR(vaddr)) {
+		err = PTR_ERR(vaddr);
+		drm_err(&gt->i915->drm, "Failed to map gsc memory\n");
+		goto out_unpin;
+	}
+
+	memset(vaddr, 0, obj->base.size);
+
+	i915_gem_object_unpin_map(obj);
+
+	intf->gem_obj = obj;
+
+	return 0;
+
+out_unpin:
+	i915_gem_object_unpin_pages(obj);
+out_put:
+	i915_gem_object_put(obj);
+	return err;
+}
+
+static void gsc_ext_om_destroy(struct intel_gsc_intf *intf)
+{
+	struct drm_i915_gem_object *obj = fetch_and_zero(&intf->gem_obj);
+
+	if (!obj)
+		return;
+
+	if (i915_gem_object_has_pinned_pages(obj))
+		i915_gem_object_unpin_pages(obj);
+
+	i915_gem_object_put(obj);
+}
+
 struct gsc_def {
 	const char *name;
 	unsigned long bar;
 	size_t bar_size;
 	bool use_polling;
 	bool slow_fw;
+	size_t lmem_size;
 };
 
 /* gsc resources and definitions (HECI1 and HECI2) */
@@ -74,6 +131,7 @@ static const struct gsc_def gsc_def_dg2[] = {
 		.name = "mei-gsc",
 		.bar = DG2_GSC_HECI1_BASE,
 		.bar_size = GSC_BAR_LENGTH,
+		.lmem_size = SZ_4M,
 	},
 	{
 		.name = "mei-gscfi",
@@ -90,26 +148,33 @@ static void gsc_release_dev(struct device *dev)
 	kfree(adev);
 }
 
-static void gsc_destroy_one(struct intel_gsc_intf *intf)
+static void gsc_destroy_one(struct drm_i915_private *i915,
+				  struct intel_gsc *gsc, unsigned int intf_id)
 {
+	struct intel_gsc_intf *intf = &gsc->intf[intf_id];
+
 	if (intf->adev) {
 		auxiliary_device_delete(&intf->adev->aux_dev);
 		auxiliary_device_uninit(&intf->adev->aux_dev);
 		intf->adev = NULL;
 	}
+
 	if (intf->irq >= 0)
 		irq_free_desc(intf->irq);
 	intf->irq = -1;
+
+	gsc_ext_om_destroy(intf);
 }
 
 static void gsc_init_one(struct drm_i915_private *i915,
-			 struct intel_gsc_intf *intf,
-			 unsigned int intf_id)
+			       struct intel_gsc *gsc,
+			       unsigned int intf_id)
 {
 	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
 	struct mei_aux_device *adev;
 	struct auxiliary_device *aux_dev;
 	const struct gsc_def *def;
+	struct intel_gsc_intf *intf = &gsc->intf[intf_id];
 	int ret;
 
 	intf->irq = -1;
@@ -141,7 +206,7 @@ static void gsc_init_one(struct drm_i915_private *i915,
 	intf->irq = irq_alloc_desc(0);
 	if (intf->irq < 0) {
 		drm_err(&i915->drm, "gsc irq error %d\n", intf->irq);
-		return;
+		goto fail;
 	}
 
 	ret = gsc_irq_init(intf->irq);
@@ -155,6 +220,19 @@ static void gsc_init_one(struct drm_i915_private *i915,
 	if (!adev)
 		goto fail;
 
+	if (def->lmem_size) {
+		dev_dbg(&pdev->dev, "setting up GSC lmem\n");
+
+		if (gsc_ext_om_alloc(gsc, intf, def->lmem_size)) {
+			dev_err(&pdev->dev, "setting up gsc extended operational memory failed\n");
+			kfree(adev);
+			goto fail;
+		}
+
+		adev->ext_op_mem.start = i915_gem_object_get_dma_address(intf->gem_obj, 0);
+		adev->ext_op_mem.end = adev->ext_op_mem.start + def->lmem_size;
+	}
+
 	adev->irq = intf->irq;
 	adev->bar.parent = &pdev->resource[0];
 	adev->bar.start = def->bar + pdev->resource[0].start;
@@ -188,7 +266,7 @@ static void gsc_init_one(struct drm_i915_private *i915,
 
 	return;
 fail:
-	gsc_destroy_one(intf);
+	gsc_destroy_one(i915, gsc, intf->id);
 }
 
 static void gsc_irq_handler(struct intel_gt *gt, unsigned int intf_id)
@@ -229,7 +307,7 @@ void intel_gsc_init(struct intel_gsc *gsc, struct drm_i915_private *i915)
 		return;
 
 	for (i = 0; i < INTEL_GSC_NUM_INTERFACES; i++)
-		gsc_init_one(i915, &gsc->intf[i], i);
+		gsc_init_one(i915, gsc, i);
 }
 
 void intel_gsc_fini(struct intel_gsc *gsc)
@@ -241,5 +319,5 @@ void intel_gsc_fini(struct intel_gsc *gsc)
 		return;
 
 	for (i = 0; i < INTEL_GSC_NUM_INTERFACES; i++)
-		gsc_destroy_one(&gsc->intf[i]);
+		gsc_destroy_one(gt->i915, gsc, i);
 }
diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.h b/drivers/gpu/drm/i915/gt/intel_gsc.h
index 68582f912b21..fcac1775e9c3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gsc.h
+++ b/drivers/gpu/drm/i915/gt/intel_gsc.h
@@ -20,11 +20,14 @@ struct mei_aux_device;
 
 /**
  * struct intel_gsc - graphics security controller
+ *
+ * @gem_obj: scratch memory GSC operations
  * @intf : gsc interface
  */
 struct intel_gsc {
 	struct intel_gsc_intf {
 		struct mei_aux_device *adev;
+		struct drm_i915_gem_object *gem_obj;
 		int irq;
 		unsigned int id;
 	} intf[INTEL_GSC_NUM_INTERFACES];
-- 
2.34.1

