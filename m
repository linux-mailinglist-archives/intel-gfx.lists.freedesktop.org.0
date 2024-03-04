Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE99786FE33
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 10:59:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CCE010FF01;
	Mon,  4 Mar 2024 09:59:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g6bhRLNZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FD0810FF01
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Mar 2024 09:59:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709546394; x=1741082394;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=99U9lAg6XtaD0ZqrcV1USHgNyPA5XxM0evPk6t5H+I0=;
 b=g6bhRLNZmrsOziBVfUaiIdem9OM9xfTr0en04Ps6wqNGT+bo9kOOiPIa
 FWP+rdCYtWcNI8I+ToKG8ykX7MW8vuRNQGF88mMWLLjGEr/zQMzzypg/2
 EqZx/X2r7K8mqcPxUclU2LsvfhWU9DbqFLnN/4tgASYt50lCYEn3NGpAp
 XO9j6fuqOiAauV0r8RCCvGcFbFNmemBetZZ17Hd8ILL74v1FFGQgUpNDT
 JxHg0YDPGu/Em4SISExPKf+mC41zNb2k8Rk2o90Ki9rCX0iy4RRYsb1bZ
 6sldETAQ7Q0Gn1g0BWPj9YwEP66csIJMAk9RoKT9yc5GPVhVRqwCtDPRj g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="14738945"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="14738945"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 01:59:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="9078978"
Received: from syakovle-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.51.3])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 01:59:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Subject: Re: [PATCH v5] drm/i915: Show bios vbt when read from
 firmware/spi/oprom
In-Reply-To: <20240301221239.180884-1-radhakrishna.sripada@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240301031457.2015603-1-radhakrishna.sripada@intel.com>
 <20240301221239.180884-1-radhakrishna.sripada@intel.com>
Date: Mon, 04 Mar 2024 11:59:22 +0200
Message-ID: <87edcq5nd1.fsf@intel.com>
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

On Fri, 01 Mar 2024, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
> Make debugfs vbt only shows valid vbt when read from ACPI opregion.
> Make it work when read from firmware/spi/pci oprom cases. In the cases
> where VBT needs to be read from spi/pci oprom, take the wakeref to
> prevent WARN while reading DE registers during debugfs vbt dump.
>
> v2: Extract getting vbt from different sources to its own function.
>     Protect sysfs write with vbt check(Jani)
> v3: Fix CI error by probing bios vbt with runtime_pm wakeref
> v4: Update commit message and skip waking up runtime while accessing
>     vbt from opregion/firmware(Jani)
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 62 ++++++++++++-----------
>  1 file changed, 33 insertions(+), 29 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 44c9dfe86a00..9a8c7fe381b0 100644
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
> +	vbt = firmware_get_vbt(i915, sizep);
> +
> +	if (!vbt)
> +		vbt = intel_opregion_get_vbt(i915, sizep);
> +
> +	/*
> +	 * If the OpRegion does not have VBT, look in SPI flash
> +	 * through MMIO or PCI mapping
> +	 */
> +	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
> +		if (!vbt && IS_DGFX(i915))
> +			vbt = spi_oprom_get_vbt(i915, sizep);
> +
> +		if (!vbt)
> +			vbt = oprom_get_vbt(i915, sizep);
> +	}

This will still enable power even if intel_opregion_get_vbt() returned a
non-NULL pointer.

BR,
Jani.

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
