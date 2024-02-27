Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 247678690C7
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 13:42:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94E5C10E64F;
	Tue, 27 Feb 2024 12:42:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OWKpjlhM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8707D10E4DE
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 12:42:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709037766; x=1740573766;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=e0mEFV1flX1jae8Q21xk+z87ZpZozrA5u9H2GUOHKvE=;
 b=OWKpjlhMX/ZppMwXe+OITi0MIW+N/QgrM3TfCyZPgRhkcABCJlic4Nj5
 FOWnX8Rl8ENIt/XNGyvc9exv1HG4qbItqietBULrxTbO8tBPkyqXJjsDZ
 NSSa1FUfs2Ih/HOytiuogF9g7zdDv0OH6hPfrRoLkn0lp1DAc4IxnecSI
 PczNm5U35NA5UUkc8Hp2/hMnqRLXBEwmN9bTnoLTmPYRbUSsFLLA2m/5y
 ykchNLT4bk3PHltFyEin+InTZrAc4pxTROdqOx1uIeNs5ZsMsAU6GYX5N
 kKKxTUGujDNJPFskoH3V66IXV0JM9oMfW2cXG1I/2Lfa27TGQjt9pEgoq g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="20818055"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; d="scan'208";a="20818055"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 04:42:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; d="scan'208";a="11649898"
Received: from bdallmer-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.187])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 04:42:44 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 3/4] drm/i915: Move vbt read from firmware to
 intel_bios.c
In-Reply-To: <20240220223129.3822480-4-radhakrishna.sripada@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240220223129.3822480-1-radhakrishna.sripada@intel.com>
 <20240220223129.3822480-4-radhakrishna.sripada@intel.com>
Date: Tue, 27 Feb 2024 14:42:40 +0200
Message-ID: <87zfvmhydb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 20 Feb 2024, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
> VBT read from firmware is currently nested within opregion vbt read.
> Extract it and place it together with other vbt read mechanisms and
> dis-associate vbt-firmware from opregion structure.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 48 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_opregion.c | 46 ------------------
>  2 files changed, 47 insertions(+), 47 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 2624a4528b21..4cd338ed362d 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -25,6 +25,8 @@
>   *
>   */
>  
> +#include <linux/firmware.h>
> +
>  #include <drm/display/drm_dp_helper.h>
>  #include <drm/display/drm_dsc_helper.h>
>  #include <drm/drm_edid.h>
> @@ -2950,6 +2952,47 @@ bool intel_bios_is_valid_vbt(struct drm_i915_private *i915,
>  	return vbt;
>  }
>  
> +static struct vbt_header *firmware_get_vbt(struct drm_i915_private *i915,
> +					   size_t *size)
> +{
> +	struct vbt_header *vbt = NULL;
> +	const struct firmware *fw = NULL;
> +	const char *name = i915->display.params.vbt_firmware;
> +	int ret;
> +
> +	if (!name || !*name)
> +		return vbt;

Please return NULL directly.

> +
> +	ret = request_firmware(&fw, name, i915->drm.dev);
> +	if (ret) {
> +		drm_err(&i915->drm,
> +			"Requesting VBT firmware \"%s\" failed (%d)\n",
> +			name, ret);
> +		return vbt;

Please return NULL directly.

> +	}
> +
> +	if (intel_bios_is_valid_vbt(i915, fw->data, fw->size)) {
> +		vbt = kmemdup(fw->data, fw->size, GFP_KERNEL);
> +		if (vbt) {
> +			drm_dbg_kms(&i915->drm,
> +				    "Found valid VBT firmware \"%s\"\n", name);

	if (size)

> +			*size = fw->size;
> +		} else {
> +			drm_err(&i915->drm,
> +				"Requesting VBT firmware \"%s\" failed (%d)\n",
> +				name, ENOMEM);

No error messages on ENOMEM, please.

> +			vbt = NULL;

You just checked if vbt is NULL.

> +		}
> +	} else {
> +		drm_dbg_kms(&i915->drm, "Invalid VBT firmware \"%s\"\n",
> +			    name);
> +	}
> +
> +	release_firmware(fw);
> +
> +	return vbt;
> +}
> +
>  static u32 intel_spi_read(struct intel_uncore *uncore, u32 offset)
>  {
>  	intel_uncore_write(uncore, PRIMARY_SPI_ADDRESS, offset);
> @@ -3100,7 +3143,10 @@ void intel_bios_init(struct drm_i915_private *i915)
>  
>  	init_vbt_defaults(i915);
>  
> -	vbt = intel_opregion_get_vbt(i915, NULL);
> +	vbt = firmware_get_vbt(i915, &size);
> +
> +	if (!vbt)
> +		vbt = intel_opregion_get_vbt(i915, NULL);

Crash boom bang without the NULL check.

>  
>  	/*
>  	 * If the OpRegion does not have VBT, look in SPI flash through MMIO or
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index fcbb083318a7..5d07a002edaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -27,7 +27,6 @@
>  
>  #include <linux/acpi.h>
>  #include <linux/dmi.h>
> -#include <linux/firmware.h>
>  #include <acpi/video.h>
>  
>  #include <drm/drm_edid.h>
> @@ -263,7 +262,6 @@ struct intel_opregion {
>  	struct opregion_asle *asle;
>  	struct opregion_asle_ext *asle_ext;
>  	void *rvda;
> -	void *vbt_firmware;
>  	const void *vbt;
>  	u32 vbt_size;
>  	struct work_struct asle_work;
> @@ -869,46 +867,6 @@ static const struct dmi_system_id intel_no_opregion_vbt[] = {
>  	{ }
>  };
>  
> -static int intel_load_vbt_firmware(struct drm_i915_private *dev_priv)
> -{
> -	struct intel_opregion *opregion = dev_priv->display.opregion;
> -	const struct firmware *fw = NULL;
> -	const char *name = dev_priv->display.params.vbt_firmware;
> -	int ret;
> -
> -	if (!name || !*name)
> -		return -ENOENT;
> -
> -	ret = request_firmware(&fw, name, dev_priv->drm.dev);
> -	if (ret) {
> -		drm_err(&dev_priv->drm,
> -			"Requesting VBT firmware \"%s\" failed (%d)\n",
> -			name, ret);
> -		return ret;
> -	}
> -
> -	if (intel_bios_is_valid_vbt(dev_priv, fw->data, fw->size)) {
> -		opregion->vbt_firmware = kmemdup(fw->data, fw->size, GFP_KERNEL);
> -		if (opregion->vbt_firmware) {
> -			drm_dbg_kms(&dev_priv->drm,
> -				    "Found valid VBT firmware \"%s\"\n", name);
> -			opregion->vbt = opregion->vbt_firmware;
> -			opregion->vbt_size = fw->size;
> -			ret = 0;
> -		} else {
> -			ret = -ENOMEM;
> -		}
> -	} else {
> -		drm_dbg_kms(&dev_priv->drm, "Invalid VBT firmware \"%s\"\n",
> -			    name);
> -		ret = -EINVAL;
> -	}
> -
> -	release_firmware(fw);
> -
> -	return ret;
> -}
> -
>  int intel_opregion_setup(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_opregion *opregion;
> @@ -1006,9 +964,6 @@ int intel_opregion_setup(struct drm_i915_private *dev_priv)
>  		drm_dbg(&dev_priv->drm, "Mailbox #2 for backlight present\n");
>  	}
>  
> -	if (intel_load_vbt_firmware(dev_priv) == 0)
> -		goto out;
> -
>  	if (dmi_check_system(intel_no_opregion_vbt))
>  		goto out;
>  
> @@ -1312,7 +1267,6 @@ void intel_opregion_cleanup(struct drm_i915_private *i915)
>  	memunmap(opregion->header);
>  	if (opregion->rvda)
>  		memunmap(opregion->rvda);
> -	kfree(opregion->vbt_firmware);
>  	kfree(opregion);
>  	i915->display.opregion = NULL;
>  }

-- 
Jani Nikula, Intel
