Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A28C42669E
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Oct 2021 11:22:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D78446E0BE;
	Fri,  8 Oct 2021 09:22:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEA1D6E0BE
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Oct 2021 09:22:16 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10130"; a="249830552"
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="249830552"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 02:22:15 -0700
X-IronPort-AV: E=Sophos;i="5.85,357,1624345200"; d="scan'208";a="489390062"
Received: from tocallag-mobl2.ger.corp.intel.com (HELO [10.213.250.80])
 ([10.213.250.80])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2021 02:22:14 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20211006091614.970596-1-matthew.auld@intel.com>
 <163353397200.5959.9158572900274841139@emeril.freedesktop.org>
 <d50b2987-6343-fc87-e197-1cc8ac2c4f93@linux.intel.com>
 <cb93ee61-9ac1-587e-0182-6c6ba6671d79@gmail.com>
 <ae2222c4-7167-9047-2430-1d59b9b1fa32@linux.intel.com>
 <c022d4eb-b831-a4ae-6127-01bc526fc9c1@gmail.com>
 <d7c12c69-46a2-9305-0a0d-1848253808ed@linux.intel.com>
 <37de5d6f8af149d2be998a3991c8ef4d@intel.com>
 <64167c40-1d54-735e-89cf-4df9d95d5a97@linux.intel.com>
 <9bcbf976-532c-29fc-6292-281de8cea1ba@gmail.com>
 <8a6f1685-3f77-e71f-d760-283a88eff6d4@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7c2dc94d-f8b2-2727-19e1-b84618c3444b@linux.intel.com>
Date: Fri, 8 Oct 2021 10:22:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <8a6f1685-3f77-e71f-d760-283a88eff6d4@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv7=2C1/8=5D_drm/i915/gem=3A_Break_out_some?=
 =?utf-8?q?_shmem_backend_utils?=
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


On 08/10/2021 10:17, Tvrtko Ursulin wrote:
> 
> On 07/10/2021 19:18, Christian König wrote:
>> Am 07.10.21 um 17:53 schrieb Tvrtko Ursulin:
>>>
>>> On 07/10/2021 16:18, Vudum, Lakshminarayana wrote:
>>>> -----Original Message-----
>>>> From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>>>> Sent: Thursday, October 7, 2021 6:41 AM
>>>> To: Christian König <ckoenig.leichtzumerken@gmail.com>; 
>>>> intel-gfx@lists.freedesktop.org
>>>> Cc: Vudum, Lakshminarayana <lakshminarayana.vudum@intel.com>
>>>> Subject: Re: [Intel-gfx] ✗ Fi.CI.IGT: failure for series starting 
>>>> with [v7,1/8] drm/i915/gem: Break out some shmem backend utils
>>>>
>>>>
>>>> On 07/10/2021 13:57, Christian König wrote:
>>>>> Am 07.10.21 um 12:51 schrieb Tvrtko Ursulin:
>>>>>>
>>>>>> On 07/10/2021 10:19, Christian König wrote:
>>>>>>> Am 07.10.21 um 11:15 schrieb Tvrtko Ursulin:
>>>>>>>> Hi,
>>>>>>>>
>>>>>>>> On 06/10/2021 16:26, Patchwork wrote:
>>>>>>>>> *Patch Details*
>>>>>>>>> *Series:*    series starting with [v7,1/8] drm/i915/gem: Break out
>>>>>>>>> some shmem backend utils
>>>>>>>>> *URL:* https://patchwork.freedesktop.org/series/95501/
>>>>>>>>> <https://patchwork.freedesktop.org/series/95501/>
>>>>>>>>> *State:*    failure
>>>>>>>>> *Details:*
>>>>>>>>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/index.htm
>>>>>>>>> l
>>>>>>>>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/index.ht
>>>>>>>>> ml>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>    CI Bug Log - changes from CI_DRM_10688_full ->
>>>>>>>>> Patchwork_21264_full
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>      Summary
>>>>>>>>>
>>>>>>>>> *FAILURE*
>>>>>>>>>
>>>>>>>>> Serious unknown changes coming with Patchwork_21264_full
>>>>>>>>> absolutely need to be verified manually.
>>>>>>>>>
>>>>>>>>> If you think the reported changes have nothing to do with the
>>>>>>>>> changes introduced in Patchwork_21264_full, please notify your bug
>>>>>>>>> team to allow them to document this new failure mode, which will
>>>>>>>>> reduce false positives in CI.
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>      Possible new issues
>>>>>>>>>
>>>>>>>>> Here are the unknown changes that may have been introduced in
>>>>>>>>> Patchwork_21264_full:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>        IGT changes
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>          Possible regressions
>>>>>>>>>
>>>>>>>>>    *
>>>>>>>>>
>>>>>>>>>      igt@gem_sync@basic-many-each:
>>>>>>>>>
>>>>>>>>>        o shard-apl: NOTRUN -> INCOMPLETE
>>>>>>>>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21264/shard-ap
>>>>>>>>> l7/igt@gem_sync@basic-many-each.html>
>>>>>>>>>
>>>>>>>> Something still fishy in the unlocked iterator? Or
>>>>>>>> dma_resv_get_fences using it?
>>>>>>>
>>>>>>> Probably the later. I'm going to take a look.
>>>>>>>
>>>>>>> Thanks for the notice,
>>>>>>> Christian.
>>>>>>>
>>>>>>>>
>>>>>>>> <6> [187.551235] [IGT] gem_sync: starting subtest basic-many-each
>>>>>>>> <1> [188.935462] BUG: kernel NULL pointer dereference, address:
>>>>>>>> 0000000000000010
>>>>>>>> <1> [188.935485] #PF: supervisor write access in kernel mode <1>
>>>>>>>> [188.935495] #PF: error_code(0x0002) - not-present page <6>
>>>>>>>> [188.935504] PGD 0 P4D 0 <4> [188.935512] Oops: 0002 [#1] PREEMPT
>>>>>>>> SMP NOPTI <4> [188.935521] CPU: 2 PID: 1467 Comm: gem_sync Not
>>>>>>>> tainted 5.15.0-rc4-CI-Patchwork_21264+ #1 <4> [188.935535] Hardware
>>>>>>>> name:  /NUC6CAYB, BIOS
>>>>>>>> AYAPLCEL.86A.0049.2018.0508.1356 05/08/2018 <4> [188.935546] RIP:
>>>>>>>> 0010:dma_resv_get_fences+0x116/0x2d0
>>>>>>>> <4> [188.935560] Code: 10 85 c0 7f c9 be 03 00 00 00 e8 15 8b df ff
>>>>>>>> eb bd e8 8e c6 ff ff eb b6 41 8b 04 24 49 8b 55 00 48 89 e7 8d 48
>>>>>>>> 01
>>>>>>>> 41 89 0c 24 <4c> 89 34 c2 e8 41 f2 ff ff 49 89 c6 48 85 c0 75 8c 48
>>>>>>>> 8b 44 24 10 <4> [188.935583] RSP: 0018:ffffc900011dbcc8 EFLAGS:
>>>>>>>> 00010202 <4> [188.935593] RAX: 0000000000000000 RBX:
>>>>>>>> 00000000ffffffff RCX:
>>>>>>>> 0000000000000001
>>>>>>>> <4> [188.935603] RDX: 0000000000000010 RSI: ffffffff822e343c RDI:
>>>>>>>> ffffc900011dbcc8
>>>>>>>> <4> [188.935613] RBP: ffffc900011dbd48 R08: ffff88812d255bb8 R09:
>>>>>>>> 00000000fffffffe
>>>>>>>> <4> [188.935623] R10: 0000000000000001 R11: 0000000000000000 R12:
>>>>>>>> ffffc900011dbd44
>>>>>>>> <4> [188.935633] R13: ffffc900011dbd50 R14: ffff888113d29cc0 R15:
>>>>>>>> 0000000000000000
>>>>>>>> <4> [188.935643] FS:  00007f68d17e9700(0000)
>>>>>>>> GS:ffff888277900000(0000) knlGS:0000000000000000 <4> [188.935655]
>>>>>>>> CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033 <4> [188.935665]
>>>>>>>> CR2: 0000000000000010 CR3: 000000012d0a4000 CR4:
>>>>>>>> 00000000003506e0
>>>>>>>> <4> [188.935676] Call Trace:
>>>>>>>> <4> [188.935685]  i915_gem_object_wait+0x1ff/0x410 [i915] <4>
>>>>>>>> [188.935988]  i915_gem_wait_ioctl+0xf2/0x2a0 [i915] <4>
>>>>>>>> [188.936272]  ? i915_gem_object_wait+0x410/0x410 [i915] <4>
>>>>>>>> [188.936533]  drm_ioctl_kernel+0xae/0x140 <4> [188.936546]
>>>>>>>> drm_ioctl+0x201/0x3d0 <4> [188.936555]  ?
>>>>>>>> i915_gem_object_wait+0x410/0x410 [i915] <4> [188.936820]  ?
>>>>>>>> __fget_files+0xc2/0x1c0 <4> [188.936830]  ? __fget_files+0xda/0x1c0
>>>>>>>> <4> [188.936839]  __x64_sys_ioctl+0x6d/0xa0 <4> [188.936848]
>>>>>>>> do_syscall_64+0x3a/0xb0 <4> [188.936859]
>>>>>>>> entry_SYSCALL_64_after_hwframe+0x44/0xae
>>>>>>
>>>>>> FWIW if you disassemble the code it seems to be crashing in:
>>>>>>
>>>>>>    (*shared)[(*shared_count)++] = fence; // mov %r14, (%rdx, %rax, 8)
>>>>>>
>>>>>> RDX is *shared, RAX is *shared_count, RCX is *shared_count++ (for the
>>>>>> next iteration. R13 is share and R12 shared_count.
>>>>>>
>>>>>> That *shared can contain 0000000000000010 makes no sense to me. At
>>>>>> least yet. :)
>>>>>
>>>>> Yeah, me neither. I've gone over the whole code multiple time now and
>>>>> absolutely don't get what's happening here.
>>>>>
>>>>> Adding some more selftests didn't helped either. As far as I can see
>>>>> the code works as intended.
>>>>>
>>>>> Do we have any other reports of crashes?
>>>>
>>>> Yes, sporadic but present across different platforms since the 
>>>> change went it:
>>>> https://intel-gfx-ci.01.org/tree/drm-tip/igt@gem_sync@basic-many-each.html. 
>>>>
>>>> So issue is probably real.
>>>>
>>>> Did not find any other tests failing with the same signature. 
>>>> Lakshmi are you perhaps able to search for the same or similar 
>>>> signature across the whole set of recent results?
>>>>
>>>> [Lakshmi] Both the regressions failures are new. I filed below 
>>>> issues and reported.
>>>
>>>
>>> Thanks Lakshmi!
>>>
>>> Christian, maybe revert for now since it looks tricky to figure out? 
>>> I at least couldn't spent much time looking at it today. Or try to 
>>> find a third set of eyes to look at it quickly in case we are not 
>>> seeing something.
>>>
>>> Looks like a good selftest will be needed here for robustness. 
>>> Including threads to trigger restarts and external manipulation to 
>>> hit the refcount zero.
>>
>> Yeah, agree. Already working on that.
>>
>> Going to send out the revert for dma_resv_get_fences() tomorrow.
> 
> Looks like the issue is actually in the unlocked iterator.
> 
> What happens in practice when it crashes is that the fence count in the 
> shared fences object is zero, which means no space gets allocated in 
> dma_resv_get_fences. But clearly shared_count was not zero in 
> dma_resv_iter_walk_unlocked, otherwise the loop in dma_resv_get_fences 
> wouldn't run.
> 
> I suspect it is not safe to drop the RCU lock having peeking at the 
> dma_resv_shared_list.

It may work to cache cursor.fences->shared_count into 
cursor.shared_count at restart time, so dma_resv_get_fences could use it 
to guarantee consistent view and allocated space correctly. Then 
dma_resv_iter_next_unlocked would notice restart and cause unwind.

Regards,

Tvrtko
