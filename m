Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC4B40DBAE
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 15:49:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93FFD6EDD8;
	Thu, 16 Sep 2021 13:49:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43D4D6EDD8
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 13:49:18 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="222620318"
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="222620318"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 06:49:17 -0700
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="509311346"
Received: from kumardhx-mobl1.gar.corp.intel.com (HELO [10.252.50.13])
 ([10.252.50.13])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 06:49:16 -0700
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Cc: intel-gfx@lists.freedesktop.org
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
 <20210830121006.2978297-18-maarten.lankhorst@linux.intel.com>
 <20210908040809.GS11424@nvishwa1-DESK>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <d1a2e29b-1482-9703-6a9d-3ea05876b048@linux.intel.com>
Date: Thu, 16 Sep 2021 15:49:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20210908040809.GS11424@nvishwa1-DESK>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 17/19] drm/i915: Add functions to set/get
 moving fence
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

Op 08-09-2021 om 06:08 schreef Niranjana Vishwanathapura:
> On Mon, Aug 30, 2021 at 02:10:04PM +0200, Maarten Lankhorst wrote:
>> We want to get rid of i915_vma tracking to simplify the code and
>> lifetimes. Add a way to set/put the moving fence, in preparation for
>> removing the tracking.
>>
>> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> ---
>> drivers/gpu/drm/i915/gem/i915_gem_object.c | 15 +++++++++++++++
>> drivers/gpu/drm/i915/gem/i915_gem_object.h |  6 ++++++
>> 2 files changed, 21 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object.c b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> index 6fb9afb65034..dc0d2da297a0 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object.c
>> @@ -32,6 +32,7 @@
>> #include "i915_gem_object.h"
>> #include "i915_memcpy.h"
>> #include "i915_trace.h"
>> +#include "i915_gem_ttm.h"
>>
>> static struct kmem_cache *slab_objects;
>>
>> @@ -674,6 +675,20 @@ static const struct drm_gem_object_funcs i915_gem_object_funcs = {
>>     .export = i915_gem_prime_export,
>> };
>>
>> +struct dma_fence *
>> +i915_gem_object_get_moving_fence(struct drm_i915_gem_object *obj)
>> +{
>> +    return dma_fence_get(i915_gem_to_ttm(obj)->moving);
>> +}
>> +
>> +void  i915_gem_object_set_moving_fence(struct drm_i915_gem_object *obj,
>> +                       struct dma_fence *fence)
>> +{
>> +    dma_fence_put(i915_gem_to_ttm(obj)->moving);
>> +
>> +    i915_gem_to_ttm(obj)->moving = dma_fence_get(fence);
>> +}
>
> When is i915_gem_object_set_moving_fence() called?
> I am not seeing it being called in this patch series. 

It's not called directly any more but it was in an earlier version; it could be removed but I kept it for now.

TTM will set ttm_bo->moving directly in the callbacks, could drop this function if you want.

