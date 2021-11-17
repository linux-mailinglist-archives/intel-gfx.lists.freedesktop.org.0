Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9EB45442D
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 10:49:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A15926E558;
	Wed, 17 Nov 2021 09:49:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B452A6E55C
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 09:49:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10170"; a="320130487"
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="320130487"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 01:49:54 -0800
X-IronPort-AV: E=Sophos;i="5.87,241,1631602800"; d="scan'208";a="494851557"
Received: from shergane-mobl.ger.corp.intel.com (HELO localhost)
 ([10.251.219.1])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2021 01:49:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20211111101304.13094-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211111101304.13094-1-jani.nikula@intel.com>
Date: Wed, 17 Nov 2021 11:49:50 +0200
Message-ID: <871r3f158h.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/driver: rename i915_drv.c to
 i915_driver.c
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 11 Nov 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> This is more about trimming i915_drv.h than the renamed
> i915_driver.[ch]. Split out i915_driver.[ch] out of i915_drv.h as a
> feasible thing to do.

Pushed the series with Daniel's IRC ack.

BR,
Jani.


>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |  2 +-
>  .../drm/i915/{i915_drv.c =3D> i915_driver.c}    |  5 ++--
>  drivers/gpu/drm/i915/i915_driver.h            | 24 +++++++++++++++++++
>  drivers/gpu/drm/i915/i915_drv.h               | 11 +--------
>  drivers/gpu/drm/i915/i915_pci.c               |  1 +
>  drivers/gpu/drm/i915/i915_switcheroo.c        |  1 +
>  6 files changed, 31 insertions(+), 13 deletions(-)
>  rename drivers/gpu/drm/i915/{i915_drv.c =3D> i915_driver.c} (99%)
>  create mode 100644 drivers/gpu/drm/i915/i915_driver.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 7d0d0b814670..074d6b8edd23 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -30,7 +30,7 @@ subdir-ccflags-y +=3D -I$(srctree)/$(src)
>  # Please keep these build lists sorted!
>=20=20
>  # core driver code
> -i915-y +=3D i915_drv.o \
> +i915-y +=3D i915_driver.o \
>  	  i915_config.o \
>  	  i915_irq.o \
>  	  i915_getparam.o \
> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_=
driver.c
> similarity index 99%
> rename from drivers/gpu/drm/i915/i915_drv.c
> rename to drivers/gpu/drm/i915/i915_driver.c
> index 46bf3315f616..9111abafa44f 100644
> --- a/drivers/gpu/drm/i915/i915_drv.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -29,8 +29,8 @@
>=20=20
>  #include <linux/acpi.h>
>  #include <linux/device.h>
> -#include <linux/oom.h>
>  #include <linux/module.h>
> +#include <linux/oom.h>
>  #include <linux/pci.h>
>  #include <linux/pm.h>
>  #include <linux/pm_runtime.h>
> @@ -48,8 +48,8 @@
>  #include "display/intel_acpi.h"
>  #include "display/intel_bw.h"
>  #include "display/intel_cdclk.h"
> -#include "display/intel_dmc.h"
>  #include "display/intel_display_types.h"
> +#include "display/intel_dmc.h"
>  #include "display/intel_dp.h"
>  #include "display/intel_dpt.h"
>  #include "display/intel_fbdev.h"
> @@ -72,6 +72,7 @@
>  #include "pxp/intel_pxp_pm.h"
>=20=20
>  #include "i915_debugfs.h"
> +#include "i915_driver.h"
>  #include "i915_drv.h"
>  #include "i915_ioc32.h"
>  #include "i915_irq.h"
> diff --git a/drivers/gpu/drm/i915/i915_driver.h b/drivers/gpu/drm/i915/i9=
15_driver.h
> new file mode 100644
> index 000000000000..e99c00fb6312
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_driver.h
> @@ -0,0 +1,24 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2019 Intel Corporation
> + */
> +
> +#ifndef __I915_DRIVER_H__
> +#define __I915_DRIVER_H__
> +
> +#include <linux/pm.h>
> +
> +struct pci_dev;
> +struct pci_device_id;
> +struct drm_i915_private;
> +
> +extern const struct dev_pm_ops i915_pm_ops;
> +
> +int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *=
ent);
> +void i915_driver_remove(struct drm_i915_private *i915);
> +void i915_driver_shutdown(struct drm_i915_private *i915);
> +
> +int i915_resume_switcheroo(struct drm_i915_private *i915);
> +int i915_suspend_switcheroo(struct drm_i915_private *i915, pm_message_t =
state);
> +
> +#endif /* __I915_DRIVER_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index 94840af45750..72619a030b0c 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1785,16 +1785,7 @@ intel_vm_no_concurrent_access_wa(struct drm_i915_p=
rivate *i915)
>  	return IS_CHERRYVIEW(i915) || intel_ggtt_update_needs_vtd_wa(i915);
>  }
>=20=20
> -/* i915_drv.c */
> -extern const struct dev_pm_ops i915_pm_ops;
> -
> -int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *=
ent);
> -void i915_driver_remove(struct drm_i915_private *i915);
> -void i915_driver_shutdown(struct drm_i915_private *i915);
> -
> -int i915_resume_switcheroo(struct drm_i915_private *i915);
> -int i915_suspend_switcheroo(struct drm_i915_private *i915, pm_message_t =
state);
> -
> +/* i915_getparam.c */
>  int i915_getparam_ioctl(struct drm_device *dev, void *data,
>  			struct drm_file *file_priv);
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_=
pci.c
> index 5e6795853dc3..d7548605aa08 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -27,6 +27,7 @@
>  #include <drm/drm_drv.h>
>  #include <drm/i915_pciids.h>
>=20=20
> +#include "i915_driver.h"
>  #include "i915_drv.h"
>  #include "i915_pci.h"
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_switcheroo.c b/drivers/gpu/drm/i91=
5/i915_switcheroo.c
> index de0e224b56ce..7f06f5ad0749 100644
> --- a/drivers/gpu/drm/i915/i915_switcheroo.c
> +++ b/drivers/gpu/drm/i915/i915_switcheroo.c
> @@ -5,6 +5,7 @@
>=20=20
>  #include <linux/vga_switcheroo.h>
>=20=20
> +#include "i915_driver.h"
>  #include "i915_drv.h"
>  #include "i915_switcheroo.h"

--=20
Jani Nikula, Intel Open Source Graphics Center
