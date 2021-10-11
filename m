Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8F2428D0D
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Oct 2021 14:32:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B0496E3F7;
	Mon, 11 Oct 2021 12:32:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDED66E3F7;
 Mon, 11 Oct 2021 12:32:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10133"; a="213808656"
X-IronPort-AV: E=Sophos;i="5.85,364,1624345200"; d="scan'208";a="213808656"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 05:32:11 -0700
X-IronPort-AV: E=Sophos;i="5.85,364,1624345200"; d="scan'208";a="485882647"
Received: from aquine-mobl.ger.corp.intel.com (HELO [10.213.251.140])
 ([10.213.251.140])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2021 05:32:08 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Tvrtko Ursulin
 <tvrtko.ursulin@intel.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Sumit Semwal <sumit.semwal@linaro.org>, linux-media@vger.kernel.org,
 linaro-mm-sig@lists.linaro.org
References: <20211008095007.972693-1-tvrtko.ursulin@linux.intel.com>
 <9eca89ab-f954-8b2a-7af5-b4a63b90eed0@amd.com>
 <67f413c4-b654-c7ea-bc4f-6b42418c7486@linux.intel.com>
 <85489b72-6001-98d8-d66a-395e05cd3d01@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8f93439a-739d-835d-95e9-59ffb7380a27@linux.intel.com>
Date: Mon, 11 Oct 2021 13:32:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <85489b72-6001-98d8-d66a-395e05cd3d01@amd.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] dma-resv: Fix dma_resv_get_fences and
 dma_resv_copy_fences after conversion
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


On 08/10/2021 13:19, Christian König wrote:
> Am 08.10.21 um 12:49 schrieb Tvrtko Ursulin:
>>
>> On 08/10/2021 11:21, Christian König wrote:
>>> Am 08.10.21 um 11:50 schrieb Tvrtko Ursulin:
>>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>
>>>> Cache the count of shared fences in the iterator to avoid dereferencing
>>>> the dma_resv_object outside the RCU protection. Otherwise iterator 
>>>> and its
>>>> users can observe an incosistent state which makes it impossible to use
>>>> safely.
>>>
>>> Ah, of course! I've been staring at the code the whole morning and 
>>> couldn't see it.
>>>
>>> Going to write a testcase to cover that.
>>>
>>>> Such as:
>>>>
>>>> <6> [187.517041] [IGT] gem_sync: executing
>>>> <7> [187.536343] i915 0000:00:02.0: 
>>>> [drm:i915_gem_context_create_ioctl [i915]] HW context 1 created
>>>> <7> [187.536793] i915 0000:00:02.0: 
>>>> [drm:i915_gem_context_create_ioctl [i915]] HW context 1 created
>>>> <6> [187.551235] [IGT] gem_sync: starting subtest basic-many-each
>>>> <1> [188.935462] BUG: kernel NULL pointer dereference, address: 
>>>> 0000000000000010
>>>> <1> [188.935485] #PF: supervisor write access in kernel mode
>>>> <1> [188.935495] #PF: error_code(0x0002) - not-present page
>>>> <6> [188.935504] PGD 0 P4D 0
>>>> <4> [188.935512] Oops: 0002 [#1] PREEMPT SMP NOPTI
>>>> <4> [188.935521] CPU: 2 PID: 1467 Comm: gem_sync Not tainted 
>>>> 5.15.0-rc4-CI-Patchwork_21264+ #1
>>>> <4> [188.935535] Hardware name:  /NUC6CAYB, BIOS 
>>>> AYAPLCEL.86A.0049.2018.0508.1356 05/08/2018
>>>> <4> [188.935546] RIP: 0010:dma_resv_get_fences+0x116/0x2d0
>>>> <4> [188.935560] Code: 10 85 c0 7f c9 be 03 00 00 00 e8 15 8b df ff 
>>>> eb bd e8 8e c6 ff ff eb b6 41 8b 04 24 49 8b 55 00 48 89 e7 8d 48 01 
>>>> 41 89 0c 24 <4c> 89 34 c2 e8 41 f2 ff ff 49 89 c6 48 85 c0 75 8c 48 
>>>> 8b 44 24 10
>>>> <4> [188.935583] RSP: 0018:ffffc900011dbcc8 EFLAGS: 00010202
>>>> <4> [188.935593] RAX: 0000000000000000 RBX: 00000000ffffffff RCX: 
>>>> 0000000000000001
>>>> <4> [188.935603] RDX: 0000000000000010 RSI: ffffffff822e343c RDI: 
>>>> ffffc900011dbcc8
>>>> <4> [188.935613] RBP: ffffc900011dbd48 R08: ffff88812d255bb8 R09: 
>>>> 00000000fffffffe
>>>> <4> [188.935623] R10: 0000000000000001 R11: 0000000000000000 R12: 
>>>> ffffc900011dbd44
>>>> <4> [188.935633] R13: ffffc900011dbd50 R14: ffff888113d29cc0 R15: 
>>>> 0000000000000000
>>>> <4> [188.935643] FS:  00007f68d17e9700(0000) 
>>>> GS:ffff888277900000(0000) knlGS:0000000000000000
>>>> <4> [188.935655] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>>>> <4> [188.935665] CR2: 0000000000000010 CR3: 000000012d0a4000 CR4: 
>>>> 00000000003506e0
>>>> <4> [188.935676] Call Trace:
>>>> <4> [188.935685]  i915_gem_object_wait+0x1ff/0x410 [i915]
>>>> <4> [188.935988]  i915_gem_wait_ioctl+0xf2/0x2a0 [i915]
>>>> <4> [188.936272]  ? i915_gem_object_wait+0x410/0x410 [i915]
>>>> <4> [188.936533]  drm_ioctl_kernel+0xae/0x140
>>>> <4> [188.936546]  drm_ioctl+0x201/0x3d0
>>>> <4> [188.936555]  ? i915_gem_object_wait+0x410/0x410 [i915]
>>>> <4> [188.936820]  ? __fget_files+0xc2/0x1c0
>>>> <4> [188.936830]  ? __fget_files+0xda/0x1c0
>>>> <4> [188.936839]  __x64_sys_ioctl+0x6d/0xa0
>>>> <4> [188.936848]  do_syscall_64+0x3a/0xb0
>>>> <4> [188.936859] entry_SYSCALL_64_after_hwframe+0x44/0xae
>>>>
>>>> If the shared object has changed during the RCU unlocked period
>>>> callers will correctly handle the restart on the next iteration.
>>>>
>>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>> Fixes: 96601e8a4755 ("dma-buf: use new iterator in 
>>>> dma_resv_copy_fences")
>>>> Fixes: d3c80698c9f5 ("dma-buf: use new iterator in 
>>>> dma_resv_get_fences v3")
>>>> Closes: 
>>>> https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgitlab.freedesktop.org%2Fdrm%2Fintel%2F-%2Fissues%2F4274&amp;data=04%7C01%7Cchristian.koenig%40amd.com%7Cc22feea06a3f4285cdac08d98a495984%7C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637692870805160909%7CUnknown%7CTWFpbGZsb3d8eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C3000&amp;sdata=6oPR30sWnJe04I4GlhhvJWX3QvwKFIOMW1uOIyWZFOE%3D&amp;reserved=0 
>>>>
>>>> Cc: Christian König <christian.koenig@amd.com>
>>>> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
>>>> Cc: Sumit Semwal <sumit.semwal@linaro.org>
>>>> Cc: linux-media@vger.kernel.org
>>>> Cc: dri-devel@lists.freedesktop.org
>>>> Cc: linaro-mm-sig@lists.linaro.org
>>>
>>> Maybe we should remove cursor->fences altogether, but either way the 
>>> patch is Reviewed-by: Christian König <christian.koenig@amd.com>
>>>
>>> Please push to drm-misc-next ASAP.
>>
>> Not sure I can or if my push permissions are limited to Intel 
>> branches. I can try once CI gives a green light.
> 
> If it doesn't work just ping me and I will push it.

It finally passed CI but it looks like you'll need to push it:

tursulin@tursulin-mobl2:~/wc/dim/src$ dim push-branch drm-misc-next
Enumerating objects: 15, done.
Counting objects: 100% (15/15), done.
Delta compression using up to 8 threads
Compressing objects: 100% (8/8), done.
Writing objects: 100% (8/8), 2.32 KiB | 593.00 KiB/s, done.
Total 8 (delta 7), reused 0 (delta 0), pack-reused 0
error: remote unpack failed: unable to create temporary object directory
To ssh://git.freedesktop.org/git/drm/drm-misc
  ! [remote rejected]           drm-misc-next -> drm-misc-next (unpacker error)
error: failed to push some refs to 'ssh://git.freedesktop.org/git/drm/drm-misc'

Regards,

Tvrtko
