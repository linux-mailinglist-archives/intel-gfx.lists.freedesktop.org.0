Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8742D4FB9EC
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 12:45:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3EF910F647;
	Mon, 11 Apr 2022 10:45:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B17110F638;
 Mon, 11 Apr 2022 10:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649673956; x=1681209956;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=xAIaFaRxRb/y7SJ/yOei69L1F7DrUcF025DiXtQgjhc=;
 b=RnI/ELuwZEcSqcKFS6xgZRzcTSgh8bdCIWy1K1WmIjSxs9BZt51g+N2P
 nBgwvsj6UySFBdsqqyoVV613PbtROaP5aOjMx7+nzD/qqYNcXI2yX+9YJ
 yUR0/uKHJhc5fSpMrQYp8QQy8GDo3n92OpABg2vYEwPSDnxIhBoa2f2uZ
 QNm3m+cU2ZTdYi9wob0Rzje6Yf7s8VqExCFiubpcd+iuGJ3MIlGfQX8sb
 J4Cy2fjpRo8hY6tz1j4ErUWtK7v7tzAw9d8sKR7v7VN2TVSGYfFkRDGgn
 9wHZULAtku6OGlZ6GqfTp4OxSivfHwQXwonw5A/7vzLZZYfOay1sKdxl+ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10313"; a="262265413"
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="262265413"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 03:45:55 -0700
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="659998478"
Received: from melhebea-mobl1.amr.corp.intel.com (HELO [10.249.254.167])
 ([10.249.254.167])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 03:45:53 -0700
Message-ID: <271fa83e-029e-a0d2-ecc3-5583722c7320@linux.intel.com>
Date: Mon, 11 Apr 2022 12:45:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220411085603.58156-1-matthew.auld@intel.com>
 <11835204-fd38-ef91-8e55-2b3e15aaaacd@linux.intel.com>
 <dd38bc4f-33ea-eb29-6192-fe04578f90f6@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
In-Reply-To: <dd38bc4f-33ea-eb29-6192-fe04578f90f6@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/ttm: stop passing NULL fence in
 ttm_bo_move_sync_cleanup
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 4/11/22 12:06, Matthew Auld wrote:
> On 11/04/2022 10:56, Thomas Hellström wrote:
>> Hi, Matthew
>>
>> On 4/11/22 10:56, Matthew Auld wrote:
>>> If we hit the sync case, like when skipping clearing for kernel 
>>> internal
>>> objects, or when falling back to cpu clearing, like in i915, we end up
>>> trying to add a NULL fence, but with some recent changes in this area
>>> this now just results in NULL deref in dma_resv_add_fence:
>>>
>>> <1>[    5.466383] BUG: kernel NULL pointer dereference, address: 
>>> 0000000000000008
>>> <1>[    5.466384] #PF: supervisor read access in kernel mode
>>> <1>[    5.466385] #PF: error_code(0x0000) - not-present page
>>> <6>[    5.466386] PGD 0 P4D 0
>>> <4>[    5.466387] Oops: 0000 [#1] PREEMPT SMP NOPTI
>>> <4>[    5.466389] CPU: 5 PID: 267 Comm: modprobe Not tainted 
>>> 5.18.0-rc2-CI-CI_DRM_11481+ #1
>>> <4>[    5.466391] RIP: 0010:dma_resv_add_fence+0x63/0x260
>>> <4>[    5.466395] Code: 38 85 c0 0f 84 df 01 00 00 0f 88 e8 01 00 00 
>>> 83 c0 01 0f 88 df 01 00 00 8b 05 35 89 10 01 49 8d 5e 68 85 c0 0f 85 
>>> 45 01 00 00 <48> 8b 45 08 48 3d c0 a5 0a 82 0f 84 5c 01 00 00 48 3d 
>>> 60 a5 0a 82
>>> <4>[    5.466396] RSP: 0018:ffffc90000e974f8 EFLAGS: 00010202
>>> <4>[    5.466397] RAX: 0000000000000001 RBX: ffff888123e88b28 RCX: 
>>> 00000000ffffffff
>>> <4>[    5.466398] RDX: 0000000000000001 RSI: ffffffff822e4f50 RDI: 
>>> ffffffff8233f087
>>> <4>[    5.466399] RBP: 0000000000000000 R08: ffff8881313dbc80 R09: 
>>> 0000000000000001
>>> <4>[    5.466399] R10: 0000000000000001 R11: 00000000da354294 R12: 
>>> 0000000000000000
>>> <4>[    5.466400] R13: ffff88810927dc58 R14: ffff888123e88ac0 R15: 
>>> ffff88810a88d600
>>> <4>[    5.466401] FS:  00007f5fa1193540(0000) 
>>> GS:ffff88845d880000(0000) knlGS:0000000000000000
>>> <4>[    5.466402] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>>> <4>[    5.466402] CR2: 0000000000000008 CR3: 0000000106dd6003 CR4: 
>>> 00000000003706e0
>>> <4>[    5.466403] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 
>>> 0000000000000000
>>> <4>[    5.466404] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 
>>> 0000000000000400
>>> <4>[    5.466404] Call Trace:
>>> <4>[    5.466405]  <TASK>
>>> <4>[    5.466406]  ttm_bo_move_accel_cleanup+0x62/0x270 [ttm]
>>> <4>[    5.466411]  ? i915_rsgt_from_buddy_resource+0x185/0x1e0 [i915]
>>> <4>[    5.466529]  i915_ttm_move+0xfd/0x430 [i915]
>>> <4>[    5.466833]  ? dma_resv_reserve_fences+0x4e/0x320
>>> <4>[    5.466836]  ? ttm_bo_add_move_fence.constprop.20+0xf7/0x140 
>>> [ttm]
>>> <4>[    5.466841]  ttm_bo_handle_move_mem+0xa1/0x140 [ttm]
>>> <4>[    5.466845]  ttm_bo_validate+0xee/0x160 [ttm]
>>> <4>[    5.466849]  __i915_ttm_get_pages+0x4f/0x210 [i915]
>>> <4>[    5.466976]  i915_ttm_get_pages+0xad/0x140 [i915]
>>> <4>[    5.467094] ____i915_gem_object_get_pages+0x32/0xf0 [i915]
>>> <4>[    5.467210]  __i915_gem_object_get_pages+0x89/0xa0 [i915]
>>> <4>[    5.467323]  i915_vma_get_pages+0x114/0x1d0 [i915]
>>> <4>[    5.467446]  i915_vma_pin_ww+0xd3/0xa90 [i915]
>>> <4>[    5.467570]  i915_vma_pin.constprop.10+0x119/0x1b0 [i915]
>>> <4>[    5.467700]  ? __mutex_unlock_slowpath+0x3e/0x2b0
>>> <4>[    5.467704] intel_alloc_initial_plane_obj.isra.6+0x1a9/0x390 
>>> [i915]
>>> <4>[    5.467833] intel_crtc_initial_plane_config+0x83/0x340 [i915]
>>>
>>> In the ttm_bo_move_sync_cleanup() case it seems we only really care
>>> about calling ttm_bo_wait_free_node(), so let's instead just call that
>>> directly.
>>>
>>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>>> Cc: Christian König <christian.koenig@amd.com>
>>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>> Cc: Nirmoy Das <nirmoy.das@linux.intel.com>
>>> ---
>>>   drivers/gpu/drm/ttm/ttm_bo_util.c | 15 +++++++++++++++
>>>   include/drm/ttm/ttm_bo_driver.h   | 11 +++--------
>>>   2 files changed, 18 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/ttm/ttm_bo_util.c 
>>> b/drivers/gpu/drm/ttm/ttm_bo_util.c
>>> index bc5190340b9c..1cbfb00c1d65 100644
>>> --- a/drivers/gpu/drm/ttm/ttm_bo_util.c
>>> +++ b/drivers/gpu/drm/ttm/ttm_bo_util.c
>>> @@ -572,6 +572,21 @@ int ttm_bo_move_accel_cleanup(struct 
>>> ttm_buffer_object *bo,
>>>   }
>>>   EXPORT_SYMBOL(ttm_bo_move_accel_cleanup);
>>> +void ttm_bo_move_sync_cleanup(struct ttm_buffer_object *bo,
>>> +                  struct ttm_resource *new_mem)
>>> +{
>>> +    struct ttm_device *bdev = bo->bdev;
>>> +    struct ttm_resource_manager *man = ttm_manager_type(bdev, 
>>> new_mem->mem_type);
>>> +    int ret;
>>> +
>>> +    ret = ttm_bo_wait_free_node(bo, man->use_tt);
>>> +    if (WARN_ON(ret))
>>> +        return;
>>> +
>>> +    ttm_bo_assign_mem(bo, new_mem);
>>> +}
>>> +EXPORT_SYMBOL(ttm_bo_move_sync_cleanup);
>>
>> I don't think this will help in the case where we call 
>> ttm_bo_move_accel_cleanup() with a NULL fence....
>
> Hmm, do you know if that case actually exists? I thought the only 
> current user passing fence == NULL was ttm_bo_move_sync_cleanup().


Yes, indeed, you're right. Not sure if any other driver hits that, though.

/Thomas


