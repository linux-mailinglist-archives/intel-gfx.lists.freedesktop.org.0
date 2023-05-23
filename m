Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7665D70D6A4
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 10:06:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF49710E3DD;
	Tue, 23 May 2023 08:06:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED7D010E3D8;
 Tue, 23 May 2023 08:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684829161; x=1716365161;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Bgh4dxLw9bTbI/7CiEaIemyqQkCysAZumwTBmjCakAE=;
 b=mmrg1InmB/JL70pne916ifp26H0zHFxyDfgkJeFDy4xHHNeMFxfGFVIU
 aBKa+AidK2aCbbdihqu8GELBnQKgkag9t5AmEPpwPK97PBH181wW9CCmn
 yusGu997KQmWMEhpa9F8O24wDvi2+mnphY4r1HZqPheankSE+p/ODt/X7
 vi/B72DJMK8QcpeeU2BxYJ+Bvk5Ls7eTAxfYwzKgJvumhZL77se9+i9wS
 dbR6oh3RaFD2YxhZojDEjNWSfBk/3J3NH0NmJiaU/F/E/cJ9hOtvNUiDt
 5wcuDi3OEos8vcEW8lXn2oxYjB+PHrj05FyuwQy7Rt0q3NXfRL0XgSQ80 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="333533133"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="333533133"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 01:03:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="706888755"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="706888755"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.31.10])
 ([10.213.31.10])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 01:03:04 -0700
Message-ID: <7827e158-1b75-45be-5680-8c9a03333305@intel.com>
Date: Tue, 23 May 2023 10:03:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.11.0
Content-Language: en-US
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230522202314.3939499-1-matthew.d.roper@intel.com>
 <20230522202314.3939499-6-matthew.d.roper@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230522202314.3939499-6-matthew.d.roper@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 5/6] drm/i915/display: Handle GMD_ID
 identification in display code
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
Cc: intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 22.05.2023 22:23, Matt Roper wrote:
> For platforms with GMD_ID support (i.e., everything MTL and beyond),
> identification of the display IP present should be based on the contents
> of the GMD_ID register rather than a PCI devid match.
> 
> Note that since GMD_ID readout requires access to the PCI BAR, a slight
> change to the driver init sequence is needed --- pci_enable_device() is
> now called before i915_driver_create().
> 
> v2:
>   - Fix use of uninitialized i915 pointer in error path if
>     pci_enable_device() fails before the i915 device is created.  (lkp)
>   - Use drm_device parameter to intel_display_device_probe.  This goes
>     against i915 conventions, but since the primary goal here is to make
>     it easy to call this function from other drivers (like Xe) and since
>     we don't need anything from the i915 structure, this seems like an
>     exception where drm_device is a more natural fit.

I am curious about how this driver separation will look like. I guess 
there will be common struct for both drivers (i915, xe), lets call it 
intel_display (maybe even existing one, slightly extended). In this case 
intel_display_device_probe could use it instead of drm_device, but this 
can wait for later conversion steps.

> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   .../drm/i915/display/intel_display_device.c   | 64 +++++++++++++++++--
>   .../drm/i915/display/intel_display_device.h   |  5 +-
>   drivers/gpu/drm/i915/i915_driver.c            | 17 +++--
>   drivers/gpu/drm/i915/intel_device_info.c      | 12 ++--
>   4 files changed, 81 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 3c5941c8788d..6605487c3890 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -6,7 +6,10 @@
>   #include <drm/i915_pciids.h>
>   #include <drm/drm_color_mgmt.h>
>   #include <linux/mod_devicetable.h>
> +#include <linux/pci.h>
>   
> +#include "i915_drv.h"
> +#include "i915_reg.h"
>   #include "intel_display_device.h"
>   #include "intel_display_power.h"
>   #include "intel_display_reg_defs.h"
> @@ -692,18 +695,69 @@ static const struct pci_device_id intel_display_ids[] = {
>   	INTEL_RPLP_IDS(&xe_lpd_display),
>   	INTEL_DG2_IDS(&xe_hpd_display),
>   
> -	/* FIXME: Replace this with a GMD_ID lookup */
> -	INTEL_MTL_IDS(&xe_lpdp_display),
> +	/*
> +	 * Do not add any GMD_ID-based platforms to this list.  They will
> +	 * be probed automatically based on the IP version reported by
> +	 * the hardware.
> +	 */
>   };
>   
> +struct {
> +	u16 ver;
> +	u16 rel;
> +	const struct intel_display_device_info *display;
> +} gmdid_display_map[] = {
> +	{ 14,  0, &xe_lpdp_display },
> +};
> +
> +static const struct intel_display_device_info *
> +probe_gmdid_display(struct drm_device *drm, u16 *ver, u16 *rel, u16 *step)
> +{
> +	struct pci_dev *pdev = to_pci_dev(drm->dev);
> +	void __iomem *addr;
> +	u32 val;
> +	int i;
> +
> +	addr = pci_iomap_range(pdev, 0, i915_mmio_reg_offset(GMD_ID_DISPLAY), sizeof(u32));
> +	if (!addr) {
> +		drm_err(drm, "Cannot map MMIO BAR to read display GMD_ID\n");
> +		return &no_display;
> +	}
> +
> +	val = ioread32(addr);
> +	pci_iounmap(pdev, addr);
> +
> +	if (val == 0)
> +		/* Platform doesn't have display */
> +		return &no_display;
> +
> +	*ver = REG_FIELD_GET(GMD_ID_ARCH_MASK, val);
> +	*rel = REG_FIELD_GET(GMD_ID_RELEASE_MASK, val);
> +	*step = REG_FIELD_GET(GMD_ID_STEP, val);
> +
> +	for (i = 0; i < ARRAY_SIZE(gmdid_display_map); i++)
> +		if (*ver == gmdid_display_map[i].ver &&
> +		    *rel == gmdid_display_map[i].rel)
> +			return gmdid_display_map[i].display;
> +
> +	drm_err(drm, "Unrecognized display IP version %d.%02d; disabling display.\n",
> +		*ver, *rel);
> +	return &no_display;
> +}
> +
>   const struct intel_display_device_info *
> -intel_display_device_probe(u16 pci_devid)
> +intel_display_device_probe(struct drm_device *drm, bool has_gmdid,
> +			   u16 *gmdid_ver, u16 *gmdid_rel, u16 *gmdid_step)
>   {
> +	struct pci_dev *pdev = to_pci_dev(drm->dev);
>   	int i;
>   
> +	if (has_gmdid)
> +		return probe_gmdid_display(drm, gmdid_ver, gmdid_rel, gmdid_step);
> +
>   	for (i = 0; i < ARRAY_SIZE(intel_display_ids); i++) {
> -		if (intel_display_ids[i].device == pci_devid)
> -			return (struct intel_display_device_info *)intel_display_ids[i].driver_data;
> +		if (intel_display_ids[i].device == pdev->device)
> +			return (const struct intel_display_device_info *)intel_display_ids[i].driver_data;
>   	}
>   
>   	return &no_display;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 1f7d08b3ad6b..2a14943313ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -80,7 +80,10 @@ struct intel_display_device_info {
>   	} color;
>   };
>   
> +struct drm_device;
> +
>   const struct intel_display_device_info *
> -intel_display_device_probe(u16 pci_devid);
> +intel_display_device_probe(struct drm_device *drm, bool has_gmdid,
> +			   u16 *ver, u16 *rel, u16 *step);
>   
>   #endif
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 522733a89946..37532e55327d 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -754,13 +754,17 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	struct drm_i915_private *i915;
>   	int ret;
>   
> -	i915 = i915_driver_create(pdev, ent);
> -	if (IS_ERR(i915))
> -		return PTR_ERR(i915);
> -
>   	ret = pci_enable_device(pdev);
> -	if (ret)
> -		goto out_fini;
> +	if (ret) {
> +		pr_err("Failed to enable graphics device: %pe\n", ERR_PTR(ret));
> +		return ret;
> +	}
> +
> +	i915 = i915_driver_create(pdev, ent);
> +	if (IS_ERR(i915)) {
> +		ret = PTR_ERR(i915);
> +		goto out_pci_disable;
> +	}
>   
>   	ret = i915_driver_early_probe(i915);
>   	if (ret < 0)
> @@ -843,7 +847,6 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>   	i915_driver_late_release(i915);
>   out_pci_disable:
>   	pci_disable_device(pdev);
> -out_fini:
>   	i915_probe_error(i915, "Device initialization failed (%d)\n", ret);
>   	return ret;
>   }
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index e1507ae59f2d..85105639d55d 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -345,7 +345,6 @@ static void ip_ver_read(struct drm_i915_private *i915, u32 offset, struct intel_
>   static void intel_ipver_early_init(struct drm_i915_private *i915)
>   {
>   	struct intel_runtime_info *runtime = RUNTIME_INFO(i915);
> -	struct intel_display_runtime_info *display_runtime = DISPLAY_RUNTIME_INFO(i915);
>   
>   	if (!HAS_GMD_ID(i915)) {
>   		drm_WARN_ON(&i915->drm, RUNTIME_INFO(i915)->graphics.ip.ver > 12);
> @@ -366,8 +365,6 @@ static void intel_ipver_early_init(struct drm_i915_private *i915)
>   		RUNTIME_INFO(i915)->graphics.ip.ver = 12;
>   		RUNTIME_INFO(i915)->graphics.ip.rel = 70;
>   	}
> -	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_DISPLAY),
> -		    (struct intel_ip_version *)&display_runtime->ip);
>   	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_MEDIA),
>   		    &runtime->media.ip);
>   }
> @@ -574,6 +571,7 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
>   {
>   	struct intel_device_info *info;
>   	struct intel_runtime_info *runtime;
> +	u16 ver, rel, step;
>   
>   	/* Setup the write-once "constant" device info */
>   	info = mkwrite_device_info(i915);
> @@ -584,8 +582,14 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
>   	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
>   
>   	/* Probe display support */
> -	info->display = intel_display_device_probe(device_id);
> +	info->display = intel_display_device_probe(&i915->drm, info->has_gmd_id,
> +						   &ver, &rel, &step);
>   	*DISPLAY_RUNTIME_INFO(i915) = DISPLAY_INFO(i915)->__runtime_defaults;
> +	if (info->has_gmd_id) {
> +		DISPLAY_RUNTIME_INFO(i915)->ip.ver = ver;
> +		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
> +		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
> +	}
>   
>   	runtime->device_id = device_id;
>   }

