Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5407A7B2111
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 17:23:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DADB310E685;
	Thu, 28 Sep 2023 15:22:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com
 [IPv6:2a00:1450:4864:20::52a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F7E810E67C
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 15:11:02 +0000 (UTC)
Received: by mail-ed1-x52a.google.com with SMTP id
 4fb4d7f45d1cf-53639fb0ba4so713219a12.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 08:11:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=grsecurity.net; s=grsec; t=1695913861; x=1696518661;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=t2y2541nMisVHr3vMJa6D6XoZukwxaN+R6bBxNYfFVw=;
 b=UUaaieP+65MJO7mO/+wqo9JnLxF5Qra7cFKAYboxE8xcKZJTrZNZO81LUj7t521qFc
 aWWeA1kW7gczmjlRw4jK6HCVOpWjtSYPLkuQdg9cipAvWs68a44FreXAn2FaNjLrIZ+2
 fTvclnn8eV29NynXsSmDRJqBNZz1Bv90Fto/ygUIkpBoNNv5/12Mf2mvOUwOKZ48nfSS
 MSLN9RMg+riXkB1Scxt3e19FRr6WGlf09bvPIRFhj/lWrGHkXQ0E6dR+8ui3TVYDYLZQ
 xINiAAHeylaTXvuRcPw9Uf5rH+Jtt9lOb7mugDHGu5gG1rsiQXhfzNFLlx2O4ahmZu1p
 x63Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695913861; x=1696518661;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=t2y2541nMisVHr3vMJa6D6XoZukwxaN+R6bBxNYfFVw=;
 b=bXXT7vcly4KIlKkY7WiZR+yIO+jXh5+yqiduqq3Ox55/4M3K/zj2pUsE2AQxnuwoPa
 fhmkkjcEvHkcjvC/mox7bs8SHEsdW3O4q6x7Ny52hqmHOIXgtXE6xuzJ1f/Z+gE4zegm
 +3y6vHEbZFoHChFAg/IKTwSlK3JoSsbRw0at0RJke4/zjyrzD7Q8w5QcgP2aBgsqvTkr
 Ngik+awk5tjP+2pB4m9Kz967z+0G/yT5O41CEeKdQnkmY36uMLnprYl6blEoQnXoVsWT
 xgFEGYoUopYco75qTnFdugixcE3E/FBjiIjSsyhpUtTsU125NSqZqaAdkBMmi1HvvwHb
 NN6w==
X-Gm-Message-State: AOJu0YzAZEsTb1GzI0lEdmjIZR5JM/Wl31xXW8naVBoO/3xMZ6V2g6t6
 HvTDhsPaQCGl58FbIV0vfmmwE3nduT/TCUXwJG4=
X-Google-Smtp-Source: AGHT+IG304L3FCrrl137A7w7zgVk2U7xYFF82EGo5o4mRntRV7kSmPdm4z0164wW6Xik/ZhgDAB7EQ==
X-Received: by 2002:a05:6402:204f:b0:530:a19b:175 with SMTP id
 bc15-20020a056402204f00b00530a19b0175mr1389296edb.2.1695913860619; 
 Thu, 28 Sep 2023 08:11:00 -0700 (PDT)
Received: from ?IPV6:2003:f6:af04:3200:545f:d719:5bf4:4dc5?
 (p200300f6af043200545fd7195bf44dc5.dip0.t-ipconnect.de.
 [2003:f6:af04:3200:545f:d719:5bf4:4dc5])
 by smtp.gmail.com with ESMTPSA id
 b7-20020a056402350700b0053613c8312bsm1510389edd.42.2023.09.28.08.10.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 28 Sep 2023 08:11:00 -0700 (PDT)
Message-ID: <8e7c6852-0f87-6a82-7d6f-43e9490158bb@grsecurity.net>
Date: Thu, 28 Sep 2023 17:10:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US, de-DE
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230905113921.14071-1-minipli@grsecurity.net>
 <60b80b2d-b96f-f87c-d96b-31650620b2f9@grsecurity.net>
 <d1ebccb4-4eaf-14d0-0f8b-344122c045d5@linux.intel.com>
From: Mathias Krause <minipli@grsecurity.net>
In-Reply-To: <d1ebccb4-4eaf-14d0-0f8b-344122c045d5@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Thu, 28 Sep 2023 15:22:50 +0000
Subject: Re: [Intel-gfx] [PATCH 0/2] drm/i915: fix rb-tree/llist/list
 confusion
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

On 28.09.23 13:15, Tvrtko Ursulin wrote:
> Hi,
> 
> On 21/09/2023 07:24, Mathias Krause wrote:
>> On 05.09.23 13:39, Mathias Krause wrote:
>>> Commit 1ec23ed7126e ("drm/i915: Use uabi engines for the default engine
>>> map") introduced a bug regarding engine iteration in default_engines()
>>> as the rb tree isn't set up yet that early during driver initialization.
>>> This triggered a sanity check we have in our grsecurity kernels, fixed
>>> by reverting the offending commit (patch 1) and giving the
>>> type-multiplexed members some more visibility to avoid making a similar
>>> mistake again in the future (patch 2).
>>>
>>> Please apply!
>>>
>>> Thanks,
>>> Mathias
>>>
>>> Mathias Krause (2):
>>>    Revert "drm/i915: Use uabi engines for the default engine map"
>>>    drm/i915: Clarify type evolution of uabi_node/uabi_engines
>>>
>>>   drivers/gpu/drm/i915/gem/i915_gem_context.c  |  9 +++++----
>>>   drivers/gpu/drm/i915/gt/intel_engine_types.h | 10 +++++++++-
>>>   drivers/gpu/drm/i915/gt/intel_engine_user.c  | 17 +++++++----------
>>>   drivers/gpu/drm/i915/i915_drv.h              | 17 ++++++++++++++++-
>>>   4 files changed, 37 insertions(+), 16 deletions(-)
>>>
>>
>> Ping. Any objections to this series?
> 
> Apologies for the delay in getting back to you, I was away from work for
> a bit.

Don't worry. vger had its hickups with gmail-originated Emails, adding
further delay. I think my "ping" Email only made it to the list three
days ago? -- 4 days late :D

> 
> Tricky thing you discovered and a great analysis in the commit text.

Thanks! Was a nasty bug to chase when the display simply stays black ;)

> 
> But we cannot simply revert 1ec23ed7126e since that would miss to
> include the media tile engines on Meteorlake.

Oh, missed that! But, honestly, I have no clue about i915's inner
workings. It's quite a beast---a lot of code to chase to grasp all
inter-dependencies.

> 
> What I think should work is to move the call to
> intel_engines_driver_register() from i915_gem_driver_register() to
> i915_gem_init(). I can double-check and send a patch, or you can,
> keeping parts of your great commit message in 1/2?

I can prepare a patch and test it on my systems (both ADL, a NUC12 and a
Lenovo X1). I've no Meteorlake, though. Should have something ready
tomorrow.

> 
> That would align the expectations of intel_display_driver_probe() which
> expects GEM to be fully initialized by the time it runs.

Sounds about right.

> 
> 2/2 looks good and I would be happy to merge it in the interim.

It helped me, at least, to clarify for each user what type it expects
the list to be. Then it's easy to follow a code chain and see when a
type transformation happens and when assumptions get invalidated / changed.

> Going
> forward I would pencil in looking into removing the rbtree and
> multi-stage complications. Former I think isn't needed, code which needs
> fast random lookup via the tree never materialized, and latter perhaps
> could be sorted in place somehow, that is, without the need for two list
> types externally visible.

I agree, simplifying or even completely removing the type overload makes
the code less fragile, so I'm all for it!

Thanks,
Mathias

> 
> Regards,
> 
> Tvrtko
