Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5111E561F28
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 17:24:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF5EB10F31E;
	Thu, 30 Jun 2022 15:24:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B86A10F31E
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 15:24:46 +0000 (UTC)
Received: from [192.168.178.53] (82-71-8-225.dsl.in-addr.zen.co.uk
 [82.71.8.225])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: bbeckett)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 7BFAB660194E;
 Thu, 30 Jun 2022 16:24:44 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1656602684;
 bh=Pt3Zfc12+MN0iYwZU4pO0zlj7YzG9yAOLyS2/JrEaSY=;
 h=Date:Subject:To:References:From:In-Reply-To:From;
 b=G3DxjXMfIZi0ztMAjLIWsqgrpOtV5hpN43s/WRcHld+vzN8GbyxbL5cT9/u8ciahy
 7vkdV7bpErkZmL9LW0jFjJYinLRRcWKPQ7O0NqqKxiZxguEZfYlElrKHEQIOH0vpXW
 pWkggD/HT1jho8q/jkvNsrUd/DrcThBtMWwBwp4k6+CH/GcoqJqkSFVLu8Q1OsGNNl
 1T0lskcFnVYLOxE/SBfCsGJYNMk+ZN6GBK9qbvK/O/FWowCRvV6jiYt7cgEaf+PINN
 To0IY1t6WdZfhOOY8dj2bmO2e2F1mPJMA5ow3sFMICYzgblylZkNS6wHA7h1Z/2axx
 UBZw5TfexztRQ==
Message-ID: <420143d8-e35e-31ee-25a0-95035677b8fd@collabora.com>
Date: Thu, 30 Jun 2022 16:24:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: "Hellstrom, Thomas" <thomas.hellstrom@intel.com>,
 "Harrison, John C" <john.c.harrison@intel.com>,
 "Brost, Matthew" <matthew.brost@intel.com>,
 "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20220620213340.3199605-1-bob.beckett@collabora.com>
 <165583307119.13647.9219456323624399121@emeril.freedesktop.org>
 <20dedda6-534b-b39e-fb35-8becc5c27043@collabora.com>
 <2752282d-a28a-ef9b-8b27-2d84aee9c8bf@linux.intel.com>
 <4eee638e-ff08-0e45-ac79-ca6c77a0bb6f@collabora.com>
 <6d608010-a9b1-8182-a967-6ea435fd20a4@linux.intel.com>
 <b20da287-e7f4-ebad-a534-a129b57eeede@collabora.com>
 <d7332e3c-2375-d0a4-0d1a-38faa2d7fe6c@collabora.com>
 <38401ddd-1a81-b82e-d3d8-018b22155534@collabora.com>
 <7b2bb26d89919db3f71930e3b887e8d0fd390a5b.camel@intel.com>
From: Robert Beckett <bob.beckett@collabora.com>
In-Reply-To: <7b2bb26d89919db3f71930e3b887e8d0fd390a5b.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_ttm_for_stolen_=28rev5=29?=
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



On 30/06/2022 15:52, Hellstrom, Thomas wrote:
> Hi!
> 
> On Thu, 2022-06-30 at 15:20 +0100, Robert Beckett wrote:
>>
>>
>> On 29/06/2022 13:51, Robert Beckett wrote:
>>>
>>>
>>> On 28/06/2022 17:22, Robert Beckett wrote:
>>>>
>>>>
>>>> On 28/06/2022 09:46, Tvrtko Ursulin wrote:
>>>>>
>>>>> On 27/06/2022 18:08, Robert Beckett wrote:
>>>>>>
>>>>>>
>>>>>> On 22/06/2022 10:05, Tvrtko Ursulin wrote:
>>>>>>>
>>>>>>> On 21/06/2022 20:11, Robert Beckett wrote:
>>>>>>>>
>>>>>>>>
>>>>>>>> On 21/06/2022 18:37, Patchwork wrote:
>>>>>>>>> *Patch Details*
>>>>>>>>> *Series:*    drm/i915: ttm for stolen (rev5)
>>>>>>>>> *URL:*
>>>>>>>>> https://patchwork.freedesktop.org/series/101396/
>>>>>>>>> <https://patchwork.freedesktop.org/series/101396/>
>>>>>>>>> *State:*    failure
>>>>>>>>> *Details:*
>>>>>>>>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html
>>>>>>>>>   
>>>>>>>>> <
>>>>>>>>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html
>>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>    CI Bug Log - changes from CI_DRM_11790 ->
>>>>>>>>> Patchwork_101396v5
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>      Summary
>>>>>>>>>
>>>>>>>>> *FAILURE*
>>>>>>>>>
>>>>>>>>> Serious unknown changes coming with Patchwork_101396v5
>>>>>>>>> absolutely
>>>>>>>>> need to be
>>>>>>>>> verified manually.
>>>>>>>>>
>>>>>>>>> If you think the reported changes have nothing to do
>>>>>>>>> with the
>>>>>>>>> changes
>>>>>>>>> introduced in Patchwork_101396v5, please notify your
>>>>>>>>> bug team to
>>>>>>>>> allow them
>>>>>>>>> to document this new failure mode, which will reduce
>>>>>>>>> false
>>>>>>>>> positives in CI.
>>>>>>>>>
>>>>>>>>> External URL:
>>>>>>>>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html
>>>>>>>>>   
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>      Participating hosts (40 -> 41)
>>>>>>>>>
>>>>>>>>> Additional (2): fi-icl-u2 bat-dg2-9
>>>>>>>>> Missing (1): fi-bdw-samus
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>      Possible new issues
>>>>>>>>>
>>>>>>>>> Here are the unknown changes that may have been
>>>>>>>>> introduced in
>>>>>>>>> Patchwork_101396v5:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>        IGT changes
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>          Possible regressions
>>>>>>>>>
>>>>>>>>>    * igt@i915_selftest@live@reset:
>>>>>>>>>        o bat-adlp-4: PASS
>>>>>>>>> <
>>>>>>>>> https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-adlp-4/igt@i915_selftest@live@reset.html
>>>>>>>>>>
>>>>>>>>>
>>>>>>>>>          -> DMESG-FAIL
>>>>>>>>> <
>>>>>>>>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-adlp-4/igt@i915_selftest@live@reset.html
>>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>
>>>>>>>> I keep hitting clobbered pages during engine resets on
>>>>>>>> bat-adlp-4.
>>>>>>>> It seems to happen most of the time on that machine and
>>>>>>>> occasionally on bat-adlp-6.
>>>>>>>>
>>>>>>>> Should bat-adlp-4 be considered an unreliable machine
>>>>>>>> like
>>>>>>>> bat-adlp-6 is for now?
>>>>>>>>
>>>>>>>> Alternatively, seeing the history of this in
>>>>>>>>
>>>>>>>> commit 3da3c5c1c9825c24168f27b021339e90af37e969
>>>>>>>> "drm/i915: Exclude
>>>>>>>> low pages (128KiB) of stolen from use"
>>>>>>>>
>>>>>>>> could this be an indication that maybe the original issue
>>>>>>>> is worse
>>>>>>>> on adlp machines?
>>>>>>>> I have only ever seen page page 135 or 136 clobbered
>>>>>>>> across many
>>>>>>>> runs via trybot, so it looks fairly consistent.
>>>>>>>> Though excluding the use of over 540K of stolen might be
>>>>>>>> too severe.
>>>>>>>
>>>>>>> Don't know but I see that on the latest version you even
>>>>>>> hit pages
>>>>>>> 165/166.
>>>>>>>
>>>>>>> Any history of hitting this in CI without your series? If
>>>>>>> not, are
>>>>>>> there some other changes which could explain it? Are you
>>>>>>> touching
>>>>>>> the selftest itself?
>>>>>>>
>>>>>>> Hexdump of the clobbered page looks quite complex.
>>>>>>> Especially
>>>>>>> POISON_FREE. Any idea how that ends up there?
>>>>>>
>>>>>>
>>>>>> (see
>>>>>> https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_105517v4/fi-rkl-guc/igt@i915_selftest@live@reset.html#dmesg-warnings702
>>>>>> )
>>>>>>
>>>>>>
>>>>>> after lots of slow debug via CI, it looks like the issue is
>>>>>> that a
>>>>>> ring buffer was allocated and taking up that page during the
>>>>>> initial
>>>>>> crc capture in the test, but by the time it came to check for
>>>>>> corruption, it had been freed from that page.
>>>>>>
>>>>>> The test has a number of weaknesses:
>>>>>>
>>>>>> 1. the busy check is done twice, without taking in to account
>>>>>> any
>>>>>> change in between. I assume previously this could be relied
>>>>>> on never
>>>>>> to occur, but now it can for some reason (more on that later)
>>>>>
>>>>> You mean the stolen page used/unused test? Probably the premise
>>>>> is
>>>>> that the test controls the driver completely ie. is the sole
>>>>> user and
>>>>> the two checks are run at the time where nothing else could
>>>>> have
>>>>> changed the state.
>>>>>
>>>>> With the nerfed request (as with GuC) this actually should
>>>>> hold. In
>>>>> the generic case I am less sure, my working knowledge faded a
>>>>> bit,
>>>>> but perhaps there was something guaranteeing the spinner
>>>>> couldn't
>>>>> have been retired yet at the time of the second check. Would
>>>>> need
>>>>> clarifying at least in comments.
>>>>>>
>>>>>> 2. the engine reset returns early with an error for guc
>>>>>> submission
>>>>>> engines, but it is silently ignored in the test. Perhaps it
>>>>>> should
>>>>>> ignore guc submission engines as it is a largely useless test
>>>>>> for
>>>>>> those situations.
>>>>>
>>>>> Yes looks dodgy indeed. You will need to summon the owners of
>>>>> the GuC
>>>>> backend to comment on this.
>>>>>
>>>>> However even if the test should be skipped with GuC it is
>>>>> extremely
>>>>> interesting that you are hitting this so I suspect there is a
>>>>> more
>>>>> serious issue at play.
>>>>
>>>> indeed. That's why I am keen to get to the root cause instead of
>>>> just
>>>> slapping in a fix.
>>>>
>>>>>
>>>>>> A quick obvious fix is to have a busy bitmask that remembers
>>>>>> each
>>>>>> page's busy state initially and only check for corruption if
>>>>>> it was
>>>>>> busy during both checks.
>>>>>>
>>>>>> However, the main question is why this is occurring now with
>>>>>> my
>>>>>> changes.
>>>>>> I have added more debug to check where the stolen memory is
>>>>>> being
>>>>>> freed, but the first run last night didn't hit the issue for
>>>>>> once.
>>>>>> I am running again now, will report back if I figure out
>>>>>> where it is
>>>>>> being freed.
>>>>>>
>>>>>> I am pretty sure the "corruption" (which isn't actually
>>>>>> corruption)
>>>>>> is from a ring buffer.
>>>>>> The POISON_FREE is the only difference between the captured
>>>>>> before
>>>>>> and after dumps:
>>>>>>
>>>>>> [0040] 00000000 02800000 6b6b6b6b 6b6b6b6b 6b6b6b6b 6b6b6b6b
>>>>>> 6b6b6b6b 6b6b6b6b
>>>>>>
>>>>>> with the 2nd dword being the MI_ARB_CHECK used for the
>>>>>> spinner.
>>>>>> I think this is the request poisoning from
>>>>>> i915_request_retire()
>>>>>>
>>>>>> The bit I don't know yet is why a ring buffer was freed
>>>>>> between the
>>>>>> initial crc capture and the corruption check. The spinner
>>>>>> should be
>>>>>> active across the entire test, maintaining a ref on the
>>>>>> context and
>>>>>> it's ring.
>>>>>>
>>>>>> hopefully my latest debug will give more answers.
>>>>>
>>>>> Yeah if you can figure our whether the a) spinner is still
>>>>> active
>>>>> during the 2nd check (as I think it should be), and b) is the
>>>>> corruption detected in the same pages which were used in the
>>>>> 1st pass
>>>>> that would be interesting.
>>>>
>>>> yep. The latest run is still stuck in the CI queue after 27
>>>> hours.
>>>> I think I have enough debug in there to catch it now.
>>>> Hopefully I can get a root cause once it gets chance to run.
>>>>
>>>
>>> https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_105517v7/fi-adl-ddr5/igt@i915_selftest@live@reset.html#dmesg-warnings496
>>>   
>>>
>>>
>>> well, the run finally happened.
>>> And it shows that the freed resource happens from a workqueue. Not
>>> helpful.
>>>
>>> I'll now add a saved stack traces to all objects that saves where
>>> it is
>>> allocated and freed/queued for free.
>>>
>>
>> https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_105517v8/fi-rkl-guc/igt@i915_selftest@live@reset.html#dmesg-warnings419
>>
>> I'm pretty sure I know what is going on now.
>>
>> igt_reset_engines_stolen() loops around each engine and calls
>> __igt_reset_stolen() for that engine.
>>
>>
>> __igt_reset_stolen() does
>> intel_context_create()
>>
>> igt_spinner_create_request()->intel_context_create_request()-
>>> __i915_request_create()->intel_context_get()
>>
>> intel_context_put()
>>
>> leaving the request as the remaining holder of the context.
>>
>> it then does the reset, which does nothing on GuC setups, does the
>> comparisons, then ends the spinner via igt_spinner_fini()-
>>> igt_spinner_end()
>> which lets the spinner request finish.
>>
>> once the request is retired, intel_context_put() is eventually
>> called,
>> which starts the GuC teardown of the context as the request was the
>> last
>> holder of the context.
>>
>> This GuC teardown is asynchronous via ct transactions.
>> By the time the ct_process_request() sees the
>> INTEL_GUC_ACTION_DEREGISTER_CONTEXT_DONE message, the test has
>> already
>> looped to the next engine and has already checked the original status
>> of
>> the page that the destroying context used for its ring buffer, so the
>> test sees it being freed from the previous loop while testing the
>> next
>> engine. It considers this a corruption of the stolen memory due to
>> the
>> previously highlighted double checking of busy state for each page.
>>
>> I think for now, we should simply not test GuC submission engines in
>> line with the reset call returning an error.
>> If at some point we want to enable this test for GuC setups, then
>> flushing and waiting for context cleanup would need to be added to
>> the test.
>>
>> Anyone know why per engine reset is not allowed for GuC submission
>> setup?
>> looking at commit "eb5e7da736f3 drm/i915/guc: Reset implementation
>> for
>> new GuC interface" doesn't really detail why per engine resets are
>> not
>> allowed.
>> Maybe it just never got implemented? or are there reasons to not
>> allow
>> the host to request specific engine resets?
>>
> 
> IIRC, the GuC by design decides for itself when it needs to do a per-
> engine reset, hence the host can't trigger those.
> 
> /Thomas
> 

okay, understood.
I'll include a fix to the test in the next version to not test if GuC 
submissions are active.

The only curious bit is that the conversion to ttm makes this issue 
occur more often. In theory this should have been happening with the old 
code too.
I suspect it is just a timing thing. Maybe the ttm code has sped up or 
slowed down the process somewhere.

