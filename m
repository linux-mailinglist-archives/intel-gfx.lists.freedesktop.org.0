Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7690479A9DF
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 17:41:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AAB510E325;
	Mon, 11 Sep 2023 15:41:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0F1410E325
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 15:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694446910; x=1725982910;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6W9idaRnJKAddi7Iu6iBf1emm6+cGQuWKTdySZJmups=;
 b=KY728PLqRzJ63Zp9b//lia7Bi8BJAxkLzXudoM/IGgWLCNhY3dqb4GZ3
 Q51XdqukAFYm6p1Cc2ZBlapsx3a8QxWW+ML4lG8vOP25/5ukBVaiROOcW
 wPa6nZu1dkhC6q8rsosvCeitcSDIrLHL150wvuapkuu1gW6WLON8H8a60
 kQj7hC0LVXAR72tZPIH9JLpQ1P6tqerfRgmJptCNVDQ8xXQAU86qIh7Y3
 HCWkjBthl6nEDU9lwUegY47Y5munvvz2nyJu0hB4kaTV/AqEwuxYY1caq
 w85JLc/78CNJh8SgKWKXxcqsiJoNO4BLmjWm7k3YX0dqHFrUmtmjhm+/j Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="357555307"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="357555307"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 08:41:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="736810066"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="736810066"
Received: from kschuele-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.119])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 08:41:30 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Alexander Usyskin <alexander.usyskin@intel.com>, Miquel Raynal
 <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>, Vignesh
 Raghavendra <vigneshr@ti.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
In-Reply-To: <20230910123949.1251964-2-alexander.usyskin@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230910123949.1251964-1-alexander.usyskin@intel.com>
 <20230910123949.1251964-2-alexander.usyskin@intel.com>
Date: Mon, 11 Sep 2023 18:41:27 +0300
Message-ID: <87msxsemzc.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 01/10] drm/i915/spi: add spi device for
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
Cc: Alexander Usyskin <alexander.usyskin@intel.com>,
 intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 linux-mtd@lists.infradead.org, Tomas Winkler <tomas.winkler@intel.com>,
 Vitaly Lubart <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 10 Sep 2023, Alexander Usyskin <alexander.usyskin@intel.com> wrote:
> From: Jani Nikula <jani.nikula@intel.com>

I'm almost certain I did not write this patch originally. The authorship
may have been changed accidentally along the way, but it's not mine.

BR,
Jani.


>
> Enable access to internal spi on DGFX devices via a child device.
> The spi child device is exposed via auxiliary bus.
>
> CC: Rodrigo Vivi <rodrigo.vivi@intel.com>
> CC: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
> Signed-off-by: Alexander Usyskin <alexander.usyskin@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile        |  3 ++
>  drivers/gpu/drm/i915/i915_driver.c   |  7 +++
>  drivers/gpu/drm/i915/i915_drv.h      |  4 ++
>  drivers/gpu/drm/i915/i915_reg.h      |  1 +
>  drivers/gpu/drm/i915/spi/intel_spi.c | 68 ++++++++++++++++++++++++++++
>  drivers/gpu/drm/i915/spi/intel_spi.h | 26 +++++++++++
>  6 files changed, 109 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.c
>  create mode 100644 drivers/gpu/drm/i915/spi/intel_spi.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 79f65eff6bb2..f16870ad2615 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -222,6 +222,9 @@ i915-y += \
>  # graphics system controller (GSC) support
>  i915-y += gt/intel_gsc.o
>  
> +# graphics spi device (DGFX) support
> +i915-y += spi/intel_spi.o
> +
>  # graphics hardware monitoring (HWMON) support
>  i915-$(CONFIG_HWMON) += i915_hwmon.o
>  
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index f8dbee7a5af7..aeeb34a8dde2 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -80,6 +80,8 @@
>  #include "soc/intel_dram.h"
>  #include "soc/intel_gmch.h"
>  
> +#include "spi/intel_spi.h"
> +
>  #include "i915_debugfs.h"
>  #include "i915_driver.h"
>  #include "i915_drm_client.h"
> @@ -666,6 +668,8 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
>  
>  	i915_hwmon_unregister(dev_priv);
>  
> +	intel_spi_fini(&dev_priv->spi);
> +
>  	i915_perf_unregister(dev_priv);
>  	i915_pmu_unregister(dev_priv);
>  
> @@ -1133,6 +1137,9 @@ static int i915_drm_suspend_late(struct drm_device *dev, bool hibernation)
>  
>  	i915_gem_suspend_late(dev_priv);
>  
> +
> +	intel_spi_init(&dev_priv->spi, dev_priv);
> +
>  	for_each_gt(gt, dev_priv, i)
>  		intel_uncore_suspend(gt->uncore);
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 87ffc477c3b1..abc601200cb4 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -51,6 +51,8 @@
>  
>  #include "soc/intel_pch.h"
>  
> +#include "spi/intel_spi.h"
> +
>  #include "i915_drm_client.h"
>  #include "i915_gem.h"
>  #include "i915_gpu_error.h"
> @@ -315,6 +317,8 @@ struct drm_i915_private {
>  
>  	struct i915_perf perf;
>  
> +	struct intel_spi spi;
> +
>  	struct i915_hwmon *hwmon;
>  
>  	/* Abstract the submission mechanism (legacy ringbuffer or execlists) away */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index e00e4d569ba9..0f8b01495b77 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -930,6 +930,7 @@
>  #define DG2_GSC_HECI2_BASE	0x00374000
>  #define MTL_GSC_HECI1_BASE	0x00116000
>  #define MTL_GSC_HECI2_BASE	0x00117000
> +#define GEN12_GUNIT_SPI_BASE	0x00102040
>  
>  #define HECI_H_CSR(base)	_MMIO((base) + 0x4)
>  #define   HECI_H_CSR_IE		REG_BIT(0)
> diff --git a/drivers/gpu/drm/i915/spi/intel_spi.c b/drivers/gpu/drm/i915/spi/intel_spi.c
> new file mode 100644
> index 000000000000..9eb5ab6bc4b9
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/spi/intel_spi.c
> @@ -0,0 +1,68 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright(c) 2019-2022, Intel Corporation. All rights reserved.
> + */
> +
> +#include <linux/irq.h>
> +#include "i915_reg.h"
> +#include "i915_drv.h"
> +#include "spi/intel_spi.h"
> +
> +#define GEN12_GUNIT_SPI_SIZE 0x80
> +
> +static void i915_spi_release_dev(struct device *dev)
> +{
> +}
> +
> +void intel_spi_init(struct intel_spi *spi, struct drm_i915_private *dev_priv)
> +{
> +	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
> +	struct auxiliary_device *aux_dev = &spi->aux_dev;
> +	int ret;
> +
> +	/* Only the DGFX devices have internal SPI */
> +	if (!IS_DGFX(dev_priv))
> +		return;
> +
> +	spi->bar.parent = &pdev->resource[0];
> +	spi->bar.start = GEN12_GUNIT_SPI_BASE + pdev->resource[0].start;
> +	spi->bar.end = spi->bar.start + GEN12_GUNIT_SPI_SIZE - 1;
> +	spi->bar.flags = IORESOURCE_MEM;
> +	spi->bar.desc = IORES_DESC_NONE;
> +
> +	aux_dev->name = "spi";
> +	aux_dev->id = (pci_domain_nr(pdev->bus) << 16) |
> +		       PCI_DEVID(pdev->bus->number, pdev->devfn);
> +	aux_dev->dev.parent = &pdev->dev;
> +	aux_dev->dev.release = i915_spi_release_dev;
> +
> +	ret = auxiliary_device_init(aux_dev);
> +	if (ret) {
> +		dev_err(&pdev->dev, "i915-spi aux init failed %d\n", ret);
> +		return;
> +	}
> +
> +	ret = auxiliary_device_add(aux_dev);
> +	if (ret) {
> +		dev_err(&pdev->dev, "i915-spi aux add failed %d\n", ret);
> +		auxiliary_device_uninit(aux_dev);
> +		return;
> +	}
> +
> +	spi->i915 = dev_priv;
> +}
> +
> +void intel_spi_fini(struct intel_spi *spi)
> +{
> +	struct pci_dev *pdev;
> +
> +	if (!spi->i915)
> +		return;
> +
> +	pdev = to_pci_dev(spi->i915->drm.dev);
> +
> +	dev_dbg(&pdev->dev, "removing i915-spi cell\n");
> +
> +	auxiliary_device_delete(&spi->aux_dev);
> +	auxiliary_device_uninit(&spi->aux_dev);
> +}
> diff --git a/drivers/gpu/drm/i915/spi/intel_spi.h b/drivers/gpu/drm/i915/spi/intel_spi.h
> new file mode 100644
> index 000000000000..a58bf79dcbc9
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/spi/intel_spi.h
> @@ -0,0 +1,26 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2019-2022, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_SPI_DEV_H__
> +#define __INTEL_SPI_DEV_H__
> +
> +#include <linux/auxiliary_bus.h>
> +
> +struct drm_i915_private;
> +
> +struct intel_spi {
> +	struct auxiliary_device aux_dev;
> +	struct drm_i915_private *i915;
> +	struct resource bar;
> +};
> +
> +#define auxiliary_dev_to_intel_spi_dev(auxiliary_dev) \
> +	container_of(auxiliary_dev, struct intel_spi, aux_dev)
> +
> +void intel_spi_init(struct intel_spi *spi, struct drm_i915_private *i915);
> +
> +void intel_spi_fini(struct intel_spi *spi);
> +
> +#endif /* __INTEL_SPI_DEV_H__ */

-- 
Jani Nikula, Intel Open Source Graphics Center
