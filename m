Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC2C4F19BA
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Apr 2022 20:22:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A698E10E583;
	Mon,  4 Apr 2022 18:22:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52FAD10E356
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Apr 2022 18:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649096551; x=1680632551;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wHMnde+qM1dq9h5W+PRxhWn0DdMckBkDEPCBvi0scbw=;
 b=m+dIORQFhpRTuu5cg/FPf6GGfEXIe5ha1Ywi02kyPlzDTOLju8pQsQ8Q
 BhfUK/HjfEfEkmp9Z6GiBo4ePfVlw/oSYmgv0nyHO5ANhpeSFuC0fbSQX
 hgxFnLQFed3B4gW1wIfdt3+60dVFtnEjr/Z9WaY0Hauprck8fOe+vgxbl
 mc0WOmsACYRcCBKKERM+xfHNZEAcnMhm64OzsU8Ko2tFP9AhFi+CKQ0CI
 ar2nlOjEJ/59UmPxARnnCUXCPEMJqA1s3UXIKhNugksUfHtEklKQvx4cJ
 xK+5AxGJ/W4p80UFl2L06ZbwMh8CISEo7XToOB3aBxdQHQIMgBGWe7qB9 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10307"; a="347021174"
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="347021174"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 11:22:30 -0700
X-IronPort-AV: E=Sophos;i="5.90,235,1643702400"; d="scan'208";a="721748055"
Received: from valcore-skull-1.fm.intel.com ([10.1.27.19])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2022 11:22:30 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Apr 2022 11:17:01 -0700
Message-Id: <20220404181706.3523646-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220404181706.3523646-1-daniele.ceraolospurio@intel.com>
References: <20220404181706.3523646-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 1/6] drm/i915/gsc: add gsc as a mei auxiliary device
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
Cc: alexander.usyskin@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tomas Winkler <tomas.winkler@intel.com>

GSC is a graphics system controller, it provides
a chassis controller for graphics discrete cards.

There are two MEI interfaces in GSC: HECI1 and HECI2.

Both interfaces are on the BAR0 at offsets 0x00258000 and 0x00259000.
GSC is a GT Engine (class 4: instance 6). HECI1 interrupt is signaled
via bit 15 and HECI2 via bit 14 in the interrupt register.

This patch exports GSC as auxiliary device for mei driver to bind to
for HECI2 interface and prepares for HECI1 interface as
it will follow up soon.

CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
Signed-off-by: Vitaly Lubart <vitaly.lubart@intel.com>
Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 MAINTAINERS                              |   1 +
 drivers/gpu/drm/i915/Kconfig             |   1 +
 drivers/gpu/drm/i915/Makefile            |   3 +
 drivers/gpu/drm/i915/gt/intel_gsc.c      | 204 +++++++++++++++++++++++
 drivers/gpu/drm/i915/gt/intel_gsc.h      |  37 ++++
 drivers/gpu/drm/i915/gt/intel_gt.c       |   3 +
 drivers/gpu/drm/i915/gt/intel_gt.h       |   5 +
 drivers/gpu/drm/i915/gt/intel_gt_irq.c   |  13 ++
 drivers/gpu/drm/i915/gt/intel_gt_regs.h  |   1 +
 drivers/gpu/drm/i915/gt/intel_gt_types.h |   2 +
 drivers/gpu/drm/i915/i915_drv.h          |   8 +
 drivers/gpu/drm/i915/i915_pci.c          |   3 +-
 drivers/gpu/drm/i915/i915_reg.h          |   2 +
 drivers/gpu/drm/i915/intel_device_info.h |   2 +
 include/linux/mei_aux.h                  |  19 +++
 15 files changed, 303 insertions(+), 1 deletion(-)
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gsc.c
 create mode 100644 drivers/gpu/drm/i915/gt/intel_gsc.h
 create mode 100644 include/linux/mei_aux.h

diff --git a/MAINTAINERS b/MAINTAINERS
index d54b9f15ffcec..42ca741074cc3 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9995,6 +9995,7 @@ S:	Supported
 F:	Documentation/driver-api/mei/*
 F:	drivers/misc/mei/
 F:	drivers/watchdog/mei_wdt.c
+F:	include/linux/mei_aux.h
 F:	include/linux/mei_cl_bus.h
 F:	include/uapi/linux/mei.h
 F:	samples/mei/*
diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
index 98c5450b8eacc..2660a85175d90 100644
--- a/drivers/gpu/drm/i915/Kconfig
+++ b/drivers/gpu/drm/i915/Kconfig
@@ -30,6 +30,7 @@ config DRM_I915
 	select VMAP_PFN
 	select DRM_TTM
 	select DRM_BUDDY
+	select AUXILIARY_BUS
 	help
 	  Choose this option if you have a system that has "Intel Graphics
 	  Media Accelerator" or "HD Graphics" integrated graphics,
diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index 307d76d77f975..85d1e6f0aa358 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -201,6 +201,9 @@ i915-y += gt/uc/intel_uc.o \
 	  gt/uc/intel_huc_debugfs.o \
 	  gt/uc/intel_huc_fw.o
 
+# graphics system controller (GSC) support
+i915-y += gt/intel_gsc.o
+
 # modesetting core code
 i915-y += \
 	display/hsw_ips.o \
diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c b/drivers/gpu/drm/i915/gt/intel_gsc.c
new file mode 100644
index 0000000000000..21e860861f0b5
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
@@ -0,0 +1,204 @@
+// SPDX-License-Identifier: MIT
+/*
+ * Copyright(c) 2019-2022, Intel Corporation. All rights reserved.
+ */
+
+#include <linux/irq.h>
+#include <linux/mei_aux.h>
+#include "i915_drv.h"
+#include "i915_reg.h"
+#include "gt/intel_gsc.h"
+#include "gt/intel_gt.h"
+
+#define GSC_BAR_LENGTH  0x00000FFC
+
+static void gsc_irq_mask(struct irq_data *d)
+{
+	/* generic irq handling */
+}
+
+static void gsc_irq_unmask(struct irq_data *d)
+{
+	/* generic irq handling */
+}
+
+static struct irq_chip gsc_irq_chip = {
+	.name = "gsc_irq_chip",
+	.irq_mask = gsc_irq_mask,
+	.irq_unmask = gsc_irq_unmask,
+};
+
+static int gsc_irq_init(int irq)
+{
+	irq_set_chip_and_handler_name(irq, &gsc_irq_chip,
+				      handle_simple_irq, "gsc_irq_handler");
+
+	return irq_set_chip_data(irq, NULL);
+}
+
+struct gsc_def {
+	const char *name;
+	unsigned long bar;
+	size_t bar_size;
+};
+
+/* gsc resources and definitions (HECI1 and HECI2) */
+static const struct gsc_def gsc_def_dg1[] = {
+	{
+		/* HECI1 not yet implemented. */
+	},
+	{
+		.name = "mei-gscfi",
+		.bar = DG1_GSC_HECI2_BASE,
+		.bar_size = GSC_BAR_LENGTH,
+	}
+};
+
+static void gsc_release_dev(struct device *dev)
+{
+	struct auxiliary_device *aux_dev = to_auxiliary_dev(dev);
+	struct mei_aux_device *adev = auxiliary_dev_to_mei_aux_dev(aux_dev);
+
+	kfree(adev);
+}
+
+static void gsc_destroy_one(struct intel_gsc_intf *intf)
+{
+	if (intf->adev) {
+		auxiliary_device_delete(&intf->adev->aux_dev);
+		auxiliary_device_uninit(&intf->adev->aux_dev);
+		intf->adev = NULL;
+	}
+	if (intf->irq >= 0)
+		irq_free_desc(intf->irq);
+	intf->irq = -1;
+}
+
+static void gsc_init_one(struct drm_i915_private *i915,
+			 struct intel_gsc_intf *intf,
+			 unsigned int intf_id)
+{
+	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
+	struct mei_aux_device *adev;
+	struct auxiliary_device *aux_dev;
+	const struct gsc_def *def;
+	int ret;
+
+	intf->irq = -1;
+	intf->id = intf_id;
+
+	if (intf_id == 0 && !HAS_HECI_PXP(i915))
+		return;
+
+	def = &gsc_def_dg1[intf_id];
+
+	if (!def->name) {
+		drm_warn_once(&i915->drm, "HECI%d is not implemented!\n", intf_id + 1);
+		return;
+	}
+
+	intf->irq = irq_alloc_desc(0);
+	if (intf->irq < 0) {
+		drm_err(&i915->drm, "gsc irq error %d\n", intf->irq);
+		return;
+	}
+
+	ret = gsc_irq_init(intf->irq);
+	if (ret < 0) {
+		drm_err(&i915->drm, "gsc irq init failed %d\n", ret);
+		goto fail;
+	}
+
+	adev = kzalloc(sizeof(*adev), GFP_KERNEL);
+	if (!adev)
+		goto fail;
+
+	adev->irq = intf->irq;
+	adev->bar.parent = &pdev->resource[0];
+	adev->bar.start = def->bar + pdev->resource[0].start;
+	adev->bar.end = adev->bar.start + def->bar_size - 1;
+	adev->bar.flags = IORESOURCE_MEM;
+	adev->bar.desc = IORES_DESC_NONE;
+
+	aux_dev = &adev->aux_dev;
+	aux_dev->name = def->name;
+	aux_dev->id = (pci_domain_nr(pdev->bus) << 16) |
+		      PCI_DEVID(pdev->bus->number, pdev->devfn);
+	aux_dev->dev.parent = &pdev->dev;
+	aux_dev->dev.release = gsc_release_dev;
+
+	ret = auxiliary_device_init(aux_dev);
+	if (ret < 0) {
+		drm_err(&i915->drm, "gsc aux init failed %d\n", ret);
+		kfree(adev);
+		goto fail;
+	}
+
+	ret = auxiliary_device_add(aux_dev);
+	if (ret < 0) {
+		drm_err(&i915->drm, "gsc aux add failed %d\n", ret);
+		/* adev will be freed with the put_device() and .release sequence */
+		auxiliary_device_uninit(aux_dev);
+		goto fail;
+	}
+	intf->adev = adev;
+
+	return;
+fail:
+	gsc_destroy_one(intf);
+}
+
+static void gsc_irq_handler(struct intel_gt *gt, unsigned int intf_id)
+{
+	int ret;
+
+	if (intf_id >= INTEL_GSC_NUM_INTERFACES) {
+		drm_warn_once(&gt->i915->drm, "GSC irq: intf_id %d is out of range", intf_id);
+		return;
+	}
+
+	if (!HAS_HECI_GSC(gt->i915)) {
+		drm_warn_once(&gt->i915->drm, "GSC irq: not supported");
+		return;
+	}
+
+	if (gt->gsc.intf[intf_id].irq < 0) {
+		drm_err_ratelimited(&gt->i915->drm, "GSC irq: irq not set");
+		return;
+	}
+
+	ret = generic_handle_irq(gt->gsc.intf[intf_id].irq);
+	if (ret)
+		drm_err_ratelimited(&gt->i915->drm, "error handling GSC irq: %d\n", ret);
+}
+
+void intel_gsc_irq_handler(struct intel_gt *gt, u32 iir)
+{
+	if (iir & GSC_IRQ_INTF(0))
+		gsc_irq_handler(gt, 0);
+	if (iir & GSC_IRQ_INTF(1))
+		gsc_irq_handler(gt, 1);
+}
+
+void intel_gsc_init(struct intel_gsc *gsc, struct drm_i915_private *i915)
+{
+	unsigned int i;
+
+	if (!HAS_HECI_GSC(i915))
+		return;
+
+	for (i = 0; i < INTEL_GSC_NUM_INTERFACES; i++)
+		gsc_init_one(i915, &gsc->intf[i], i);
+}
+
+void intel_gsc_fini(struct intel_gsc *gsc)
+{
+	struct intel_gt *gt = gsc_to_gt(gsc);
+	unsigned int i;
+
+	if (!HAS_HECI_GSC(gt->i915))
+		return;
+
+	for (i = 0; i < INTEL_GSC_NUM_INTERFACES; i++)
+		gsc_destroy_one(&gsc->intf[i]);
+}
diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.h b/drivers/gpu/drm/i915/gt/intel_gsc.h
new file mode 100644
index 0000000000000..68582f912b21a
--- /dev/null
+++ b/drivers/gpu/drm/i915/gt/intel_gsc.h
@@ -0,0 +1,37 @@
+/* SPDX-License-Identifier: MIT */
+/*
+ * Copyright(c) 2019-2022, Intel Corporation. All rights reserved.
+ */
+#ifndef __INTEL_GSC_DEV_H__
+#define __INTEL_GSC_DEV_H__
+
+#include <linux/types.h>
+
+struct drm_i915_private;
+struct intel_gt;
+struct mei_aux_device;
+
+#define INTEL_GSC_NUM_INTERFACES 2
+/*
+ * The HECI1 bit corresponds to bit15 and HECI2 to bit14.
+ * The reason for this is to allow growth for more interfaces in the future.
+ */
+#define GSC_IRQ_INTF(_x)  BIT(15 - (_x))
+
+/**
+ * struct intel_gsc - graphics security controller
+ * @intf : gsc interface
+ */
+struct intel_gsc {
+	struct intel_gsc_intf {
+		struct mei_aux_device *adev;
+		int irq;
+		unsigned int id;
+	} intf[INTEL_GSC_NUM_INTERFACES];
+};
+
+void intel_gsc_init(struct intel_gsc *gsc, struct drm_i915_private *dev_priv);
+void intel_gsc_fini(struct intel_gsc *gsc);
+void intel_gsc_irq_handler(struct intel_gt *gt, u32 iir);
+
+#endif /* __INTEL_GSC_DEV_H__ */
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
index 5001a6168d566..665e78beae67e 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt.c
@@ -456,6 +456,8 @@ void intel_gt_chipset_flush(struct intel_gt *gt)
 
 void intel_gt_driver_register(struct intel_gt *gt)
 {
+	intel_gsc_init(&gt->gsc, gt->i915);
+
 	intel_rps_driver_register(&gt->rps);
 
 	intel_gt_debugfs_register(gt);
@@ -784,6 +786,7 @@ void intel_gt_driver_unregister(struct intel_gt *gt)
 	intel_wakeref_t wakeref;
 
 	intel_rps_driver_unregister(&gt->rps);
+	intel_gsc_fini(&gt->gsc);
 
 	intel_pxp_fini(&gt->pxp);
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
index e76168e10a21b..bd90d4ec20100 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt.h
@@ -39,6 +39,11 @@ static inline struct intel_gt *huc_to_gt(struct intel_huc *huc)
 	return container_of(huc, struct intel_gt, uc.huc);
 }
 
+static inline struct intel_gt *gsc_to_gt(struct intel_gsc *gsc)
+{
+	return container_of(gsc, struct intel_gt, gsc);
+}
+
 void intel_root_gt_init_early(struct drm_i915_private *i915);
 int intel_gt_assign_ggtt(struct intel_gt *gt);
 int intel_gt_init_mmio(struct intel_gt *gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
index e443ac4c8059b..88b4becfcb175 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
@@ -68,6 +68,9 @@ gen11_other_irq_handler(struct intel_gt *gt, const u8 instance,
 	if (instance == OTHER_KCR_INSTANCE)
 		return intel_pxp_irq_handler(&gt->pxp, iir);
 
+	if (instance == OTHER_GSC_INSTANCE)
+		return intel_gsc_irq_handler(gt, iir);
+
 	WARN_ONCE(1, "unhandled other interrupt instance=0x%x, iir=0x%x\n",
 		  instance, iir);
 }
@@ -184,6 +187,8 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
 	intel_uncore_write(uncore, GEN11_VCS_VECS_INTR_ENABLE,	  0);
 	if (CCS_MASK(gt))
 		intel_uncore_write(uncore, GEN12_CCS_RSVD_INTR_ENABLE, 0);
+	if (HAS_HECI_GSC(gt->i915))
+		intel_uncore_write(uncore, GEN11_GUNIT_CSME_INTR_ENABLE, 0);
 
 	/* Restore masks irqs on RCS, BCS, VCS and VECS engines. */
 	intel_uncore_write(uncore, GEN11_RCS0_RSVD_INTR_MASK,	~0);
@@ -201,6 +206,8 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
 		intel_uncore_write(uncore, GEN12_CCS0_CCS1_INTR_MASK, ~0);
 	if (HAS_ENGINE(gt, CCS2) || HAS_ENGINE(gt, CCS3))
 		intel_uncore_write(uncore, GEN12_CCS2_CCS3_INTR_MASK, ~0);
+	if (HAS_HECI_GSC(gt->i915))
+		intel_uncore_write(uncore, GEN11_GUNIT_CSME_INTR_MASK, ~0);
 
 	intel_uncore_write(uncore, GEN11_GPM_WGBOXPERF_INTR_ENABLE, 0);
 	intel_uncore_write(uncore, GEN11_GPM_WGBOXPERF_INTR_MASK,  ~0);
@@ -215,6 +222,7 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
 {
 	struct intel_uncore *uncore = gt->uncore;
 	u32 irqs = GT_RENDER_USER_INTERRUPT;
+	const u32 gsc_mask = GSC_IRQ_INTF(0) | GSC_IRQ_INTF(1);
 	u32 dmask;
 	u32 smask;
 
@@ -233,6 +241,9 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
 	intel_uncore_write(uncore, GEN11_VCS_VECS_INTR_ENABLE, dmask);
 	if (CCS_MASK(gt))
 		intel_uncore_write(uncore, GEN12_CCS_RSVD_INTR_ENABLE, smask);
+	if (HAS_HECI_GSC(gt->i915))
+		intel_uncore_write(uncore, GEN11_GUNIT_CSME_INTR_ENABLE,
+				   gsc_mask);
 
 	/* Unmask irqs on RCS, BCS, VCS and VECS engines. */
 	intel_uncore_write(uncore, GEN11_RCS0_RSVD_INTR_MASK, ~smask);
@@ -250,6 +261,8 @@ void gen11_gt_irq_postinstall(struct intel_gt *gt)
 		intel_uncore_write(uncore, GEN12_CCS0_CCS1_INTR_MASK, ~dmask);
 	if (HAS_ENGINE(gt, CCS2) || HAS_ENGINE(gt, CCS3))
 		intel_uncore_write(uncore, GEN12_CCS2_CCS3_INTR_MASK, ~dmask);
+	if (HAS_HECI_GSC(gt->i915))
+		intel_uncore_write(uncore, GEN11_GUNIT_CSME_INTR_MASK, ~gsc_mask);
 
 	/*
 	 * RPS interrupts will get enabled/disabled on demand when RPS itself
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 17432b075d970..5a8bff0408699 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -1485,6 +1485,7 @@
 #define   OTHER_GUC_INSTANCE			0
 #define   OTHER_GTPM_INSTANCE			1
 #define   OTHER_KCR_INSTANCE			4
+#define   OTHER_GSC_INSTANCE			6
 
 #define GEN11_IIR_REG_SELECTOR(x)		_MMIO(0x190070 + ((x) * 4))
 
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_types.h b/drivers/gpu/drm/i915/gt/intel_gt_types.h
index 937b2e1a305ed..b06611c1d4ada 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
@@ -16,6 +16,7 @@
 #include <linux/workqueue.h>
 
 #include "uc/intel_uc.h"
+#include "intel_gsc.h"
 
 #include "i915_vma.h"
 #include "intel_engine_types.h"
@@ -73,6 +74,7 @@ struct intel_gt {
 	struct i915_ggtt *ggtt;
 
 	struct intel_uc uc;
+	struct intel_gsc gsc;
 
 	struct mutex tlb_invalidate_lock;
 
diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index d31ebd8890318..043759f24bf38 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1303,6 +1303,14 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 
 #define HAS_DMC(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dmc)
 
+#define HAS_HECI_PXP(dev_priv) \
+	(INTEL_INFO(dev_priv)->has_heci_pxp)
+
+#define HAS_HECI_GSCFI(dev_priv) \
+	(INTEL_INFO(dev_priv)->has_heci_gscfi)
+
+#define HAS_HECI_GSC(dev_priv) (HAS_HECI_PXP(dev_priv) || HAS_HECI_GSCFI(dev_priv))
+
 #define HAS_MSO(i915)		(DISPLAY_VER(i915) >= 12)
 
 #define HAS_RUNTIME_PM(dev_priv) (INTEL_INFO(dev_priv)->has_runtime_pm)
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 736e04078f569..06e6dad0d7f71 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -901,7 +901,8 @@ static const struct intel_device_info rkl_info = {
 	.has_llc = 0, \
 	.has_pxp = 0, \
 	.has_snoop = 1, \
-	.is_dgfx = 1
+	.is_dgfx = 1, \
+	.has_heci_gscfi = 1
 
 static const struct intel_device_info dg1_info = {
 	GEN12_FEATURES,
diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index a994be754f087..d8605fbc04f3d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -976,6 +976,8 @@
 #define GEN12_COMPUTE2_RING_BASE	0x1e000
 #define GEN12_COMPUTE3_RING_BASE	0x26000
 #define BLT_RING_BASE		0x22000
+#define DG1_GSC_HECI1_BASE	0x00258000
+#define DG1_GSC_HECI2_BASE	0x00259000
 
 
 
diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
index f9b955810593b..576d15a04c9e2 100644
--- a/drivers/gpu/drm/i915/intel_device_info.h
+++ b/drivers/gpu/drm/i915/intel_device_info.h
@@ -141,6 +141,8 @@ enum intel_ppgtt_type {
 	func(has_flat_ccs); \
 	func(has_global_mocs); \
 	func(has_gt_uc); \
+	func(has_heci_pxp); \
+	func(has_heci_gscfi); \
 	func(has_guc_deprivilege); \
 	func(has_l3_dpf); \
 	func(has_llc); \
diff --git a/include/linux/mei_aux.h b/include/linux/mei_aux.h
new file mode 100644
index 0000000000000..587f251288481
--- /dev/null
+++ b/include/linux/mei_aux.h
@@ -0,0 +1,19 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2022, Intel Corporation. All rights reserved.
+ */
+#ifndef _LINUX_MEI_AUX_H
+#define _LINUX_MEI_AUX_H
+
+#include <linux/auxiliary_bus.h>
+
+struct mei_aux_device {
+	struct auxiliary_device aux_dev;
+	int irq;
+	struct resource bar;
+};
+
+#define auxiliary_dev_to_mei_aux_dev(auxiliary_dev) \
+	container_of(auxiliary_dev, struct mei_aux_device, aux_dev)
+
+#endif /* _LINUX_MEI_AUX_H */
-- 
2.25.1

