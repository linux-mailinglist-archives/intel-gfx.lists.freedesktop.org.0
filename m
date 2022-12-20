Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 763F6651EDC
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 11:33:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C4C410E379;
	Tue, 20 Dec 2022 10:33:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 811D410E379
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 10:33:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671532392; x=1703068392;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=GFY27XT1HHoS1UEnIpPW40aLrrqV9w3cWR12DwwAy4Y=;
 b=Foo3IGt4ofvA/k+KMZpLQtn4Myj/Jx5UYNYifFppBdLeVbEinB0VjewR
 ax2VpP0vgI5urbd3zjzk2b+8jmlb07anDANr8MssYvKMmERS1+EqzYCOs
 KDZZ9pQ+5tEwsj6nVhYZbDwcrT9ywetiSZwPQKE8M1qa/g1G5TOuXMLxh
 a/Laf9ZBkN5ZlVyA7e4ZvVENb5N5C5ffqlt567qAAxTasnUxGk45lvrtg
 cN6+OebmPRdWiorM9h6/s3ICvz/76ta7pSW44UlV5xLkSFwmbF2k4yGbe
 oCx6iKgj0fEtvFtAAbraK/6Tog8zPx36sbc1AGy4zpY8eXB71MkSXalgT w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="320761210"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="320761210"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 02:33:11 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="775244557"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="775244557"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.41.33])
 ([10.249.41.33])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 02:33:10 -0800
Message-ID: <c88f147a-c4bd-c988-d3ec-8a53c6bf7acd@linux.intel.com>
Date: Tue, 20 Dec 2022 12:33:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das
 <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20221219112933.21417-1-nirmoy.das@intel.com>
 <660fc517-82ad-1ecf-17c8-6f9017caaddd@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <660fc517-82ad-1ecf-17c8-6f9017caaddd@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Use helper func to find out
 map type
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
Cc: matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/19/2022 8:04 PM, Andrzej Hajda wrote:
> On 19.12.2022 12:29, Nirmoy Das wrote:
>> Use i915_coherent_map_type() function to find out
>> map_type of the shmem obj.
>>
>> v2: handle non-llc platform(Matt)
>>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/shmem_utils.c | 7 +++++--
>>   1 file changed, 5 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c 
>> b/drivers/gpu/drm/i915/gt/shmem_utils.c
>> index 402f085f3a02..449c9ed44382 100644
>> --- a/drivers/gpu/drm/i915/gt/shmem_utils.c
>> +++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
>> @@ -8,6 +8,7 @@
>>   #include <linux/pagemap.h>
>>   #include <linux/shmem_fs.h>
>>   +#include "i915_drv.h"
>>   #include "gem/i915_gem_object.h"
>>   #include "gem/i915_gem_lmem.h"
>>   #include "shmem_utils.h"
>> @@ -32,6 +33,8 @@ struct file *shmem_create_from_data(const char 
>> *name, void *data, size_t len)
>>     struct file *shmem_create_from_object(struct drm_i915_gem_object 
>> *obj)
>>   {
>> +    struct drm_i915_private *i915 = to_i915(obj->base.dev);
>> +    enum i915_map_type map_type;
>>       struct file *file;
>>       void *ptr;
>>   @@ -41,8 +44,8 @@ struct file *shmem_create_from_object(struct 
>> drm_i915_gem_object *obj)
>>           return file;
>>       }
>>   -    ptr = i915_gem_object_pin_map_unlocked(obj, 
>> i915_gem_object_is_lmem(obj) ?
>> -                        I915_MAP_WC : I915_MAP_WB);
>> +    map_type = i915_coherent_map_type(i915, obj, true);
>> +    ptr = i915_gem_object_pin_map_unlocked(obj, map_type);
>
>
> More lines, but less branches, some gain :)
>

Yes and I am more behind the idea of unifying finding map_type with this 
helper.


> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>


Thanks!

Nirmoy

>
> Regards
> Andrzej
>
>>       if (IS_ERR(ptr))
>>           return ERR_CAST(ptr);
>
