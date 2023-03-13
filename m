Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C19766B7F6E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Mar 2023 18:25:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2975610E5E8;
	Mon, 13 Mar 2023 17:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5770710E5E9
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Mar 2023 17:25:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678728302; x=1710264302;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=VHLBo4jmKVWsE2uPg3i2whkpst8GyG/VLmw6wAhOCl4=;
 b=AqDUoBkTnYM5DBEi+Z/BW/mw9YhI0HkRQXJ/dCmvTybGOhApwMuZ2dnY
 WEl3+eI6r58t8WYhpGE9cCJpwf4o3huGhtqyy0h7w4NaB44WC2S3M2Zu7
 p4EZnwSlaLbazZYbX5DPY4i2e9Hhq62n5J3vVKArj5cdB2+DAuCHgBT2q
 rMMkD4R669AJPi90ovHvEGcqX4AuSsWuZbttmVNWm2O2dcFMIyoL1o6iw
 5XpUzA2GTCj4NjaWsMIa2g03d7wo0Dm1ZYZVM8XpalP2DIZ0GorAhzbBF
 FVzA56pPJkkay4at6Sn1GeTp0AG2814B4M4Yl+SBXJ80zOZd2W1wPnow5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="339576436"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="339576436"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 10:25:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10648"; a="711209278"
X-IronPort-AV: E=Sophos;i="5.98,257,1673942400"; d="scan'208";a="711209278"
Received: from ebrookes-mobl.ger.corp.intel.com (HELO [10.252.14.254])
 ([10.252.14.254])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2023 10:24:59 -0700
Message-ID: <ae274c20-2d6e-ddc1-ec13-132046ec2449@intel.com>
Date: Mon, 13 Mar 2023 17:24:57 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.8.0
To: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
References: <20230227171920.2438319-1-jonathan.cavitt@intel.com>
 <6b08d006-11e2-6797-6d39-06bd0d8a8630@intel.com>
 <9792ed48-7f7b-2a18-240a-c733a13a4911@intel.com>
 <CH0PR11MB5444EF1CBC9F09556DC720E8E5B99@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Language: en-GB
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <CH0PR11MB5444EF1CBC9F09556DC720E8E5B99@CH0PR11MB5444.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v5 1/2] drm/i915: Migrate platform-dependent
 mock hugepage selftests to live
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
Cc: "thomas.hellstrom@linux.intel.com" <thomas.hellstrom@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Vetter,
 Daniel" <daniel.vetter@intel.com>,
 "chris.p.wilson@linux.intel.com" <chris.p.wilson@linux.intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 13/03/2023 15:57, Cavitt, Jonathan wrote:
> -----Original Message-----
> From: Auld, Matthew <matthew.auld@intel.com>
> Sent: Thursday, March 2, 2023 2:36 AM
> To: Cavitt, Jonathan <jonathan.cavitt@intel.com>; intel-gfx@lists.freedesktop.org
> Cc: Dutt, Sudeep <sudeep.dutt@intel.com>; thomas.hellstrom@linux.intel.com; maarten.lankhorst@linux.intel.com; Vetter, Daniel <daniel.vetter@intel.com>; De Marchi, Lucas <lucas.demarchi@intel.com>; chris.p.wilson@linux.intel.com
> Subject: Re: [PATCH v5 1/2] drm/i915: Migrate platform-dependent mock hugepage selftests to live
>>
>> On 28/02/2023 14:08, Matthew Auld wrote:
>>> On 27/02/2023 17:19, Jonathan Cavitt wrote:
>>>> Convert the igt_mock_ppgtt_huge_fill and igt_mock_ppgtt_64K mock
>>>> selftests into
>>>> live selftests as their requirements have recently become
>>>> platform-dependent.
>>>> Additionally, apply necessary platform dependency checks to these tests.
>>>>
>>>> v2: Reorder
>>>>
>>>> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
>>>
>>> r-b still stands for the series. Note that CI is busted atm though, so
>>> we can't merge this yet. Likely need to re-trigger testing for the
>>> series once CI/drm-tip is working again.
>>
>> CI looks to be back. Can you trigger a retest through patchwork, or
>> resend the series?
> 
> The retest was submitted, but the mock hugepages subtest returned with a failure.
> It didn't do so in the first run, nor did it fail in the prior revision (the one with the
> incorrect patch order).  Do you have any guidance for forward progress?

I think there were some more CI issues. But from the logs it looks like 
we just need to fix the arg handling and related bits, AFAICT. Sent a 
version to trybot (only compile tested):

https://patchwork.freedesktop.org/patch/526566/?series=115072&rev=1

> -Jonathan Cavitt
> 
>>
>>>
>>>
>>>> ---
>>>>    .../gpu/drm/i915/gem/selftests/huge_pages.c   | 22 ++++++++++++++-----
>>>>    1 file changed, 17 insertions(+), 5 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
>>>> b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
>>>> index defece0bcb81..375f119ab261 100644
>>>> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
>>>> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
>>>> @@ -710,7 +710,7 @@ static void close_object_list(struct list_head
>>>> *objects,
>>>>        }
>>>>    }
>>>> -static int igt_mock_ppgtt_huge_fill(void *arg)
>>>> +static int igt_ppgtt_huge_fill(void *arg)
>>>>    {
>>>>        struct i915_ppgtt *ppgtt = arg;
>>>>        struct drm_i915_private *i915 = ppgtt->vm.i915;
>>>> @@ -784,7 +784,8 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
>>>>            GEM_BUG_ON(!expected_gtt);
>>>>            GEM_BUG_ON(size);
>>>> -        if (expected_gtt & I915_GTT_PAGE_SIZE_4K)
>>>> +        if (expected_gtt & I915_GTT_PAGE_SIZE_4K &&
>>>> +            GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
>>>>                expected_gtt &= ~I915_GTT_PAGE_SIZE_64K;
>>>>            i915_vma_unpin(vma);
>>>> @@ -831,7 +832,7 @@ static int igt_mock_ppgtt_huge_fill(void *arg)
>>>>        return err;
>>>>    }
>>>> -static int igt_mock_ppgtt_64K(void *arg)
>>>> +static int igt_ppgtt_64K(void *arg)
>>>>    {
>>>>        struct i915_ppgtt *ppgtt = arg;
>>>>        struct drm_i915_private *i915 = ppgtt->vm.i915;
>>>> @@ -913,6 +914,17 @@ static int igt_mock_ppgtt_64K(void *arg)
>>>>            unsigned int offset = objects[i].offset;
>>>>            unsigned int flags = PIN_USER;
>>>> +        /*
>>>> +         * For modern GTT models, the requirements for marking a
>>>> page-table
>>>> +         * as 64K have been relaxed.  Account for this.
>>>> +         */
>>>> +
>>>> +        if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
>>>> +            expected_gtt = 0;
>>>> +            expected_gtt |= size & (SZ_64K | SZ_2M) ?
>>>> I915_GTT_PAGE_SIZE_64K : 0;
>>>> +            expected_gtt |= size & SZ_4K ? I915_GTT_PAGE_SIZE_4K : 0;
>>>> +        }
>>>> +
>>>>            for (single = 0; single <= 1; single++) {
>>>>                obj = fake_huge_pages_object(i915, size, !!single);
>>>>                if (IS_ERR(obj))
>>>> @@ -1910,8 +1922,6 @@ int i915_gem_huge_page_mock_selftests(void)
>>>>            SUBTEST(igt_mock_exhaust_device_supported_pages),
>>>>            SUBTEST(igt_mock_memory_region_huge_pages),
>>>>            SUBTEST(igt_mock_ppgtt_misaligned_dma),
>>>> -        SUBTEST(igt_mock_ppgtt_huge_fill),
>>>> -        SUBTEST(igt_mock_ppgtt_64K),
>>>>        };
>>>>        struct drm_i915_private *dev_priv;
>>>>        struct i915_ppgtt *ppgtt;
>>>> @@ -1962,6 +1972,8 @@ int i915_gem_huge_page_live_selftests(struct
>>>> drm_i915_private *i915)
>>>>            SUBTEST(igt_ppgtt_sanity_check),
>>>>            SUBTEST(igt_ppgtt_compact),
>>>>            SUBTEST(igt_ppgtt_mixed),
>>>> +        SUBTEST(igt_ppgtt_huge_fill),
>>>> +        SUBTEST(igt_ppgtt_64K),
>>>>        };
>>>>        if (!HAS_PPGTT(i915)) {
>>
