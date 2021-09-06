Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A66C7401C9C
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Sep 2021 15:48:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB53B899F0;
	Mon,  6 Sep 2021 13:48:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C46D28999C;
 Mon,  6 Sep 2021 13:48:14 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10099"; a="199505723"
X-IronPort-AV: E=Sophos;i="5.85,272,1624345200"; d="scan'208";a="199505723"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 06:48:14 -0700
X-IronPort-AV: E=Sophos;i="5.85,272,1624345200"; d="scan'208";a="546237095"
Received: from rcburbid-mobl2.ger.corp.intel.com (HELO [10.213.240.115])
 ([10.213.240.115])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2021 06:48:12 -0700
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Tvrtko Ursulin <tvrtko.ursulin@intel.com>,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
References: <20210906091729.2093312-1-matthew.auld@intel.com>
 <60a47a43-2443-1077-1510-34644c09d93b@linux.intel.com>
 <721bf484-1d2c-c1de-c9a8-d98971f9fb5c@intel.com>
 <20a7f423-dfa7-de86-0c2c-21d166f92c77@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <6c3c6bb2-374a-33e8-2a4f-b2c9c926c262@intel.com>
Date: Mon, 6 Sep 2021 14:48:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20a7f423-dfa7-de86-0c2c-21d166f92c77@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: fixup igt_shrink_thp
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

On 06/09/2021 13:53, Tvrtko Ursulin wrote:
> 
> On 06/09/2021 13:30, Matthew Auld wrote:
>> On 06/09/2021 13:19, Tvrtko Ursulin wrote:
>>>
>>> On 06/09/2021 10:17, Matthew Auld wrote:
>>>> Since the object might still be active here, the shrink_all will simply
>>>> ignore it, which blows up in the test, since the pages will still be
>>>> there. Currently THP is disabled which should result in the test being
>>>> skipped, but if we ever re-enable THP we might start seeing the 
>>>> failure.
>>>> Fix this by forcing I915_SHRINK_ACTIVE.
>>>>
>>>> v2: Some machine in the shard runs doesn't seem to have any available
>>>> swap when running this test. Try to handle this.
>>>>
>>>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>>>> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>>>> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com> #v1
>>>> ---
>>>>   .../gpu/drm/i915/gem/selftests/huge_pages.c   | 31 
>>>> ++++++++++++++-----
>>>>   1 file changed, 24 insertions(+), 7 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c 
>>>> b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
>>>> index a094f3ce1a90..46ea1997c114 100644
>>>> --- a/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
>>>> +++ b/drivers/gpu/drm/i915/gem/selftests/huge_pages.c
>>>> @@ -1519,6 +1519,7 @@ static int igt_shrink_thp(void *arg)
>>>>       struct i915_vma *vma;
>>>>       unsigned int flags = PIN_USER;
>>>>       unsigned int n;
>>>> +    bool should_swap;
>>>>       int err = 0;
>>>>       /*
>>>> @@ -1567,23 +1568,39 @@ static int igt_shrink_thp(void *arg)
>>>>               break;
>>>>       }
>>>>       i915_gem_context_unlock_engines(ctx);
>>>> +    /*
>>>> +     * Nuke everything *before* we unpin the pages so we can be 
>>>> reasonably
>>>> +     * sure that when later checking get_nr_swap_pages() that some 
>>>> random
>>>> +     * leftover object doesn't steal the remaining swap space.
>>>> +     */
>>>> +    i915_gem_shrink(NULL, i915, -1UL, NULL,
>>>> +            I915_SHRINK_BOUND |
>>>> +            I915_SHRINK_UNBOUND |
>>>> +            I915_SHRINK_ACTIVE);
>>>>       i915_vma_unpin(vma);
>>>>       if (err)
>>>>           goto out_put;
>>>> +
>>>>       /*
>>>> -     * Now that the pages are *unpinned* shrink-all should invoke
>>>> -     * shmem to truncate our pages.
>>>> +     * Now that the pages are *unpinned* shrinking should invoke
>>>> +     * shmem to truncate our pages, if we have available swap.
>>>>        */
>>>> -    i915_gem_shrink_all(i915);
>>>> -    if (i915_gem_object_has_pages(obj)) {
>>>> -        pr_err("shrink-all didn't truncate the pages\n");
>>>> +    should_swap = get_nr_swap_pages() > 0;
>>>> +    i915_gem_shrink(NULL, i915, -1UL, NULL,
>>>> +            I915_SHRINK_BOUND |
>>>> +            I915_SHRINK_UNBOUND |
>>>> +            I915_SHRINK_ACTIVE);
>>>> +    if (should_swap == i915_gem_object_has_pages(obj)) {
>>>
>>> Hmm is there any value running the test if no swap (given objects 
>>> used by the test are "willneed"), or you could simplify and just do 
>>> early skip?
>>
>> Maybe. My thinking was that this adds some coverage if say the device 
>> is not configured with swap. i.e assert that the pages don't magically 
>> disappear, and that their contents still persist etc.
>>
>> Happy to make it skip instead though?
> 
> So reducing it to a basic shrinker test in that case. Hm.. do you know 
> if we have a non THP specific tests for that already somewhere in 
> selftests (I can't spot any), or just in IGT?

Just IGT I think, outside of some cases where we call gem_shrink in very 
specific places, which would be hard to do from an IGT.

> 
> If we indeed don't have it in selftests, then I guess question is 
> whether it is warranted to "hide" such a basic test in the THP "drawer", 
> or instead adding a generic shrinker test should be considered. (And one 
> could then follow with a question should a basic generic test have a THP 
> sub-test.)

The reason for the selftest vs IGT is mostly because userspace doesn't 
have any knowledge of the underlying pages, or whether THP is used. IIRC 
there was some issue with THP + our shmem backend in the past, so also 
adding some basic coverage for THP + i915-gem shrinker seemed 
reasonable. Even if we don't have swap space, I think it still makes 
some sense to call into gem_shrink with our target THP object.

> 
> It's hard to say where the boundary for selftests-vs-IGT coverage should 
> be in this case. I mean would it be warranted to add such a generic 
> shrinker selftest. It is mostly testable from userspace, but kernel can 
> do a few more introspections and sanity checks at cost of growing kernel 
> code.
> 
> Regards,
> 
> Tvrtko
> 
>>
>>>
>>> Regards,
>>>
>>> Tvrtko
>>>
>>>> +        pr_err("unexpected pages mismatch, should_swap=%s\n",
>>>> +               yesno(should_swap));
>>>>           err = -EINVAL;
>>>>           goto out_put;
>>>>       }
>>>> -    if (obj->mm.page_sizes.sg || obj->mm.page_sizes.phys) {
>>>> -        pr_err("residual page-size bits left\n");
>>>> +    if (should_swap == (obj->mm.page_sizes.sg || 
>>>> obj->mm.page_sizes.phys)) {
>>>> +        pr_err("unexpected residual page-size bits, should_swap=%s\n",
>>>> +               yesno(should_swap));
>>>>           err = -EINVAL;
>>>>           goto out_put;
>>>>       }
>>>>
