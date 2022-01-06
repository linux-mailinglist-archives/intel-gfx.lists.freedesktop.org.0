Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5567E4861B1
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jan 2022 09:55:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FAA4113AD9;
	Thu,  6 Jan 2022 08:55:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F17D5113AD9
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jan 2022 08:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641459322; x=1672995322;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=aynUPTD//qB2yeI1ccuJa+H7350+nLN5zzvDec5U/Fk=;
 b=H65zUB1QNGXP82AN572EfTQIzIjQh9eqi2Hb2WZSbqX4wBuZ1cQiPlVK
 WWP1OksE1VfkC/Q5TzKigdaatThXGe0vboYxFfMAZkCl3sDPBluIzraS1
 I/uP1UBDInOLv5+uYhLgQEURTB+ATYbHZokICWQ1rzTGvN/+cw+RM0fFZ
 f26I8bPnixZiKqcTQ++r16dgO8BL/SoLKEtKtHgmpxkKlgJNsaK4F5ttj
 NXdhW7wqO760f6Rn0kHqsbRPwy37KqF/CNkI4uLRiWmcicqh7oHQ0eCiZ
 8iXDPJHxVCRhLvV8KApH9lusr4QJUyM8bkABNaPpA0FrdJ3AKew0+ocQ4 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="328968757"
X-IronPort-AV: E=Sophos;i="5.88,266,1635231600"; d="scan'208";a="328968757"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 00:55:21 -0800
X-IronPort-AV: E=Sophos;i="5.88,266,1635231600"; d="scan'208";a="472817902"
Received: from leitchrx-mobl.ger.corp.intel.com (HELO [10.213.202.197])
 ([10.213.202.197])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2022 00:55:19 -0800
Message-ID: <f5f37cba-f1f8-18e8-6da3-7fafde0bbbd6@linux.intel.com>
Date: Thu, 6 Jan 2022 08:55:17 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1641411696.git.jani.nikula@intel.com>
 <cf1b5819d652577250d1d6dffcdb7788eba56e76.1641411696.git.jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <cf1b5819d652577250d1d6dffcdb7788eba56e76.1641411696.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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


On 05/01/2022 19:56, Jani Nikula wrote:
> We already have the i915_gem_evicti915.c file.

There's a stray paste here and a few new headers got the 2021 copyright, 
but other than that it all looks fine to me. For the series:

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

(I actually scrolled through it all so perhaps it can even be an r-b if 
you want.)

Regards,

Tvrtko

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  1 +
>   drivers/gpu/drm/i915/gt/selftest_hangcheck.c  |  1 +
>   drivers/gpu/drm/i915/i915_drv.h               | 11 ---------
>   drivers/gpu/drm/i915/i915_gem_evict.c         |  1 +
>   drivers/gpu/drm/i915/i915_gem_evict.h         | 24 +++++++++++++++++++
>   drivers/gpu/drm/i915/i915_gem_gtt.c           |  1 +
>   drivers/gpu/drm/i915/i915_vma.c               |  1 +
>   7 files changed, 29 insertions(+), 11 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/i915_gem_evict.h
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 62387218d9a6..377aada6269d 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -27,6 +27,7 @@
>   #include "i915_drv.h"
>   #include "i915_gem_clflush.h"
>   #include "i915_gem_context.h"
> +#include "i915_gem_evict.h"
>   #include "i915_gem_ioctls.h"
>   #include "i915_trace.h"
>   #include "i915_user_extensions.h"
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> index 15d63435ec4d..4a20ba63446c 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -7,6 +7,7 @@
>   
>   #include "gem/i915_gem_context.h"
>   
> +#include "i915_gem_evict.h"
>   #include "intel_gt.h"
>   #include "intel_engine_heartbeat.h"
>   #include "intel_engine_pm.h"
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 5c3a78aa0a7b..ceecccfd9ccd 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1718,17 +1718,6 @@ i915_gem_vm_lookup(struct drm_i915_file_private *file_priv, u32 id)
>   	return vm;
>   }
>   
> -/* i915_gem_evict.c */
> -int __must_check i915_gem_evict_something(struct i915_address_space *vm,
> -					  u64 min_size, u64 alignment,
> -					  unsigned long color,
> -					  u64 start, u64 end,
> -					  unsigned flags);
> -int __must_check i915_gem_evict_for_node(struct i915_address_space *vm,
> -					 struct drm_mm_node *node,
> -					 unsigned int flags);
> -int i915_gem_evict_vm(struct i915_address_space *vm);
> -
>   /* i915_gem_internal.c */
>   struct drm_i915_gem_object *
>   i915_gem_object_create_internal(struct drm_i915_private *dev_priv,
> diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
> index 2b73ddb11c66..24eee0c2055f 100644
> --- a/drivers/gpu/drm/i915/i915_gem_evict.c
> +++ b/drivers/gpu/drm/i915/i915_gem_evict.c
> @@ -31,6 +31,7 @@
>   #include "gt/intel_gt_requests.h"
>   
>   #include "i915_drv.h"
> +#include "i915_gem_evict.h"
>   #include "i915_trace.h"
>   
>   I915_SELFTEST_DECLARE(static struct igt_evict_ctl {
> diff --git a/drivers/gpu/drm/i915/i915_gem_evict.h b/drivers/gpu/drm/i915/i915_gem_evict.h
> new file mode 100644
> index 000000000000..d4478b6ad11b
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/i915_gem_evict.h
> @@ -0,0 +1,24 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2021 Intel Corporation
> + */
> +
> +#ifndef __I915_GEM_EVICT_H__
> +#define __I915_GEM_EVICT_H__
> +
> +#include <linux/types.h>
> +
> +struct drm_mm_node;
> +struct i915_address_space;
> +
> +int __must_check i915_gem_evict_something(struct i915_address_space *vm,
> +					  u64 min_size, u64 alignment,
> +					  unsigned long color,
> +					  u64 start, u64 end,
> +					  unsigned flags);
> +int __must_check i915_gem_evict_for_node(struct i915_address_space *vm,
> +					 struct drm_mm_node *node,
> +					 unsigned int flags);
> +int i915_gem_evict_vm(struct i915_address_space *vm);
> +
> +#endif /* __I915_GEM_EVICT_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.c b/drivers/gpu/drm/i915/i915_gem_gtt.c
> index cd5f2348a187..8a7f0d92b56f 100644
> --- a/drivers/gpu/drm/i915/i915_gem_gtt.c
> +++ b/drivers/gpu/drm/i915/i915_gem_gtt.c
> @@ -20,6 +20,7 @@
>   #include "gt/intel_gt_requests.h"
>   
>   #include "i915_drv.h"
> +#include "i915_gem_evict.h"
>   #include "i915_scatterlist.h"
>   #include "i915_trace.h"
>   #include "i915_vgpu.h"
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index be208a8f1ed0..09d3424c9270 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -34,6 +34,7 @@
>   #include "gt/intel_gt_requests.h"
>   
>   #include "i915_drv.h"
> +#include "i915_gem_evict.h"
>   #include "i915_sw_fence_work.h"
>   #include "i915_trace.h"
>   #include "i915_vma.h"
> 
