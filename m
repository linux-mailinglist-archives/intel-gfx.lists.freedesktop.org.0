Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4053D9FD6
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 10:50:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5F956ECF8;
	Thu, 29 Jul 2021 08:50:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED5A26ECF6;
 Thu, 29 Jul 2021 08:50:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10059"; a="193113263"
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="193113263"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 01:50:48 -0700
X-IronPort-AV: E=Sophos;i="5.84,278,1620716400"; d="scan'208";a="664284878"
Received: from badunne-mobl5.ger.corp.intel.com (HELO [10.252.9.201])
 ([10.252.9.201])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 01:50:47 -0700
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20210728103041.1669985-1-matthew.auld@intel.com>
 <20210728103041.1669985-4-matthew.auld@intel.com>
 <87eebi3ume.wl-ashutosh.dixit@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <ba2ce167-59eb-95d5-61be-d9b2828ff13b@intel.com>
Date: Thu, 29 Jul 2021 09:50:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <87eebi3ume.wl-ashutosh.dixit@intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH i-g-t v2 04/11] lib/i915/gem_mman: add fixed
 mode to gem_mmap__cpu
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
Cc: igt-dev@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 29/07/2021 00:07, Dixit, Ashutosh wrote:
> On Wed, 28 Jul 2021 03:30:34 -0700, Matthew Auld wrote:
>>
>> diff --git a/lib/i915/gem_mman.c b/lib/i915/gem_mman.c
>> index 337d28fb..6f5e6d72 100644
>> --- a/lib/i915/gem_mman.c
>> +++ b/lib/i915/gem_mman.c
>> @@ -434,7 +434,13 @@ void *gem_mmap__device_coherent(int fd, uint32_t handle, uint64_t offset,
>>    */
>>   void *__gem_mmap__cpu(int fd, uint32_t handle, uint64_t offset, uint64_t size, unsigned prot)
>>   {
>> -	return __gem_mmap(fd, handle, offset, size, prot, 0);
>> +	void *ptr;
>> +
>> +	ptr = __gem_mmap(fd, handle, offset, size, prot, 0);
>> +	if (!ptr)
>> +		ptr = __gem_mmap_offset__fixed(fd, handle, offset, size, prot);
>> +
>> +	return ptr;
> 
> What about __gem_mmap__wc? Also shouldn't we just fix the __gem_mmap_offset
> fallback in __gem_mmap and that will take care of both __gem_mmap__cpu and
> __gem_mmap__wc?

For gem_mmap__wc it felt like slightly too much lying, since on discrete 
smem-only buffers are always wb, and so the __wc here is not what the 
user gets with the new FIXED mode. gem_mmap__device_coherent() I think 
matches this new behaviour well, where we don't explicitly state what 
the mapping type is, but instead just guarantee that the returned 
mapping is device coherent. My rough thinking was to convert most users 
of __wc over to __device_coherent(), at least in the tests that we care 
about for discrete?

On the other hand if we are happy with the lie, I don't think anything 
will break, and pretty much all testscases using mmap I think should 
just magically work on discrete, and it does mean a less less work vs 
converting to __device_coherent?

> 
> (I think it will actually also fix __gem_mmap__device_coherent and
> __gem_mmap__cpu_coherent but maybe we can still have those patches in this
> series especially if they save a couple of system calls).
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
