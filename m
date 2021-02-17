Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9819031DE00
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 18:14:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F05826E5CA;
	Wed, 17 Feb 2021 17:14:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 906066E5CA
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 17:14:48 +0000 (UTC)
IronPort-SDR: 4/91nkkHFpElTr18964W6xzJsK4MBmHFwElv4rvj7W6TqDoE5Z/OI8LFpZXazQaPAOOav7lUor
 UjGoOB0UKmEg==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="268110588"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="268110588"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 09:14:48 -0800
IronPort-SDR: qWS9nX9Dl8DK/WgkdUPtpGwR+Wa7l0tKZLtxapMSvNwrSbsTbbgKSX8uSq9k148T0LFF0HyYkr
 xuEqp30EN3+w==
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="439434465"
Received: from dsdani-mobl1.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.4.37])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 09:14:47 -0800
Date: Wed, 17 Feb 2021 09:14:47 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Tomas Winkler <tomas.winkler@intel.com>
Message-ID: <20210217171447.uzicaicgatuwq6dp@ldmartin-desk1>
References: <20210216181925.650082-1-tomas.winkler@intel.com>
 <20210216181925.650082-2-tomas.winkler@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210216181925.650082-2-tomas.winkler@intel.com>
Subject: Re: [Intel-gfx] [RFC PATCH 1/9] drm/i915/spi: add spi device for
 discrete graphics
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>,
 intel-gfx@lists.freedesktop.org,
 Alexander Usyskin <alexander.usyskin@intel.com>, linux-mtd@lists.infradead.org,
 Vitaly Lubart <vitaly.lubart@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 16, 2021 at 08:19:17PM +0200, Tomas Winkler wrote:
>Enable access to internal spi on descrete devices via a child device.
>The spi child device is exposed via MFD framework.
>
>Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com> # v3
>Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
>---
> drivers/gpu/drm/i915/Kconfig         |  1 +
> drivers/gpu/drm/i915/Makefile        |  3 ++
> drivers/gpu/drm/i915/i915_drv.c      |  9 +++++
> drivers/gpu/drm/i915/i915_drv.h      |  4 +++
> drivers/gpu/drm/i915/i915_reg.h      |  1 +
> drivers/gpu/drm/i915/spi/intel_spi.c | 53 ++++++++++++++++++++++++++++
> drivers/gpu/drm/i915/spi/intel_spi.h | 19 ++++++++++
> 7 files changed, 90 insertions(+)
> create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.c
> create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.h
>
>diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
>index 1e1cb245fca7..abcaa8da45ac 100644
>--- a/drivers/gpu/drm/i915/Kconfig
>+++ b/drivers/gpu/drm/i915/Kconfig
>@@ -26,6 +26,7 @@ config DRM_I915
> 	select SND_HDA_I915 if SND_HDA_CORE
> 	select CEC_CORE if CEC_NOTIFIER
> 	select VMAP_PFN
>+	select MFD_CORE
> 	help
> 	  Choose this option if you have a system that has "Intel Graphics
> 	  Media Accelerator" or "HD Graphics" integrated graphics,
>diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
>index 235679637d1c..7fa9120feb8d 100644
>--- a/drivers/gpu/drm/i915/Makefile
>+++ b/drivers/gpu/drm/i915/Makefile
>@@ -191,6 +191,9 @@ i915-y += gt/uc/intel_uc.o \
> 	  gt/uc/intel_huc_debugfs.o \
> 	  gt/uc/intel_huc_fw.o
>
>+# graphics spi device (DGFX) support
>+i915-y += spi/intel_spi.o
>+
> # modesetting core code
> i915-y += \
> 	display/intel_atomic.o \
>diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
>index 3edd5e47ad68..48c383d37212 100644
>--- a/drivers/gpu/drm/i915/i915_drv.c
>+++ b/drivers/gpu/drm/i915/i915_drv.c
>@@ -38,6 +38,7 @@
> #include <linux/slab.h>
> #include <linux/vga_switcheroo.h>
> #include <linux/vt.h>
>+#include <linux/mfd/core.h>
>
> #include <drm/drm_atomic_helper.h>
> #include <drm/drm_ioctl.h>
>@@ -67,6 +68,8 @@
> #include "gt/intel_gt_pm.h"
> #include "gt/intel_rc6.h"
>
>+#include "spi/intel_spi.h"
>+
> #include "i915_debugfs.h"
> #include "i915_drm_client.h"
> #include "i915_drv.h"
>@@ -684,6 +687,8 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
>
> 	intel_gt_driver_register(&dev_priv->gt);
>
>+	intel_spi_init(&dev_priv->spi, dev_priv);
>+
> 	intel_display_driver_register(dev_priv);


any reason why this is between gt and display init?  I think it would be
better to call this before gt_driver_register. It doesn't need gt and if
eventually display also needs to register mfd devices, the unregister
counter part of this wouldn't be so ackward.

Naming-wise, most of the functions called here are "*_register()".
Shouldn't we follow suit and name it intel_spi_driver_register()?

>
> 	intel_power_domains_enable(dev_priv);
>@@ -710,6 +715,10 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
>
> 	intel_display_driver_unregister(dev_priv);
>
>+	mfd_remove_devices(&dev_priv->drm.pdev->dev);
>+
>+	intel_spi_fini(&dev_priv->spi);

see below, I don't think we actually need/want this. I'd rather have a
comment here explaining why we are not "unpeeling the onion" wrt to the
register function:

	/*
	 * mfd drivers are added separately, but removed all at once
	 * from dev_priv
	 */
	mfd_remove_devices(&dev_priv->drm.pdev->dev);

>+
> 	intel_gt_driver_unregister(&dev_priv->gt);
>
> 	i915_perf_unregister(dev_priv);
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>index f8413b3b9da8..f12ec7606d75 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -85,6 +85,8 @@
> #include "gt/intel_workarounds.h"
> #include "gt/uc/intel_uc.h"
>
>+#include "spi/intel_spi.h"
>+
> #include "intel_device_info.h"
> #include "intel_pch.h"
> #include "intel_runtime_pm.h"
>@@ -1117,6 +1119,8 @@ struct drm_i915_private {
>
> 	struct i915_perf perf;
>
>+	struct intel_spi spi;
>+
> 	/* Abstract the submission mechanism (legacy ringbuffer or execlists) away */
> 	struct intel_gt gt;
>
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
>index 224ad897af34..426c5dd63673 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -2510,6 +2510,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t reg)
> #define VEBOX_RING_BASE		0x1a000
> #define GEN11_VEBOX_RING_BASE		0x1c8000
> #define GEN11_VEBOX2_RING_BASE		0x1d8000
>+#define GEN12_GUNIT_SPI_BASE	0x00102040
> #define BLT_RING_BASE		0x22000
> #define RING_TAIL(base)		_MMIO((base) + 0x30)
> #define RING_HEAD(base)		_MMIO((base) + 0x34)
>diff --git a/drivers/gpu/drm/i915/spi/intel_spi.c b/drivers/gpu/drm/i915/spi/intel_spi.c
>new file mode 100644
>index 000000000000..07da7197bd5d
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/spi/intel_spi.c
>@@ -0,0 +1,53 @@
>+// SPDX-License-Identifier: MIT
>+/*
>+ * Copyright(c) 2019-2021, Intel Corporation. All rights reserved.
>+ */
>+
>+#include <linux/mfd/core.h>
>+#include <linux/irq.h>
>+#include "i915_reg.h"
>+#include "i915_drv.h"
>+#include "gt/intel_gt.h"
>+#include "spi/intel_spi.h"
>+
>+static const struct resource spi_resources[] = {
>+	DEFINE_RES_MEM_NAMED(GEN12_GUNIT_SPI_BASE, 0x80, "i915-spi-mmio"),
>+};
>+
>+static const struct mfd_cell intel_spi_cell = {
>+	.id = 2,
>+	.name = "i915-spi",
>+	.num_resources = ARRAY_SIZE(spi_resources),
>+	.resources = spi_resources,
>+};
>+
>+void intel_spi_init(struct intel_spi *spi, struct drm_i915_private *dev_priv)
>+{
>+	struct pci_dev *pdev = dev_priv->drm.pdev;
>+	int ret;
>+
>+	/* Only the DGFX devices have internal SPI */
>+	if (!IS_DGFX(dev_priv))
>+		return;
>+
>+	ret = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_AUTO,
>+			      &intel_spi_cell, 1,
>+			      &pdev->resource[0], -1, NULL);
>+
>+	if (ret)
>+		dev_err(&pdev->dev, "creating i915-spi cell failed\n");
>+
>+	spi->i915 = dev_priv;
>+}
>+
>+void intel_spi_fini(struct intel_spi *spi)
>+{
>+	struct pci_dev *pdev;
>+
>+	if (!spi->i915)
>+		return;
>+
>+	pdev = spi->i915->drm.pdev;
>+
>+	dev_dbg(&pdev->dev, "removing i915-spi cell\n");

this is actually a NOP. I don't think we actually need it since mfd
devices are removed all at once from the driver

>+}
>diff --git a/drivers/gpu/drm/i915/spi/intel_spi.h b/drivers/gpu/drm/i915/spi/intel_spi.h
>new file mode 100644
>index 000000000000..276551fed993
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/spi/intel_spi.h
>@@ -0,0 +1,19 @@
>+/* SPDX-License-Identifier: MIT */
>+/*
>+ * Copyright(c) 2019-2021, Intel Corporation. All rights reserved.
>+ */
>+
>+#ifndef __INTEL_SPI_DEV_H__
>+#define __INTEL_SPI_DEV_H__
>+
>+struct drm_i915_private;
>+
>+struct intel_spi {
>+	struct drm_i915_private *i915;
>+};
>+
>+void intel_spi_init(struct intel_spi *spi, struct drm_i915_private *i915);
>+
>+void intel_spi_fini(struct intel_spi *spi);
>+
>+#endif /* __INTEL_SPI_DEV_H__ */
>-- 
>2.26.2
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
