Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E24CC65CFD0
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 10:39:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AF4510E511;
	Wed,  4 Jan 2023 09:39:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C60E610E51A
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 09:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672825162; x=1704361162;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=vW7iAP43fXf1436VgzQlRgw8As3YUrgy9/qCLZn0GE4=;
 b=mhiZZUW7WYawJmvbr6CgwUGQY3IkzRVTcbUJpAzNwQnpAv60pOVu34Sw
 jNsFToyMebFaZ3QL5ngxATlZhFJKSK7wcoXJ2yAOSVmuX23e5iLTvx5+D
 3L6L4+7niVwXJu68Tn9hx/VqDMRSMQUO8FdTsk1uTikeDTi21HIhQgHsZ
 pbaD8QfC9t9sNbiRnAV4Nj7hEOcUwjfhQRfu7st/ztC6MlZQqbcZWXY7S
 6KuooSV/R8f47SkH9fCT2hldo/NGypjCZu7GW19UiE+RD3uRsFs1lhhVh
 IYBOuQcRObow3RbHAsmVFDcmBmuTzlFVgTj0eSNsmEM09SPuHWb2ZB05B g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="384182310"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="384182310"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 01:39:21 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="718393179"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="718393179"
Received: from mkabdel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.25.63])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 01:39:19 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230103194701.1492984-1-rodrigo.vivi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <Y68bHEiFZJMZJ9Ot@intel.com>
 <20230103194701.1492984-1-rodrigo.vivi@intel.com>
Date: Wed, 04 Jan 2023 11:39:17 +0200
Message-ID: <87tu16y6yi.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Expand force_probe to block probe
 of devices as well.
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 03 Jan 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> There are new cases where we want to block i915 probe, such
> as when experimenting or developing the new Xe driver.
>
> But also, with the new hibrid cards, users or developers might

*hybrid

> want to use i915 only on integrated and fully block the probe
> of the i915 for the discrete. Or vice versa.
>
> Oh, and there are even older development and validation reasons,
> like when you use some distro where the modprobe.blacklist is
> not present.

Maybe s/Oh, and t/T/

>
> But in any case, let's introduce a more granular control, but without
> introducing yet another parameter, but using the existent force_probe
> one.
>
> Just by adding a ! in the begin of the id in the force_probe, like
> in this case where we would block the probe for Alder Lake:
>
> $ insmod i915.ko force_probe='!46a6'
>
> v2: Take care of '*' and  '!*' cases as pointed out by
>     Gustavo and Jani.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

That said, there's no way to do stuff like "1234,!*" to force 1234 but
block everything else. Can be added later as needed.

Also, "1234,!1234" and "!1234,1234" both block 1234. Sure, user error,
but just noting. Can be tweaked later as needed.


BR,
Jani.

> ---
>  drivers/gpu/drm/i915/Kconfig       | 15 +++++++++++---
>  drivers/gpu/drm/i915/i915_params.c |  2 +-
>  drivers/gpu/drm/i915/i915_pci.c    | 33 +++++++++++++++++++++++++-----
>  3 files changed, 41 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> index 3efce05d7b57..8eb3e60aeec9 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -54,24 +54,33 @@ config DRM_I915
>  	  If "M" is selected, the module will be called i915.
>  
>  config DRM_I915_FORCE_PROBE
> -	string "Force probe driver for selected new Intel hardware"
> +	string "Force probe i915 for selected Intel hardware IDs"
>  	depends on DRM_I915
>  	help
>  	  This is the default value for the i915.force_probe module
>  	  parameter. Using the module parameter overrides this option.
>  
> -	  Force probe the driver for new Intel graphics devices that are
> +	  Force probe the i915 for Intel graphics devices that are
>  	  recognized but not properly supported by this kernel version. It is
>  	  recommended to upgrade to a kernel version with proper support as soon
>  	  as it is available.
>  
> +	  It can also be used to block the probe of recognized and fully
> +	  supported devices.
> +
>  	  Use "" to disable force probe. If in doubt, use this.
>  
> -	  Use "<pci-id>[,<pci-id>,...]" to force probe the driver for listed
> +	  Use "<pci-id>[,<pci-id>,...]" to force probe the i915 for listed
>  	  devices. For example, "4500" or "4500,4571".
>  
>  	  Use "*" to force probe the driver for all known devices.
>  
> +	  Use "!" right before the ID to block the probe of the device. For
> +	  example, "4500,!4571" forces the probe of 4500 and blocks the probe of
> +	  4571.
> +
> +	  Use "!*" to block the probe of the driver for all known devices.
> +
>  config DRM_I915_CAPTURE_ERROR
>  	bool "Enable capturing GPU state following a hang"
>  	depends on DRM_I915
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> index 61578f2860cd..d634bd3f641a 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -122,7 +122,7 @@ i915_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
>  	"Default: 0");
>  
>  i915_param_named_unsafe(force_probe, charp, 0400,
> -	"Force probe the driver for specified devices. "
> +	"Force probe options for specified supported devices. "
>  	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
>  
>  i915_param_named_unsafe(disable_power_well, int, 0400,
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 7fd74cc28c0a..bc1af7e8f398 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1253,7 +1253,7 @@ static void i915_pci_remove(struct pci_dev *pdev)
>  }
>  
>  /* is device_id present in comma separated list of ids */
> -static bool force_probe(u16 device_id, const char *devices)
> +static bool device_id_in_list(u16 device_id, const char *devices, bool negative)
>  {
>  	char *s, *p, *tok;
>  	bool ret;
> @@ -1262,7 +1262,9 @@ static bool force_probe(u16 device_id, const char *devices)
>  		return false;
>  
>  	/* match everything */
> -	if (strcmp(devices, "*") == 0)
> +	if (negative && strcmp(devices, "!*") == 0)
> +		return true;
> +	if (!negative && strcmp(devices, "*") == 0)
>  		return true;
>  
>  	s = kstrdup(devices, GFP_KERNEL);
> @@ -1272,6 +1274,12 @@ static bool force_probe(u16 device_id, const char *devices)
>  	for (p = s, ret = false; (tok = strsep(&p, ",")) != NULL; ) {
>  		u16 val;
>  
> +		if (negative && tok[0] == '!')
> +			tok++;
> +		else if ((negative && tok[0] != '!') ||
> +			 (!negative && tok[0] == '!'))
> +			continue;
> +
>  		if (kstrtou16(tok, 16, &val) == 0 && val == device_id) {
>  			ret = true;
>  			break;
> @@ -1283,6 +1291,16 @@ static bool force_probe(u16 device_id, const char *devices)
>  	return ret;
>  }
>  
> +static bool id_forced(u16 device_id)
> +{
> +	return device_id_in_list(device_id, i915_modparams.force_probe, false);
> +}
> +
> +static bool id_blocked(u16 device_id)
> +{
> +	return device_id_in_list(device_id, i915_modparams.force_probe, true);
> +}
> +
>  bool i915_pci_resource_valid(struct pci_dev *pdev, int bar)
>  {
>  	if (!pci_resource_flags(pdev, bar))
> @@ -1308,10 +1326,9 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  		(struct intel_device_info *) ent->driver_data;
>  	int err;
>  
> -	if (intel_info->require_force_probe &&
> -	    !force_probe(pdev->device, i915_modparams.force_probe)) {
> +	if (intel_info->require_force_probe && !id_forced(pdev->device)) {
>  		dev_info(&pdev->dev,
> -			 "Your graphics device %04x is not properly supported by the driver in this\n"
> +			 "Your graphics device %04x is not properly supported by i915 in this\n"
>  			 "kernel version. To force driver probe anyway, use i915.force_probe=%04x\n"
>  			 "module parameter or CONFIG_DRM_I915_FORCE_PROBE=%04x configuration option,\n"
>  			 "or (recommended) check for kernel updates.\n",
> @@ -1319,6 +1336,12 @@ static int i915_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  		return -ENODEV;
>  	}
>  
> +	if (id_blocked(pdev->device)) {
> +		dev_info(&pdev->dev, "I915 probe blocked for Device ID %04x.\n",
> +			 pdev->device);
> +		return -ENODEV;
> +	}
> +
>  	/* Only bind to function 0 of the device. Early generations
>  	 * used function 1 as a placeholder for multi-head. This causes
>  	 * us confusion instead, especially on the systems where both

-- 
Jani Nikula, Intel Open Source Graphics Center
