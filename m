Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B56E702B26
	for <lists+intel-gfx@lfdr.de>; Mon, 15 May 2023 13:10:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CF5F10E1A5;
	Mon, 15 May 2023 11:10:50 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 887DC10E1A5;
 Mon, 15 May 2023 11:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684149048; x=1715685048;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=DExLxMgJlCS4LKxL/daAfJ3G2W4ySHDqLceDlP4hvSQ=;
 b=g8AMY6C/uIv1h+VmC2ysFxcQZdPLgmDy3korYJt9CVKjq/Ue3jiiJqsC
 yadu1S/BCYXqTMHOz0SVu9Y4DJKuH7aOCaipqSoFaJv35sXnm+5gIx953
 QsVln3MAL2R3R54khbDazgQxRGaA+2Erb1/yiLLG6aKxzqdeYETbaXtO9
 QY2YmB9cWZTjr5qXJUyY06yN7acTqnYa14rqoRPpur+QhTTh4YpL8TjKH
 o73+Gf29J8uEANxtwwyhhOmKD+XCvkcczImnKDRRW0wHi8J/nvEOiytgC
 kVACATvG1S1DE5mjzvh95xZ1WfWYj9gmVIlmP2G+rwga93isdhDJHzcoX Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="330792491"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="330792491"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 04:10:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10710"; a="765886765"
X-IronPort-AV: E=Sophos;i="5.99,276,1677571200"; d="scan'208";a="765886765"
Received: from zolayode-mobl.ger.corp.intel.com (HELO [10.213.214.133])
 ([10.213.214.133])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2023 04:10:45 -0700
Message-ID: <e94c4470-d9b1-19db-9948-3d8caaf8b7b8@linux.intel.com>
Date: Mon, 15 May 2023 12:10:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Content-Language: en-US
To: Rob Clark <robdclark@chromium.org>
References: <20230131113237.3707217-1-tvrtko.ursulin@linux.intel.com>
 <20230131113237.3707217-9-tvrtko.ursulin@linux.intel.com>
 <CAJs_Fx6viBKQwoRofup8z4ZBcGC6dabvLarzT8aoevBEjQe8Ew@mail.gmail.com>
 <c80ae665-0177-355e-e38c-a7cce5043617@linux.intel.com>
 <CAF6AEGvP-AfKW7AtJuz3a020_E15fRa_vmKvNOBy_QQo5-zopQ@mail.gmail.com>
 <c288faf6-28ad-b0bc-c77d-16628ba93475@linux.intel.com>
 <CAJs_Fx7=zKUeE5sejc-ZCjUZ47W6Taw4_AP9ZWT7e-kkzL3h2g@mail.gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <CAJs_Fx7=zKUeE5sejc-ZCjUZ47W6Taw4_AP9ZWT7e-kkzL3h2g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 8/8] gputop: Basic vendor
 agnostic GPU top tool
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
Cc: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 12/05/2023 15:18, Rob Clark wrote:
> On Thu, Apr 6, 2023 at 7:33 AM Tvrtko Ursulin
> <tvrtko.ursulin@linux.intel.com> wrote:
>>
>>
>> On 06/04/2023 15:21, Rob Clark wrote:
>>> On Thu, Apr 6, 2023 at 4:08 AM Tvrtko Ursulin
>>> <tvrtko.ursulin@linux.intel.com> wrote:
>>>>
>>>>
>>>> On 05/04/2023 18:57, Rob Clark wrote:
>>>>> On Tue, Jan 31, 2023 at 3:33 AM Tvrtko Ursulin
>>>>> <tvrtko.ursulin@linux.intel.com> wrote:
>>>>>>
>>>>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>>>
>>>>>> Rudimentary vendor agnostic example of how lib_igt_drm_clients can be used
>>>>>> to display a sorted by card and usage list of processes using GPUs.
>>>>>>
>>>>>> Borrows a bit of code from intel_gpu_top but for now omits the fancy
>>>>>> features like interactive functionality, card selection, client
>>>>>> aggregation, sort modes, JSON output  and pretty engine names. Also no
>>>>>> support for global GPU or system metrics.
>>>>>>
>>>>>> On the other hand it shows clients from all DRM cards which
>>>>>> intel_gpu_top does not do.
>>>>>>
>>>>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>>> Cc: Rob Clark <robdclark@chromium.org>
>>>>>> Cc: Christian König <ckoenig.leichtzumerken@gmail.com>
>>>>>> Acked-by: Christian König <christian.koenig@amd.com>
>>>>>
>>>>> Reviewed-by: Rob Clark <robdclark@chromium.org>
>>>>
>>>> Presumably for 8/8 only?
>>>>
>>>> The rest of the series does not apply any more by now. I need to rebase..
>>>
>>> I didn't look closely at the rest of the series (was kinda assuming
>>> that was mostly just moving things around).. but I see you rebased it
>>> so I can take a look.
>>
>> There's a lot in there - first patch is extracting some code into a
>> library, with the corresponding renames, but then there are six patches
>> of tweaks and feature additions which finally make gputop possible.
>>
>> Hopefully you can penetrate the concepts. It was all at least Valgrind
>> clean back in the day I first did it.
>>
> 
> by now I've read (and rebased locally) the series, and even added a
> couple things on top.. so r-b for the series, we should get this
> landed

Thanks for the reviews, pushed!

Lets see if the future holds for this small tool.

Regards,

Tvrtko
