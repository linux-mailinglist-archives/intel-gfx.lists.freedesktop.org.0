Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDCC48565E
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 17:03:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D23410FF39;
	Wed,  5 Jan 2022 16:03:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE31910FF38;
 Wed,  5 Jan 2022 16:03:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641398593; x=1672934593;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=H0kLtzlQcY/sA9D8+wqrK2MMMAFTQW9ilefGgM2pmQo=;
 b=V5V5yAJd5/XvPFVIakUe5dwcobueBW4fyD39eke10D0F/9hF5eZ2BGBP
 lf/kXDHWUCWHdQ6gZZNJ+02RrmJiuf23pUpXBzBaZArWc8Dl7/XkHm8xV
 gFBqRSPbCBPCXSRg5EUJzFVjkZSsS2BGyxdk29g18xGrjHtsXrGsAHRSl
 o0q1j9fI9XaqtWifolHjd5+QI0m3XuHR4ww5wtGPwDYC4EX895rNfxLdb
 4ZoZLJQMLilzC/Vc/mBWODKOYvgen5B3ifWAIEv0ChOU2jekGV2Zap0Fb
 P3mSfmAJT+QU2ooHZPQrxmaGvOeh22KZ4jjQQJAFJolWlAHXzIsMiPUvU A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="242677791"
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="242677791"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 08:03:13 -0800
X-IronPort-AV: E=Sophos;i="5.88,264,1635231600"; d="scan'208";a="621093230"
Received: from unknown (HELO [10.252.26.67]) ([10.252.26.67])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 08:03:12 -0800
Message-ID: <0bdf49e1-f446-c3de-4308-a774bc3e82d5@intel.com>
Date: Wed, 5 Jan 2022 16:03:09 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-GB
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220105145835.142950-1-matthew.auld@intel.com>
 <43a8417d35c42bdb6aa0a11f72d7330eb14bdebe.camel@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <43a8417d35c42bdb6aa0a11f72d7330eb14bdebe.camel@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: don't call free_mmap_offset
 when purging
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 05/01/2022 15:46, Thomas Hellström wrote:
> On Wed, 2022-01-05 at 14:58 +0000, Matthew Auld wrote:
>> The TTM backend is in theory the only user here(also purge should
>> only
>> be called once we have dropped the pages), where it is setup at
>> object
>> creation and is only removed once the object is destroyed. Also
>> resetting the node here might be iffy since the ttm fault handler
>> uses the stored fake offset to determine the page offset within the
>> pages
>> array.
>>
>> This also blows up in the dontneed-before-mmap test, since the
>> expectation is that the vma_node will live on, until the object is
>> destroyed:
>>
>> <2> [749.062902] kernel BUG at
>> drivers/gpu/drm/i915/gem/i915_gem_ttm.c:943!
>> <4> [749.062923] invalid opcode: 0000 [#1] PREEMPT SMP NOPTI
>> <4> [749.062928] CPU: 0 PID: 1643 Comm: gem_madvise Tainted: G     U
>> W         5.16.0-rc8-CI-CI_DRM_11046+ #1
>> <4> [749.062933] Hardware name: Gigabyte Technology Co., Ltd. GB-Z390
>> Garuda/GB-Z390 Garuda-CF, BIOS IG1c 11/19/2019
>> <4> [749.062937] RIP: 0010:i915_ttm_mmap_offset.cold.35+0x5b/0x5d
>> [i915]
>> <4> [749.063044] Code: 00 48 c7 c2 a0 23 4e a0 48 c7 c7 26 df 4a a0
>> e8 95 1d d0 e0 bf 01 00 00 00 e8 8b ec cf e0 31 f6 bf 09 00 00 00 e8
>> 5f 30 c0 e0 <0f> 0b 48 c7 c1 24 4b 56 a0 ba 5b 03 00 00 48 c7 c6 c0
>> 23 4e a0 48
>> <4> [749.063052] RSP: 0018:ffffc90002ab7d38 EFLAGS: 00010246
>> <4> [749.063056] RAX: 0000000000000240 RBX: ffff88811f2e61c0 RCX:
>> 0000000000000006
>> <4> [749.063060] RDX: 0000000000000000 RSI: 0000000000000000 RDI:
>> 0000000000000009
>> <4> [749.063063] RBP: ffffc90002ab7e58 R08: 0000000000000001 R09:
>> 0000000000000001
>> <4> [749.063067] R10: 000000000123d0f8 R11: ffffc90002ab7b20 R12:
>> ffff888112a1a000
>> <4> [749.063071] R13: 0000000000000004 R14: ffff88811f2e61c0 R15:
>> ffff888112a1a000
>> <4> [749.063074] FS:  00007f6e5fcad500(0000)
>> GS:ffff8884ad600000(0000) knlGS:0000000000000000
>> <4> [749.063078] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
>> <4> [749.063081] CR2: 00007efd264e39f0 CR3: 0000000115fd6005 CR4:
>> 00000000003706f0
>> <4> [749.063085] Call Trace:
>> <4> [749.063087]  <TASK>
>> <4> [749.063089]  __assign_mmap_offset+0x41/0x300 [i915]
>> <4> [749.063171]  __assign_mmap_offset_handle+0x159/0x270 [i915]
>> <4> [749.063248]  ? i915_gem_dumb_mmap_offset+0x70/0x70 [i915]
>> <4> [749.063325]  drm_ioctl_kernel+0xae/0x140
>> <4> [749.063330]  drm_ioctl+0x201/0x3d0
>> <4> [749.063333]  ? i915_gem_dumb_mmap_offset+0x70/0x70 [i915]
>> <4> [749.063409]  ? do_user_addr_fault+0x200/0x670
>> <4> [749.063415]  __x64_sys_ioctl+0x6d/0xa0
>> <4> [749.063419]  do_syscall_64+0x3a/0xb0
>> <4> [749.063423]  entry_SYSCALL_64_after_hwframe+0x44/0xae
>> <4> [749.063428] RIP: 0033:0x7f6e5f100317
>>
>> Testcase: igt@gem_madvise@dontneed-before-mmap
>> Fixes: cf3e3e86d779 ("drm/i915: Use ttm mmap handling for ttm bo's.")
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>> ---
>>   drivers/gpu/drm/i915/gem/i915_gem_pages.c | 1 -
>>   1 file changed, 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>> b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>> index 89b70f5cde7a..9f429ed6e78a 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_pages.c
>> @@ -161,7 +161,6 @@ int i915_gem_object_pin_pages_unlocked(struct
>> drm_i915_gem_object *obj)
>>   /* Immediately discard the backing storage */
>>   int i915_gem_object_truncate(struct drm_i915_gem_object *obj)
>>   {
>> -       drm_gem_free_mmap_offset(&obj->base);
> 
> What happens if a non-ttm shmem system object gets truncated from the
> shrinker and then tries to use the above mmap offset?

AFAIK nothing on integrated is really using this. The mmap_offset ioctl 
stuff is managing multiple vma nodes itself, per object(one for each 
cache type/mapping or something), and so doesn't use this. And the shmem 
mmap ioctl doesn't use the any fake offset stuff, AFAIK.

> 
> /Thomas
> 
> 
> 
>>          if (obj->ops->truncate)
>>                  return obj->ops->truncate(obj);
>>   
> 
> 
