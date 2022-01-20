Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 547CB494D78
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 12:57:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BFAE10E348;
	Thu, 20 Jan 2022 11:57:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05F4610E348
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 11:57:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642679834; x=1674215834;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=m34sBWU1wh+EPT1GpiqlIBhb9aNbbZYDNAUhiOzhJU0=;
 b=LOTZSNkX1QS3VTH+sqsCyb7cpeGBGevPw5Dc73T8bzaHhRTLBnPyvAPk
 yCljgaDiaWAf/iyzIRAyW3jqkATJrAVKjooERXpbj5lywVzyspFGcezCX
 xZk2zLWyqL9tM4xKo6ec75CxFzrlRJn73jVyxR5gGF0MvhjYM+edLAOo0
 6R7up8Rf+QB7rv2XFBhcOGjAsai+qU9EADeF9a2eq5oNA69rz94n6faKv
 OGVnGqZXkD7DhiZIfzS/3atcm3zF5pLI3dM72n/TztRVWSCUzrzKh/G/2
 4i9HAIagmfCscRZ5UxsPlG9ViW0xP7BrYEolLzT0t2eHmhGW39GcM4SXf A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="245533407"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="245533407"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 03:57:13 -0800
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="626266167"
Received: from bmurphy-mobl.ger.corp.intel.com (HELO [10.213.207.182])
 ([10.213.207.182])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 03:57:12 -0800
Message-ID: <cdd01bab-794f-4b45-c3d6-f14955c872bd@linux.intel.com>
Date: Thu, 20 Jan 2022 11:57:10 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220120113346.3214745-1-jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220120113346.3214745-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: split out i915_reg_read_ioctl()
 to i915_ioctl.[ch]
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



On 20/01/2022 11:33, Jani Nikula wrote:
> Add new files i915_ioctl.[ch] to hold small ioctls that are out of place
> everywhere else, and not big enough to warrant a file of their own. For
> starters, it's just for i915_reg_read_ioctl() that's a bit high level
> for a low level implementation that intel_uncore.[ch] is.
> 
> Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Copy & paste checks out and I obviously support the idea. :) Thanks for 
accomodating it.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> ---
>   drivers/gpu/drm/i915/Makefile       |  3 +-
>   drivers/gpu/drm/i915/i915_driver.c  |  1 +
>   drivers/gpu/drm/i915/i915_drv.h     |  3 -
>   drivers/gpu/drm/i915/i915_ioctl.c   | 94 +++++++++++++++++++++++++++++
>   drivers/gpu/drm/i915/i915_ioctl.h   | 14 +++++
>   drivers/gpu/drm/i915/intel_uncore.c | 70 ---------------------
>   6 files changed, 111 insertions(+), 74 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/i915_ioctl.c
>   create mode 100644 drivers/gpu/drm/i915/i915_ioctl.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 451df10e3a36..a26e6736bebb 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -32,8 +32,9 @@ subdir-ccflags-y += -I$(srctree)/$(src)
>   # core driver code
>   i915-y += i915_driver.o \
>   	  i915_config.o \
> -	  i915_irq.o \
>   	  i915_getparam.o \
> +	  i915_ioctl.o \
> +	  i915_irq.o \
>   	  i915_mitigations.o \
>   	  i915_module.o \
>   	  i915_params.o \
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 8bef67cb6c33..3d41f532a5d6 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -76,6 +76,7 @@
>   #include "i915_drv.h"
>   #include "i915_getparam.h"
>   #include "i915_ioc32.h"
> +#include "i915_ioctl.h"
>   #include "i915_irq.h"
>   #include "i915_memcpy.h"
>   #include "i915_perf.h"
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 890f1f6fbc49..44c1f98144b4 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1734,9 +1734,6 @@ mkwrite_device_info(struct drm_i915_private *dev_priv)
>   	return (struct intel_device_info *)INTEL_INFO(dev_priv);
>   }
>   
> -int i915_reg_read_ioctl(struct drm_device *dev, void *data,
> -			struct drm_file *file);
> -
>   static inline int intel_hws_csb_write_index(struct drm_i915_private *i915)
>   {
>   	if (GRAPHICS_VER(i915) >= 11)
> diff --git a/drivers/gpu/drm/i915/i915_ioctl.c b/drivers/gpu/drm/i915/i915_ioctl.c
> new file mode 100644
> index 000000000000..06a10ccea80b
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_ioctl.c
> @@ -0,0 +1,94 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2022 Intel Corporation
> + */
> +
> +#include "gt/intel_engine_regs.h"
> +
> +#include "i915_drv.h"
> +#include "i915_gem.h"
> +#include "i915_ioctl.h"
> +#include "i915_reg.h"
> +#include "intel_runtime_pm.h"
> +#include "intel_uncore.h"
> +
> +/*
> + * This file is for small ioctl functions that are out of place everywhere else,
> + * and not big enough to warrant a file of their own.
> + *
> + * This is not the dumping ground for random ioctls.
> + */
> +
> +struct reg_whitelist {
> +	i915_reg_t offset_ldw;
> +	i915_reg_t offset_udw;
> +	u8 min_graphics_ver;
> +	u8 max_graphics_ver;
> +	u8 size;
> +};
> +
> +static const struct reg_whitelist reg_read_whitelist[] = {
> +	{
> +		.offset_ldw = RING_TIMESTAMP(RENDER_RING_BASE),
> +		.offset_udw = RING_TIMESTAMP_UDW(RENDER_RING_BASE),
> +		.min_graphics_ver = 4,
> +		.max_graphics_ver = 12,
> +		.size = 8
> +	}
> +};
> +
> +int i915_reg_read_ioctl(struct drm_device *dev,
> +			void *data, struct drm_file *unused)
> +{
> +	struct drm_i915_private *i915 = to_i915(dev);
> +	struct intel_uncore *uncore = &i915->uncore;
> +	struct drm_i915_reg_read *reg = data;
> +	struct reg_whitelist const *entry;
> +	intel_wakeref_t wakeref;
> +	unsigned int flags;
> +	int remain;
> +	int ret = 0;
> +
> +	entry = reg_read_whitelist;
> +	remain = ARRAY_SIZE(reg_read_whitelist);
> +	while (remain) {
> +		u32 entry_offset = i915_mmio_reg_offset(entry->offset_ldw);
> +
> +		GEM_BUG_ON(!is_power_of_2(entry->size));
> +		GEM_BUG_ON(entry->size > 8);
> +		GEM_BUG_ON(entry_offset & (entry->size - 1));
> +
> +		if (IS_GRAPHICS_VER(i915, entry->min_graphics_ver, entry->max_graphics_ver) &&
> +		    entry_offset == (reg->offset & -entry->size))
> +			break;
> +		entry++;
> +		remain--;
> +	}
> +
> +	if (!remain)
> +		return -EINVAL;
> +
> +	flags = reg->offset & (entry->size - 1);
> +
> +	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
> +		if (entry->size == 8 && flags == I915_REG_READ_8B_WA)
> +			reg->val = intel_uncore_read64_2x32(uncore,
> +							    entry->offset_ldw,
> +							    entry->offset_udw);
> +		else if (entry->size == 8 && flags == 0)
> +			reg->val = intel_uncore_read64(uncore,
> +						       entry->offset_ldw);
> +		else if (entry->size == 4 && flags == 0)
> +			reg->val = intel_uncore_read(uncore, entry->offset_ldw);
> +		else if (entry->size == 2 && flags == 0)
> +			reg->val = intel_uncore_read16(uncore,
> +						       entry->offset_ldw);
> +		else if (entry->size == 1 && flags == 0)
> +			reg->val = intel_uncore_read8(uncore,
> +						      entry->offset_ldw);
> +		else
> +			ret = -EINVAL;
> +	}
> +
> +	return ret;
> +}
> diff --git a/drivers/gpu/drm/i915/i915_ioctl.h b/drivers/gpu/drm/i915/i915_ioctl.h
> new file mode 100644
> index 000000000000..f16ae87b8b8a
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_ioctl.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2022 Intel Corporation
> + */
> +
> +#ifndef __I915_IOCTL_H__
> +#define __I915_IOCTL_H__
> +
> +struct drm_device;
> +struct drm_file;
> +
> +int i915_reg_read_ioctl(struct drm_device *dev, void *data, struct drm_file *file);
> +
> +#endif /* __I915_IOCTL_H__ */
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> index 41d082213e81..00f9a05d2686 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -2255,76 +2255,6 @@ void intel_uncore_fini_mmio(struct intel_uncore *uncore)
>   	}
>   }
>   
> -static const struct reg_whitelist {
> -	i915_reg_t offset_ldw;
> -	i915_reg_t offset_udw;
> -	u8 min_graphics_ver;
> -	u8 max_graphics_ver;
> -	u8 size;
> -} reg_read_whitelist[] = { {
> -	.offset_ldw = RING_TIMESTAMP(RENDER_RING_BASE),
> -	.offset_udw = RING_TIMESTAMP_UDW(RENDER_RING_BASE),
> -	.min_graphics_ver = 4,
> -	.max_graphics_ver = 12,
> -	.size = 8
> -} };
> -
> -int i915_reg_read_ioctl(struct drm_device *dev,
> -			void *data, struct drm_file *file)
> -{
> -	struct drm_i915_private *i915 = to_i915(dev);
> -	struct intel_uncore *uncore = &i915->uncore;
> -	struct drm_i915_reg_read *reg = data;
> -	struct reg_whitelist const *entry;
> -	intel_wakeref_t wakeref;
> -	unsigned int flags;
> -	int remain;
> -	int ret = 0;
> -
> -	entry = reg_read_whitelist;
> -	remain = ARRAY_SIZE(reg_read_whitelist);
> -	while (remain) {
> -		u32 entry_offset = i915_mmio_reg_offset(entry->offset_ldw);
> -
> -		GEM_BUG_ON(!is_power_of_2(entry->size));
> -		GEM_BUG_ON(entry->size > 8);
> -		GEM_BUG_ON(entry_offset & (entry->size - 1));
> -
> -		if (IS_GRAPHICS_VER(i915, entry->min_graphics_ver, entry->max_graphics_ver) &&
> -		    entry_offset == (reg->offset & -entry->size))
> -			break;
> -		entry++;
> -		remain--;
> -	}
> -
> -	if (!remain)
> -		return -EINVAL;
> -
> -	flags = reg->offset & (entry->size - 1);
> -
> -	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
> -		if (entry->size == 8 && flags == I915_REG_READ_8B_WA)
> -			reg->val = intel_uncore_read64_2x32(uncore,
> -							    entry->offset_ldw,
> -							    entry->offset_udw);
> -		else if (entry->size == 8 && flags == 0)
> -			reg->val = intel_uncore_read64(uncore,
> -						       entry->offset_ldw);
> -		else if (entry->size == 4 && flags == 0)
> -			reg->val = intel_uncore_read(uncore, entry->offset_ldw);
> -		else if (entry->size == 2 && flags == 0)
> -			reg->val = intel_uncore_read16(uncore,
> -						       entry->offset_ldw);
> -		else if (entry->size == 1 && flags == 0)
> -			reg->val = intel_uncore_read8(uncore,
> -						      entry->offset_ldw);
> -		else
> -			ret = -EINVAL;
> -	}
> -
> -	return ret;
> -}
> -
>   /**
>    * __intel_wait_for_register_fw - wait until register matches expected state
>    * @uncore: the struct intel_uncore
> 
