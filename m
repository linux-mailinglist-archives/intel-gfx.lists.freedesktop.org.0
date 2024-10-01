Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE8198BD5E
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 15:21:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 288D910E614;
	Tue,  1 Oct 2024 13:21:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mrb0n0Eu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F44410E614;
 Tue,  1 Oct 2024 13:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727788897; x=1759324897;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=W2BhaIAzu92+mvnt2Zr4JT0pqqNewhoEnx6qRmGtcss=;
 b=mrb0n0Eu8X6xF1qiH8DlA02RBtzdopmp0KCHHfot9CW1RyZYNP+Hz3Kj
 LFIqoZs6q47Xvi+lTOOyl5X5iz9G//xDxPGANOXnnOb/KuOyklBIPa+7S
 9U66PE1/AIOwCAYWtkQlAA8d/fToITQg63Z9Wip0Q3wjD+iIIJBNlqyZr
 G8MLq/1UhWEtmibaDptv8t5DIKmbPJWvBBAN1VuaTnqJGYXdfR5KAH6pP
 Vl53jqjFUxa9FF/SPk8RVpRfNigVfZMsomV1+b28ydmtU6dwSWrknr5V3
 1rEA4krFcVcFIDGkbIZhEA99PQ0wXKi4xzpBwUzaGcSMoKx4rlp0Tw1kU g==;
X-CSE-ConnectionGUID: OLxBRvo2S3uVU60Y+HJzXw==
X-CSE-MsgGUID: wcdf9GEbQFmlWalPyX7ZDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11212"; a="38311856"
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="38311856"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 06:21:36 -0700
X-CSE-ConnectionGUID: SBu+nd1dQxGG0AMhoaLcCg==
X-CSE-MsgGUID: 3S673DxbRJ2lAkNS4EjVLg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,167,1725346800"; d="scan'208";a="73915187"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.188])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2024 06:21:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jesse Barnes
 <jbarnes@virtuousgeek.org>
Subject: Re: [PATCH 02/31] drm/i915/display: Convert i915_suspend into
 i9xx_display_sr
In-Reply-To: <20240924204222.246862-3-rodrigo.vivi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
 <20240924204222.246862-3-rodrigo.vivi@intel.com>
Date: Tue, 01 Oct 2024 16:21:18 +0300
Message-ID: <87ed50ufg1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 24 Sep 2024, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> These save & restore functions inside i915_suspend are old display
> functions to save and restore a bunch of display related registers.
>
> Move it under display and rename accordantly. Just don't move it
> entirely towards intel_display struct yet because it depends
> on drm_i915_private for the IS_MOBILE.

'git show --color-moved' has made me a huge proponent of completely
separating code movement from any cleanups.

With that, reviewing the movement part takes mere seconds rather than
minutes. And the next patch doing independent cleanups on top is easy to
review as well. Especially the s/dev_priv/i915/ change is easy with 'git
show --color-words' (my MUA does something like that automagically).

Regardless, this is

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


BR,
Jani.


>
> While doing this conversion also update the MIT header using
> the new SPDX ones.
>
> v2: Fix Makefile and include (Jani)
>     Removed vga and gmbus (Jani, Ville)
>
> Cc: Jesse Barnes <jbarnes@virtuousgeek.org>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   2 +-
>  .../gpu/drm/i915/display/i9xx_display_sr.c    |  95 ++++++++++++
>  .../gpu/drm/i915/display/i9xx_display_sr.h    |  14 ++
>  drivers/gpu/drm/i915/i915_driver.c            |   6 +-
>  drivers/gpu/drm/i915/i915_suspend.c           | 135 ------------------
>  drivers/gpu/drm/i915/i915_suspend.h           |  14 --
>  6 files changed, 113 insertions(+), 153 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/i9xx_display_sr.c
>  create mode 100644 drivers/gpu/drm/i915/display/i9xx_display_sr.h
>  delete mode 100644 drivers/gpu/drm/i915/i915_suspend.c
>  delete mode 100644 drivers/gpu/drm/i915/i915_suspend.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 70771e521b1c..f21c28d471e7 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -30,7 +30,6 @@ i915-y +=3D \
>  	i915_params.o \
>  	i915_pci.o \
>  	i915_scatterlist.o \
> -	i915_suspend.o \
>  	i915_switcheroo.o \
>  	i915_sysfs.o \
>  	i915_utils.o \
> @@ -219,6 +218,7 @@ i915-$(CONFIG_HWMON) +=3D \
>  i915-y +=3D \
>  	display/hsw_ips.o \
>  	display/i9xx_plane.o \
> +	display/i9xx_display_sr.o \
>  	display/i9xx_wm.o \
>  	display/intel_alpm.o \
>  	display/intel_atomic.o \
> diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.c b/drivers/gpu=
/drm/i915/display/i9xx_display_sr.c
> new file mode 100644
> index 000000000000..4dd0ce267994
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
> @@ -0,0 +1,95 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#include "i915_drv.h"
> +#include "i915_reg.h"
> +#include "i9xx_display_sr.h"
> +#include "intel_de.h"
> +#include "intel_gmbus.h"
> +#include "intel_pci_config.h"
> +
> +static void i9xx_display_save_swf(struct drm_i915_private *i915)
> +{
> +	int i;
> +
> +	/* Scratch space */
> +	if (GRAPHICS_VER(i915) =3D=3D 2 && IS_MOBILE(i915)) {
> +		for (i =3D 0; i < 7; i++) {
> +			i915->regfile.saveSWF0[i] =3D intel_de_read(i915, SWF0(i915, i));
> +			i915->regfile.saveSWF1[i] =3D intel_de_read(i915, SWF1(i915, i));
> +		}
> +		for (i =3D 0; i < 3; i++)
> +			i915->regfile.saveSWF3[i] =3D intel_de_read(i915, SWF3(i915, i));
> +	} else if (GRAPHICS_VER(i915) =3D=3D 2) {
> +		for (i =3D 0; i < 7; i++)
> +			i915->regfile.saveSWF1[i] =3D intel_de_read(i915, SWF1(i915, i));
> +	} else if (HAS_GMCH(i915)) {
> +		for (i =3D 0; i < 16; i++) {
> +			i915->regfile.saveSWF0[i] =3D intel_de_read(i915, SWF0(i915, i));
> +			i915->regfile.saveSWF1[i] =3D intel_de_read(i915, SWF1(i915, i));
> +		}
> +		for (i =3D 0; i < 3; i++)
> +			i915->regfile.saveSWF3[i] =3D intel_de_read(i915, SWF3(i915, i));
> +	}
> +}
> +
> +static void i9xx_display_restore_swf(struct drm_i915_private *i915)
> +{
> +	int i;
> +
> +	/* Scratch space */
> +	if (GRAPHICS_VER(i915) =3D=3D 2 && IS_MOBILE(i915)) {
> +		for (i =3D 0; i < 7; i++) {
> +			intel_de_write(i915, SWF0(i915, i), i915->regfile.saveSWF0[i]);
> +			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
> +		}
> +		for (i =3D 0; i < 3; i++)
> +			intel_de_write(i915, SWF3(i915, i), i915->regfile.saveSWF3[i]);
> +	} else if (GRAPHICS_VER(i915) =3D=3D 2) {
> +		for (i =3D 0; i < 7; i++)
> +			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
> +	} else if (HAS_GMCH(i915)) {
> +		for (i =3D 0; i < 16; i++) {
> +			intel_de_write(i915, SWF0(i915, i), i915->regfile.saveSWF0[i]);
> +			intel_de_write(i915, SWF1(i915, i), i915->regfile.saveSWF1[i]);
> +		}
> +		for (i =3D 0; i < 3; i++)
> +			intel_de_write(i915, SWF3(i915, i), i915->regfile.saveSWF3[i]);
> +	}
> +}
> +
> +void i9xx_display_sr_save(struct drm_i915_private *i915)
> +{
> +	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
> +
> +	if (!HAS_DISPLAY(i915))
> +		return;
> +
> +	/* Display arbitration control */
> +	if (GRAPHICS_VER(i915) <=3D 4)
> +		i915->regfile.saveDSPARB =3D intel_de_read(i915, DSPARB(i915));
> +
> +	if (GRAPHICS_VER(i915) =3D=3D 4)
> +		pci_read_config_word(pdev, GCDGMBUS, &i915->regfile.saveGCDGMBUS);
> +
> +	i9xx_display_save_swf(i915);
> +}
> +
> +void i9xx_display_sr_restore(struct drm_i915_private *i915)
> +{
> +	struct pci_dev *pdev =3D to_pci_dev(i915->drm.dev);
> +
> +	if (!HAS_DISPLAY(i915))
> +		return;
> +
> +	i9xx_display_restore_swf(i915);
> +
> +	if (GRAPHICS_VER(i915) =3D=3D 4)
> +		pci_write_config_word(pdev, GCDGMBUS, i915->regfile.saveGCDGMBUS);
> +
> +	/* Display arbitration */
> +	if (GRAPHICS_VER(i915) <=3D 4)
> +		intel_de_write(i915, DSPARB(i915), i915->regfile.saveDSPARB);
> +}
> diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.h b/drivers/gpu=
/drm/i915/display/i9xx_display_sr.h
> new file mode 100644
> index 000000000000..30383758f97e
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright =C2=A9 2024 Intel Corporation
> + */
> +
> +#ifndef __I9XX_DISPLAY_SR_H__
> +#define __I9XX_DISPLAY_SR_H__
> +
> +struct drm_i915_private;
> +
> +void i9xx_display_sr_save(struct drm_i915_private *i915);
> +void i9xx_display_sr_restore(struct drm_i915_private *i915);
> +
> +#endif
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index c5ffcf229f42..ae5906885359 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -45,6 +45,7 @@
>  #include <drm/drm_managed.h>
>  #include <drm/drm_probe_helper.h>
>=20=20
> +#include "display/i9xx_display_sr.h"
>  #include "display/intel_acpi.h"
>  #include "display/intel_bw.h"
>  #include "display/intel_cdclk.h"
> @@ -94,7 +95,6 @@
>  #include "i915_memcpy.h"
>  #include "i915_perf.h"
>  #include "i915_query.h"
> -#include "i915_suspend.h"
>  #include "i915_switcheroo.h"
>  #include "i915_sysfs.h"
>  #include "i915_utils.h"
> @@ -1048,7 +1048,7 @@ static int i915_drm_suspend(struct drm_device *dev)
>  	intel_dpt_suspend(dev_priv);
>  	i915_ggtt_suspend(to_gt(dev_priv)->ggtt);
>=20=20
> -	i915_save_display(dev_priv);
> +	i9xx_display_sr_save(dev_priv);
>=20=20
>  	opregion_target_state =3D suspend_to_idle(dev_priv) ? PCI_D1 : PCI_D3co=
ld;
>  	intel_opregion_suspend(display, opregion_target_state);
> @@ -1167,7 +1167,7 @@ static int i915_drm_resume(struct drm_device *dev)
>=20=20
>  	intel_dmc_resume(display);
>=20=20
> -	i915_restore_display(dev_priv);
> +	i9xx_display_sr_restore(dev_priv);
>=20=20
>  	intel_vga_redisable(display);
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i=
915_suspend.c
> deleted file mode 100644
> index fb67b05cd864..000000000000
> --- a/drivers/gpu/drm/i915/i915_suspend.c
> +++ /dev/null
> @@ -1,135 +0,0 @@
> -/*
> - *
> - * Copyright 2008 (c) Intel Corporation
> - *   Jesse Barnes <jbarnes@virtuousgeek.org>
> - *
> - * Permission is hereby granted, free of charge, to any person obtaining=
 a
> - * copy of this software and associated documentation files (the
> - * "Software"), to deal in the Software without restriction, including
> - * without limitation the rights to use, copy, modify, merge, publish,
> - * distribute, sub license, and/or sell copies of the Software, and to
> - * permit persons to whom the Software is furnished to do so, subject to
> - * the following conditions:
> - *
> - * The above copyright notice and this permission notice (including the
> - * next paragraph) shall be included in all copies or substantial portio=
ns
> - * of the Software.
> - *
> - * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRE=
SS
> - * OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
> - * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMEN=
T.
> - * IN NO EVENT SHALL TUNGSTEN GRAPHICS AND/OR ITS SUPPLIERS BE LIABLE FOR
> - * ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRA=
CT,
> - * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
> - * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
> - */
> -
> -#include "display/intel_de.h"
> -#include "display/intel_gmbus.h"
> -
> -#include "i915_drv.h"
> -#include "i915_reg.h"
> -#include "i915_suspend.h"
> -#include "intel_pci_config.h"
> -
> -static void intel_save_swf(struct drm_i915_private *dev_priv)
> -{
> -	int i;
> -
> -	/* Scratch space */
> -	if (GRAPHICS_VER(dev_priv) =3D=3D 2 && IS_MOBILE(dev_priv)) {
> -		for (i =3D 0; i < 7; i++) {
> -			dev_priv->regfile.saveSWF0[i] =3D intel_de_read(dev_priv,
> -								      SWF0(dev_priv, i));
> -			dev_priv->regfile.saveSWF1[i] =3D intel_de_read(dev_priv,
> -								      SWF1(dev_priv, i));
> -		}
> -		for (i =3D 0; i < 3; i++)
> -			dev_priv->regfile.saveSWF3[i] =3D intel_de_read(dev_priv,
> -								      SWF3(dev_priv, i));
> -	} else if (GRAPHICS_VER(dev_priv) =3D=3D 2) {
> -		for (i =3D 0; i < 7; i++)
> -			dev_priv->regfile.saveSWF1[i] =3D intel_de_read(dev_priv,
> -								      SWF1(dev_priv, i));
> -	} else if (HAS_GMCH(dev_priv)) {
> -		for (i =3D 0; i < 16; i++) {
> -			dev_priv->regfile.saveSWF0[i] =3D intel_de_read(dev_priv,
> -								      SWF0(dev_priv, i));
> -			dev_priv->regfile.saveSWF1[i] =3D intel_de_read(dev_priv,
> -								      SWF1(dev_priv, i));
> -		}
> -		for (i =3D 0; i < 3; i++)
> -			dev_priv->regfile.saveSWF3[i] =3D intel_de_read(dev_priv,
> -								      SWF3(dev_priv, i));
> -	}
> -}
> -
> -static void intel_restore_swf(struct drm_i915_private *dev_priv)
> -{
> -	int i;
> -
> -	/* Scratch space */
> -	if (GRAPHICS_VER(dev_priv) =3D=3D 2 && IS_MOBILE(dev_priv)) {
> -		for (i =3D 0; i < 7; i++) {
> -			intel_de_write(dev_priv, SWF0(dev_priv, i),
> -				       dev_priv->regfile.saveSWF0[i]);
> -			intel_de_write(dev_priv, SWF1(dev_priv, i),
> -				       dev_priv->regfile.saveSWF1[i]);
> -		}
> -		for (i =3D 0; i < 3; i++)
> -			intel_de_write(dev_priv, SWF3(dev_priv, i),
> -				       dev_priv->regfile.saveSWF3[i]);
> -	} else if (GRAPHICS_VER(dev_priv) =3D=3D 2) {
> -		for (i =3D 0; i < 7; i++)
> -			intel_de_write(dev_priv, SWF1(dev_priv, i),
> -				       dev_priv->regfile.saveSWF1[i]);
> -	} else if (HAS_GMCH(dev_priv)) {
> -		for (i =3D 0; i < 16; i++) {
> -			intel_de_write(dev_priv, SWF0(dev_priv, i),
> -				       dev_priv->regfile.saveSWF0[i]);
> -			intel_de_write(dev_priv, SWF1(dev_priv, i),
> -				       dev_priv->regfile.saveSWF1[i]);
> -		}
> -		for (i =3D 0; i < 3; i++)
> -			intel_de_write(dev_priv, SWF3(dev_priv, i),
> -				       dev_priv->regfile.saveSWF3[i]);
> -	}
> -}
> -
> -void i915_save_display(struct drm_i915_private *dev_priv)
> -{
> -	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
> -
> -	if (!HAS_DISPLAY(dev_priv))
> -		return;
> -
> -	/* Display arbitration control */
> -	if (GRAPHICS_VER(dev_priv) <=3D 4)
> -		dev_priv->regfile.saveDSPARB =3D intel_de_read(dev_priv,
> -							     DSPARB(dev_priv));
> -
> -	if (GRAPHICS_VER(dev_priv) =3D=3D 4)
> -		pci_read_config_word(pdev, GCDGMBUS,
> -				     &dev_priv->regfile.saveGCDGMBUS);
> -
> -	intel_save_swf(dev_priv);
> -}
> -
> -void i915_restore_display(struct drm_i915_private *dev_priv)
> -{
> -	struct pci_dev *pdev =3D to_pci_dev(dev_priv->drm.dev);
> -
> -	if (!HAS_DISPLAY(dev_priv))
> -		return;
> -
> -	intel_restore_swf(dev_priv);
> -
> -	if (GRAPHICS_VER(dev_priv) =3D=3D 4)
> -		pci_write_config_word(pdev, GCDGMBUS,
> -				      dev_priv->regfile.saveGCDGMBUS);
> -
> -	/* Display arbitration */
> -	if (GRAPHICS_VER(dev_priv) <=3D 4)
> -		intel_de_write(dev_priv, DSPARB(dev_priv),
> -			       dev_priv->regfile.saveDSPARB);
> -}
> diff --git a/drivers/gpu/drm/i915/i915_suspend.h b/drivers/gpu/drm/i915/i=
915_suspend.h
> deleted file mode 100644
> index e5a611ee3d15..000000000000
> --- a/drivers/gpu/drm/i915/i915_suspend.h
> +++ /dev/null
> @@ -1,14 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright =C2=A9 2019 Intel Corporation
> - */
> -
> -#ifndef __I915_SUSPEND_H__
> -#define __I915_SUSPEND_H__
> -
> -struct drm_i915_private;
> -
> -void i915_save_display(struct drm_i915_private *i915);
> -void i915_restore_display(struct drm_i915_private *i915);
> -
> -#endif /* __I915_SUSPEND_H__ */

--=20
Jani Nikula, Intel
