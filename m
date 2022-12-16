Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DE064EF37
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 17:34:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C97D10E603;
	Fri, 16 Dec 2022 16:33:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D85D10E5F6
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 16:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671208429; x=1702744429;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=/h5GWTqfJqtBI5j0zE4Ktx161j/+kvNPijSBcd43YvY=;
 b=OejbPm4qyb3yCF3uWJ+qL6LTA8dxoFkyKb51ctJhW7UnEvoBQXxw6etj
 obp8jUaElUBA1bkI8mbegTERduodpwXDQyZCQp+u/JkAMAZU87wUfbnMT
 NezAqUGkh5QXoT7ZLRDmmAJ9xX0Nsx2Z2a37eEdefBlu6d5cIr8H5arNa
 pcqVu3RQF/XEj1Z2Q9HU8YvUc8bqAuZh+dRYwNoZr9wLU8/fR4jvwLrSQ
 FX7aivAeYN+sSnI4GX1hLXHap3Yjj3vy4PCeXtpE1bf9Zhq7fVgDyO7UL
 8FIvSUEtPlXP/bII2dObsNSpOT8kw7tQOPxqtwNZQu0qn9sGMb1LOUNqV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="302423077"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="302423077"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 08:33:48 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10563"; a="718417695"
X-IronPort-AV: E=Sophos;i="5.96,249,1665471600"; d="scan'208";a="718417695"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.61.253])
 ([10.252.61.253])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2022 08:33:47 -0800
Message-ID: <f5a6b933-c7ea-7b03-7906-dd1ee4454eef@linux.intel.com>
Date: Fri, 16 Dec 2022 17:33:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Nirmoy Das <nirmoy.das@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221216152744.18658-1-nirmoy.das@intel.com>
 <9e24bdca-c4e0-dfa7-cd90-d6dcc29f912e@intel.com>
 <0a8bc5f2-8f6e-3d77-f385-2af25d9464e4@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <0a8bc5f2-8f6e-3d77-f385-2af25d9464e4@intel.com>
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


On 12/16/2022 4:59 PM, Andrzej Hajda wrote:
> On 16.12.2022 16:43, Matthew Auld wrote:
>> On 16/12/2022 15:27, Nirmoy Das wrote:
>>> Use i915_coherent_map_type() function to find out
>>> map_type of the shmem obj.
>>>
>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gt/shmem_utils.c | 7 +++++--
>>>   1 file changed, 5 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/shmem_utils.c 
>>> b/drivers/gpu/drm/i915/gt/shmem_utils.c
>>> index 402f085f3a02..e1a69803624f 100644
>>> --- a/drivers/gpu/drm/i915/gt/shmem_utils.c
>>> +++ b/drivers/gpu/drm/i915/gt/shmem_utils.c
>>> @@ -8,6 +8,7 @@
>>>   #include <linux/pagemap.h>
>>>   #include <linux/shmem_fs.h>
>>> +#include "i915_drv.h"
>>>   #include "gem/i915_gem_object.h"
>>>   #include "gem/i915_gem_lmem.h"
>>>   #include "shmem_utils.h"
>>> @@ -32,6 +33,8 @@ struct file *shmem_create_from_data(const char 
>>> *name, void *data, size_t len)
>>>   struct file *shmem_create_from_object(struct drm_i915_gem_object 
>>> *obj)
>>>   {
>>> +    struct drm_i915_private *i915 = to_i915(obj->base.dev);
>>> +    enum i915_map_type map_type;
>>>       struct file *file;
>>>       void *ptr;
>>> @@ -41,8 +44,8 @@ struct file *shmem_create_from_object(struct 
>>> drm_i915_gem_object *obj)
>>>           return file;
>>>       }
>>> -    ptr = i915_gem_object_pin_map_unlocked(obj, 
>>> i915_gem_object_is_lmem(obj) ?
>>> -                        I915_MAP_WC : I915_MAP_WB);
>>> +    map_type = i915_coherent_map_type(i915, obj, false);
>>
>> This will now use wc on non-llc.
>
> i915_coherent_map_type(i915, obj, true) should do the trick.


Thanks Matt and  Andrzej for catching this. I will resend.


Nirmoy

>
> Regards
> Andrzej
>
>>
>>> +    ptr = i915_gem_object_pin_map_unlocked(obj, map_type);
>>>       if (IS_ERR(ptr))
>>>           return ERR_CAST(ptr);
>
