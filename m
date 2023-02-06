Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D61E68B871
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Feb 2023 10:19:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3095D10E335;
	Mon,  6 Feb 2023 09:19:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C772210E349;
 Mon,  6 Feb 2023 09:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675675148; x=1707211148;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=0nO/AsM6X4LFsVwbidohlP4WCxPKUtESu95d5rEswcA=;
 b=VIT2rFY6TXoVeAF4s/uD8+UAd6nuy9g05xeplZu6YyWOSnUeqzmOwb4n
 N9uDGFFQsQR/Ho+L4op1CbbxuQuT21/0dA14IgOT6nXLV9XDzDhHya51I
 cuSJfCcs6qcy+x0kJKv5uthdWn9ic3GdtH/EV2NJX31J8gsNwOFvTNJ1o
 9LCRYfOj8KWY3GaN472phN21RSZ4dso0H5brnMQQnAXOuAdr6Bl2Ak3vw
 S0J5u04VaRlmLjQ/fhRl1UoF3mLztJJZ3ydrnyTdnk4CeWGbekgwXiE4X
 YkUbQbWZ2cGEU55AHzLQwNOGqxbSxl3W7BooHbMd3lJJFIeIt7irxi2PM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10612"; a="317172623"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="317172623"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 01:19:07 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10612"; a="729951169"
X-IronPort-AV: E=Sophos;i="5.97,276,1669104000"; d="scan'208";a="729951169"
Received: from vastrong-mobl.amr.corp.intel.com (HELO [10.213.203.226])
 ([10.213.203.226])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2023 01:19:05 -0800
Message-ID: <0edf920f-0ba8-2aa7-6b52-07facb400b3f@linux.intel.com>
Date: Mon, 6 Feb 2023 09:19:02 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org,
 Rob Clark <robdclark@chromium.org>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
References: <20230131113237.3707217-1-tvrtko.ursulin@linux.intel.com>
 <20230131113237.3707217-9-tvrtko.ursulin@linux.intel.com>
 <20230203164224.6y3qx4yztt7hd5cu@kamilkon-desk1>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20230203164224.6y3qx4yztt7hd5cu@kamilkon-desk1>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 03/02/2023 16:42, Kamil Konieczny wrote:
> Hi Tvrtko,
> 
> On 2023-01-31 at 11:32:37 +0000, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Rudimentary vendor agnostic example of how lib_igt_drm_clients can be used
>> to display a sorted by card and usage list of processes using GPUs.
>>
>> Borrows a bit of code from intel_gpu_top but for now omits the fancy
>> features like interactive functionality, card selection, client
>> aggregation, sort modes, JSON output  and pretty engine names. Also no
>> support for global GPU or system metrics.
>>
>> On the other hand it shows clients from all DRM cards which
>> intel_gpu_top does not do.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Rob Clark <robdclark@chromium.org>
>> Cc: Christian König <ckoenig.leichtzumerken@gmail.com>
>> Acked-by: Christian König <christian.koenig@amd.com>
> 
> I run it with:
> # ./gputop
> 
> but it do not work on my Skylake card, I see no output,
> kernel 5.19.0-29-generic, ubuntu 22.10

Odd, 5.19 should have the support. Intel_gpu_top works - it is showing 
the individual clients?

> 
> # ./lsgpu
> card0                    Intel Skylake (Gen9)              drm:/dev/dri/card0
> └─renderD128                                               drm:/dev/dri/renderD128
> 
> Please add some options like debug, version, debug with high
> verbose level, help. It seems like q or Q do not exit.

As the cover letter hints I was only set out to demonstrate an extremely 
rudimentary vendor agnostic tool. To quote the cover letter more - "..It 
also makes no effort to provide sorting modes, well any interactivity, 
or any pretty names for GPUs or engines..". I have no scope presently to 
make it better or nicer.

The tool however can serve as a starting point and people had reported 
it working as-is with a few other drivers, AMD, msm and most recently I 
believe etnaviv. So perhaps a pool of people to further improve it will 
be found there in the future.

In summary I think it's worth reviewing so that the common code gets 
extracted from intel_gpu_top into respective libraries. After that I was 
hoping other people start contributing further improvements.

Regards,

Tvrtko
