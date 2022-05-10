Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD3C5210C8
	for <lists+intel-gfx@lfdr.de>; Tue, 10 May 2022 11:24:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 450EB10ED7A;
	Tue, 10 May 2022 09:24:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1884C10ED7A
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 May 2022 09:24:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652174672; x=1683710672;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=OeZGqW2ONji6AxsAkgPtRYhebK7jSW7yRiv0fXtM5+0=;
 b=R2KTGsAsy7n2G6ILKvgIadMnF12fCH3nx08dV2p5w9wNtlHtU4X4NILC
 KSd1voPy1o2EIlpAKVJmqCUdNPDTbslI/sdfS5CYkMT/puLswxB8jbdrr
 9Ka2KUoSXklPH8HH1xWv3b3ieNkViwxj5SW/1x/M2U+MHs7Ocg/WTeizW
 YkVkwxhB4Wpkv75gJG3iUL5F1L871OTytG8A0hvu45y/wLGl/PV0Zqkih
 ZfPioicdPmGG8lwbc5x60ocmy6VekamQJDzQscpkHZuwnBXrRkc9Wx24L
 JC7qZuGWBdDFFS23BQWQd+i0FSwTcn4xzCQz7wvqO3+vxfJUaBSN52+Zf A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10342"; a="256855904"
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="256855904"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 02:24:31 -0700
X-IronPort-AV: E=Sophos;i="5.91,214,1647327600"; d="scan'208";a="593407123"
Received: from akulikow-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.144.37])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 May 2022 02:24:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <b3dd1549-8c87-a275-b761-dcab80285f00@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220504183716.987793-1-jani.nikula@intel.com>
 <20220504183716.987793-2-jani.nikula@intel.com>
 <b3dd1549-8c87-a275-b761-dcab80285f00@linux.intel.com>
Date: Tue, 10 May 2022 12:24:27 +0300
Message-ID: <871qx1kaes.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: remove single-use
 GEM_DEBUG_EXEC()
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

On Thu, 05 May 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 04/05/2022 19:37, Jani Nikula wrote:
>> Reduce the magic of what's going on in GEM_DEBUG_EXEC() by expanding it
>> inline and being explicit about it. It's as single use case anyway, so
>> the macro feels overkill.
>> 
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_ring.c | 3 ++-
>>   drivers/gpu/drm/i915/i915_gem.h      | 2 --
>>   2 files changed, 2 insertions(+), 3 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ring.c b/drivers/gpu/drm/i915/gt/intel_ring.c
>> index 40ffcb94e379..15ec64d881c4 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ring.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ring.c
>> @@ -299,7 +299,8 @@ u32 *intel_ring_begin(struct i915_request *rq, unsigned int num_dwords)
>>   	GEM_BUG_ON(ring->emit > ring->size - bytes);
>>   	GEM_BUG_ON(ring->space < bytes);
>>   	cs = ring->vaddr + ring->emit;
>> -	GEM_DEBUG_EXEC(memset32(cs, POISON_INUSE, bytes / sizeof(*cs)));
>> +	if (IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
>> +		memset32(cs, POISON_INUSE, bytes / sizeof(*cs));
>>   	ring->emit += bytes;
>>   	ring->space -= bytes;
>>   
>> diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
>> index b7b257f54d2e..a2be323a4be5 100644
>> --- a/drivers/gpu/drm/i915/i915_gem.h
>> +++ b/drivers/gpu/drm/i915/i915_gem.h
>> @@ -54,7 +54,6 @@ struct drm_i915_private;
>>   	} while(0)
>>   #define GEM_WARN_ON(expr) WARN_ON(expr)
>>   
>> -#define GEM_DEBUG_EXEC(expr) expr
>>   #define GEM_DEBUG_WARN_ON(expr) GEM_WARN_ON(expr)
>>   
>>   #else
>> @@ -64,7 +63,6 @@ struct drm_i915_private;
>>   #define GEM_BUG_ON(expr) BUILD_BUG_ON_INVALID(expr)
>>   #define GEM_WARN_ON(expr) ({ unlikely(!!(expr)); })
>>   
>> -#define GEM_DEBUG_EXEC(expr) do { } while (0)
>>   #define GEM_DEBUG_WARN_ON(expr) ({ BUILD_BUG_ON_INVALID(expr); 0; })
>>   #endif
>>   
>
> Yeah one user after time passed suggests removing is the right course of 
> action.
>
> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Thanks, pushed the first two to din.

BR,
Jani.

>
> Regards,
>
> Tvrtko

-- 
Jani Nikula, Intel Open Source Graphics Center
