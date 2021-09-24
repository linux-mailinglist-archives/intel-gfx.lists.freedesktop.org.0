Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2FDA4171E3
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Sep 2021 14:32:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EF4E6EE17;
	Fri, 24 Sep 2021 12:32:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com
 [IPv6:2a00:1450:4864:20::435])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABB736E1A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 09:13:59 +0000 (UTC)
Received: by mail-wr1-x435.google.com with SMTP id t8so25397056wri.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Sep 2021 02:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=s75AKAdlvrGxfSygK/8bjn28ZtmSZIKyQWgmPrqblu8=;
 b=plfRUem2N/3P4wlghr8oV3cVlUqGTlVk7PnrtxSFRI8zXQpu8Vkn4mMe5711MK88q4
 ieS2wT/LVwgWXdLFf5Rq0RSQXyQjbMyM6vr75bI5N/0TkHkRCUzA8iniHnVtp5Sjq5H/
 yeBccdCkvwgUlb/HV1evTRIoJ0oy2m29RKeHGqyaqxtUpg5bgYof5DWTEPQ8G/ckxK6y
 XrX7vl1Hy6ygRCKyH3W4oF7lTykGnqvllF+Vsvmkcxni9NRDvrpJqOrMpA3dt+VTtmqm
 na3bkjYDwBNHUDuXyB8X4BFbsaFwf/XWnW0aFdRNo6XmPjQ3RklhkEGeM6E0ZJTQq2Ne
 d4Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=s75AKAdlvrGxfSygK/8bjn28ZtmSZIKyQWgmPrqblu8=;
 b=D+JGT7s/0n+/6v9g1fFiPdeb/1cJ+meel8t1UGoB3P9AWIk/uTDz/Y87ySM1uoWgL9
 dMnz60Dhuh+gH5bS8b0kbWDvNDWAUBcn4rf6sLq8HUeHvqmcuDTabdaTN1c7yD6e3SeY
 X0SuNaKrk8CFVpG1Ej1VM8os6RFWOGntKirpnz3hfKVBdEB+sOkuBlnxrjF/D7cp7LX8
 wLjx2zw3lyXjzwIl+WznrAvOXt1tsJSruaLjo9Ak6Fzbxzdy5TPdSBWitR2GpiDO8tR7
 XdtWI6awcqsOyxV4in3SYYtAyunkBSVsdPlzCdvD5drl3bNr4wI3VERbiKXyHQ+dv3wq
 TDWw==
X-Gm-Message-State: AOAM531irYnToSgbTog68L935R5omDL8PZ4jt8+9snhyWXyowb45qOu9
 j4nKetByMHSWZYebpxZDsTjYdj6Z91Q=
X-Google-Smtp-Source: ABdhPJzRQSpKMxC+dgkFCaVCUtZc2EnR5oiGjk9M8DmI1HF3w9zYLlI2bXQLTtgt1SJTCY0zUPi2MA==
X-Received: by 2002:a1c:7d4d:: with SMTP id y74mr900644wmc.181.1632474838139; 
 Fri, 24 Sep 2021 02:13:58 -0700 (PDT)
Received: from ?IPv6:2a02:908:1252:fb60:5264:89d9:5fe9:27b8?
 ([2a02:908:1252:fb60:5264:89d9:5fe9:27b8])
 by smtp.gmail.com with ESMTPSA id i7sm324316wrp.5.2021.09.24.02.13.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Sep 2021 02:13:57 -0700 (PDT)
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, Patchwork <patchwork@emeril.freedesktop.org>
References: <20210923075608.2873-1-christian.koenig@amd.com>
 <163240233283.31050.11977750526229880215@emeril.freedesktop.org>
 <e0aada02-8a1c-dfd3-d855-8776259b27fb@linux.intel.com>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <636b43d9-65e1-7b86-8589-745c83bf9734@gmail.com>
Date: Fri, 24 Sep 2021 11:13:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <e0aada02-8a1c-dfd3-d855-8776259b27fb@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
X-Mailman-Approved-At: Fri, 24 Sep 2021 12:32:21 +0000
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



Am 24.09.21 um 11:11 schrieb Tvrtko Ursulin:
>
> On 23/09/2021 14:05, Patchwork wrote:
>
> [snip]
>
>>   *
>>
>>     igt@gem_busy@busy@all:
>>
>>       o fi-apl-guc: PASS
>> <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_10630/fi-apl-guc/igt@gem_busy@busy@all.html>
>>         -> FAIL
>> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_21144/fi-apl-guc/igt@gem_busy@busy@all.html>
>>         +2 similar issues
>
> All seem to be the same failure:
>
> (gem_busy:874) igt_dummyload-CRITICAL: Test assertion failure function 
> igt_spin_factory, file ../lib/igt_dummyload.c:490:
> (gem_busy:874) igt_dummyload-CRITICAL: Failed assertion: 
> gem_bo_busy(fd, spin->handle)
>
> Which is saying spinner which was just submitted is not immediately 
> reported as busy. And that sounds impossible. Must be a pretty basic 
> bug somewhere which I don't immediately see. Like unlocked iterator 
> failing to walk the fences or something.

I was just to write a mail to you about this since I'm currently 
scratching my head what exactly goes wrong here.

Is there an igt test which uses only vgem and currently fails which I 
could also run on AMD hardware?

Thanks,
Christian.

>
> Regards,
>
> Tvrtko

