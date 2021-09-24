Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F232417005
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 12:08:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A92D86E1CD;
	Fri, 24 Sep 2021 10:08:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5D1C6EE05
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 10:08:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10116"; a="285053407"
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="285053407"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 03:08:49 -0700
X-IronPort-AV: E=Sophos;i="5.85,319,1624345200"; d="scan'208";a="551527391"
Received: from sambroox-mobl.ger.corp.intel.com (HELO [10.213.245.2])
 ([10.213.245.2])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2021 03:08:46 -0700
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 intel-gfx@lists.freedesktop.org, Patchwork <patchwork@emeril.freedesktop.org>
References: <20210923075608.2873-1-christian.koenig@amd.com>
 <163240233283.31050.11977750526229880215@emeril.freedesktop.org>
 <e0aada02-8a1c-dfd3-d855-8776259b27fb@linux.intel.com>
 <636b43d9-65e1-7b86-8589-745c83bf9734@gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <28208650-7873-54b8-7da5-29e6cf12b01c@linux.intel.com>
Date: Fri, 24 Sep 2021 11:08:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <636b43d9-65e1-7b86-8589-745c83bf9734@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5B01/25=5D_dma-buf=3A_add_dma=5Fresv=5Ffor?=
 =?utf-8?q?=5Feach=5Ffence=5Funlocked_v5?=
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


On 24/09/2021 10:13, Christian König wrote:
> 
> 
> Am 24.09.21 um 11:11 schrieb Tvrtko Ursulin:
>>
>> On 23/09/2021 14:05, Patchwork wrote:
>>
>> [snip]
>>
>>>   *
>>>
>>>     igt@gem_busy@busy@all:
>>>
>>>       o fi-apl-guc: PASS
>>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-apl-guc/igt@gem_busy@busy@all.html> 
>>>
>>>         -> FAIL
>>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-apl-guc/igt@gem_busy@busy@all.html> 
>>>
>>>         +2 similar issues
>>
>> All seem to be the same failure:
>>
>> (gem_busy:874) igt_dummyload-CRITICAL: Test assertion failure function 
>> igt_spin_factory, file ../lib/igt_dummyload.c:490:
>> (gem_busy:874) igt_dummyload-CRITICAL: Failed assertion: 
>> gem_bo_busy(fd, spin->handle)
>>
>> Which is saying spinner which was just submitted is not immediately 
>> reported as busy. And that sounds impossible. Must be a pretty basic 
>> bug somewhere which I don't immediately see. Like unlocked iterator 
>> failing to walk the fences or something.
> 
> I was just to write a mail to you about this since I'm currently 
> scratching my head what exactly goes wrong here.
> 
> Is there an igt test which uses only vgem and currently fails which I 
> could also run on AMD hardware?

Not that I am aware of but you could add debug and use trybot?

However, is the bug perhaps in "all fences" mode is there is no 
exclusive fence? First iteration returns NULL and for loop aborts before 
looking at the shared fences.

Regards,

Tvrtko


