Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F36E49FDB2
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 17:10:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93B5310E8D4;
	Fri, 28 Jan 2022 16:10:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4672110E8D4
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 16:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643386222; x=1674922222;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=nWhL5/3TWGCg8EFIEZpuZCk8UvIjTHvIW5gkNz02cCs=;
 b=A1OSS7/OHzFtLppnCaxMV5pAdw8kETXAGY4gHxcCJmjDBtQbWHO4C3e9
 sLTDetsO3dwvr9HZFX0Dpx+xdEwS0s8ZYbHlcg2xScfJ1k+XtqRrnzzae
 YLL1dDZvGR/EmVKZ0oRFEpkmqh3kSO0QzHUee26iYVZOhoX1djL0JNwYi
 KY1Oh1nkzSLEphZMlz0hsYjGowXxtRRWAlB7j0mKPe2lE7Y3sioVxhPZP
 7Iae0NrReVWVUg9EBgSOO1SiuZrad0dBuPpVQFzJJURUmoNT9VXp2oyWK
 AHkQkOGrY4e5XybFYCKtX85zdM4n0wr6ibmYr3R0OFZP7W1V3mCkuNXWw w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="234527173"
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="234527173"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 08:07:50 -0800
X-IronPort-AV: E=Sophos;i="5.88,324,1635231600"; d="scan'208";a="697131260"
Received: from rbresug-mobl.ger.corp.intel.com (HELO [10.252.55.61])
 ([10.252.55.61])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 08:07:49 -0800
Message-ID: <ecd61984-43bf-985f-9a70-1682feda4031@linux.intel.com>
Date: Fri, 28 Jan 2022 17:07:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.5.1
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220127234334.4016964-1-matthew.d.roper@intel.com>
 <164335945722.27321.17037754764505370678@emeril.freedesktop.org>
 <YfQKD5NxpY+EiUNZ@mdroper-desk1.amr.corp.intel.com>
 <9fb5d99e-e99d-063f-839b-3253950eec71@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <9fb5d99e-e99d-063f-839b-3253950eec71@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgU2Vj?=
 =?utf-8?q?ond_round_of_i915=5Freg=2Eh_splitting_=28rev3=29?=
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
Cc: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Op 28-01-2022 om 16:49 schreef Tvrtko Ursulin:
>
>
> On 28/01/2022 15:21, Matt Roper wrote:
>> On Fri, Jan 28, 2022 at 08:44:17AM +0000, Patchwork wrote:
>>> == Series Details ==
>>>
>>> Series: Second round of i915_reg.h splitting (rev3)
>>> URL   : https://patchwork.freedesktop.org/series/99079/
>>> State : failure
>>>
>>> == Summary ==
>>>
>>> CI Bug Log - changes from CI_DRM_11154_full -> Patchwork_22133_full
>>> ====================================================
>>>
>>> Summary
>>> -------
>>>
>>>    **FAILURE**
>>>
>>>    Serious unknown changes coming with Patchwork_22133_full absolutely need to be
>>>    verified manually.
>>>       If you think the reported changes have nothing to do with the changes
>>>    introduced in Patchwork_22133_full, please notify your bug team to allow them
>>>    to document this new failure mode, which will reduce false positives in CI.
>>>
>>>   
>>> Participating hosts (10 -> 10)
>>> ------------------------------
>>>
>>>    No changes in participating hosts
>>>
>>> Possible new issues
>>> -------------------
>>>
>>>    Here are the unknown changes that may have been introduced in Patchwork_22133_full:
>>>
>>> ### IGT changes ###
>>>
>>> #### Possible regressions ####
>>>
>>>    * igt@gem_softpin@softpin:
>>>      - shard-snb:          [PASS][1] -> [INCOMPLETE][2]
>>>     [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11154/shard-snb5/igt@gem_softpin@softpin.html
>>>     [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_22133/shard-snb6/igt@gem_softpin@softpin.html
>>
>> It's not really clear what the error was here, but it happened during
>> GTT reservation for an execbuf operation.  That doesn't seem like
>> anything that could be related to the register definition shuffling in
>> this series.
>
> Yes, does not look like your problem.
>
> Ungrab_vma() points to Maarten, any idea on this oops?:
>
> <6> [54.564958] [IGT] gem_softpin: starting subtest softpin
> <4> [61.713735] stack segment: 0000 [#1] PREEMPT SMP PTI
> <4> [61.713746] CPU: 0 PID: 1363 Comm: gem_softpin Not tainted 5.17.0-rc1-CI-Patchwork_22133+ #1
> <4> [61.713753] Hardware name: Dell Inc. XPS 8300  /0Y2MRG, BIOS A06 10/17/2011
> <4> [61.713759] RIP: 0010:ungrab_vma+0x9/0x80 [i915]
> <4> [61.713909] Code: ef e8 4b 5c de e0 e8 16 90 e5 e0 8b 83 38 99 00 00 85 c0 75 e1 5b 5d 41 5c 41 5d c3 e9 4c ef 14 00 55 53 48 8b af c0 00 00 00 <8b> 45 00 85 c0 75 03 5b 5d c3 48 8b 85 a0 02 00 00 48 89 fb 48 8b
> <4> [61.713920] RSP: 0018:ffffc90000a8f880 EFLAGS: 00010246
> <4> [61.713926] RAX: 0000000000000000 RBX: ffffc90000a8f598 RCX: 0000000000000000
> <4> [61.713931] RDX: ffff88812ef1b270 RSI: ffff8881053e0880 RDI: ffff88813d6c2d40
> <4> [61.713936] RBP: 6b6b6b6b6b6b6b6b R08: ffff88812ef1b270 R09: ffff88812ef1b2c0
> <4> [61.713940] R10: 0000000000000000 R11: ffff88812ef180b0 R12: ffff88813d6c2d40
> <4> [61.713945] R13: 0000000000000000 R14: ffff88812ef18040 R15: ffff88813d6c3058
> <4> [61.713950] FS:  00007f6158f37c00(0000) GS:ffff888227600000(0000) knlGS:0000000000000000
> <4> [61.713956] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> <4> [61.713961] CR2: 000055de05dcc028 CR3: 000000010eb1a004 CR4: 00000000000606f0
> <4> [61.713966] Call Trace:
> <4> [61.713968]  <TASK>
> <4> [61.713971]  i915_gem_evict_for_node+0x329/0x3b0 [i915]
> <4> [61.714088]  i915_gem_gtt_reserve+0x106/0x130 [i915]
> <4> [61.714202]  i915_vma_pin_ww+0x8a6/0xb00 [i915]
> <4> [61.714324]  eb_validate_vmas+0x688/0x860 [i915]
> <4> [61.714440]  i915_gem_do_execbuffer+0xbfe/0x2530 [i915]
> <4> [61.714549]  ? find_held_lock+0x2d/0x90
> <4> [61.714559]  ? __lock_acquire+0x5e6/0x2580
> <4> [61.714565]  ? coalesce_file_region+0x181/0x230
> <4> [61.714574]  i915_gem_execbuffer2_ioctl+0x116/0x2c0 [i915]
> <4> [61.714681]  ? i915_gem_do_execbuffer+0x2530/0x2530 [i915]
> <4> [61.714791]  drm_ioctl_kernel+0xae/0x140
> <4> [61.714797]  drm_ioctl+0x201/0x3d0
> <4> [61.714802]  ? i915_gem_do_execbuffer+0x2530/0x2530 [i915]
> <4> [61.714910]  __x64_sys_ioctl+0x6d/0xa0
> <4> [61.714916]  do_syscall_64+0x3a/0xb0
> <4> [61.714921]  entry_SYSCALL_64_after_hwframe+0x44/0xae
>
> Regards,
>
> Tvrtko 

This might help:

https://patchwork.freedesktop.org/series/99418/

