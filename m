Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A15487827
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jan 2022 14:22:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8411B112FCD;
	Fri,  7 Jan 2022 13:22:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7D89112FC0
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Jan 2022 13:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641561729; x=1673097729;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=qe7ZeDZqXyFu8CXsxBsyZhYDC4+C9XGykKis1f7YaVE=;
 b=nFvzHELsvjFLrDVoXuLe+48M46cmy33qhgKUZ0t9BgaMUPT7BKlQth7V
 +CaebMLhE9mCybIkasTAGXTP80N+Mesjvqq26o17leIJ1IM9GtGU9KpbR
 N22sdYXVgrtUZsuChP8rdHn7KLV+jCfPNJkJ4WOQRwL3Q0D+0WQbnUAJm
 8O3OMQ/YnlVOprF+XHgS/v7oA7aKCX4/6S1SBXzD3lDXgmXJjRSvgDZCj
 7oCYWeVV/IxJmRgshR9Qjn5ChQ9x/Glfw+qKeThh1NELat4zNVARg9st1
 NhajFqvpWtHUCNKiMNLyPa5LOFLG2UZuJVoVitKret+akCBfqcnbK9021 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10219"; a="306231768"
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="306231768"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 05:22:09 -0800
X-IronPort-AV: E=Sophos;i="5.88,270,1635231600"; d="scan'208";a="689787862"
Received: from dgreerx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.24.206])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2022 05:22:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <f5f37cba-f1f8-18e8-6da3-7fafde0bbbd6@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1641411696.git.jani.nikula@intel.com>
 <cf1b5819d652577250d1d6dffcdb7788eba56e76.1641411696.git.jani.nikula@intel.com>
 <f5f37cba-f1f8-18e8-6da3-7fafde0bbbd6@linux.intel.com>
Date: Fri, 07 Jan 2022 15:22:01 +0200
Message-ID: <87mtk7llza.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 03/21] drm/i915: split out i915_gem_evict.h
 from i915_drv.h
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

On Thu, 06 Jan 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 05/01/2022 19:56, Jani Nikula wrote:
>> We already have the i915_gem_evicti915.c file.
>
> There's a stray paste here and a few new headers got the 2021 copyright,=
=20
> but other than that it all looks fine to me. For the series:

Thanks, fixed.

Some of them have the 2021 copyright, because that's when they've been
written.

> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Thanks.

I'm sending the first five separately for CI and merging, chopping it up
a bit.

I wonder if we can just merge this via drm-intel-next. It's not that far
away that we can merge to drm-next and backmerge again.

BR,
Jani.


>
> (I actually scrolled through it all so perhaps it can even be an r-b if=20
> you want.)
>
> Regards,
>
> Tvrtko
>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  1 +
>>   drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  1 +
>>   drivers/gpu/drm/i915/i915_drv.h               | 11 ---------
>>   drivers/gpu/drm/i915/i915_gem_evict.c         |  1 +
>>   drivers/gpu/drm/i915/i915_gem_evict.h         | 24 +++++++++++++++++++
>>   drivers/gpu/drm/i915/i915_gem_gtt.c           |  1 +
>>   drivers/gpu/drm/i915/i915_vma.c               |  1 +
>>   7 files changed, 29 insertions(+), 11 deletions(-)
>>   create mode 100644 drivers/gpu/drm/i915/i915_gem_evict.h
>>=20
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gp=
u/drm/i915/gem/i915_gem_execbuffer.c
>> index 62387218d9a6..377aada6269d 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
>> @@ -27,6 +27,7 @@
>>   #include "i915_drv.h"
>>   #include "i915_gem_clflush.h"
>>   #include "i915_gem_context.h"
>> +#include "i915_gem_evict.h"
>>   #include "i915_gem_ioctls.h"
>>   #include "i915_trace.h"
>>   #include "i915_user_extensions.h"
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/=
drm/i915/gt/selftest_hangcheck.c
>> index 15d63435ec4d..4a20ba63446c 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
>> @@ -7,6 +7,7 @@
>>=20=20=20
>>   #include "gem/i915_gem_context.h"
>>=20=20=20
>> +#include "i915_gem_evict.h"
>>   #include "intel_gt.h"
>>   #include "intel_engine_heartbeat.h"
>>   #include "intel_engine_pm.h"
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915=
_drv.h
>> index 5c3a78aa0a7b..ceecccfd9ccd 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -1718,17 +1718,6 @@ i915_gem_vm_lookup(struct drm_i915_file_private *=
file_priv, u32 id)
>>   	return vm;
>>   }
>>=20=20=20
>> -/* i915_gem_evict.c */
>> -int __must_check i915_gem_evict_something(struct i915_address_space *vm,
>> -					  u64 min_size, u64 alignment,
>> -					  unsigned long color,
>> -					  u64 start, u64 end,
>> -					  unsigned flags);
>> -int __must_check i915_gem_evict_for_node(struct i915_address_space *vm,
>> -					 struct drm_mm_node *node,
>> -					 unsigned int flags);
>> -int i915_gem_evict_vm(struct i915_address_space *vm);
>> -
>>   /* i915_gem_internal.c */
>>   struct drm_i915_gem_object *
>>   i915_gem_object_create_internal(struct drm_i915_private *dev_priv,
>> diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i91=
5/i915_gem_evict.c
>> index 2b73ddb11c66..24eee0c2055f 100644
>> --- a/drivers/gpu/drm/i915/i915_gem_evict.c
>> +++ b/drivers/gpu/drm/i915/i915_gem_evict.c
>> @@ -31,6 +31,7 @@
>>   #include "gt/intel_gt_requests.h"
>>=20=20=20
>>   #include "i915_drv.h"
>> +#include "i915_gem_evict.h"
>>   #include "i915_trace.h"
>>=20=20=20
>>   I915_SELFTEST_DECLARE(static struct igt_evict_ctl {
>> diff --git a/drivers/gpu/drm/i915/i915_gem_evict.h b/drivers/gpu/drm/i91=
5/i915_gem_evict.h
>> new file mode 100644
>> index 000000000000..d4478b6ad11b
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/i915_gem_evict.h
>> @@ -0,0 +1,24 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright =C2=A9 2021 Intel Corporation
>> + */
>> +
>> +#ifndef __I915_GEM_EVICT_H__
>> +#define __I915_GEM_EVICT_H__
>> +
>> +#include <linux/types.h>
>> +
>> +struct drm_mm_node;
>> +struct i915_address_space;
>> +
>> +int __must_check i915_gem_evict_something(struct i915_address_space *vm,
>> +					  u64 min_size, u64 alignment,
>> +					  unsigned long color,
>> +					  u64 start, u64 end,
>> +					  unsigned flags);
>> +int __must_check i915_gem_evict_for_node(struct i915_address_space *vm,
>> +					 struct drm_mm_node *node,
>> +					 unsigned int flags);
>> +int i915_gem_evict_vm(struct i915_address_space *vm);
>> +
>> +#endif /* __I915_GEM_EVICT_H__ */
>> diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/=
i915_gem_gtt.c
>> index cd5f2348a187..8a7f0d92b56f 100644
>> --- a/drivers/gpu/drm/i915/i915_gem_gtt.c
>> +++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
>> @@ -20,6 +20,7 @@
>>   #include "gt/intel_gt_requests.h"
>>=20=20=20
>>   #include "i915_drv.h"
>> +#include "i915_gem_evict.h"
>>   #include "i915_scatterlist.h"
>>   #include "i915_trace.h"
>>   #include "i915_vgpu.h"
>> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915=
_vma.c
>> index be208a8f1ed0..09d3424c9270 100644
>> --- a/drivers/gpu/drm/i915/i915_vma.c
>> +++ b/drivers/gpu/drm/i915/i915_vma.c
>> @@ -34,6 +34,7 @@
>>   #include "gt/intel_gt_requests.h"
>>=20=20=20
>>   #include "i915_drv.h"
>> +#include "i915_gem_evict.h"
>>   #include "i915_sw_fence_work.h"
>>   #include "i915_trace.h"
>>   #include "i915_vma.h"
>>=20

--=20
Jani Nikula, Intel Open Source Graphics Center
