Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E704D70DD21
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 15:02:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADD7210E438;
	Tue, 23 May 2023 13:02:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51A0F10E438;
 Tue, 23 May 2023 13:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684846973; x=1716382973;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=KOX2ny2b6SDmeop83OubcksZvqYV81ztWp+HObfydpg=;
 b=mw6Kn4hT1CiF5z3zYzfezdnPPxsKMehRKCPcARzTmb0Npp6bPw2dX0ZN
 njd/iMo1d5apc+jd399yUAgP9lXKkLpMK9unDMoOCoTu8mJ+rnpSUXcdM
 LVREDRdmydl5fwaAarmZu1TNIpR1bz3ltImVBZ3+5U13J+snvL9ghFleK
 ewPE1OyhEbs26xzYj2Exeu0YyEZolKaUtIUnBWQT7eFtgYRuU5hXHWrqf
 aoAQXPiQlCnP6liHkXIyTS5NFl6k66Qt82ixAfl8cGwHg9CtWhYFqJXV0
 KAAKrqznpgozZCxPvorn9khd/1gYJrpJyC6X2YRkizmGN4RYeJ9iCSe2o g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="350736406"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="350736406"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 06:02:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10719"; a="793714247"
X-IronPort-AV: E=Sophos;i="6.00,186,1681196400"; d="scan'208";a="793714247"
Received: from chauvina-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.53.70])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 06:02:49 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230522202314.3939499-6-matthew.d.roper@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230522202314.3939499-1-matthew.d.roper@intel.com>
 <20230522202314.3939499-6-matthew.d.roper@intel.com>
Date: Tue, 23 May 2023 16:02:46 +0300
Message-ID: <87cz2rkxop.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2 5/6] drm/i915/display: Handle
 GMD_ID identification in display code
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
Cc: Matt Roper <matthew.d.roper@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 22 May 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> For platforms with GMD_ID support (i.e., everything MTL and beyond),
> identification of the display IP present should be based on the contents
> of the GMD_ID register rather than a PCI devid match.
>
> Note that since GMD_ID readout requires access to the PCI BAR, a slight
> change to the driver init sequence is needed --- pci_enable_device() is
> now called before i915_driver_create().
>
> v2:
>  - Fix use of uninitialized i915 pointer in error path if
>    pci_enable_device() fails before the i915 device is created.  (lkp)
>  - Use drm_device parameter to intel_display_device_probe.  This goes
>    against i915 conventions, but since the primary goal here is to make
>    it easy to call this function from other drivers (like Xe) and since
>    we don't need anything from the i915 structure, this seems like an
>    exception where drm_device is a more natural fit.
>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   | 64 +++++++++++++++++--
>  .../drm/i915/display/intel_display_device.h   |  5 +-
>  drivers/gpu/drm/i915/i915_driver.c            | 17 +++--
>  drivers/gpu/drm/i915/intel_device_info.c      | 12 ++--
>  4 files changed, 81 insertions(+), 17 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 3c5941c8788d..6605487c3890 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -6,7 +6,10 @@
>  #include <drm/i915_pciids.h>
>  #include <drm/drm_color_mgmt.h>
>  #include <linux/mod_devicetable.h>
> +#include <linux/pci.h>
>  
> +#include "i915_drv.h"
> +#include "i915_reg.h"
>  #include "intel_display_device.h"
>  #include "intel_display_power.h"
>  #include "intel_display_reg_defs.h"
> @@ -692,18 +695,69 @@ static const struct pci_device_id intel_display_ids[] = {
>  	INTEL_RPLP_IDS(&xe_lpd_display),
>  	INTEL_DG2_IDS(&xe_hpd_display),
>  
> -	/* FIXME: Replace this with a GMD_ID lookup */
> -	INTEL_MTL_IDS(&xe_lpdp_display),
> +	/*
> +	 * Do not add any GMD_ID-based platforms to this list.  They will
> +	 * be probed automatically based on the IP version reported by
> +	 * the hardware.
> +	 */
>  };
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

Please always prefer struct drm_i915_private * over struct drm_device *.

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
>  const struct intel_display_device_info *
> -intel_display_device_probe(u16 pci_devid)
> +intel_display_device_probe(struct drm_device *drm, bool has_gmdid,
> +			   u16 *gmdid_ver, u16 *gmdid_rel, u16 *gmdid_step)

Ditto.

>  {
> +	struct pci_dev *pdev = to_pci_dev(drm->dev);
>  	int i;
>  
> +	if (has_gmdid)
> +		return probe_gmdid_display(drm, gmdid_ver, gmdid_rel, gmdid_step);
> +
>  	for (i = 0; i < ARRAY_SIZE(intel_display_ids); i++) {
> -		if (intel_display_ids[i].device == pci_devid)
> -			return (struct intel_display_device_info *)intel_display_ids[i].driver_data;
> +		if (intel_display_ids[i].device == pdev->device)
> +			return (const struct intel_display_device_info *)intel_display_ids[i].driver_data;
>  	}
>  
>  	return &no_display;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 1f7d08b3ad6b..2a14943313ad 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -80,7 +80,10 @@ struct intel_display_device_info {
>  	} color;
>  };
>  
> +struct drm_device;
> +

Please keep forward declarations near the top of the file, right after
includes.

>  const struct intel_display_device_info *
> -intel_display_device_probe(u16 pci_devid);
> +intel_display_device_probe(struct drm_device *drm, bool has_gmdid,
> +			   u16 *ver, u16 *rel, u16 *step);
>  
>  #endif
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 522733a89946..37532e55327d 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -754,13 +754,17 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	struct drm_i915_private *i915;
>  	int ret;
>  
> -	i915 = i915_driver_create(pdev, ent);
> -	if (IS_ERR(i915))
> -		return PTR_ERR(i915);
> -
>  	ret = pci_enable_device(pdev);
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
>  	ret = i915_driver_early_probe(i915);
>  	if (ret < 0)
> @@ -843,7 +847,6 @@ int i915_driver_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
>  	i915_driver_late_release(i915);
>  out_pci_disable:
>  	pci_disable_device(pdev);
> -out_fini:
>  	i915_probe_error(i915, "Device initialization failed (%d)\n", ret);
>  	return ret;
>  }
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index e1507ae59f2d..85105639d55d 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -345,7 +345,6 @@ static void ip_ver_read(struct drm_i915_private *i915, u32 offset, struct intel_
>  static void intel_ipver_early_init(struct drm_i915_private *i915)
>  {
>  	struct intel_runtime_info *runtime = RUNTIME_INFO(i915);
> -	struct intel_display_runtime_info *display_runtime = DISPLAY_RUNTIME_INFO(i915);
>  
>  	if (!HAS_GMD_ID(i915)) {
>  		drm_WARN_ON(&i915->drm, RUNTIME_INFO(i915)->graphics.ip.ver > 12);
> @@ -366,8 +365,6 @@ static void intel_ipver_early_init(struct drm_i915_private *i915)
>  		RUNTIME_INFO(i915)->graphics.ip.ver = 12;
>  		RUNTIME_INFO(i915)->graphics.ip.rel = 70;
>  	}
> -	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_DISPLAY),
> -		    (struct intel_ip_version *)&display_runtime->ip);
>  	ip_ver_read(i915, i915_mmio_reg_offset(GMD_ID_MEDIA),
>  		    &runtime->media.ip);
>  }
> @@ -574,6 +571,7 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
>  {
>  	struct intel_device_info *info;
>  	struct intel_runtime_info *runtime;
> +	u16 ver, rel, step;
>  
>  	/* Setup the write-once "constant" device info */
>  	info = mkwrite_device_info(i915);
> @@ -584,8 +582,14 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
>  	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
>  
>  	/* Probe display support */
> -	info->display = intel_display_device_probe(device_id);
> +	info->display = intel_display_device_probe(&i915->drm, info->has_gmd_id,
> +						   &ver, &rel, &step);
>  	*DISPLAY_RUNTIME_INFO(i915) = DISPLAY_INFO(i915)->__runtime_defaults;
> +	if (info->has_gmd_id) {
> +		DISPLAY_RUNTIME_INFO(i915)->ip.ver = ver;
> +		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
> +		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;
> +	}

The division of initialization responsibilities between here and
intel_display_device_probe() is perhaps a bit odd?

Nothing that can't be fixed later though, I guess.

BR,
Jani.

>  
>  	runtime->device_id = device_id;
>  }

-- 
Jani Nikula, Intel Open Source Graphics Center
