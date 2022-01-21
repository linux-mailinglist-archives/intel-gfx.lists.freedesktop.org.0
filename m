Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DFA495C0F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jan 2022 09:38:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D22410E98B;
	Fri, 21 Jan 2022 08:38:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 194D210E98A
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 08:38:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642754287; x=1674290287;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=pRrWu4+AysN/s4RPmCMfBLXiu8zLXWNo2CF/bYLUsdw=;
 b=ZgANMg6etduJkSF8vap32kzK+iDktHhwfJI0EAEgjrrmC/3ovCQdMtpk
 yDk3+yNEaMNEt9iKUwS3hOdsLxlcGtkSrqyQznfYCW9IAGMu1Q4+Chv4m
 IPLQKLj6w8Hdq+Zi7RRiaOOWbwRVsfdkPNTezrWfWICwofc3y7duBcsst
 hsQ4yOvjEdBNRPH4ulxJQnR8JenQ22FrjEe6+bPcV33e+tpi19Fs1An8a
 +Fyi8G5E9xTThAgtjwIYm6qhcRdw6IiLp3OYPoyZtz4QIS0fzZ01pMOrw
 JcFyhmbjJmIq30FCbxZJxEiSI8cm0JsOzy1pp2DAVaFOHpxSTlD+G7QXF Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="331951991"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="331951991"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 00:38:06 -0800
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="533188695"
Received: from chandra2-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.48.104])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 00:38:05 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <cdd01bab-794f-4b45-c3d6-f14955c872bd@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220120113346.3214745-1-jani.nikula@intel.com>
 <cdd01bab-794f-4b45-c3d6-f14955c872bd@linux.intel.com>
Date: Fri, 21 Jan 2022 10:37:54 +0200
Message-ID: <87h79x8owt.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 20 Jan 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 20/01/2022 11:33, Jani Nikula wrote:
>> Add new files i915_ioctl.[ch] to hold small ioctls that are out of place
>> everywhere else, and not big enough to warrant a file of their own. For
>> starters, it's just for i915_reg_read_ioctl() that's a bit high level
>> for a low level implementation that intel_uncore.[ch] is.
>>=20
>> Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Copy & paste checks out and I obviously support the idea. :) Thanks for=20
> accomodating it.
>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Thanks, pushed!

BR,
Jani.

>
> Regards,
>
> Tvrtko
>
>> ---
>>   drivers/gpu/drm/i915/Makefile       |  3 +-
>>   drivers/gpu/drm/i915/i915_driver.c  |  1 +
>>   drivers/gpu/drm/i915/i915_drv.h     |  3 -
>>   drivers/gpu/drm/i915/i915_ioctl.c   | 94 +++++++++++++++++++++++++++++
>>   drivers/gpu/drm/i915/i915_ioctl.h   | 14 +++++
>>   drivers/gpu/drm/i915/intel_uncore.c | 70 ---------------------
>>   6 files changed, 111 insertions(+), 74 deletions(-)
>>   create mode 100644 drivers/gpu/drm/i915/i915_ioctl.c
>>   create mode 100644 drivers/gpu/drm/i915/i915_ioctl.h
>>=20
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefi=
le
>> index 451df10e3a36..a26e6736bebb 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -32,8 +32,9 @@ subdir-ccflags-y +=3D -I$(srctree)/$(src)
>>   # core driver code
>>   i915-y +=3D i915_driver.o \
>>   	  i915_config.o \
>> -	  i915_irq.o \
>>   	  i915_getparam.o \
>> +	  i915_ioctl.o \
>> +	  i915_irq.o \
>>   	  i915_mitigations.o \
>>   	  i915_module.o \
>>   	  i915_params.o \
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i=
915_driver.c
>> index 8bef67cb6c33..3d41f532a5d6 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -76,6 +76,7 @@
>>   #include "i915_drv.h"
>>   #include "i915_getparam.h"
>>   #include "i915_ioc32.h"
>> +#include "i915_ioctl.h"
>>   #include "i915_irq.h"
>>   #include "i915_memcpy.h"
>>   #include "i915_perf.h"
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index 890f1f6fbc49..44c1f98144b4 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -1734,9 +1734,6 @@ mkwrite_device_info(struct drm_i915_private *dev_p=
riv)
>>   	return (struct intel_device_info *)INTEL_INFO(dev_priv);
>>   }
>>=20=20=20
>> -int i915_reg_read_ioctl(struct drm_device *dev, void *data,
>> -			struct drm_file *file);
>> -
>>   static inline int intel_hws_csb_write_index(struct drm_i915_private *i=
915)
>>   {
>>   	if (GRAPHICS_VER(i915) >=3D 11)
>> diff --git a/drivers/gpu/drm/i915/i915_ioctl.c b/drivers/gpu/drm/i915/i9=
15_ioctl.c
>> new file mode 100644
>> index 000000000000..06a10ccea80b
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/i915_ioctl.c
>> @@ -0,0 +1,94 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright =C2=A9 2022 Intel Corporation
>> + */
>> +
>> +#include "gt/intel_engine_regs.h"
>> +
>> +#include "i915_drv.h"
>> +#include "i915_gem.h"
>> +#include "i915_ioctl.h"
>> +#include "i915_reg.h"
>> +#include "intel_runtime_pm.h"
>> +#include "intel_uncore.h"
>> +
>> +/*
>> + * This file is for small ioctl functions that are out of place everywh=
ere else,
>> + * and not big enough to warrant a file of their own.
>> + *
>> + * This is not the dumping ground for random ioctls.
>> + */
>> +
>> +struct reg_whitelist {
>> +	i915_reg_t offset_ldw;
>> +	i915_reg_t offset_udw;
>> +	u8 min_graphics_ver;
>> +	u8 max_graphics_ver;
>> +	u8 size;
>> +};
>> +
>> +static const struct reg_whitelist reg_read_whitelist[] =3D {
>> +	{
>> +		.offset_ldw =3D RING_TIMESTAMP(RENDER_RING_BASE),
>> +		.offset_udw =3D RING_TIMESTAMP_UDW(RENDER_RING_BASE),
>> +		.min_graphics_ver =3D 4,
>> +		.max_graphics_ver =3D 12,
>> +		.size =3D 8
>> +	}
>> +};
>> +
>> +int i915_reg_read_ioctl(struct drm_device *dev,
>> +			void *data, struct drm_file *unused)
>> +{
>> +	struct drm_i915_private *i915 =3D to_i915(dev);
>> +	struct intel_uncore *uncore =3D &i915->uncore;
>> +	struct drm_i915_reg_read *reg =3D data;
>> +	struct reg_whitelist const *entry;
>> +	intel_wakeref_t wakeref;
>> +	unsigned int flags;
>> +	int remain;
>> +	int ret =3D 0;
>> +
>> +	entry =3D reg_read_whitelist;
>> +	remain =3D ARRAY_SIZE(reg_read_whitelist);
>> +	while (remain) {
>> +		u32 entry_offset =3D i915_mmio_reg_offset(entry->offset_ldw);
>> +
>> +		GEM_BUG_ON(!is_power_of_2(entry->size));
>> +		GEM_BUG_ON(entry->size > 8);
>> +		GEM_BUG_ON(entry_offset & (entry->size - 1));
>> +
>> +		if (IS_GRAPHICS_VER(i915, entry->min_graphics_ver, entry->max_graphic=
s_ver) &&
>> +		    entry_offset =3D=3D (reg->offset & -entry->size))
>> +			break;
>> +		entry++;
>> +		remain--;
>> +	}
>> +
>> +	if (!remain)
>> +		return -EINVAL;
>> +
>> +	flags =3D reg->offset & (entry->size - 1);
>> +
>> +	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
>> +		if (entry->size =3D=3D 8 && flags =3D=3D I915_REG_READ_8B_WA)
>> +			reg->val =3D intel_uncore_read64_2x32(uncore,
>> +							    entry->offset_ldw,
>> +							    entry->offset_udw);
>> +		else if (entry->size =3D=3D 8 && flags =3D=3D 0)
>> +			reg->val =3D intel_uncore_read64(uncore,
>> +						       entry->offset_ldw);
>> +		else if (entry->size =3D=3D 4 && flags =3D=3D 0)
>> +			reg->val =3D intel_uncore_read(uncore, entry->offset_ldw);
>> +		else if (entry->size =3D=3D 2 && flags =3D=3D 0)
>> +			reg->val =3D intel_uncore_read16(uncore,
>> +						       entry->offset_ldw);
>> +		else if (entry->size =3D=3D 1 && flags =3D=3D 0)
>> +			reg->val =3D intel_uncore_read8(uncore,
>> +						      entry->offset_ldw);
>> +		else
>> +			ret =3D -EINVAL;
>> +	}
>> +
>> +	return ret;
>> +}
>> diff --git a/drivers/gpu/drm/i915/i915_ioctl.h b/drivers/gpu/drm/i915/i9=
15_ioctl.h
>> new file mode 100644
>> index 000000000000..f16ae87b8b8a
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/i915_ioctl.h
>> @@ -0,0 +1,14 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright =C2=A9 2022 Intel Corporation
>> + */
>> +
>> +#ifndef __I915_IOCTL_H__
>> +#define __I915_IOCTL_H__
>> +
>> +struct drm_device;
>> +struct drm_file;
>> +
>> +int i915_reg_read_ioctl(struct drm_device *dev, void *data, struct drm_=
file *file);
>> +
>> +#endif /* __I915_IOCTL_H__ */
>> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/=
intel_uncore.c
>> index 41d082213e81..00f9a05d2686 100644
>> --- a/drivers/gpu/drm/i915/intel_uncore.c
>> +++ b/drivers/gpu/drm/i915/intel_uncore.c
>> @@ -2255,76 +2255,6 @@ void intel_uncore_fini_mmio(struct intel_uncore *=
uncore)
>>   	}
>>   }
>>=20=20=20
>> -static const struct reg_whitelist {
>> -	i915_reg_t offset_ldw;
>> -	i915_reg_t offset_udw;
>> -	u8 min_graphics_ver;
>> -	u8 max_graphics_ver;
>> -	u8 size;
>> -} reg_read_whitelist[] =3D { {
>> -	.offset_ldw =3D RING_TIMESTAMP(RENDER_RING_BASE),
>> -	.offset_udw =3D RING_TIMESTAMP_UDW(RENDER_RING_BASE),
>> -	.min_graphics_ver =3D 4,
>> -	.max_graphics_ver =3D 12,
>> -	.size =3D 8
>> -} };
>> -
>> -int i915_reg_read_ioctl(struct drm_device *dev,
>> -			void *data, struct drm_file *file)
>> -{
>> -	struct drm_i915_private *i915 =3D to_i915(dev);
>> -	struct intel_uncore *uncore =3D &i915->uncore;
>> -	struct drm_i915_reg_read *reg =3D data;
>> -	struct reg_whitelist const *entry;
>> -	intel_wakeref_t wakeref;
>> -	unsigned int flags;
>> -	int remain;
>> -	int ret =3D 0;
>> -
>> -	entry =3D reg_read_whitelist;
>> -	remain =3D ARRAY_SIZE(reg_read_whitelist);
>> -	while (remain) {
>> -		u32 entry_offset =3D i915_mmio_reg_offset(entry->offset_ldw);
>> -
>> -		GEM_BUG_ON(!is_power_of_2(entry->size));
>> -		GEM_BUG_ON(entry->size > 8);
>> -		GEM_BUG_ON(entry_offset & (entry->size - 1));
>> -
>> -		if (IS_GRAPHICS_VER(i915, entry->min_graphics_ver, entry->max_graphic=
s_ver) &&
>> -		    entry_offset =3D=3D (reg->offset & -entry->size))
>> -			break;
>> -		entry++;
>> -		remain--;
>> -	}
>> -
>> -	if (!remain)
>> -		return -EINVAL;
>> -
>> -	flags =3D reg->offset & (entry->size - 1);
>> -
>> -	with_intel_runtime_pm(&i915->runtime_pm, wakeref) {
>> -		if (entry->size =3D=3D 8 && flags =3D=3D I915_REG_READ_8B_WA)
>> -			reg->val =3D intel_uncore_read64_2x32(uncore,
>> -							    entry->offset_ldw,
>> -							    entry->offset_udw);
>> -		else if (entry->size =3D=3D 8 && flags =3D=3D 0)
>> -			reg->val =3D intel_uncore_read64(uncore,
>> -						       entry->offset_ldw);
>> -		else if (entry->size =3D=3D 4 && flags =3D=3D 0)
>> -			reg->val =3D intel_uncore_read(uncore, entry->offset_ldw);
>> -		else if (entry->size =3D=3D 2 && flags =3D=3D 0)
>> -			reg->val =3D intel_uncore_read16(uncore,
>> -						       entry->offset_ldw);
>> -		else if (entry->size =3D=3D 1 && flags =3D=3D 0)
>> -			reg->val =3D intel_uncore_read8(uncore,
>> -						      entry->offset_ldw);
>> -		else
>> -			ret =3D -EINVAL;
>> -	}
>> -
>> -	return ret;
>> -}
>> -
>>   /**
>>    * __intel_wait_for_register_fw - wait until register matches expected=
 state
>>    * @uncore: the struct intel_uncore
>>=20

--=20
Jani Nikula, Intel Open Source Graphics Center
