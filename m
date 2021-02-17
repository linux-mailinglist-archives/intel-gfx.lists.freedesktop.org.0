Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE5B31DF58
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 20:02:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B69936E9AB;
	Wed, 17 Feb 2021 19:02:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D7636E9AB
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 19:02:21 +0000 (UTC)
IronPort-SDR: PQUL8hks8UgBbAiRDBvfgW7RG+MdhyHAe2ZlIWV0F+rGkCl8CS1ueW7O8xcs1fkHUXyMVZ1zyv
 /ukR1aFXhQ3A==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="163070731"
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="163070731"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 11:02:21 -0800
IronPort-SDR: New5mfyIuFYoPiLbt4yh7Uva9Yu+6d8YWWcg/7qWeEsAAQHJfk+yyZ3/o5vgHrulqau3xNeewG
 DvLR91tRPlhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="378101727"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga002.jf.intel.com with ESMTP; 17 Feb 2021 11:02:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 11:02:19 -0800
Received: from hasmsx602.ger.corp.intel.com (10.184.107.142) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 11:02:18 -0800
Received: from hasmsx602.ger.corp.intel.com ([10.184.107.142]) by
 HASMSX602.ger.corp.intel.com ([10.184.107.142]) with mapi id 15.01.2106.002;
 Wed, 17 Feb 2021 21:02:16 +0200
From: "Winkler, Tomas" <tomas.winkler@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [RFC PATCH 1/9] drm/i915/spi: add spi device for discrete
 graphics
Thread-Index: AQHXBJBVf1PeA6MPSESjHcXFLrlf2apcdiCAgAA0ybA=
Date: Wed, 17 Feb 2021 19:02:16 +0000
Message-ID: <6767065c0d4e4b0bbcee37a27cacb6ef@intel.com>
References: <20210216181925.650082-1-tomas.winkler@intel.com>
 <20210216181925.650082-2-tomas.winkler@intel.com>
 <20210217171447.uzicaicgatuwq6dp@ldmartin-desk1>
In-Reply-To: <20210217171447.uzicaicgatuwq6dp@ldmartin-desk1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
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
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Usyskin,
 Alexander" <alexander.usyskin@intel.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


> On Tue, Feb 16, 2021 at 08:19:17PM +0200, Tomas Winkler wrote:
> >Enable access to internal spi on descrete devices via a child device.
> >The spi child device is exposed via MFD framework.
> >
> >Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >Cc: Lucas De Marchi <lucas.demarchi@intel.com> # v3
> >Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> >---
> > drivers/gpu/drm/i915/Kconfig         |  1 +
> > drivers/gpu/drm/i915/Makefile        |  3 ++
> > drivers/gpu/drm/i915/i915_drv.c      |  9 +++++
> > drivers/gpu/drm/i915/i915_drv.h      |  4 +++
> > drivers/gpu/drm/i915/i915_reg.h      |  1 +
> > drivers/gpu/drm/i915/spi/intel_spi.c | 53
> ++++++++++++++++++++++++++++
> >drivers/gpu/drm/i915/spi/intel_spi.h | 19 ++++++++++
> > 7 files changed, 90 insertions(+)
> > create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.c
> > create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.h
> >
> >diff --git a/drivers/gpu/drm/i915/Kconfig
> >b/drivers/gpu/drm/i915/Kconfig index 1e1cb245fca7..abcaa8da45ac 100644
> >--- a/drivers/gpu/drm/i915/Kconfig
> >+++ b/drivers/gpu/drm/i915/Kconfig
> >@@ -26,6 +26,7 @@ config DRM_I915
> > 	select SND_HDA_I915 if SND_HDA_CORE
> > 	select CEC_CORE if CEC_NOTIFIER
> > 	select VMAP_PFN
> >+	select MFD_CORE
> > 	help
> > 	  Choose this option if you have a system that has "Intel Graphics
> > 	  Media Accelerator" or "HD Graphics" integrated graphics, diff --git
> >a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile index
> >235679637d1c..7fa9120feb8d 100644
> >--- a/drivers/gpu/drm/i915/Makefile
> >+++ b/drivers/gpu/drm/i915/Makefile
> >@@ -191,6 +191,9 @@ i915-y += gt/uc/intel_uc.o \
> > 	  gt/uc/intel_huc_debugfs.o \
> > 	  gt/uc/intel_huc_fw.o
> >
> >+# graphics spi device (DGFX) support
> >+i915-y += spi/intel_spi.o
> >+
> > # modesetting core code
> > i915-y += \
> > 	display/intel_atomic.o \
> >diff --git a/drivers/gpu/drm/i915/i915_drv.c
> >b/drivers/gpu/drm/i915/i915_drv.c index 3edd5e47ad68..48c383d37212
> >100644
> >--- a/drivers/gpu/drm/i915/i915_drv.c
> >+++ b/drivers/gpu/drm/i915/i915_drv.c
> >@@ -38,6 +38,7 @@
> > #include <linux/slab.h>
> > #include <linux/vga_switcheroo.h>
> > #include <linux/vt.h>
> >+#include <linux/mfd/core.h>
> >
> > #include <drm/drm_atomic_helper.h>
> > #include <drm/drm_ioctl.h>
> >@@ -67,6 +68,8 @@
> > #include "gt/intel_gt_pm.h"
> > #include "gt/intel_rc6.h"
> >
> >+#include "spi/intel_spi.h"
> >+
> > #include "i915_debugfs.h"
> > #include "i915_drm_client.h"
> > #include "i915_drv.h"
> >@@ -684,6 +687,8 @@ static void i915_driver_register(struct
> >drm_i915_private *dev_priv)
> >
> > 	intel_gt_driver_register(&dev_priv->gt);
> >
> >+	intel_spi_init(&dev_priv->spi, dev_priv);
> >+
> > 	intel_display_driver_register(dev_priv);
> 
> 
> any reason why this is between gt and display init?  I think it would be better
> to call this before gt_driver_register. It doesn't need gt and if eventually
> display also needs to register mfd devices, the unregister counter part of this
> wouldn't be so ackward.

It doesn't really matter, actually gt driver will register additional mfd devices I'm not aware of display mfd devices.

> 
> Naming-wise, most of the functions called here are "*_register()".
> Shouldn't we follow suit and name it intel_spi_driver_register()?

It's not a driver we are initializing but a  device here. If I remember correctly the name was suggested in internal review. 

> 
> >
> > 	intel_power_domains_enable(dev_priv);
> >@@ -710,6 +715,10 @@ static void i915_driver_unregister(struct
> >drm_i915_private *dev_priv)
> >
> > 	intel_display_driver_unregister(dev_priv);
> >
> >+	mfd_remove_devices(&dev_priv->drm.pdev->dev);
> >+
> >+	intel_spi_fini(&dev_priv->spi);
> 
> see below, I don't think we actually need/want this. I'd rather have a
> comment here explaining why we are not "unpeeling the onion" wrt to the
> register function:

The is a result of bad rebase, good catch, the above code is correct. 
> 
> 	/*
> 	 * mfd drivers are added separately, but removed all at once
> 	 * from dev_priv
> 	 */
> 	mfd_remove_devices(&dev_priv->drm.pdev->dev);
> 
> >+
> > 	intel_gt_driver_unregister(&dev_priv->gt);
> >
> > 	i915_perf_unregister(dev_priv);
> >diff --git a/drivers/gpu/drm/i915/i915_drv.h
> >b/drivers/gpu/drm/i915/i915_drv.h index f8413b3b9da8..f12ec7606d75
> >100644
> >--- a/drivers/gpu/drm/i915/i915_drv.h
> >+++ b/drivers/gpu/drm/i915/i915_drv.h
> >@@ -85,6 +85,8 @@
> > #include "gt/intel_workarounds.h"
> > #include "gt/uc/intel_uc.h"
> >
> >+#include "spi/intel_spi.h"
> >+
> > #include "intel_device_info.h"
> > #include "intel_pch.h"
> > #include "intel_runtime_pm.h"
> >@@ -1117,6 +1119,8 @@ struct drm_i915_private {
> >
> > 	struct i915_perf perf;
> >
> >+	struct intel_spi spi;
> >+
> > 	/* Abstract the submission mechanism (legacy ringbuffer or
> execlists) away */
> > 	struct intel_gt gt;
> >
> >diff --git a/drivers/gpu/drm/i915/i915_reg.h
> >b/drivers/gpu/drm/i915/i915_reg.h index 224ad897af34..426c5dd63673
> >100644
> >--- a/drivers/gpu/drm/i915/i915_reg.h
> >+++ b/drivers/gpu/drm/i915/i915_reg.h
> >@@ -2510,6 +2510,7 @@ static inline bool i915_mmio_reg_valid(i915_reg_t
> reg)
> > #define VEBOX_RING_BASE		0x1a000
> > #define GEN11_VEBOX_RING_BASE		0x1c8000
> > #define GEN11_VEBOX2_RING_BASE		0x1d8000
> >+#define GEN12_GUNIT_SPI_BASE	0x00102040
> > #define BLT_RING_BASE		0x22000
> > #define RING_TAIL(base)		_MMIO((base) + 0x30)
> > #define RING_HEAD(base)		_MMIO((base) + 0x34)
> >diff --git a/drivers/gpu/drm/i915/spi/intel_spi.c
> >b/drivers/gpu/drm/i915/spi/intel_spi.c
> >new file mode 100644
> >index 000000000000..07da7197bd5d
> >--- /dev/null
> >+++ b/drivers/gpu/drm/i915/spi/intel_spi.c
> >@@ -0,0 +1,53 @@
> >+// SPDX-License-Identifier: MIT
> >+/*
> >+ * Copyright(c) 2019-2021, Intel Corporation. All rights reserved.
> >+ */
> >+
> >+#include <linux/mfd/core.h>
> >+#include <linux/irq.h>
> >+#include "i915_reg.h"
> >+#include "i915_drv.h"
> >+#include "gt/intel_gt.h"
> >+#include "spi/intel_spi.h"
> >+
> >+static const struct resource spi_resources[] = {
> >+	DEFINE_RES_MEM_NAMED(GEN12_GUNIT_SPI_BASE, 0x80, "i915-
> spi-mmio"), };
> >+
> >+static const struct mfd_cell intel_spi_cell = {
> >+	.id = 2,
> >+	.name = "i915-spi",
> >+	.num_resources = ARRAY_SIZE(spi_resources),
> >+	.resources = spi_resources,
> >+};
> >+
> >+void intel_spi_init(struct intel_spi *spi, struct drm_i915_private
> >+*dev_priv) {
> >+	struct pci_dev *pdev = dev_priv->drm.pdev;
> >+	int ret;
> >+
> >+	/* Only the DGFX devices have internal SPI */
> >+	if (!IS_DGFX(dev_priv))
> >+		return;
> >+
> >+	ret = mfd_add_devices(&pdev->dev, PLATFORM_DEVID_AUTO,
> >+			      &intel_spi_cell, 1,
> >+			      &pdev->resource[0], -1, NULL);
> >+
> >+	if (ret)
> >+		dev_err(&pdev->dev, "creating i915-spi cell failed\n");
> >+
> >+	spi->i915 = dev_priv;
> >+}
> >+
> >+void intel_spi_fini(struct intel_spi *spi) {
> >+	struct pci_dev *pdev;
> >+
> >+	if (!spi->i915)
> >+		return;
> >+
> >+	pdev = spi->i915->drm.pdev;
> >+
> >+	dev_dbg(&pdev->dev, "removing i915-spi cell\n");
> 
> this is actually a NOP. I don't think we actually need it since mfd devices are
> removed all at once from the driver

There was intention to use that code, but it's a leftover I will drop it. 

> 
> >+}
> >diff --git a/drivers/gpu/drm/i915/spi/intel_spi.h
> >b/drivers/gpu/drm/i915/spi/intel_spi.h
> >new file mode 100644
> >index 000000000000..276551fed993
> >--- /dev/null
> >+++ b/drivers/gpu/drm/i915/spi/intel_spi.h
> >@@ -0,0 +1,19 @@
> >+/* SPDX-License-Identifier: MIT */
> >+/*
> >+ * Copyright(c) 2019-2021, Intel Corporation. All rights reserved.
> >+ */
> >+
> >+#ifndef __INTEL_SPI_DEV_H__
> >+#define __INTEL_SPI_DEV_H__
> >+
> >+struct drm_i915_private;
> >+
> >+struct intel_spi {
> >+	struct drm_i915_private *i915;
> >+};
> >+
> >+void intel_spi_init(struct intel_spi *spi, struct drm_i915_private
> >+*i915);
> >+
> >+void intel_spi_fini(struct intel_spi *spi);
> >+
> >+#endif /* __INTEL_SPI_DEV_H__ */
> >--
> >2.26.2
> >
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
