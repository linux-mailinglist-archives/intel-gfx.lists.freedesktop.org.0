Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 732B34D2E5F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 12:46:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84D2910E5A8;
	Wed,  9 Mar 2022 11:46:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1F9710E5A8
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 11:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646826370; x=1678362370;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=6IeOKjFK17kVHIbo3W8VwlcAgGRATk8Vl/VDjBSzfNI=;
 b=YxIo5yOJLcZttN+6TOs1eoWLxsTpCsCRcIljLOhoc8RHz+EfDXu/roBq
 A8/iKIR5dvMCGptc556s7yW1cg7SXFAEp4k64hcvj8RxXAXNY3HFg9GLF
 wcEQh34wIlT/y+hlWvl3XesY0mcKDWuF/faDSpTT4Xb0i6wSfl88fr8yg
 X87m4xMRVB9w0fxKhwzEIpFoRk2AoHyb4lQfjAMBt8z+Ugl8dqgex1AHy
 xPAmAh9fjXmxh6dnu7bI9l4vMzjx9MFqCsaYLopPLPUJ9JdXFa2HNlK0C
 cCHAIgrgz7ZmzXR7dMN8TcAyqDoFUd9/mew++ZaHCIAT0PwJkb+jBMOhM w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="234907525"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="234907525"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 03:46:10 -0800
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="554086049"
Received: from epetresx-mobl.ger.corp.intel.com (HELO [10.252.27.196])
 ([10.252.27.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 03:46:06 -0800
Message-ID: <9becc9d1-a44c-7c8a-1fac-5fe140298ffe@intel.com>
Date: Wed, 9 Mar 2022 11:45:50 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-GB
To: "Katragadda, MastanX" <mastanx.katragadda@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220303060428.1668844-1-mastanx.katragadda@intel.com>
 <1715f90c-6790-cbd7-9e8f-ac371d61b5dd@linux.intel.com>
 <0b84c114-35a1-3a0b-1ef5-80cdb79f1f92@intel.com>
 <BN9PR11MB52901044F528E28982D92C04970A9@BN9PR11MB5290.namprd11.prod.outlook.com>
 <BN9PR11MB52907A11A35628AD277F8D27970A9@BN9PR11MB5290.namprd11.prod.outlook.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <BN9PR11MB52907A11A35628AD277F8D27970A9@BN9PR11MB5290.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [v2] drm/i915/gem: missing boundary check in
 vm_access leads to OOB read/write
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
Cc: "Surendrakumar Upadhyay,
 TejaskumarX" <tejaskumarx.surendrakumar.upadhyay@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 09/03/2022 11:19, Katragadda, MastanX wrote:
> Hi,
> 
> can we have ack? or we need to do anything further to get r-o-b.

There was just the potential strangeness around len <= 0, and exactly 
how we are meant to handle that, but if you are confident that is 
already covered in a sane way, then feel free to add,
Reviewed-by: Matthew Auld <matthew.auld@intel.com>

> 
> Thanks,
> Mastan
> 
> -----Original Message-----
> From: Katragadda, MastanX
> Sent: 09 March 2022 07:16
> To: Auld, Matthew <matthew.auld@intel.com>; Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Surendrakumar Upadhyay, TejaskumarX <tejaskumarx.surendrakumar.upadhyay@intel.com>
> Subject: RE: [Intel-gfx] [v2] drm/i915/gem: missing boundary check in vm_access leads to OOB read/write
> 
> On 03/03/2022 09:00, Tvrtko Ursulin wrote:
>>
>> + Matt
>>
>> On 03/03/2022 06:04, Mastan Katragadda wrote:
>>> Intel ID: PSIRT-PTK0002429
>>>
>>> A missing bounds check in vm_access()can lead to an out-of-bounds
>>> read or write in the adjacent memory area.The len attribute is not
>>> validated before the memcpy at  [1]or [2] occurs.
>>
>> s/[1]or [2]/later in the function/ ?
>>
>>>
>>> [  183.637831] BUG: unable to handle page fault for address:
>>> ffffc90000c86000
>>> [  183.637934] #PF: supervisor read access in kernel mode [
>>> 183.637997] #PF: error_code(0x0000) - not-present page [  183.638059]
>>> PGD 100000067 P4D 100000067 PUD 100258067 PMD 106341067 PTE 0 [
>>> 183.638144] Oops: 0000 [#2] PREEMPT SMP NOPTI
>>> [  183.638201] CPU: 3 PID: 1790 Comm: poc Tainted: G      D
>>> 5.17.0-rc6-ci-drm-11296+ #1
>>> [  183.638298] Hardware name: Intel Corporation CoffeeLake Client
>>> Platform/CoffeeLake H DDR4 RVP, BIOS CNLSFWR1.R00.X208.B00.1905301319
>>> 05/30/2019
>>> [  183.638430] RIP: 0010:memcpy_erms+0x6/0x10 [  183.640213] RSP:
>>> 0018:ffffc90001763d48 EFLAGS: 00010246 [  183.641117] RAX:
>>> ffff888109c14000 RBX: ffff888111bece40 RCX:
>>> 0000000000000ffc
>>> [  183.642029] RDX: 0000000000001000 RSI: ffffc90000c86000 RDI:
>>> ffff888109c14004
>>> [  183.642946] RBP: 0000000000000ffc R08: 800000000000016b R09:
>>> 0000000000000000
>>> [  183.643848] R10: ffffc90000c85000 R11: 0000000000000048 R12:
>>> 0000000000001000
>>> [  183.644742] R13: ffff888111bed190 R14: ffff888109c14000 R15:
>>> 0000000000001000
>>> [  183.645653] FS:  00007fe5ef807540(0000) GS:ffff88845b380000(0000)
>>> knlGS:0000000000000000
>>> [  183.646570] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033 [
>>> 183.647481] CR2: ffffc90000c86000 CR3: 000000010ff02006 CR4:
>>> 00000000003706e0
>>> [  183.648384] DR0: 0000000000000000 DR1: 0000000000000000 DR2:
>>> 0000000000000000
>>> [  183.649271] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7:
>>> 0000000000000400
>>> [  183.650142] Call Trace:
>>> [  183.650988]  <TASK>
>>> [  183.651793]  vm_access+0x1f0/0x2a0 [i915] [  183.652726]
>>> __access_remote_vm+0x224/0x380 [  183.653561]
>>> mem_rw.isra.0+0xf9/0x190 [  183.654402]  vfs_read+0x9d/0x1b0 [
>>> 183.655238]  ksys_read+0x63/0xe0 [  183.656065]
>>> do_syscall_64+0x38/0xc0 [  183.656882]
>>> entry_SYSCALL_64_after_hwframe+0x44/0xae
>>> [  183.657663] RIP: 0033:0x7fe5ef725142 [  183.659351] RSP:
>>> 002b:00007ffe1e81c7e8 EFLAGS: 00000246 ORIG_RAX:
>>> 0000000000000000
>>> [  183.660227] RAX: ffffffffffffffda RBX: 0000557055dfb780 RCX:
>>> 00007fe5ef725142
>>> [  183.661104] RDX: 0000000000001000 RSI: 00007ffe1e81d880 RDI:
>>> 0000000000000005
>>> [  183.661972] RBP: 00007ffe1e81e890 R08: 0000000000000030 R09:
>>> 0000000000000046
>>> [  183.662832] R10: 0000557055dfc2e0 R11: 0000000000000246 R12:
>>> 0000557055dfb1c0
>>> [  183.663691] R13: 00007ffe1e81e980 R14: 0000000000000000 R15:
>>> 0000000000000000
>>> [  183.664566]  </TASK>
>>>
>>> Changes since v1:
>>>        - Updated if condition with range_overflows_t [Chris Wilson]
>>>
>>> Signed-off-by: Mastan Katragadda <mastanx.katragadda@intel.com>
>>> Suggested-by: Adam Zabrocki <adamza@microsoft.com>
>>> Reported-by: Jackson Cody <cody.jackson@intel.com>
>>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Bloomfield Jon <jon.bloomfield@intel.com>
>>> Cc: Dutt Sudeep <sudeep.dutt@intel.com>
>>
>> Fixes: 9f909e215fea ("drm/i915: Implement vm_ops->access for gdb
>> access into mmaps")
>> Cc: <stable@vger.kernel.org> # v5.8+
>>
>> Right?
>>
>> There was a selftest added with the referenced patch and it sounds
>> like it would be a good idea to extend it to cover this scenario.  As
>> a separate patch though so this one is easy to backport.
> 
> Agreed, a simple regression test(either selftest or igt) for this would be nice, if possible.
> 
>>
>> Regards,
>>
>> Tvrtko
>>
>>> ---
>>>    drivers/gpu/drm/i915/gem/i915_gem_mman.c | 2 +-
>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>>> b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>>> index efe69d6b86f4..c3ea243d414d 100644
>>> --- a/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_mman.c
>>> @@ -455,7 +455,7 @@ vm_access(struct vm_area_struct *area, unsigned
>>> long addr,
>>>            return -EACCES;
>>>        addr -= area->vm_start;
>>> -    if (addr >= obj->base.size)
>>> +    if (range_overflows_t(u64, addr, len, obj->base.size))
>>>            return -EINVAL;
> 
> Other users like ttm_bo_vm_access are also checking if len <= 0, should we also add an explicit check for that here? Otherwise LGTM.
> 
> I think no need to add here len<=0,  we already validating same  range_overflows_t . converted following condition to range_overflow_t.
> 
> if (len < 1 || len > obj->base.size ||
>              addr >= obj->base.size ||
>              addr + len > obj->base.size)
> 
>>>        i915_gem_ww_ctx_init(&ww, true);
