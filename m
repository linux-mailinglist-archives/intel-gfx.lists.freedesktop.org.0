Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF0A46D9A6D
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 16:33:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE5C210EC08;
	Thu,  6 Apr 2023 14:33:19 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B470C10EC08;
 Thu,  6 Apr 2023 14:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680791598; x=1712327598;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=tZxtjroVgKOUZwySrMlbwpqr781HWEnS0qKriE0huV4=;
 b=no355vY7K5WONrx0O3d2evsUBt1VYedtonvnL2lBReZzLmaCB/p+LtkE
 99W9GA+WFDtBiol3GI7m7lodnpMi1Hyuw0XVn/LJl0Ssscrz3ysqaDKN5
 KJcNUHJmc2R4+Gle0DcgXaKB0TFO81BNEw7EqneqqG7tZ0cQ5txqtNyTn
 5GDhmWx5lbRYLeoSCTvPY+svaCVorTk6KHEjFfBoGyGmyRLT+6hH1CK32
 REJ1Hp2bW9tyehSj2y10qmLizbTM+hUqxV3Jy/F6Uruj1G0Hkz1pTbWPP
 tNN0wF88pQ8zmz2EL+Wj2/koXZqv2fTjuuENIZjOUM3TcXtSzHR3avAwX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="331384294"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="331384294"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 07:31:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10672"; a="776498187"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="776498187"
Received: from pjkenny-mobl2.ger.corp.intel.com (HELO [10.213.218.83])
 ([10.213.218.83])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 07:31:03 -0700
Message-ID: <c288faf6-28ad-b0bc-c77d-16628ba93475@linux.intel.com>
Date: Thu, 6 Apr 2023 15:31:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Rob Clark <robdclark@gmail.com>
References: <20230131113237.3707217-1-tvrtko.ursulin@linux.intel.com>
 <20230131113237.3707217-9-tvrtko.ursulin@linux.intel.com>
 <CAJs_Fx6viBKQwoRofup8z4ZBcGC6dabvLarzT8aoevBEjQe8Ew@mail.gmail.com>
 <c80ae665-0177-355e-e38c-a7cce5043617@linux.intel.com>
 <CAF6AEGvP-AfKW7AtJuz3a020_E15fRa_vmKvNOBy_QQo5-zopQ@mail.gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <CAF6AEGvP-AfKW7AtJuz3a020_E15fRa_vmKvNOBy_QQo5-zopQ@mail.gmail.com>
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
Cc: Rob Clark <robdclark@chromium.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 Intel-gfx@lists.freedesktop.org, igt-dev@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 06/04/2023 15:21, Rob Clark wrote:
> On Thu, Apr 6, 2023 at 4:08 AM Tvrtko Ursulin
> <tvrtko.ursulin@linux.intel.com> wrote:
>>
>>
>> On 05/04/2023 18:57, Rob Clark wrote:
>>> On Tue, Jan 31, 2023 at 3:33 AM Tvrtko Ursulin
>>> <tvrtko.ursulin@linux.intel.com> wrote:
>>>>
>>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>
>>>> Rudimentary vendor agnostic example of how lib_igt_drm_clients can be used
>>>> to display a sorted by card and usage list of processes using GPUs.
>>>>
>>>> Borrows a bit of code from intel_gpu_top but for now omits the fancy
>>>> features like interactive functionality, card selection, client
>>>> aggregation, sort modes, JSON output  and pretty engine names. Also no
>>>> support for global GPU or system metrics.
>>>>
>>>> On the other hand it shows clients from all DRM cards which
>>>> intel_gpu_top does not do.
>>>>
>>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>> Cc: Rob Clark <robdclark@chromium.org>
>>>> Cc: Christian König <ckoenig.leichtzumerken@gmail.com>
>>>> Acked-by: Christian König <christian.koenig@amd.com>
>>>
>>> Reviewed-by: Rob Clark <robdclark@chromium.org>
>>
>> Presumably for 8/8 only?
>>
>> The rest of the series does not apply any more by now. I need to rebase..
> 
> I didn't look closely at the rest of the series (was kinda assuming
> that was mostly just moving things around).. but I see you rebased it
> so I can take a look.

There's a lot in there - first patch is extracting some code into a 
library, with the corresponding renames, but then there are six patches 
of tweaks and feature additions which finally make gputop possible.

Hopefully you can penetrate the concepts. It was all at least Valgrind 
clean back in the day I first did it.

Regards,

Tvrtko
