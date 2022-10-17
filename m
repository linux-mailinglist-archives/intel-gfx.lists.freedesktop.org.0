Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20219601001
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 15:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FD0310E460;
	Mon, 17 Oct 2022 13:14:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4778910ED95
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 13:14:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1666012456;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nWD7kp29dFDStjgSQi/V7WysKblelT5q7daFVKTx7qQ=;
 b=QieeukZkLhOc630b/Cq6X1fGTwvJAjLHKWKgn7czKSbZnrHwPQRmPOKebFa1JwHhaAuP4b
 Vx2GgrkzLBSZnHXzbkbImv06j1eKMdOolbr5r+5fKnoc+J6tXGqSYO+Kp+RQfOwqeiOYdf
 93RM6XCCWRNoWla1TQQgPZS4Wj37WE4=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-544-scJu-EmCOIGxJXvaWNG-Kw-1; Mon, 17 Oct 2022 09:14:15 -0400
X-MC-Unique: scJu-EmCOIGxJXvaWNG-Kw-1
Received: by mail-ed1-f71.google.com with SMTP id
 z20-20020a05640240d400b0045cec07c3dcso9213097edb.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 06:14:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=nWD7kp29dFDStjgSQi/V7WysKblelT5q7daFVKTx7qQ=;
 b=E5+FtebLAhKhffTvivOVk8kZ7s8csTzlsy4Eqe26LQReNPrzSY6HYd3OtpBWluXxap
 jfPH1TsqjTHKHGnIuq115HnZVTHNe31imkjuCAuZRgacccJKYRcgjZlkjH/4uB7UvBPg
 T7tNzTZNi69CxNSLs+LL16aY9GsBhVzU2ECIVGXBkGa24KCcEtaYM+Opr8y3iYjVGV36
 OK9frysb1+XCVpw2WmdMVWjaDM5dU8ae3eYKzlJ3RU2UBhw6AtGnyPDEr5Ge/28d03zH
 qx/h+Lq4AyFUx/zS5RnpjUtLUS917WAdMeHscaFDkcfcRNH+MRcTpZjgvqJK50ZaiWZt
 Xl4Q==
X-Gm-Message-State: ACrzQf08fSIXsfGxKP5N+3NLY+Uwn/Rg9bB9edJyVMn4STio9NclJpsA
 5C39sTETHDR6xNYKb67n9YVWVBtA0AJaKTdi4B6C2TfG2kqAuqP2w1Za1iV4JjNcfdtigfJ6EJ6
 B5/Ep0tz/rK1aWoCh7fpIbgFz1imI
X-Received: by 2002:a17:906:cc52:b0:78d:d477:5b7f with SMTP id
 mm18-20020a170906cc5200b0078dd4775b7fmr8628893ejb.558.1666012453951; 
 Mon, 17 Oct 2022 06:14:13 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM6puxnpvlu/tDqMR5K2evis/s4/NlzjLIPEDSRIXNt9YowomUV8MRLSDeLbtNUNIl9alcNF2g==
X-Received: by 2002:a17:906:cc52:b0:78d:d477:5b7f with SMTP id
 mm18-20020a170906cc5200b0078dd4775b7fmr8628880ejb.558.1666012453741; 
 Mon, 17 Oct 2022 06:14:13 -0700 (PDT)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 kx22-20020a170907775600b00738795e7d9bsm6213820ejc.2.2022.10.17.06.14.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Oct 2022 06:14:13 -0700 (PDT)
Message-ID: <fac9a564-edff-db25-20d4-7146ae2a7dc8@redhat.com>
Date: Mon, 17 Oct 2022 15:14:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Thorsten Leemhuis <regressions@leemhuis.info>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <355dde1c-91e3-13b5-c8e8-75c9b9779b4f@redhat.com>
 <87a65usvgq.fsf@intel.com> <877d0ysv1e.fsf@intel.com>
 <717fb4ab-5225-884f-37f9-2032c265824e@redhat.com>
 <241af90a-4cec-9266-8fb0-3c69f9880b52@leemhuis.info>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <241af90a-4cec-9266-8fb0-3c69f9880b52@leemhuis.info>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] alderlake crashes (random memory corruption?) with
 6.0 i915 / ucode related
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

Hi,

On 10/17/22 13:19, Thorsten Leemhuis wrote:
> CCing the regression mailing list, as it should be in the loop for all
> regressions, as explained here:
> https://www.kernel.org/doc/html/latest/admin-guide/reporting-issues.html

Yes sorry about that I meant to Cc the regressions list, not you personally,
but the auto-completion picked the wrong address-book entry
(and I did not notice this).

> On 17.10.22 12:48, Hans de Goede wrote:
>> On 10/17/22 10:39, Jani Nikula wrote:
>>> On Mon, 17 Oct 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>>>> On Thu, 13 Oct 2022, Hans de Goede <hdegoede@redhat.com> wrote:
>>>>> With 6.0 the following WARN triggers:
>>>>> drivers/gpu/drm/i915/display/intel_bios.c:477:
>>>>>
>>>>>         drm_WARN(&i915->drm, min_size == 0,
>>>>>                  "Block %d min_size is zero\n", section_id);
>>>>
>>>> What's the value of section_id that gets printed?
>>>
>>> I'm guessing this is [1] fixed by commit d3a7051841f0 ("drm/i915/bios:
>>> Use hardcoded fp_timing size for generating LFP data pointers") in
>>> v6.1-rc1.
>>>
>>> I don't think this is the root cause for your issues, but I wonder if
>>> you could try v6.1-rc1 or drm-tip and see if we've fixed the other stuff
>>> already too?
>>
>> 6.1-rc1 indeed does not trigger the drm_WARN and for now (couple of
>> reboots, running for 5 minutes now) it seems stable. 6.0.0 usually
>> crashed during boot (but not always).
>>
>> Do you think it would be worthwhile to try 6.0.0 with d3a7051841f0 ?

So I have been trying 6.0.0 with d3a7051841f0 doing a whole bunch of
reboots + general use and that seems stable, then I reverted it and
the very first boot of the kernel with that broke again, so I'm
pretty sure that d3a7051841f0 fixes things.

So d3a7051841f0 seems to do more then just fix the WARN().

So lets try to get d3a7051841f0 added to the official stable series
ASAP (I just noticed that Mark Pearson from Lenovo has already added it
to Fedora's 6.0.2 build.

Regards,

Hans

