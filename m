Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCA78690B2
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 13:38:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D4F610E18E;
	Tue, 27 Feb 2024 12:38:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OJ6WFn+9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2B1B10E18E
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 12:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709037518; x=1740573518;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=LX1CV9RwOSj1+d/Gt9y5Of1lEfAT0/Krwf1wkOD/AzQ=;
 b=OJ6WFn+9PmDPUL54yvt4Ntg3jJ2YL7shh5l5vLQ4afJ+fVcWICRAnRhJ
 AXchZBqqSzv1IuVvZPsAKUbYyjKzQG7rAmICZmAHmokKsGJ1jelzAlL2b
 VM8p5grllk+vzcFmpooKcNFIUJVDdEHz7Ny59GjdUntMDqzqNUMPW+7jN
 MtThPNNnxkDq0Rd7JUSkR0XPN5Pmv0ybZeAnpL71MnuNktmlFrunCHXsT
 bopcjonrCsGf8SFxOtn2dyiHvEV3bV1+HogLNawgF1+sFw70r6UIJ9I4f
 EXIFV6bfenUlzmDaFJ9iTszutP/r5Hv5GH+sz8BKjpkVnn+j0XPAAn5i6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="14813758"
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; d="scan'208";a="14813758"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 04:38:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,187,1705392000"; 
   d="scan'208";a="7582135"
Received: from bdallmer-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.187])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 04:38:36 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 2/4] drm/i915: Pass size to spi_oprom_get_vbt
In-Reply-To: <20240220223129.3822480-3-radhakrishna.sripada@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240220223129.3822480-1-radhakrishna.sripada@intel.com>
 <20240220223129.3822480-3-radhakrishna.sripada@intel.com>
Date: Tue, 27 Feb 2024 14:38:32 +0200
Message-ID: <8734tejd4n.fsf@intel.com>
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
> spi_oprom_get_vbt will later be used to show the contents of vbt for
> which the size of vbt is needed.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

Yeah, do the same thing in oprom_get_vbt().

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index ceb6e4145c62..2624a4528b21 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2957,7 +2957,8 @@ static u32 intel_spi_read(struct intel_uncore *uncore, u32 offset)
>  	return intel_uncore_read(uncore, PRIMARY_SPI_TRIGGER);
>  }
>  
> -static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
> +static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915,
> +					    size_t *size)
>  {
>  	u32 count, data, found, store = 0;
>  	u32 static_region, oprom_offset;
> @@ -3000,6 +3001,9 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
>  
>  	drm_dbg_kms(&i915->drm, "Found valid VBT in SPI flash\n");
>  
> +	if (size)
> +		*size = vbt_size;
> +
>  	return (struct vbt_header *)vbt;
>  
>  err_free_vbt:
> @@ -3103,7 +3107,7 @@ void intel_bios_init(struct drm_i915_private *i915)
>  	 * PCI mapping
>  	 */
>  	if (!vbt && IS_DGFX(i915)) {
> -		oprom_vbt = spi_oprom_get_vbt(i915);
> +		oprom_vbt = spi_oprom_get_vbt(i915, NULL);
>  		vbt = oprom_vbt;
>  	}

-- 
Jani Nikula, Intel
