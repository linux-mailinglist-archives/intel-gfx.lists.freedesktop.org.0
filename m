Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C26255BB3C
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jun 2022 19:08:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8802310E280;
	Mon, 27 Jun 2022 17:08:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from madras.collabora.co.uk (madras.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2EF510E280
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jun 2022 17:08:10 +0000 (UTC)
Received: from [192.168.178.53] (82-71-8-225.dsl.in-addr.zen.co.uk
 [82.71.8.225])
 (using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested) (Authenticated sender: bbeckett)
 by madras.collabora.co.uk (Postfix) with ESMTPSA id 33AE76601850;
 Mon, 27 Jun 2022 18:08:09 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1656349689;
 bh=GOUMV/KfpTwq73ORULe1HM9C/NXZaf7GlZtlcyUea6Y=;
 h=Date:Subject:To:References:From:In-Reply-To:From;
 b=cYPvaxtloUYvCJeslW9LMulfDYNX4NLcunSFPi2H4CTBYSI/xfg+t54Hr93YRQawz
 uq8/eCgDasyBpuOOgnYHGsYcRNamuqDr4Ux0esbZ/jfPVvNRnzPyCA8l5pJn2PQ0ZU
 7GGwHJT+2t+R6TAvqTsAc8K1/lHwN6RH/jYvwyZrnPrqhviWj3iERlPtD10mJB2DxD
 CvMrtkG2PAcPJzQUgKYTH43d4V/eAq9SVPrWADFPW1x1XZB+2KeSnZB9Ud5D99Kg6F
 DdpjKgmdV4nkXfIohsFZpWwdrRD3ewsfvD0i7mFFT6PxKu6KMSpa+6ODjgkoQjFOQG
 /9f8PYQPzy0Jg==
Message-ID: <4eee638e-ff08-0e45-ac79-ca6c77a0bb6f@collabora.com>
Date: Mon, 27 Jun 2022 18:08:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Content-Language: en-US
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220620213340.3199605-1-bob.beckett@collabora.com>
 <165583307119.13647.9219456323624399121@emeril.freedesktop.org>
 <20dedda6-534b-b39e-fb35-8becc5c27043@collabora.com>
 <2752282d-a28a-ef9b-8b27-2d84aee9c8bf@linux.intel.com>
From: Robert Beckett <bob.beckett@collabora.com>
In-Reply-To: <2752282d-a28a-ef9b-8b27-2d84aee9c8bf@linux.intel.com>
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



On 22/06/2022 10:05, Tvrtko Ursulin wrote:
> 
> On 21/06/2022 20:11, Robert Beckett wrote:
>>
>>
>> On 21/06/2022 18:37, Patchwork wrote:
>>> *Patch Details*
>>> *Series:*    drm/i915: ttm for stolen (rev5)
>>> *URL:*    https://patchwork.freedesktop.org/series/101396/ 
>>> <https://patchwork.freedesktop.org/series/101396/>
>>> *State:*    failure
>>> *Details:* 
>>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html> 
>>>
>>>
>>>
>>>   CI Bug Log - changes from CI_DRM_11790 -> Patchwork_101396v5
>>>
>>>
>>>     Summary
>>>
>>> *FAILURE*
>>>
>>> Serious unknown changes coming with Patchwork_101396v5 absolutely 
>>> need to be
>>> verified manually.
>>>
>>> If you think the reported changes have nothing to do with the changes
>>> introduced in Patchwork_101396v5, please notify your bug team to 
>>> allow them
>>> to document this new failure mode, which will reduce false positives 
>>> in CI.
>>>
>>> External URL: 
>>> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/index.html
>>>
>>>
>>>     Participating hosts (40 -> 41)
>>>
>>> Additional (2): fi-icl-u2 bat-dg2-9
>>> Missing (1): fi-bdw-samus
>>>
>>>
>>>     Possible new issues
>>>
>>> Here are the unknown changes that may have been introduced in 
>>> Patchwork_101396v5:
>>>
>>>
>>>       IGT changes
>>>
>>>
>>>         Possible regressions
>>>
>>>   * igt@i915_selftest@live@reset:
>>>       o bat-adlp-4: PASS
>>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_11790/bat-adlp-4/igt@i915_selftest@live@reset.html> 
>>>
>>>         -> DMESG-FAIL
>>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_101396v5/bat-adlp-4/igt@i915_selftest@live@reset.html> 
>>>
>>>
>>
>> I keep hitting clobbered pages during engine resets on bat-adlp-4.
>> It seems to happen most of the time on that machine and occasionally 
>> on bat-adlp-6.
>>
>> Should bat-adlp-4 be considered an unreliable machine like bat-adlp-6 
>> is for now?
>>
>> Alternatively, seeing the history of this in
>>
>> commit 3da3c5c1c9825c24168f27b021339e90af37e969 "drm/i915: Exclude low 
>> pages (128KiB) of stolen from use"
>>
>> could this be an indication that maybe the original issue is worse on 
>> adlp machines?
>> I have only ever seen page page 135 or 136 clobbered across many runs 
>> via trybot, so it looks fairly consistent.
>> Though excluding the use of over 540K of stolen might be too severe.
> 
> Don't know but I see that on the latest version you even hit pages 165/166.
> 
> Any history of hitting this in CI without your series? If not, are there 
> some other changes which could explain it? Are you touching the selftest 
> itself?
> 
> Hexdump of the clobbered page looks quite complex. Especially 
> POISON_FREE. Any idea how that ends up there?


(see 
https://intel-gfx-ci.01.org/tree/drm-tip/Trybot_105517v4/fi-rkl-guc/igt@i915_selftest@live@reset.html#dmesg-warnings702)

after lots of slow debug via CI, it looks like the issue is that a ring 
buffer was allocated and taking up that page during the initial crc 
capture in the test, but by the time it came to check for corruption, it 
had been freed from that page.

The test has a number of weaknesses:

1. the busy check is done twice, without taking in to account any change 
in between. I assume previously this could be relied on never to occur, 
but now it can for some reason (more on that later)

2. the engine reset returns early with an error for guc submission 
engines, but it is silently ignored in the test. Perhaps it should 
ignore guc submission engines as it is a largely useless test for those 
situations.


A quick obvious fix is to have a busy bitmask that remembers each page's 
busy state initially and only check for corruption if it was busy during 
both checks.

However, the main question is why this is occurring now with my changes.
I have added more debug to check where the stolen memory is being freed, 
but the first run last night didn't hit the issue for once.
I am running again now, will report back if I figure out where it is 
being freed.

I am pretty sure the "corruption" (which isn't actually corruption) is 
from a ring buffer.
The POISON_FREE is the only difference between the captured before and 
after dumps:

[0040] 00000000 02800000 6b6b6b6b 6b6b6b6b 6b6b6b6b 6b6b6b6b 6b6b6b6b 
6b6b6b6b

with the 2nd dword being the MI_ARB_CHECK used for the spinner.
I think this is the request poisoning from i915_request_retire()

The bit I don't know yet is why a ring buffer was freed between the 
initial crc capture and the corruption check. The spinner should be 
active across the entire test, maintaining a ref on the context and it's 
ring.

hopefully my latest debug will give more answers.


> 
> Btw what is the benefit of converting stolen to start with? It's not 
> much of a backend since it just uses the drm range manager. So quite 
> thin and uneventful. Diffstats for the series also do not look like you 
> end up with much code reduction?
> 
> Regards,
> 
> Tvrtko
