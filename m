Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 238616160F7
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 11:36:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AA1610E461;
	Wed,  2 Nov 2022 10:36:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A66E410E461
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 10:36:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667385409; x=1698921409;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=gFN7znuDF1zu5Jq24VvUfJO4/kpT27ipPCo+0EpVSEA=;
 b=YrG9/obu8REBjlos/q+jHL5rHpG58ZcdPchvboYNnNXsAiFULiRXqtR6
 2jxmrD2UB8iTB+Z1+vUnFrn+jkiAPhdW3ATBIU0QqAlKKeyPq/FixAS1s
 LdKGNJKF4TQYO1GCUSCeeH9BVKYJr1RkSbnVgpoFMlfpt2ilekgJjgS0J
 WIFTJU92JCPk11rSJBcjVa0iOsf8qa+miM8YJq4p62ZTAV76A9iyx3+18
 M4GQkRI2NeLl8nGsr9b0qYVdFtmFj2t18/9IKMcnyZHghqlOz2dNli/iU
 VBB1MLFdT4DEdAyA53l7hxP7VAmTzvwPxjGmPTQptxI800CffuTfg2pNs A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="296813331"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="296813331"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:36:48 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="776844896"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="776844896"
Received: from kieranfl-mobl1.ger.corp.intel.com (HELO [10.252.30.160])
 ([10.252.30.160])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:36:47 -0700
Message-ID: <033cbf36-cfec-d5e4-ea2b-ee59595f3b89@intel.com>
Date: Wed, 2 Nov 2022 10:36:45 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.0
Content-Language: en-GB
To: "Das, Nirmoy" <nirmoy.das@linux.intel.com>,
 Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20221102051416.27327-1-niranjana.vishwanathapura@intel.com>
 <7b832c2b-5a01-3027-c610-f89ae2f48737@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <7b832c2b-5a01-3027-c610-f89ae2f48737@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 02/11/2022 07:39, Das, Nirmoy wrote:
> 
> On 11/2/2022 6:14 AM, Niranjana Vishwanathapura wrote:
>> Currently on DG1, which do not have LLC, we hit the below
>> warning while rebinding an userptr invalidated object.
>>
>> WARNING: CPU: 4 PID: 13008 at drivers/gpu/drm/i915/gem/i915_gem_pages.c:34 __i915_gem_object_set_pages+0x296/0x2d0 [i915]
>> ...
>> RIP: 0010:__i915_gem_object_set_pages+0x296/0x2d0 [i915]
>> ...
>> Call Trace:
>>   <TASK>
>>   i915_gem_userptr_get_pages+0x175/0x1a0 [i915]
>>   ____i915_gem_object_get_pages+0x32/0xb0 [i915]
>>   i915_gem_object_userptr_submit_init+0x286/0x470 [i915]
>>   eb_lookup_vmas+0x2ff/0xcf0 [i915]
>>   ? __intel_wakeref_get_first+0x55/0xb0 [i915]
>>   i915_gem_do_execbuffer+0x785/0x21d0 [i915]
>>   i915_gem_execbuffer2_ioctl+0xe7/0x3d0 [i915]
>>
>> We shouldn't be setting the obj->cache_dirty for DGFX,
>> fix it.
> 
> With Fixes: |d70af57944 |("drm/i915/shmem: ensure flush during swap-in 
> on non-LLC")
> 
> Acked-by: Nirmoy Das <nirmoy.das@intel.com>

Any idea why this escaped our testing in CI? Perhaps something to improve.

Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> 
>> Suggested-by: Matthew Auld<matthew.auld@intel.com>
>> Reported-by: Niranjana Vishwanathapura<niranjana.vishwanathapura@intel.com>
>> Signed-off-by: Niranjana Vishwanathapura<niranjana.vishwanathapura@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>> index 11125c32dd35..2f7804492cd5 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
>> @@ -369,14 +369,14 @@ __i915_gem_object_release_shmem(struct drm_i915_gem_object *obj,
>>   
>>   	__start_cpu_write(obj);
>>   	/*
>> -	 * On non-LLC platforms, force the flush-on-acquire if this is ever
>> +	 * On non-LLC igfx platforms, force the flush-on-acquire if this is ever
>>   	 * swapped-in. Our async flush path is not trust worthy enough yet(and
>>   	 * happens in the wrong order), and with some tricks it's conceivable
>>   	 * for userspace to change the cache-level to I915_CACHE_NONE after the
>>   	 * pages are swapped-in, and since execbuf binds the object before doing
>>   	 * the async flush, we have a race window.
>>   	 */
>> -	if (!HAS_LLC(i915))
>> +	if (!HAS_LLC(i915) && !IS_DGFX(i915))
>>   		obj->cache_dirty = true;
>>   }
>>   
