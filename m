Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E271616749
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 17:11:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A41D810E4F2;
	Wed,  2 Nov 2022 16:11:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8880C10E4F6
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 16:11:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667405481; x=1698941481;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=M7ApqcQELXz0v2XyCfeiAx+y9QlFpdRp3tRZR8EaI+I=;
 b=XGSmXHzLgEwg1nQztlSjGnDNQFgBxGI7EWMM7Nxf0HIA62Wz7QxoE5Jf
 CWpwBiRucN8HCPznBCUAbevBxB0vsX7edI3mn87A+IgNrxo28Gb1RuOZu
 a81caX04Bc4Svfb5DNmECBdonMx/yXiRfbQ0RV7F3v795rbOYANS99i8M
 LE3apkVI3g9j3qNoRnih5yz/8mZzNV0DQnuoLWHYz8t4eCaC+5OonSs1G
 QEt8xftQkcGNvCxXmFA6sYRvvzs8wItpP5B9GBP8goNnLSTF8qfD7IG7Q
 3zWUElQslaWvgkOoFm5zaZy3fqCjVTEOGsYlxtW8ol3hosxvPjNgjO0F3 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="371544991"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="371544991"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 09:11:20 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="879537523"
X-IronPort-AV: E=Sophos;i="5.95,234,1661842800"; d="scan'208";a="879537523"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.41.254])
 ([10.249.41.254])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 09:09:29 -0700
Message-ID: <160a4d6d-76e1-3dd0-16ba-5e3134409680@linux.intel.com>
Date: Wed, 2 Nov 2022 17:09:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>,
 Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221102051416.27327-1-niranjana.vishwanathapura@intel.com>
 <7b832c2b-5a01-3027-c610-f89ae2f48737@linux.intel.com>
 <033cbf36-cfec-d5e4-ea2b-ee59595f3b89@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <033cbf36-cfec-d5e4-ea2b-ee59595f3b89@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Do not set cache_dirty for DGFX
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


On 11/2/2022 11:36 AM, Matthew Auld wrote:
> On 02/11/2022 07:39, Das, Nirmoy wrote:
>>
>> On 11/2/2022 6:14 AM, Niranjana Vishwanathapura wrote:
>>> Currently on DG1, which do not have LLC, we hit the below
>>> warning while rebinding an userptr invalidated object.
>>>
>>> WARNING: CPU: 4 PID: 13008 at 
>>> drivers/gpu/drm/i915/gem/i915_gem_pages.c:34 
>>> __i915_gem_object_set_pages+0x296/0x2d0 [i915]
>>> ...
>>> RIP: 0010:__i915_gem_object_set_pages+0x296/0x2d0 [i915]
>>> ...
>>> Call Trace:
>>>   <TASK>
>>>   i915_gem_userptr_get_pages+0x175/0x1a0 [i915]
>>>   ____i915_gem_object_get_pages+0x32/0xb0 [i915]
>>>   i915_gem_object_userptr_submit_init+0x286/0x470 [i915]
>>>   eb_lookup_vmas+0x2ff/0xcf0 [i915]
>>>   ? __intel_wakeref_get_first+0x55/0xb0 [i915]
>>>   i915_gem_do_execbuffer+0x785/0x21d0 [i915]
>>>   i915_gem_execbuffer2_ioctl+0xe7/0x3d0 [i915]
>>>
>>> We shouldn't be setting the obj->cache_dirty for DGFX,
>>> fix it.
>>
>> With Fixes: |d70af57944 |("drm/i915/shmem: ensure flush during 
>> swap-in on non-LLC")
>>
>> Acked-by: Nirmoy Das <nirmoy.das@intel.com>
>
> Any idea why this escaped our testing in CI? Perhaps something to 
> improve.


I ran some userptr related igt tests none hit 
__i915_gem_object_release_shmem . So I think we are missing

coverage here or I/CI isn't running such test.

Niranjana, what test did you ran to hit this case WARN ?


Regards,

Nirmoy


>
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
>
>>
>>> Suggested-by: Matthew Auld<matthew.auld@intel.com>
>>> Reported-by: Niranjana 
>>> Vishwanathapura<niranjana.vishwanathapura@intel.com>
>>> Signed-off-by: Niranjana 
>>> Vishwanathapura<niranjana.vishwanathapura@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 4 ++--
>>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c 
>>> b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>>> index 11125c32dd35..2f7804492cd5 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>>> @@ -369,14 +369,14 @@ __i915_gem_object_release_shmem(struct 
>>> drm_i915_gem_object *obj,
>>>         __start_cpu_write(obj);
>>>       /*
>>> -     * On non-LLC platforms, force the flush-on-acquire if this is 
>>> ever
>>> +     * On non-LLC igfx platforms, force the flush-on-acquire if 
>>> this is ever
>>>        * swapped-in. Our async flush path is not trust worthy enough 
>>> yet(and
>>>        * happens in the wrong order), and with some tricks it's 
>>> conceivable
>>>        * for userspace to change the cache-level to I915_CACHE_NONE 
>>> after the
>>>        * pages are swapped-in, and since execbuf binds the object 
>>> before doing
>>>        * the async flush, we have a race window.
>>>        */
>>> -    if (!HAS_LLC(i915))
>>> +    if (!HAS_LLC(i915) && !IS_DGFX(i915))
>>>           obj->cache_dirty = true;
>>>   }
