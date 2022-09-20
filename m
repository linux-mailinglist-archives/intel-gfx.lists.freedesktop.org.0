Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C9A55BEB7E
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 18:59:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40B9D10E723;
	Tue, 20 Sep 2022 16:59:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5EF710E723
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 16:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663693158; x=1695229158;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=t1/elbGUH85hDT4kH2nUabbp1EJ28Eot0E6s6lNjESU=;
 b=fwJmr4IPOZztaD+TGoIAJloFkipEMQWCTA7S0/iw6izzs2F0mXF6IGqK
 9rkcvm9G1PyN6jP9fXwENC0+fAoNph2KVMzhYrwOXQKUfjtbtVOfsOfjy
 s94Y5DdOVBc0/gpypOoDeBlJzCNtCS+3MpNpDOVp0QbcXms8vB3jtlheq
 mhWLpsEa05eiG/XMdQvNltXC10NObREuYb1BEAJiVybtfcQMPj2dQKPb5
 e1+cl8xScWSYh7VFEzc6Ub8zzIf63fEHrDOX7PLZH7XsIcJLwz94CpNyP
 8HLSGjAe1XfGkD2CENjKFbMVlwehmvujPV92enQJRrCVym0KEGusDfzpG Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="297349435"
X-IronPort-AV: E=Sophos;i="5.93,331,1654585200"; d="scan'208";a="297349435"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 09:59:17 -0700
X-IronPort-AV: E=Sophos;i="5.93,331,1654585200"; d="scan'208";a="687491428"
Received: from kfmccaff-mobl.amr.corp.intel.com (HELO [10.252.17.189])
 ([10.252.17.189])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 09:59:16 -0700
Message-ID: <e05a2c6d-74fa-476d-8590-677bc330d731@intel.com>
Date: Tue, 20 Sep 2022 17:59:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.1
Content-Language: en-GB
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220914163514.1837467-1-jani.nikula@intel.com>
 <d0545b60-65b5-a59f-0fe4-87d3a55ab811@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <d0545b60-65b5-a59f-0fe4-87d3a55ab811@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: move i915_coherent_map_type() to
 i915_gem_pages.c and un-inline
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

On 15/09/2022 08:49, Tvrtko Ursulin wrote:
> 
> On 14/09/2022 17:35, Jani Nikula wrote:
>> The inline function has no place in i915_drv.h. Move it away, un-inline,
>> and untangle some header dependencies while at it.
>>
>> Cc: Matthew Auld <matthew.auld@intel.com>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>
>> ---
>>
>> I don't know where this belongs, I just know it doesn't belong in
>> i915_drv.h.
> 
> Don't know either.. it straddles the line between objects and platforms 
> by definition. Maybe Matt will have an idea or opinion.

gem_pages.c seems like a good enough spot to me.

Acked-by: Matthew Auld <matthew.auld@intel.com>

> 
> Regards,
> 
> Tvrtko
> 
>> I first tried moving it as inline, but it's really annoying as an inline
>> because it needs to pull in i915_drv.h, i915_gem_lmem.h, and
>> i915_gem_object_types.h.
>> ---
>>   drivers/gpu/drm/i915/display/intel_dpt.c           |  1 +
>>   drivers/gpu/drm/i915/gem/i915_gem_object.h         |  4 ++++
>>   drivers/gpu/drm/i915/gem/i915_gem_pages.c          | 12 ++++++++++++
>>   drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c |  1 +
>>   drivers/gpu/drm/i915/gt/intel_gsc.c                |  1 +
>>   drivers/gpu/drm/i915/gt/intel_migrate.c            |  1 +
>>   drivers/gpu/drm/i915/gt/selftest_migrate.c         |  1 +
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c         |  1 +
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c  |  1 +
>>   drivers/gpu/drm/i915/i915_drv.h                    | 13 -------------
>>   drivers/gpu/drm/i915/selftests/i915_gem_gtt.c      |  1 +
>>   11 files changed, 24 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dpt.c 
>> b/drivers/gpu/drm/i915/display/intel_dpt.c
>> index ac587647e1f5..ad1a37b515fb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dpt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dpt.c
>> @@ -5,6 +5,7 @@
>>   #include "gem/i915_gem_domain.h"
>>   #include "gem/i915_gem_internal.h"
>> +#include "gem/i915_gem_lmem.h"
>>   #include "gt/gen8_ppgtt.h"
>>   #include "i915_drv.h"
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.h 
>> b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> index 7317d4102955..a3b7551a57fc 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.h
>> @@ -482,6 +482,10 @@ void *__must_check i915_gem_object_pin_map(struct 
>> drm_i915_gem_object *obj,
>>   void *__must_check i915_gem_object_pin_map_unlocked(struct 
>> drm_i915_gem_object *obj,
>>                               enum i915_map_type type);
>> +enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
>> +                      struct drm_i915_gem_object *obj,
>> +                      bool always_coherent);
>> +
>>   void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
>>                    unsigned long offset,
>>                    unsigned long size);
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c 
>> b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>> index 4df50b049cea..16f845663ff2 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>> @@ -466,6 +466,18 @@ void *i915_gem_object_pin_map_unlocked(struct 
>> drm_i915_gem_object *obj,
>>       return ret;
>>   }
>> +enum i915_map_type i915_coherent_map_type(struct drm_i915_private *i915,
>> +                      struct drm_i915_gem_object *obj,
>> +                      bool always_coherent)
>> +{
>> +    if (i915_gem_object_is_lmem(obj))
>> +        return I915_MAP_WC;
>> +    if (HAS_LLC(i915) || always_coherent)
>> +        return I915_MAP_WB;
>> +    else
>> +        return I915_MAP_WC;
>> +}
>> +
>>   void __i915_gem_object_flush_map(struct drm_i915_gem_object *obj,
>>                    unsigned long offset,
>>                    unsigned long size)
>> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c 
>> b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>> index b73c91aa5450..1cae24349a96 100644
>> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
>> @@ -8,6 +8,7 @@
>>   #include <linux/prime_numbers.h>
>>   #include "gem/i915_gem_internal.h"
>> +#include "gem/i915_gem_lmem.h"
>>   #include "gem/i915_gem_region.h"
>>   #include "gem/i915_gem_ttm.h"
>>   #include "gem/i915_gem_ttm_move.h"
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gsc.c 
>> b/drivers/gpu/drm/i915/gt/intel_gsc.c
>> index 7af6db3194dd..d56f75b605d8 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gsc.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gsc.c
>> @@ -7,6 +7,7 @@
>>   #include <linux/mei_aux.h>
>>   #include "i915_drv.h"
>>   #include "i915_reg.h"
>> +#include "gem/i915_gem_lmem.h"
>>   #include "gem/i915_gem_region.h"
>>   #include "gt/intel_gsc.h"
>>   #include "gt/intel_gt.h"
>> diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c 
>> b/drivers/gpu/drm/i915/gt/intel_migrate.c
>> index aaaf1906026c..b405a04135ca 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_migrate.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
>> @@ -10,6 +10,7 @@
>>   #include "intel_gtt.h"
>>   #include "intel_migrate.h"
>>   #include "intel_ring.h"
>> +#include "gem/i915_gem_lmem.h"
>>   struct insert_pte_data {
>>       u64 offset;
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_migrate.c 
>> b/drivers/gpu/drm/i915/gt/selftest_migrate.c
>> index 2b0c87999949..0dc5309c90a4 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_migrate.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_migrate.c
>> @@ -6,6 +6,7 @@
>>   #include <linux/sort.h>
>>   #include "gem/i915_gem_internal.h"
>> +#include "gem/i915_gem_lmem.h"
>>   #include "selftests/i915_random.h"
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
>> index 74cbe8eaf531..657f0beb8e06 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
>> @@ -5,6 +5,7 @@
>>   #include <linux/bsearch.h>
>> +#include "gem/i915_gem_lmem.h"
>>   #include "gt/intel_engine_regs.h"
>>   #include "gt/intel_gt.h"
>>   #include "gt/intel_gt_mcr.h"
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 22ba66e48a9b..ca6f47496869 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -6,6 +6,7 @@
>>   #include <linux/circ_buf.h>
>>   #include "gem/i915_gem_context.h"
>> +#include "gem/i915_gem_lmem.h"
>>   #include "gt/gen8_engine_cs.h"
>>   #include "gt/intel_breadcrumbs.h"
>>   #include "gt/intel_context.h"
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h 
>> b/drivers/gpu/drm/i915/i915_drv.h
>> index 9f9372931fd2..524b5ee495be 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -40,7 +40,6 @@
>>   #include "display/intel_display_core.h"
>>   #include "gem/i915_gem_context_types.h"
>> -#include "gem/i915_gem_lmem.h"
>>   #include "gem/i915_gem_shrinker.h"
>>   #include "gem/i915_gem_stolen.h"
>> @@ -985,16 +984,4 @@ mkwrite_device_info(struct drm_i915_private 
>> *dev_priv)
>>       return (struct intel_device_info *)INTEL_INFO(dev_priv);
>>   }
>> -static inline enum i915_map_type
>> -i915_coherent_map_type(struct drm_i915_private *i915,
>> -               struct drm_i915_gem_object *obj, bool always_coherent)
>> -{
>> -    if (i915_gem_object_is_lmem(obj))
>> -        return I915_MAP_WC;
>> -    if (HAS_LLC(i915) || always_coherent)
>> -        return I915_MAP_WB;
>> -    else
>> -        return I915_MAP_WC;
>> -}
>> -
>>   #endif
>> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c 
>> b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
>> index e050a2de5fd1..ea2cf1080979 100644
>> --- a/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
>> +++ b/drivers/gpu/drm/i915/selftests/i915_gem_gtt.c
>> @@ -27,6 +27,7 @@
>>   #include "gem/i915_gem_context.h"
>>   #include "gem/i915_gem_internal.h"
>> +#include "gem/i915_gem_lmem.h"
>>   #include "gem/i915_gem_region.h"
>>   #include "gem/selftests/mock_context.h"
>>   #include "gt/intel_context.h"
