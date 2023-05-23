Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 972C070D936
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 11:36:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B40B10E41A;
	Tue, 23 May 2023 09:36:24 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A139610E419;
 Tue, 23 May 2023 09:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684834581; x=1716370581;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=jgXgtUpRvnxQ0fRRW90xKnQ1a2moiyyyzGwsGOJZFvQ=;
 b=U15k53pj6Ru5ZriIH3KW6oPymenv2pjnQ7ZE5cMKr/FqhXeCz5SsJi6P
 WPrjNDh8gVPvzUu1e8St4p9RWfvo+oEmV+Yo6XWyvUB2OJOpNxHS1ZhX4
 kQCGA5FQlEv4nd6M06wQzrv9v63Pj8i1MK/Hmmr4gSAQGrAkHgELJMn/n
 2CeUwNN4GJMq/3Z3JiN071r5Ps6bJArPyPyigFM1OvdRRvH1ujS2OImpm
 GIDcfY3nnl0yQlVJOebh+nJA0WFsMQuOFITnkOqU1dd8eVF2S7XVltHYC
 bY35z3LX25NLSV4mmNC01Em3NnhoV36Pgy7DdsOLcnTFgUT/PIhBVxFs7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="356417564"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="356417564"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 02:36:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10718"; a="950483780"
X-IronPort-AV: E=Sophos;i="6.00,185,1681196400"; d="scan'208";a="950483780"
Received: from cboylan-mobl.ger.corp.intel.com (HELO [10.213.203.203])
 ([10.213.203.203])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 May 2023 02:36:10 -0700
Message-ID: <e6b80f3e-8734-9362-a38f-d35d108366a2@linux.intel.com>
Date: Tue, 23 May 2023 10:36:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: Rob Clark <robdclark@chromium.org>
References: <20230515133630.2163170-1-tvrtko.ursulin@linux.intel.com>
 <CAJs_Fx4tPYkPo-Oc2BduuzC09OfkB3PbFwBQ3b7U9rG_Akh_Fw@mail.gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <CAJs_Fx4tPYkPo-Oc2BduuzC09OfkB3PbFwBQ3b7U9rG_Akh_Fw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH i-g-t 0/2] gputop/intel_gpu_top: Move name
 to be the last field
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 15/05/2023 15:14, Rob Clark wrote:
> On Mon, May 15, 2023 at 6:36 AM Tvrtko Ursulin
> <tvrtko.ursulin@linux.intel.com> wrote:
>>
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Rob,
>>
>> I thought maybe when you add memory stats the same field order like top(1)
>> would feel more natural? That is client name comes last and is left justified.
>> All other stats then come in the middle, between PID and NAME.
>>
>> DRM minor 0
>>      PID     render         copy         video     video-enhance  NAME
>>     2704 |▌           ||            ||            ||            | kwin_x11
>>     2734 |▏           ||            ||            ||            | plasmashell
>>     3932 |            ||            ||            ||            | krunner
>>     4414 |            ||            ||            ||            | xdg-desktop-por
>> 1999477 |            ||            ||            ||            | firefox
>> 2162094 |            ||            ||            ||            | thunderbir
> 
> Seems like a good idea, and more in line with top/htop/nvtop

A-b/R-b? Or you go ahead with meminfo changes and I can rebase this on 
top later. I am okay either way.

Regards,

Tvrtko

> BR,
> -R
> 
>> intel-gpu-top: Intel Alderlake_s (Gen12) @ /dev/dri/card0 -   15/  15 MHz
>>      99% RC6;  0.01/ 5.46 W;       34 irqs/s
>>
>>           ENGINES     BUSY                                        MI_SEMA MI_WAIT
>>         Render/3D    1.31% |▌                                   |      0%      0%
>>           Blitter    0.00% |                                    |      0%      0%
>>             Video    0.00% |                                    |      0%      0%
>>      VideoEnhance    0.00% |                                    |      0%      0%
>>
>>      PID   Render/3D      Blitter        Video      VideoEnhance  NAME
>>     2734 |▏           ||            ||            ||            | plasmashell
>>     2704 |▏           ||            ||            ||            | kwin_x11
>>     1837 |▏           ||            ||            ||            | Xorg
>> 3429732 |            ||            ||            ||            | kwrite
>> 2162094 |            ||            ||            ||            | thunderbird
>>
>> Cc: Rob Clark <robdclark@chromium.org>
>>
>> Tvrtko Ursulin (2):
>>    gputop: Move client name last
>>    intel_gpu_top: Move client name last
>>
>>   tools/gputop.c        | 19 +++++++++----------
>>   tools/intel_gpu_top.c | 19 +++++++++----------
>>   2 files changed, 18 insertions(+), 20 deletions(-)
>>
>> --
>> 2.37.2
>>
