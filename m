Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B30A8707A33
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 08:18:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DA3110E4DC;
	Thu, 18 May 2023 06:18:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7A9410E4DA;
 Thu, 18 May 2023 06:18:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684390701; x=1715926701;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=j9tUx+8JvkMYVSo6qXygQTFcYsyB58EYzqmmff1VQhQ=;
 b=JXx26PnaIqHxHlaJUhnNOrM7hrR/vHTVK6w61miBAdk4bNbO25hPOtYE
 eYEamY2F0Us/343qoHo3jckJUw8dia+8AyUd4SAlkZsRg6XyX+Fj+HMfj
 tDJ9XULKYmGbkfxGC6AeR0DS3ThWFrgBGIjqb0wUWao1uM5v23d/hHtZm
 kite1NaH2cKEiyC/O2Ok3gp6fH99uf12SPmtdAIw5GbmaUzXR6QeLiON+
 xmXkO+w6/4laxUodYF79NqG4aioaJDPPaF8F45Qb1EZ254HavwsQGFxom
 KvtxJOJ1bDAOLTasMPhKwCn4f6vylXZhjk7TVa7U7gcLz6PSqbiBceE5M w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="341381876"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="341381876"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 23:18:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10713"; a="652509076"
X-IronPort-AV: E=Sophos;i="5.99,284,1677571200"; d="scan'208";a="652509076"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.28.37])
 ([10.213.28.37])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2023 23:18:20 -0700
Message-ID: <7175e35c-319c-4811-bcf3-724a64cce34f@intel.com>
Date: Thu, 18 May 2023 08:18:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
To: Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230518031804.3133486-1-matthew.d.roper@intel.com>
 <20230518031804.3133486-2-matthew.d.roper@intel.com>
Content-Language: en-US
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20230518031804.3133486-2-matthew.d.roper@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915/display: Move display device
 info to header under display/
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

On 18.05.2023 05:18, Matt Roper wrote:
> Moving display-specific substruture definitions will help keep display
> more self-contained and make it easier to re-use in other drivers (i.e.,
> Xe) in the future.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

s/substruture/substructure/

Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>

Regards
Andrzej

> ---
>   .../drm/i915/display/intel_display_device.h   | 60 +++++++++++++++++++
>   drivers/gpu/drm/i915/intel_device_info.h      | 49 +--------------
>   2 files changed, 62 insertions(+), 47 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/display/intel_display_device.h
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> new file mode 100644
> index 000000000000..c689d582dbf1
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -0,0 +1,60 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2023 Intel Corporation
> + */
> +
> +#ifndef __INTEL_DISPLAY_DEVICE_H__
> +#define __INTEL_DISPLAY_DEVICE_H__
> +
> +#include <linux/types.h>
> +
> +#include "display/intel_display_limits.h"
> +
> +#define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
> +	/* Keep in alphabetical order */ \
> +	func(cursor_needs_physical); \
> +	func(has_cdclk_crawl); \
> +	func(has_cdclk_squash); \
> +	func(has_ddi); \
> +	func(has_dp_mst); \
> +	func(has_dsb); \
> +	func(has_fpga_dbg); \
> +	func(has_gmch); \
> +	func(has_hotplug); \
> +	func(has_hti); \
> +	func(has_ipc); \
> +	func(has_overlay); \
> +	func(has_psr); \
> +	func(has_psr_hw_tracking); \
> +	func(overlay_needs_physical); \
> +	func(supports_tv);
> +
> +struct intel_display_device_info {
> +	u8 abox_mask;
> +
> +	struct {
> +		u16 size; /* in blocks */
> +		u8 slice_mask;
> +	} dbuf;
> +
> +#define DEFINE_FLAG(name) u8 name:1
> +	DEV_INFO_DISPLAY_FOR_EACH_FLAG(DEFINE_FLAG);
> +#undef DEFINE_FLAG
> +
> +	/* Global register offset for the display engine */
> +	u32 mmio_offset;
> +
> +	/* Register offsets for the various display pipes and transcoders */
> +	u32 pipe_offsets[I915_MAX_TRANSCODERS];
> +	u32 trans_offsets[I915_MAX_TRANSCODERS];
> +	u32 cursor_offsets[I915_MAX_PIPES];
> +
> +	struct {
> +		u32 degamma_lut_size;
> +		u32 gamma_lut_size;
> +		u32 degamma_lut_tests;
> +		u32 gamma_lut_tests;
> +	} color;
> +};
> +
> +#endif
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index 959a4080840c..96f6bdb04b1b 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -29,7 +29,7 @@
>   
>   #include "intel_step.h"
>   
> -#include "display/intel_display_limits.h"
> +#include "display/intel_display_device.h"
>   
>   #include "gt/intel_engine_types.h"
>   #include "gt/intel_context_types.h"
> @@ -182,25 +182,6 @@ enum intel_ppgtt_type {
>   	func(unfenced_needs_alignment); \
>   	func(hws_needs_physical);
>   
> -#define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
> -	/* Keep in alphabetical order */ \
> -	func(cursor_needs_physical); \
> -	func(has_cdclk_crawl); \
> -	func(has_cdclk_squash); \
> -	func(has_ddi); \
> -	func(has_dp_mst); \
> -	func(has_dsb); \
> -	func(has_fpga_dbg); \
> -	func(has_gmch); \
> -	func(has_hotplug); \
> -	func(has_hti); \
> -	func(has_ipc); \
> -	func(has_overlay); \
> -	func(has_psr); \
> -	func(has_psr_hw_tracking); \
> -	func(overlay_needs_physical); \
> -	func(supports_tv);
> -
>   struct intel_ip_version {
>   	u8 ver;
>   	u8 rel;
> @@ -278,33 +259,7 @@ struct intel_device_info {
>   	DEV_INFO_FOR_EACH_FLAG(DEFINE_FLAG);
>   #undef DEFINE_FLAG
>   
> -	struct {
> -		u8 abox_mask;
> -
> -		struct {
> -			u16 size; /* in blocks */
> -			u8 slice_mask;
> -		} dbuf;
> -
> -#define DEFINE_FLAG(name) u8 name:1
> -		DEV_INFO_DISPLAY_FOR_EACH_FLAG(DEFINE_FLAG);
> -#undef DEFINE_FLAG
> -
> -		/* Global register offset for the display engine */
> -		u32 mmio_offset;
> -
> -		/* Register offsets for the various display pipes and transcoders */
> -		u32 pipe_offsets[I915_MAX_TRANSCODERS];
> -		u32 trans_offsets[I915_MAX_TRANSCODERS];
> -		u32 cursor_offsets[I915_MAX_PIPES];
> -
> -		struct {
> -			u32 degamma_lut_size;
> -			u32 gamma_lut_size;
> -			u32 degamma_lut_tests;
> -			u32 gamma_lut_tests;
> -		} color;
> -	} display;
> +	struct intel_display_device_info display;
>   
>   	/*
>   	 * Initial runtime info. Do not access outside of i915_driver_create().

