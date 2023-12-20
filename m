Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 064078196BC
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 03:14:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DF8610E0F9;
	Wed, 20 Dec 2023 02:13:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD40310E0F9
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 02:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703038436; x=1734574436;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=PTepoAy/DD1APpo2t8QIyJWkgnen3il3Yu+25YNLwJs=;
 b=JmdwVA/kKivXyMRFoUQ+INEPR1H/a61kiagjn29noUANXgDflXdKysyA
 ZZBG+qRaXQs+CxSbyEz/RlHXdCoQz838kFIgHci3pDBuvkN3K7qOJfW4m
 3b/MchWnLHM+xdrIxPLpoxVD/MlT25FAkDbIK9AVpOpGgIYbfRSkl1vCw
 /HfLmZb1MyeaVPEAwuQ8pJPXNbGZ+vpMh1BOShyFflXJpTiQ8F8c9EYvq
 A/RgTe+IOIpRzGF6qKuYGN94cBnaJflO0qcDztseCubJH8hOiE5PGJ5G+
 +GtPE3eAnhaZIbdI/sec95/gf3Tqr48dP6ByqG0vN+EPihSp6Q4GQHrTh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="399584941"
X-IronPort-AV: E=Sophos;i="6.04,290,1695711600"; d="scan'208";a="399584941"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 18:13:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="769427356"
X-IronPort-AV: E=Sophos;i="6.04,290,1695711600"; d="scan'208";a="769427356"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 19 Dec 2023 18:13:54 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Dec 2023 04:13:53 +0200
Date: Wed, 20 Dec 2023 04:13:53 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: Re: [PATCH] drm/i915: Piggyback opregion vbt to store vbt read from
 flash/oprom
Message-ID: <ZYJN4V1OWyEYDdTG@intel.com>
References: <20231220014952.708652-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231220014952.708652-1-radhakrishna.sripada@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 19, 2023 at 05:49:52PM -0800, Radhakrishna Sripada wrote:
> Discrete cards do not have ACPI opregion. The vbt is stored in a special
> flash accessible by the display controller. In order to access the vbt
> in such cases, re-use the vbt, vbt_size fields in the opregion structure.

Why?

> 
> We should move away from storing the vbt in the opregion and store it,
> if required in the vbt structure.
> 
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 44 ++++++++++---------
>  drivers/gpu/drm/i915/display/intel_opregion.c |  7 ++-
>  2 files changed, 29 insertions(+), 22 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 736499a6e2c7..cbfbc56ff5b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2930,12 +2930,11 @@ static u32 intel_spi_read(struct intel_uncore *uncore, u32 offset)
>  	return intel_uncore_read(uncore, PRIMARY_SPI_TRIGGER);
>  }
>  
> -static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
> +static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915, u16 *vbt_size)
>  {
>  	u32 count, data, found, store = 0;
>  	u32 static_region, oprom_offset;
>  	u32 oprom_size = 0x200000;
> -	u16 vbt_size;
>  	u32 *vbt;
>  
>  	static_region = intel_uncore_read(&i915->uncore, SPI_STATIC_REGIONS);
> @@ -2957,18 +2956,18 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
>  		goto err_not_found;
>  
>  	/* Get VBT size and allocate space for the VBT */
> -	vbt_size = intel_spi_read(&i915->uncore,
> +	*vbt_size = intel_spi_read(&i915->uncore,
>  				  found + offsetof(struct vbt_header, vbt_size));
> -	vbt_size &= 0xffff;
> +	*vbt_size &= 0xffff;
>  
> -	vbt = kzalloc(round_up(vbt_size, 4), GFP_KERNEL);
> +	vbt = kzalloc(round_up(*vbt_size, 4), GFP_KERNEL);
>  	if (!vbt)
>  		goto err_not_found;
>  
> -	for (count = 0; count < vbt_size; count += 4)
> +	for (count = 0; count < *vbt_size; count += 4)
>  		*(vbt + store++) = intel_spi_read(&i915->uncore, found + count);
>  
> -	if (!intel_bios_is_valid_vbt(vbt, vbt_size))
> +	if (!intel_bios_is_valid_vbt(vbt, *vbt_size))
>  		goto err_free_vbt;
>  
>  	drm_dbg_kms(&i915->drm, "Found valid VBT in SPI flash\n");
> @@ -2977,16 +2976,16 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
>  
>  err_free_vbt:
>  	kfree(vbt);
> +	*vbt_size = 0;
>  err_not_found:
>  	return NULL;
>  }
>  
> -static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
> +static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915, u16 *vbt_size)
>  {
>  	struct pci_dev *pdev = to_pci_dev(i915->drm.dev);
>  	void __iomem *p = NULL, *oprom;
>  	struct vbt_header *vbt;
> -	u16 vbt_size;
>  	size_t i, size;
>  
>  	oprom = pci_map_rom(pdev, &size);
> @@ -3011,21 +3010,21 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
>  		goto err_unmap_oprom;
>  	}
>  
> -	vbt_size = ioread16(p + offsetof(struct vbt_header, vbt_size));
> -	if (vbt_size > size) {
> +	*vbt_size = ioread16(p + offsetof(struct vbt_header, vbt_size));
> +	if (*vbt_size > size) {
>  		drm_dbg(&i915->drm,
> -			"VBT incomplete (vbt_size overflows)\n");
> +			"VBT incomplete (*vbt_size overflows)\n");
>  		goto err_unmap_oprom;
>  	}
>  
>  	/* The rest will be validated by intel_bios_is_valid_vbt() */
> -	vbt = kmalloc(vbt_size, GFP_KERNEL);
> +	vbt = kmalloc(*vbt_size, GFP_KERNEL);
>  	if (!vbt)
>  		goto err_unmap_oprom;
>  
> -	memcpy_fromio(vbt, p, vbt_size);
> +	memcpy_fromio(vbt, p, *vbt_size);
>  
> -	if (!intel_bios_is_valid_vbt(vbt, vbt_size))
> +	if (!intel_bios_is_valid_vbt(vbt, *vbt_size))
>  		goto err_free_vbt;
>  
>  	pci_unmap_rom(pdev, oprom);
> @@ -3036,6 +3035,7 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
>  
>  err_free_vbt:
>  	kfree(vbt);
> +	*vbt_size = 0;
>  err_unmap_oprom:
>  	pci_unmap_rom(pdev, oprom);
>  
> @@ -3052,8 +3052,10 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915)
>   */
>  void intel_bios_init(struct drm_i915_private *i915)
>  {
> +	struct intel_opregion *opregion = &i915->display.opregion;
>  	const struct vbt_header *vbt = i915->display.opregion.vbt;
>  	struct vbt_header *oprom_vbt = NULL;
> +	u16 vbt_size;
>  	const struct bdb_header *bdb;
>  
>  	INIT_LIST_HEAD(&i915->display.vbt.display_devices);
> @@ -3072,13 +3074,15 @@ void intel_bios_init(struct drm_i915_private *i915)
>  	 * PCI mapping
>  	 */
>  	if (!vbt && IS_DGFX(i915)) {
> -		oprom_vbt = spi_oprom_get_vbt(i915);
> -		vbt = oprom_vbt;
> +		oprom_vbt = spi_oprom_get_vbt(i915, &vbt_size);
> +		opregion->vbt = vbt = oprom_vbt;
> +		opregion->vbt_size = (u32)vbt_size;
>  	}
>  
>  	if (!vbt) {
> -		oprom_vbt = oprom_get_vbt(i915);
> -		vbt = oprom_vbt;
> +		oprom_vbt = oprom_get_vbt(i915, &vbt_size);
> +		opregion->vbt = vbt = oprom_vbt;
> +		opregion->vbt_size = (u32)vbt_size;
>  	}
>  
>  	if (!vbt)
> @@ -3111,8 +3115,6 @@ void intel_bios_init(struct drm_i915_private *i915)
>  	/* Further processing on pre-parsed or generated child device data */
>  	parse_sdvo_device_mapping(i915);
>  	parse_ddi_ports(i915);
> -
> -	kfree(oprom_vbt);
>  }
>  
>  static void intel_bios_init_panel(struct drm_i915_private *i915,
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index 1ce785db6a5e..20b2160e9d0e 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -1244,8 +1244,13 @@ void intel_opregion_cleanup(struct drm_i915_private *i915)
>  {
>  	struct intel_opregion *opregion = &i915->display.opregion;
>  
> -	if (!opregion->header)
> +	if (!opregion->header) {
> +		if (opregion->vbt) {
> +			kfree(opregion->vbt);
> +			opregion->vbt_size = 0;
> +		}
>  		return;
> +	}
>  
>  	/* just clear all opregion memory pointers now */
>  	memunmap(opregion->header);
> -- 
> 2.34.1

-- 
Ville Syrjälä
Intel
