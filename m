Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BADF72447C
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 15:33:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E11EB10E145;
	Tue,  6 Jun 2023 13:33:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F3D510E145
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 13:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686058398; x=1717594398;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=+Gl8YO//iHiXOYaBcXVyOzEn2dF8Xb33Z0zLPq4Lnws=;
 b=VAeiZSyyKidENzh5I7wRRcNKpodsu4IUh+jxn6ixzwlHDxguzZ8/E2p5
 zanzIx7nGALPtoN8k3Nt3sU8UUSADqglG/zNkbiebePOgBkwwBxDOQCZf
 C7dRmqRC9X0bWOe+SWhBJjv/oxWxx5iczViq1CH9DhfxO8zPqdjLbHZEK
 9HGoU+/lOekFLDTv1CaAZplE7+QWOSiKMnHKNgwGiDFPwmalMxGw9++MG
 JwpqlIOrmG/rfZpP//CUOJt/UGJQcwH919wfNuyl92rrBROaTpg3ode1S
 SDipuuEglNYAwPTLJIbv9MKsnmsD+Ltcat48aXAiUaLnwSCszjMJIri92 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="420217418"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="420217418"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 06:33:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="703165831"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="703165831"
Received: from wacarey-mobl1.ger.corp.intel.com (HELO [10.213.192.12])
 ([10.213.192.12])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 06:33:16 -0700
Message-ID: <f3409beb-3736-f4cd-2036-2b75b81cd4f9@linux.intel.com>
Date: Tue, 6 Jun 2023 14:33:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
References: <20230530111534.871403-1-luciano.coelho@intel.com>
 <168551428578.17615.13321848387509410861@emeril.freedesktop.org>
 <87r0qqaqz2.fsf@intel.com>
 <df70861a-a8bf-07cc-90d2-400820b751e8@linux.intel.com>
 <755fa4ba3d28d7be9bff235842ee10934be4c90d.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <755fa4ba3d28d7be9bff235842ee10934be4c90d.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_implement_internal_workqueues_=28rev3=29?=
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 06/06/2023 12:06, Coelho, Luciano wrote:
> On Tue, 2023-06-06 at 11:06 +0100, Tvrtko Ursulin wrote:
>> On 05/06/2023 16:06, Jani Nikula wrote:
>>> On Wed, 31 May 2023, Patchwork <patchwork@emeril.freedesktop.org> wrote:
>>>> #### Possible regressions ####
>>>>
>>>>     * igt@gem_close_race@basic-process:
>>>>       - fi-blb-e6850:       [PASS][1] -> [ABORT][2]
>>>>      [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-blb-e6850/igt@gem_close_race@basic-process.html
>>>>      [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-blb-e6850/igt@gem_close_race@basic-process.html
>>>>       - fi-hsw-4770:        [PASS][3] -> [ABORT][4]
>>>>      [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-hsw-4770/igt@gem_close_race@basic-process.html
>>>>      [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-hsw-4770/igt@gem_close_race@basic-process.html
>>>>       - fi-elk-e7500:       [PASS][5] -> [ABORT][6]
>>>>      [5]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/fi-elk-e7500/igt@gem_close_race@basic-process.html
>>>>      [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/fi-elk-e7500/igt@gem_close_race@basic-process.html
>>>>
>>>>     * igt@i915_selftest@live@evict:
>>>>       - bat-adlp-9:         [PASS][7] -> [ABORT][8]
>>>>      [7]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-adlp-9/igt@i915_selftest@live@evict.html
>>>>      [8]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-adlp-9/igt@i915_selftest@live@evict.html
>>>>       - bat-rpls-2:         [PASS][9] -> [ABORT][10]
>>>>      [9]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-rpls-2/igt@i915_selftest@live@evict.html
>>>>      [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-rpls-2/igt@i915_selftest@live@evict.html
>>>>       - bat-adlm-1:         [PASS][11] -> [ABORT][12]
>>>>      [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-adlm-1/igt@i915_selftest@live@evict.html
>>>>      [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-adlm-1/igt@i915_selftest@live@evict.html
>>>>       - bat-rpls-1:         [PASS][13] -> [ABORT][14]
>>>>      [13]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13203/bat-rpls-1/igt@i915_selftest@live@evict.html
>>>>      [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_117618v3/bat-rpls-1/igt@i915_selftest@live@evict.html
>>>
>>> This still fails consistently, I have no clue why, and the above aren't
>>> even remotely related to display.
>>>
>>> What now? Tvrtko?
>>
>> Hmm..
>>
>> <4> [46.782321] Chain exists of:
>>     (wq_completion)i915 --> (work_completion)(&i915->mm.free_work) --> &vm->mutex
>> <4> [46.782329]  Possible unsafe locking scenario:
>> <4> [46.782332]        CPU0                    CPU1
>> <4> [46.782334]        ----                    ----
>> <4> [46.782337]   lock(&vm->mutex);
>> <4> [46.782340]                                lock((work_completion)(&i915->mm.free_work));
>> <4> [46.782344]                                lock(&vm->mutex);
>> <4> [46.782348]   lock((wq_completion)i915);
>>
>>
>> "(wq_completion)i915"
>>
>> So it's not about the new wq even. Perhaps it is this hunk:
>>
>> --- a/drivers/gpu/drm/i915/intel_wakeref.c
>> +++ b/drivers/gpu/drm/i915/intel_wakeref.c
>> @@ -75,7 +75,7 @@ void __intel_wakeref_put_last(struct intel_wakeref *wf, unsigned long flags)
>>    
>>    	/* Assume we are not in process context and so cannot sleep. */
>>    	if (flags & INTEL_WAKEREF_PUT_ASYNC || !mutex_trylock(&wf->mutex)) {
>> -		mod_delayed_work(system_wq, &wf->work,
>> +		mod_delayed_work(wf->i915->wq, &wf->work,
>>
>> Transformation from this patch otherwise is system_wq with the new unordered wq, so I'd try that first.
> 
> Indeed this seems to be exactly the block that is causing the issue.  I
> was sort of bisecting through all these changes and reverting this one
> prevents the lockdep splat from happening...
> 
> So there's something that needs to be synced with the system_wq here,
> but what? I need to dig into it.

AFAICT it is saying that i915->mm.free_work and engine->wakeref.work 
must not be on the same ordered wq. Otherwise execbuf call trace 
flushing under vm->mutex can deadlock against the free worker trying to 
grab vm->mutex. If engine->wakeref.work is on a separate unordered wq it 
would be safe since then execution will not be serialized with the 
free_work. So just using the new i915->unordered_wq for this hunk should 
work.

Regards,

Tvrtko
