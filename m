Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AB795A4E1F
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 15:30:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03A1C10F2C3;
	Mon, 29 Aug 2022 13:30:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A95D210F2C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 13:30:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661779809; x=1693315809;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=lvoTRgl95uL1Egw+i2H5F1168wZr3lUwzWXwKFEDL2A=;
 b=CLcRnsccEcfbRuXCcz4l6CempTEoho5G9bCLMNNrABN+Qa5x9f44LkDJ
 uA4nZGU5U0d0jGv7DvYRtjWs6dRMunPFYuLbhK7Y5FnZTFhgYK76W6uVG
 2kPvDYrtQB4A3302BjSqLdFiQRKb5qTguKKLDzwqzy1g61Tz/gDXf+evo
 jcChM32rcFqUKIZyjwSA519JUcyq7uhVxclbclxchkdqfPWQuntWsHJ1K
 WXVuqHdSs41+fRGmgh//Dy8DZKF7CVAwZoDAXj9556bhPZzmZ/q++zEUi
 Ai2gpTU0Decj5XT8q6b72lVB5F7hQ71mW0TC+AVAohpiZzOOcKJi9WvJN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="275295738"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="275295738"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:30:09 -0700
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="856714251"
Received: from idecesar-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.53.198])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:30:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220823090128.488008-4-maarten.lankhorst@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220823090128.488008-1-maarten.lankhorst@linux.intel.com>
 <20220823090128.488008-4-maarten.lankhorst@linux.intel.com>
Date: Mon, 29 Aug 2022 16:30:00 +0300
Message-ID: <87edwzfa93.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Remove uncore from
 intel_bios.c
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

On Tue, 23 Aug 2022, Maarten Lankhorst <maarten.lankhorst@linux.intel.com> wrote:

Commit message!

> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 25 ++++++++++++-----------
>  1 file changed, 13 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 198a2f4920cc..c209d0b35041 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -29,9 +29,10 @@
>  #include <drm/display/drm_dp_helper.h>
>  #include <drm/display/drm_dsc_helper.h>
>  
> -#include "display/intel_display.h"
> -#include "display/intel_display_types.h"
> -#include "display/intel_gmbus.h"
> +#include "intel_de.h"
> +#include "intel_display.h"
> +#include "intel_display_types.h"
> +#include "intel_gmbus.h"
>  
>  #include "i915_drv.h"
>  #include "i915_reg.h"
> @@ -2960,16 +2961,16 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
>  	u16 vbt_size;
>  	u32 *vbt;
>  
> -	static_region = intel_uncore_read(&i915->uncore, SPI_STATIC_REGIONS);
> +	static_region = intel_de_read(i915, SPI_STATIC_REGIONS);
>  	static_region &= OPTIONROM_SPI_REGIONID_MASK;
> -	intel_uncore_write(&i915->uncore, PRIMARY_SPI_REGIONID, static_region);
> +	intel_de_write(i915, PRIMARY_SPI_REGIONID, static_region);
>  
> -	oprom_offset = intel_uncore_read(&i915->uncore, OROM_OFFSET);
> +	oprom_offset = intel_de_read(i915, OROM_OFFSET);
>  	oprom_offset &= OROM_OFFSET_MASK;
>  
>  	for (count = 0; count < oprom_size; count += 4) {
> -		intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, oprom_offset + count);
> -		data = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
> +		intel_de_write(i915, PRIMARY_SPI_ADDRESS, oprom_offset + count);
> +		data = intel_de_read(i915, PRIMARY_SPI_TRIGGER);
>  
>  		if (data == *((const u32 *)"$VBT")) {
>  			found = oprom_offset + count;
> @@ -2981,9 +2982,9 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
>  		goto err_not_found;
>  
>  	/* Get VBT size and allocate space for the VBT */
> -	intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, found +
> +	intel_de_write(i915, PRIMARY_SPI_ADDRESS, found +
>  		   offsetof(struct vbt_header, vbt_size));
> -	vbt_size = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
> +	vbt_size = intel_de_read(i915, PRIMARY_SPI_TRIGGER);
>  	vbt_size &= 0xffff;
>  
>  	vbt = kzalloc(round_up(vbt_size, 4), GFP_KERNEL);
> @@ -2991,8 +2992,8 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
>  		goto err_not_found;
>  
>  	for (count = 0; count < vbt_size; count += 4) {
> -		intel_uncore_write(&i915->uncore, PRIMARY_SPI_ADDRESS, found + count);
> -		data = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
> +		intel_de_write(i915, PRIMARY_SPI_ADDRESS, found + count);
> +		data = intel_de_read(i915, PRIMARY_SPI_TRIGGER);
>  		*(vbt + store++) = data;
>  	}

-- 
Jani Nikula, Intel Open Source Graphics Center
