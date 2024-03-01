Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DD486DEE6
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Mar 2024 11:06:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86B2710E36E;
	Fri,  1 Mar 2024 10:06:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TpLvYKhh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9347D10E36E
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Mar 2024 10:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709287593; x=1740823593;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=OuPEBSJg2HDZRdH/kbUOawBNSk0HbLoQrVyjMJAYcS8=;
 b=TpLvYKhhHPJJnr2SJpth3L79Tenr1OXjHpuqv+5AF+0e5Y2q+UbFzk9L
 JBjtr+pM5LCTvRTtgjZ9UfxqoMA5ZrdUVoM6muK4sCmAAoYhLQ1DD/e9g
 /Q4F/H61IC7y/HtUPw92NTsR5Y5OFfNoGyuG+aE5xROKl0ZPBl1zDkjSK
 3RPTowRR4FeWk2/eQqCcgAqrjK2vwEqHEOv50QAwXsXHGNTwPfucyIcua
 6LrV7Dy12TTWvH8Y2vI8mPQn7T07UNydoGcvd30kPSILpibRT7pmJXmO9
 MKaP3mvBC0gqBeyfUouZ0LU00NzobFrCfgrZ9caDVqrgwsiTYL+evpBe0 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10999"; a="14965176"
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; d="scan'208";a="14965176"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 02:06:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,195,1705392000"; d="scan'208";a="39003149"
Received: from eseresrx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.228])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2024 02:06:30 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: Re: [PATCH v4] drm/i915: Show bios vbt when read from
 firmware/spi/oprom
In-Reply-To: <20240301031457.2015603-1-radhakrishna.sripada@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240228213235.2495611-7-radhakrishna.sripada@intel.com>
 <20240301031457.2015603-1-radhakrishna.sripada@intel.com>
Date: Fri, 01 Mar 2024 12:06:24 +0200
Message-ID: <87le725krj.fsf@intel.com>
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

On Thu, 29 Feb 2024, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
> Make debugfs vbt only shows valid vbt when read from ACPI opregion.
> Make it work when read from firmware/spi/pci oprom cases.

The commit message (not just the changelog) should explain why the
runtime pm wakeref is needed.

I presume this only happens in spi_oprom_get_vbt() and/or
oprom_get_vbt() via debugfs, because we've not seen this before. So I'm
wondering about waking up the device for vbt debugfs for no reason in
the most common case, getting the vbt from opregion.

BR,
Jani.


>
> v2: Extract getting vbt from different sources to its own function.
>     Protect sysfs write with vbt check(Jani)
> v3: Fix CI error by probing bios vbt with runtime_pm wakeref
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 62 ++++++++++++-----------
>  1 file changed, 33 insertions(+), 29 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 44c9dfe86a00..3260aab63875 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3135,6 +3135,32 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915,
>  	return NULL;
>  }
>  
> +static const struct vbt_header *intel_bios_get_vbt(struct drm_i915_private *i915,
> +						   size_t *sizep)
> +{
> +	const struct vbt_header *vbt = NULL;
> +	intel_wakeref_t wakeref;
> +
> +	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
> +		vbt = firmware_get_vbt(i915, sizep);
> +
> +		if (!vbt)
> +			vbt = intel_opregion_get_vbt(i915, sizep);
> +
> +		/*
> +		 * If the OpRegion does not have VBT, look in SPI flash
> +		 * through MMIO or PCI mapping
> +		 */
> +		if (!vbt && IS_DGFX(i915))
> +			vbt = spi_oprom_get_vbt(i915, sizep);
> +
> +		if (!vbt)
> +			vbt = oprom_get_vbt(i915, sizep);
> +	}
> +
> +	return vbt;
> +}
> +
>  /**
>   * intel_bios_init - find VBT and initialize settings from the BIOS
>   * @i915: i915 device instance
> @@ -3146,7 +3172,6 @@ static struct vbt_header *oprom_get_vbt(struct drm_i915_private *i915,
>  void intel_bios_init(struct drm_i915_private *i915)
>  {
>  	const struct vbt_header *vbt;
> -	struct vbt_header *oprom_vbt = NULL;
>  	const struct bdb_header *bdb;
>  
>  	INIT_LIST_HEAD(&i915->display.vbt.display_devices);
> @@ -3160,27 +3185,7 @@ void intel_bios_init(struct drm_i915_private *i915)
>  
>  	init_vbt_defaults(i915);
>  
> -	oprom_vbt = firmware_get_vbt(i915, NULL);
> -	vbt = oprom_vbt;
> -
> -	if (!vbt) {
> -		oprom_vbt = intel_opregion_get_vbt(i915, NULL);
> -		vbt = oprom_vbt;
> -	}
> -
> -	/*
> -	 * If the OpRegion does not have VBT, look in SPI flash through MMIO or
> -	 * PCI mapping
> -	 */
> -	if (!vbt && IS_DGFX(i915)) {
> -		oprom_vbt = spi_oprom_get_vbt(i915, NULL);
> -		vbt = oprom_vbt;
> -	}
> -
> -	if (!vbt) {
> -		oprom_vbt = oprom_get_vbt(i915, NULL);
> -		vbt = oprom_vbt;
> -	}
> +	vbt = intel_bios_get_vbt(i915, NULL);
>  
>  	if (!vbt)
>  		goto out;
> @@ -3213,7 +3218,7 @@ void intel_bios_init(struct drm_i915_private *i915)
>  	parse_sdvo_device_mapping(i915);
>  	parse_ddi_ports(i915);
>  
> -	kfree(oprom_vbt);
> +	kfree(vbt);
>  }
>  
>  static void intel_bios_init_panel(struct drm_i915_private *i915,
> @@ -3743,13 +3748,12 @@ static int intel_bios_vbt_show(struct seq_file *m, void *unused)
>  	const void *vbt;
>  	size_t vbt_size;
>  
> -	/*
> -	 * FIXME: VBT might originate from other places than opregion, and then
> -	 * this would be incorrect.
> -	 */
> -	vbt = intel_opregion_get_vbt(i915, &vbt_size);
> -	if (vbt)
> +	vbt = intel_bios_get_vbt(i915, &vbt_size);
> +
> +	if (vbt) {
>  		seq_write(m, vbt, vbt_size);
> +		kfree(vbt);
> +	}
>  
>  	return 0;
>  }

-- 
Jani Nikula, Intel
