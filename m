Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1195955BF95
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 10:46:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CE8212A8B6;
	Tue, 28 Jun 2022 08:46:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4238912A8B2
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jun 2022 08:46:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656406004; x=1687942004;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=j+16mriypfUJS4oJ39Bc8rAzjldR8mZaIOlsLsnpEnQ=;
 b=Kby+ErAgdWXU79a93n/RckMKbOoDdhzFdKrZuiHQB1Xzkx3I7iuSBQCT
 OfOKxisVExChyyZ71p9nGDwiz7vxmSgF0GuJ09lL7/l1JHeQqLnb1N7qJ
 gPW6zEnPmF18yygA13Ozl6H3L6NmdnS4d5uwghhLqetJAPnnEkzF+KLtD
 RNONythwiVLOUnhQMp2LuejszRWVDWxsA7psy710wOqxYxsPrjON/5q3o
 iqpBTsPqP9oW+mlOPlnosNwiTkTVWTK8VU6QHPNEpsXWmVsDtwWsXdKjw
 ECTfKLn8D7zWoJ6Q6lE/ryMZO5dje4x91PBygUL3YgYxcEWKvTDOPUUF2 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="261482218"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="261482218"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 01:46:43 -0700
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="587791048"
Received: from leejust1-mobl.amr.corp.intel.com (HELO [10.209.162.132])
 ([10.209.162.132])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 01:46:42 -0700
Message-ID: <6d608010-a9b1-8182-a967-6ea435fd20a4@linux.intel.com>
Date: Tue, 28 Jun 2022 09:46:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Robert Beckett <bob.beckett@collabora.com>, intel-gfx@lists.freedesktop.org
References: <20220620213340.3199605-1-bob.beckett@collabora.com>
 <165583307119.13647.9219456323624399121@emeril.freedesktop.org>
 <20dedda6-534b-b39e-fb35-8becc5c27043@collabora.com>
 <2752282d-a28a-ef9b-8b27-2d84aee9c8bf@linux.intel.com>
 <4eee638e-ff08-0e45-ac79-ca6c77a0bb6f@collabora.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <4eee638e-ff08-0e45-ac79-ca6c77a0bb6f@collabora.com>
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


On 27/06/2022 18:08, Robert Beckett wrote:
> 
> 
> On 22/06/2022 10:05, Tvrtko Ursulin wrote:
>>
>> On 21/06/2022 20:11, Robert Beckett wrote:
>>>
>>>
>>> On 21/06/2022 18:37, Patchwork wrote:
>>>> *Patch Details*
>>>> *Series:*    drm/i915: ttm for stolen (rev5)
>>>> *URL:*    https://patchwork.freedesktop.org/series/101396/ 
>>>> <https://patchwork.freedesktop.org/series/101396/>
>>>> *State:*    failure
>>>> *Details:* 
>>>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html 
>>>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html> 
>>>>
>>>>
>>>>
>>>>   CI Bug Log - changes from CI_DRM_11790 -> Patchwork_101396v5
>>>>
>>>>
>>>>     Summary
>>>>
>>>> *FAILURE*
>>>>
>>>> Serious unknown changes coming with Patchwork_101396v5 absolutely 
>>>> need to be
>>>> verified manually.
>>>>
>>>> If you think the reported changes have nothing to do with the changes
>>>> introduced in Patchwork_101396v5, please notify your bug team to 
>>>> allow them
>>>> to document this new failure mode, which will reduce false positives 
>>>> in CI.
>>>>
>>>> External URL: 
>>>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html
>>>>
>>>>
>>>>     Participating hosts (40 -> 41)
>>>>
>>>> Additional (2): fi-icl-u2 bat-dg2-9
>>>> Missing (1): fi-bdw-samus
>>>>
>>>>
>>>>     Possible new issues
>>>>
>>>> Here are the unknown changes that may have been introduced in 
>>>> Patchwork_101396v5:
>>>>
>>>>
>>>>       IGT changes
>>>>
>>>>
>>>>         Possible regressions
>>>>
>>>>   * igt@i915_selftest@live@reset:
>>>>       o bat-adlp-4: PASS
>>>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-adlp-4/igt@i915_selftest@live@reset.html> 
>>>>
>>>>         -> DMESG-FAIL
>>>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-adlp-4/igt@i915_selftest@live@reset.html> 
>>>>
>>>>
>>>
>>> I keep hitting clobbered pages during engine resets on bat-adlp-4.
>>> It seems to happen most of the time on that machine and occasionally 
>>> on bat-adlp-6.
>>>
>>> Should bat-adlp-4 be considered an unreliable machine like bat-adlp-6 
>>> is for now?
>>>
>>> Alternatively, seeing the history of this in
>>>
>>> commit 3da3c5c1c9825c24168f27b021339e90af37e969 "drm/i915: Exclude 
>>> low pages (128KiB) of stolen from use"
>>>
>>> could this be an indication that maybe the original issue is worse on 
>>> adlp machines?
>>> I have only ever seen page page 135 or 136 clobbered across many runs 
>>> via trybot, so it looks fairly consistent.
>>> Though excluding the use of over 540K of stolen might be too severe.
>>
>> Don't know but I see that on the latest version you even hit pages 
>> 165/166.
>>
>> Any history of hitting this in CI without your series? If not, are 
>> there some other changes which could explain it? Are you touching the 
>> selftest itself?
>>
>> Hexdump of the clobbered page looks quite complex. Especially 
>> POISON_FREE. Any idea how that ends up there?
> 
> 
> (see 
> https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_105517v4/fi-rkl-guc/igt@i915_selftest@live@reset.html#dmesg-warnings702) 
> 
> 
> after lots of slow debug via CI, it looks like the issue is that a ring 
> buffer was allocated and taking up that page during the initial crc 
> capture in the test, but by the time it came to check for corruption, it 
> had been freed from that page.
> 
> The test has a number of weaknesses:
> 
> 1. the busy check is done twice, without taking in to account any change 
> in between. I assume previously this could be relied on never to occur, 
> but now it can for some reason (more on that later)

You mean the stolen page used/unused test? Probably the premise is that 
the test controls the driver completely ie. is the sole user and the two 
checks are run at the time where nothing else could have changed the state.

With the nerfed request (as with GuC) this actually should hold. In the 
generic case I am less sure, my working knowledge faded a bit, but 
perhaps there was something guaranteeing the spinner couldn't have been 
retired yet at the time of the second check. Would need clarifying at 
least in comments.
> 
> 2. the engine reset returns early with an error for guc submission 
> engines, but it is silently ignored in the test. Perhaps it should 
> ignore guc submission engines as it is a largely useless test for those 
> situations.

Yes looks dodgy indeed. You will need to summon the owners of the GuC 
backend to comment on this.

However even if the test should be skipped with GuC it is extremely 
interesting that you are hitting this so I suspect there is a more 
serious issue at play.

> A quick obvious fix is to have a busy bitmask that remembers each page's 
> busy state initially and only check for corruption if it was busy during 
> both checks.
> 
> However, the main question is why this is occurring now with my changes.
> I have added more debug to check where the stolen memory is being freed, 
> but the first run last night didn't hit the issue for once.
> I am running again now, will report back if I figure out where it is 
> being freed.
> 
> I am pretty sure the "corruption" (which isn't actually corruption) is 
> from a ring buffer.
> The POISON_FREE is the only difference between the captured before and 
> after dumps:
> 
> [0040] 00000000 02800000 6b6b6b6b 6b6b6b6b 6b6b6b6b 6b6b6b6b 6b6b6b6b 
> 6b6b6b6b
> 
> with the 2nd dword being the MI_ARB_CHECK used for the spinner.
> I think this is the request poisoning from i915_request_retire()
> 
> The bit I don't know yet is why a ring buffer was freed between the 
> initial crc capture and the corruption check. The spinner should be 
> active across the entire test, maintaining a ref on the context and it's 
> ring.
> 
> hopefully my latest debug will give more answers.

Yeah if you can figure our whether the a) spinner is still active during 
the 2nd check (as I think it should be), and b) is the corruption 
detected in the same pages which were used in the 1st pass that would be 
interesting.

Regards,

Tvrtko

> 
> 
>>
>> Btw what is the benefit of converting stolen to start with? It's not 
>> much of a backend since it just uses the drm range manager. So quite 
>> thin and uneventful. Diffstats for the series also do not look like 
>> you end up with much code reduction?
>>
>> Regards,
>>
>> Tvrtko
