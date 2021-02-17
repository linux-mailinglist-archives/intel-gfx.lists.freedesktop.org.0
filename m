Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7485C31E0E5
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 21:58:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B451F89FBC;
	Wed, 17 Feb 2021 20:58:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8891589FBC
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 20:58:17 +0000 (UTC)
IronPort-SDR: p4oj+8A0Sd37tZQRkmUt2eo0Pjd+IBPWJWsPTKN+QiL+OEKIsUjcOIOFq8UUqVsWK1q/TheeDS
 8WcuNH+vP3+g==
X-IronPort-AV: E=McAfee;i="6000,8403,9898"; a="183440507"
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="183440507"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2021 12:58:16 -0800
IronPort-SDR: nEhGAMcmoJyXxVCgVrv+GmLBBQHMOq/z7sBEi1DCsPwbhMX4ERGcARrQlqCZ4HviWBIFc/2/nG
 UF8MvBAv3WKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,185,1610438400"; d="scan'208";a="400142037"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga008.jf.intel.com with ESMTP; 17 Feb 2021 12:58:16 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 12:58:16 -0800
Received: from hasmsx602.ger.corp.intel.com (10.184.107.142) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 17 Feb 2021 12:58:14 -0800
Received: from hasmsx602.ger.corp.intel.com ([10.184.107.142]) by
 HASMSX602.ger.corp.intel.com ([10.184.107.142]) with mapi id 15.01.2106.002;
 Wed, 17 Feb 2021 22:58:13 +0200
From: "Winkler, Tomas" <tomas.winkler@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, "Vignesh
 Raghavendra" <vigneshr@ti.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [RFC PATCH 3/9] drm/i915/spi: add driver for on-die spi device
Thread-Index: AQHXBJBcj4Goi4XIwEe9K9Ji08dc+apcDHIAgADGOPA=
Date: Wed, 17 Feb 2021 20:58:12 +0000
Message-ID: <b08989f480564bbea5ce187797e9e30b@intel.com>
References: <20210216181925.650082-1-tomas.winkler@intel.com>
 <20210216181925.650082-4-tomas.winkler@intel.com> <87blcjarof.fsf@intel.com>
In-Reply-To: <87blcjarof.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH 3/9] drm/i915/spi: add driver for on-die
 spi device
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Usyskin,
 Alexander" <alexander.usyskin@intel.com>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> 
> On Tue, 16 Feb 2021, Tomas Winkler <tomas.winkler@intel.com> wrote:
> > Add the platform driver for i915 on-die spi device, exposed via mfd
> > framework.
> >
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> > Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Kconfig             |   2 +
> >  drivers/gpu/drm/i915/Makefile            |   3 +
> >  drivers/gpu/drm/i915/spi/intel_spi_drv.c | 116
> > +++++++++++++++++++++++
> >  3 files changed, 121 insertions(+)
> >  create mode 100644 drivers/gpu/drm/i915/spi/intel_spi_drv.c
> >
> > diff --git a/drivers/gpu/drm/i915/Kconfig
> > b/drivers/gpu/drm/i915/Kconfig index abcaa8da45ac..13c870e5878e 100644
> > --- a/drivers/gpu/drm/i915/Kconfig
> > +++ b/drivers/gpu/drm/i915/Kconfig
> > @@ -27,6 +27,8 @@ config DRM_I915
> >  	select CEC_CORE if CEC_NOTIFIER
> >  	select VMAP_PFN
> >  	select MFD_CORE
> > +	select MTD
> 
> Selecting MTD does not seem to be a popular thing to do, which is usually a
> clue it's probably the wrong thing to do.
Depends, if it is not selected you'll end with wrongly configured system. 

> > +	select MTD_PARTITIONED_MASTER
> >  	help
> >  	  Choose this option if you have a system that has "Intel Graphics
> >  	  Media Accelerator" or "HD Graphics" integrated graphics, diff
> > --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> > index 7fa9120feb8d..f209cd541eec 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -299,6 +299,9 @@ endif
> >  obj-$(CONFIG_DRM_I915) += i915.o
> >  obj-$(CONFIG_DRM_I915_GVT_KVMGT) += gvt/kvmgt.o
> >
> > +obj-m += i915_spi.o
> 
> And literally nobody does this.
> 
> > +i915_spi-y := spi/intel_spi_drv.o
> 
> Time to add a separate Kconfig and Makefile in spi/?
Can be done. 
> 
> BR,
> Jani.
> 
> > +
> >  # header test
> >
> >  # exclude some broken headers from the test coverage diff --git
> > a/drivers/gpu/drm/i915/spi/intel_spi_drv.c
> > b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
> > new file mode 100644
> > index 000000000000..23261f35b71f
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/spi/intel_spi_drv.c
> > @@ -0,0 +1,116 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright(c) 2019-2021, Intel Corporation. All rights reserved.
> > + */
> > +#include <linux/module.h>
> > +#include <linux/types.h>
> > +#include <linux/kernel.h>
> > +#include <linux/string.h>
> > +#include <linux/io.h>
> > +#include <linux/device.h>
> > +#include <linux/slab.h>
> > +#include <linux/platform_device.h>
> > +#include <spi/intel_spi.h>
> 
> Should this have "" instead of <>?
> 
> > +
> > +struct i915_spi {
> > +	void __iomem *base;
> > +	size_t size;
> > +	unsigned int nregions;
> > +	struct {
> > +		const char *name;
> > +		u8 id;
> > +		u64 offset;
> > +		u64 size;
> > +	} regions[];
> > +};
> > +
> > +static int i915_spi_probe(struct platform_device *platdev) {
> > +	struct resource *bar;
> > +	struct device *device;
> > +	struct i915_spi *spi;
> > +	struct i915_spi_region *regions;
> > +	unsigned int nregions;
> > +	unsigned int i, n;
> > +	size_t size;
> > +	char *name;
> > +	size_t name_size;
> > +
> > +	device = &platdev->dev;
> > +
> > +	regions = dev_get_platdata(&platdev->dev);
> > +	if (!regions) {
> > +		dev_err(device, "no regions defined\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	/* count available regions */
> > +	for (nregions = 0, i = 0; i < I915_SPI_REGIONS; i++) {
> > +		if (regions[i].name)
> > +			nregions++;
> > +	}
> > +
> > +	if (!nregions) {
> > +		dev_err(device, "no regions defined\n");
> > +		return -ENODEV;
> > +	}
> > +
> > +	size = sizeof(*spi) + sizeof(spi->regions[0]) * nregions;
> > +	spi = devm_kzalloc(device, size, GFP_KERNEL);
> > +	if (!spi)
> > +		return -ENOMEM;
> > +
> > +	spi->nregions = nregions;
> > +	for (n = 0, i = 0; i < I915_SPI_REGIONS; i++) {
> > +		if (regions[i].name) {
> > +			name_size = strlen(dev_name(&platdev->dev)) +
> > +				    strlen(regions[i].name) + 2; /* for point */
> > +			name = devm_kzalloc(device, name_size,
> GFP_KERNEL);
> > +			if (!name)
> > +				continue;
> > +			snprintf(name, name_size, "%s.%s",
> > +				 dev_name(&platdev->dev),
> regions[i].name);
> > +			spi->regions[n].name = name;
> > +			spi->regions[n].id = i;
> > +			n++;
> > +		}
> > +	}
> > +
> > +	bar = platform_get_resource(platdev, IORESOURCE_MEM, 0);
> > +	if (!bar)
> > +		return -ENODEV;
> > +
> > +	spi->base = devm_ioremap_resource(device, bar);
> > +	if (IS_ERR(spi->base)) {
> > +		dev_err(device, "mmio not mapped\n");
> > +		return PTR_ERR(spi->base);
> > +	}
> > +
> > +	platform_set_drvdata(platdev, spi);
> > +
> > +	dev_dbg(device, "i915-spi is bound\n");
> > +
> > +	return 0;
> > +}
> > +
> > +static int i915_spi_remove(struct platform_device *platdev) {
> > +	platform_set_drvdata(platdev, NULL);
> > +
> > +	return 0;
> > +}
> > +
> > +MODULE_ALIAS("platform:i915-spi");
> > +static struct platform_driver i915_spi_driver = {
> > +	.probe  = i915_spi_probe,
> > +	.remove = i915_spi_remove,
> > +	.driver = {
> > +		.name = "i915-spi",
> > +	},
> > +};
> > +
> > +module_platform_driver(i915_spi_driver);
> > +
> > +MODULE_LICENSE("GPL and additional rights"); MODULE_AUTHOR("Intel
> > +Corporation"); MODULE_DESCRIPTION("Intel DGFX SPI driver");
> 
> --
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
