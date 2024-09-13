Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7537977E6C
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 13:22:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE92D10E148;
	Fri, 13 Sep 2024 11:22:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EiO07y8n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DFDC10E148
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 11:22:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726226558; x=1757762558;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=OUN4LBzEIfGaH1PtStlYnvLJI9xZ2t+nbiLdGDiYZUU=;
 b=EiO07y8nLZ0QN9Rx75Gln/LWjmkZz2HKdyZpOprC6kzhzAl38gErTqLi
 TW33jvyhPc2u+Ma7OcCwYp5oUOJ631qFN+topH9PRbuFCsMmDBqNs4Puz
 7/ZXgHfEJQLj9OAqKA1D9xkFMsInYIfSwVVcvXWRbTKwJlMuANIOkNcqn
 bzozkLkJpny45AowqdY19EWp+o/isytEpRY/AfJNZlg8UX2Sz2Q+S1Pvk
 BzKMUjrNjiEeYtgz382k/uQUAcygaG9XvqGx20K7XIceOxFXiON+OAt9y
 ccVzAdyHLpOUyk2qoqo15LG6uReLItfQHlci839jwDMcoJBvQ8EKpHibJ Q==;
X-CSE-ConnectionGUID: myN2ajQyTtW9uBywkYcgoQ==
X-CSE-MsgGUID: TrVGIfWLQ2uAil3gSI374Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11193"; a="13511175"
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="13511175"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2024 04:22:38 -0700
X-CSE-ConnectionGUID: HjImVrn7Q4OWOOJ4/JsWdw==
X-CSE-MsgGUID: UOk0vLMPTXCepimeLr7H5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,225,1719903600"; d="scan'208";a="68112730"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 Sep 2024 04:22:35 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Sep 2024 14:22:34 +0300
Date: Fri, 13 Sep 2024 14:22:34 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Jesse Barnes <jbarnes@virtuousgeek.org>,
 Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915/display: Convert i915_suspend into
 i9xx_display_sr
Message-ID: <ZuQgetl8IlS4MQ28@intel.com>
References: <20240912174534.425015-1-rodrigo.vivi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240912174534.425015-1-rodrigo.vivi@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Sep 12, 2024 at 01:45:34PM -0400, Rodrigo Vivi wrote:
> These save & restore functions inside i915_suspend are old display
> functions to save and restore a bunch of display related registers.
> 
> Move it under display and rename accordantly. Just don't move it
> entirely towards intel_display struct yet because it depends
> on drm_i915_private for the IS_MOBILE.
> 
> While doing this conversion also update the MIT header using
> the new SPDX ones.
> 
> Cc: Jesse Barnes <jbarnes@virtuousgeek.org>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   2 +-
>  .../gpu/drm/i915/display/i9xx_display_sr.c    | 119 +++++++++++++++
>  .../gpu/drm/i915/display/i9xx_display_sr.h    |  14 ++
>  drivers/gpu/drm/i915/i915_driver.c            |   6 +-
>  drivers/gpu/drm/i915/i915_suspend.c           | 141 ------------------
>  drivers/gpu/drm/i915/i915_suspend.h           |  14 --
>  6 files changed, 137 insertions(+), 159 deletions(-)
>  create mode 100644 drivers/gpu/drm/i915/display/i9xx_display_sr.c
>  create mode 100644 drivers/gpu/drm/i915/display/i9xx_display_sr.h
>  delete mode 100644 drivers/gpu/drm/i915/i915_suspend.c
>  delete mode 100644 drivers/gpu/drm/i915/i915_suspend.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index c63fa2133ccb..89f04bdbc27f 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -30,7 +30,6 @@ i915-y += \
>  	i915_params.o \
>  	i915_pci.o \
>  	i915_scatterlist.o \
> -	i915_suspend.o \
>  	i915_switcheroo.o \
>  	i915_sysfs.o \
>  	i915_utils.o \
> @@ -219,6 +218,7 @@ i915-$(CONFIG_HWMON) += \
>  i915-y += \
>  	display/hsw_ips.o \
>  	display/i9xx_plane.o \
> +	display/i9xx_suspend.o \
>  	display/i9xx_wm.o \
>  	display/intel_alpm.o \
>  	display/intel_atomic.o \
> diff --git a/drivers/gpu/drm/i915/display/i9xx_display_sr.c b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
> new file mode 100644
> index 000000000000..211cf41119ad
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/i9xx_display_sr.c
> @@ -0,0 +1,119 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2024 Intel Corporation
> + */
> +
> +#include "i915_drv.h"
> +#include "i915_reg.h"
> +#include "i9xx_suspend.h"
> +#include "intel_de.h"
> +#include "intel_gmbus.h"
> +#include "intel_vga.h"
> +#include "intel_pci_config.h"
> +
> +static void intel_save_swf(struct drm_i915_private *i915)
> +{
> +	int i;
> +
> +	/* Scratch space */
> +	if (DISPLAY_VER(i915) == 2 && IS_MOBILE(i915)) {
> +		for (i = 0; i < 7; i++) {
> +			i915->regfile.saveSWF0[i] = intel_de_read(i915,
> +								      SWF0(i915, i));
> +			i915->regfile.saveSWF1[i] = intel_de_read(i915,
> +								      SWF1(i915, i));
> +		}
> +		for (i = 0; i < 3; i++)
> +			i915->regfile.saveSWF3[i] = intel_de_read(i915,
> +								      SWF3(i915, i));
> +	} else if (DISPLAY_VER(i915) == 2) {
> +		for (i = 0; i < 7; i++)
> +			i915->regfile.saveSWF1[i] = intel_de_read(i915,
> +								      SWF1(i915, i));
> +	} else if (HAS_GMCH(i915)) {
> +		for (i = 0; i < 16; i++) {
> +			i915->regfile.saveSWF0[i] = intel_de_read(i915,
> +								      SWF0(i915, i));
> +			i915->regfile.saveSWF1[i] = intel_de_read(i915,
> +								      SWF1(i915, i));
> +		}
> +		for (i = 0; i < 3; i++)
> +			i915->regfile.saveSWF3[i] = intel_de_read(i915,
> +								      SWF3(i915, i));
> +	}
> +}
> +
> +static void intel_restore_swf(struct drm_i915_private *i915)
> +{
> +	int i;
> +
> +	/* Scratch space */
> +	if (DISPLAY_VER(i915) == 2 && IS_MOBILE(i915)) {
> +		for (i = 0; i < 7; i++) {
> +			intel_de_write(i915, SWF0(i915, i),
> +				       i915->regfile.saveSWF0[i]);
> +			intel_de_write(i915, SWF1(i915, i),
> +				       i915->regfile.saveSWF1[i]);
> +		}
> +		for (i = 0; i < 3; i++)
> +			intel_de_write(i915, SWF3(i915, i),
> +				       i915->regfile.saveSWF3[i]);
> +	} else if (DISPLAY_VER(i915) == 2) {
> +		for (i = 0; i < 7; i++)
> +			intel_de_write(i915, SWF1(i915, i),
> +				       i915->regfile.saveSWF1[i]);
> +	} else if (HAS_GMCH(i915)) {
> +		for (i = 0; i < 16; i++) {
> +			intel_de_write(i915, SWF0(i915, i),
> +				       i915->regfile.saveSWF0[i]);
> +			intel_de_write(i915, SWF1(i915, i),
> +				       i915->regfile.saveSWF1[i]);
> +		}
> +		for (i = 0; i < 3; i++)
> +			intel_de_write(i915, SWF3(i915, i),
> +				       i915->regfile.saveSWF3[i]);
> +	}
> +}
> +
> +void i9xx_display_sr_save(struct drm_i915_private *i915)
> +{
> +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> +
> +	if (!HAS_DISPLAY(i915))
> +		return;
> +
> +	/* Display arbitration control */
> +	if (DISPLAY_VER(i915) <= 4)
> +		i915->regfile.saveDSPARB = intel_de_read(i915,
> +							     DSPARB(i915));
> +
> +	if (DISPLAY_VER(i915) == 4)
> +		pci_read_config_word(pdev, GCDGMBUS,
> +				     &i915->regfile.saveGCDGMBUS);
> +
> +	intel_save_swf(i915);
> +}
> +
> +void i9xx_display_sr_restore(struct drm_i915_private *i915)
> +{
> +	struct intel_display *display = &i915->display;
> +	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
> +
> +	if (!HAS_DISPLAY(i915))
> +		return;
> +
> +	intel_restore_swf(i915);
> +
> +	if (DISPLAY_VER(i915) == 4)
> +		pci_write_config_word(pdev, GCDGMBUS,
> +				      i915->regfile.saveGCDGMBUS);
> +
> +	/* Display arbitration */
> +	if (DISPLAY_VER(i915) <= 4)
> +		intel_de_write(i915, DSPARB(i915),
> +			       i915->regfile.saveDSPARB);
> +
> +	intel_vga_redisable(display);
> +
> +	intel_gmbus_reset(i915);

The last two are for all platforms, so the function name is a bit
misleading now.

Also we might want to do the SWF save/restore for all platforms
as well, because technically we should be reading one of those
to determine the maximum CDCLK for the system (if the BIOS
has chosen a limit other than the platform default). We could
get into trouble there if the driver is reloaded after S3,
assuming S3 clobbers the SWF registers (which I'm not 100%
sure it does, would need to confirm it).

I have an old branch that does the SWF read for BDW only
'https://github.com/vsyrjala/linux.git bdw_vbios_cdclk_limit'
but last I looked Windows was still doing this for all
platforms, so we should probably we doing the same.

-- 
Ville Syrjälä
Intel
