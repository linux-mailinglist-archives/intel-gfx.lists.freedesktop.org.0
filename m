Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B861464EE58
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 17:00:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BFA510E5E7;
	Fri, 16 Dec 2022 16:00:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01AD410E5E7
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 15:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671206400; x=1702742400;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=5K8IluxG9AdSuzawwWgiPZ+97ZllBcCV6JS1w15KTC4=;
 b=U9YZ9AuAOiDzilNltLOeTC27XJjyBqQTyedEEHvSf72KP/ylVQ4ME6wm
 V8ckkPXFWfWzX06M0jU+naMTibTyOgN2zDvsjaw8+cDaU8RLyuIVtdTMh
 5MIwpCyBwh8y9quC3HNevhv9l88zi69iEgnW5wVokCBhRLekdjKw+yn53
 7+CL04OUSX/nfkYdLR6eQIp05dSlXuWJgQTNKIMM3PwKwLM+e+e8Ux9OQ
 pnbfqfHRHJc6E+Fp5y/lvFTq6R0C1kNIsNqjBuOltNciE1IN00D0soXEA
 RkM9YKjrr647XBqbfMjh8EtwhPa1sXy9jyPyp5I1AYyID4AX6NzY4uW5r w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="346075621"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="346075621"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 07:59:39 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="713299290"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="713299290"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.30.201])
 ([10.213.30.201])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 07:59:38 -0800
Message-ID: <0a8bc5f2-8f6e-3d77-f385-2af25d9464e4@intel.com>
Date: Fri, 16 Dec 2022 16:59:36 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, Nirmoy Das <nirmoy.das@intel.com>, 
 intel-gfx@lists.freedesktop.org
References: <20221216152744.18658-1-nirmoy.das@intel.com>
 <9e24bdca-c4e0-dfa7-cd90-d6dcc29f912e@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <9e24bdca-c4e0-dfa7-cd90-d6dcc29f912e@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use helper func to find out map
 type
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

On 16.12.2022 16:43, Matthew Auld wrote:
> On 16/12/2022 15:27, Nirmoy Das wrote:
>> Use i915_coherent_map_type() function to find out
>> map_type of the shmem obj.
>>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/shmem_utils.c | 7 +++++--
>>   1 file changed, 5 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c 
>> b/drivers/gpu/drm/i915/gt/shmem_utils.c
>> index 402f085f3a02..e1a69803624f 100644
>> --- a/drivers/gpu/drm/i915/gt/shmem_utils.c
>> +++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
>> @@ -8,6 +8,7 @@
>>   #include <linux/pagemap.h>
>>   #include <linux/shmem_fs.h>
>> +#include "i915_drv.h"
>>   #include "gem/i915_gem_object.h"
>>   #include "gem/i915_gem_lmem.h"
>>   #include "shmem_utils.h"
>> @@ -32,6 +33,8 @@ struct file *shmem_create_from_data(const char 
>> *name, void *data, size_t len)
>>   struct file *shmem_create_from_object(struct drm_i915_gem_object *obj)
>>   {
>> +    struct drm_i915_private *i915 = to_i915(obj->base.dev);
>> +    enum i915_map_type map_type;
>>       struct file *file;
>>       void *ptr;
>> @@ -41,8 +44,8 @@ struct file *shmem_create_from_object(struct 
>> drm_i915_gem_object *obj)
>>           return file;
>>       }
>> -    ptr = i915_gem_object_pin_map_unlocked(obj, 
>> i915_gem_object_is_lmem(obj) ?
>> -                        I915_MAP_WC : I915_MAP_WB);
>> +    map_type = i915_coherent_map_type(i915, obj, false);
> 
> This will now use wc on non-llc.

i915_coherent_map_type(i915, obj, true) should do the trick.

Regards
Andrzej

> 
>> +    ptr = i915_gem_object_pin_map_unlocked(obj, map_type);
>>       if (IS_ERR(ptr))
>>           return ERR_CAST(ptr);

