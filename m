Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E51060112F
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Oct 2022 16:32:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3162B10E516;
	Mon, 17 Oct 2022 14:32:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 102EB10E516
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 14:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1666017154;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ECvCoZJCo97CkQetwaRsUtnWZo3n7fznxRDuF5QXiKQ=;
 b=Ok4ophxKwDMEfsvaNWqa9e3siTTl1RnbF/8zeCW26K7naw4MyrnG6YhzeIQlrYmwzobT3A
 VmBIrI49KWaLxz+GB8ZWYEODxENRfp3kKMGfPgE5xAtbCHKI8P3AXsltoocLxCyE7gyL1R
 jZ78Wy6LoCJyYZwofX0hdAai9sxaGEs=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-651-QABliXHrOWqNDQZoYXuRjg-1; Mon, 17 Oct 2022 10:32:32 -0400
X-MC-Unique: QABliXHrOWqNDQZoYXuRjg-1
Received: by mail-ej1-f69.google.com with SMTP id
 sd5-20020a1709076e0500b0078de7be1ee3so4815061ejc.23
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Oct 2022 07:32:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ECvCoZJCo97CkQetwaRsUtnWZo3n7fznxRDuF5QXiKQ=;
 b=oV1G+VKY1JAuKe2sSKiW9Nq42xOHGPlx3ggu8rHB8liQfE8URspzPIHA1HD+726X63
 90CcDQPz0hrFrMzyrEJdV1Ulxzlu4mZ1KPo60BUkpzOA/07+cJ0GJl4G7zzi/wVFfJnj
 I9eaQ9QB/5B2FcbpLAxealOcWumkDqwrFEkkPU+PPCoAYpbQeMkRVOl1/ZmqeYtiZL0Z
 gFHu5ZRjgW9iz1OqKaWv+VnYvxioVzbwU19R9Zf9Jo1RP9PDUlT2FG4ebBarA3Uu/2qi
 T0f10siAuy0Hud/KI7FuNfdTbauQZTzp8ngqtXB3vVXy4MIo/LuWU3ocxsIIc95oubod
 jiVg==
X-Gm-Message-State: ACrzQf0D3V+sMQfNqCjMRPdKClYk1Pg3ulRmk+x76NHKO1phSDDFhd0Z
 cpQL0Xb/sdJo3H/jT0pTsOuukKOQekZ8eWaMdiJCwBZXLPY21l9zGC1p3AH/olCLoLK8AUmKLLQ
 4YZYiTOwDW0OI+cr4USzV1G/gRBnS
X-Received: by 2002:a05:6402:169a:b0:458:fe61:d3b4 with SMTP id
 a26-20020a056402169a00b00458fe61d3b4mr10399830edv.140.1666017151782; 
 Mon, 17 Oct 2022 07:32:31 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM4swqYxAcbNp265DgIy5ZIEatZ8jOB+JEnRGWO1rH7ZH1tMq5g40Zs16WjhGEou4jtPQG6KbQ==
X-Received: by 2002:a05:6402:169a:b0:458:fe61:d3b4 with SMTP id
 a26-20020a056402169a00b00458fe61d3b4mr10399813edv.140.1666017151544; 
 Mon, 17 Oct 2022 07:32:31 -0700 (PDT)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 cq6-20020a056402220600b00458cc5f802asm7477249edb.73.2022.10.17.07.32.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 17 Oct 2022 07:32:30 -0700 (PDT)
Message-ID: <490bed5d-8db4-dc31-7aed-bc5941c974c5@redhat.com>
Date: Mon, 17 Oct 2022 16:32:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Thorsten Leemhuis <regressions@leemhuis.info>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <355dde1c-91e3-13b5-c8e8-75c9b9779b4f@redhat.com>
 <87a65usvgq.fsf@intel.com> <877d0ysv1e.fsf@intel.com>
 <717fb4ab-5225-884f-37f9-2032c265824e@redhat.com>
 <241af90a-4cec-9266-8fb0-3c69f9880b52@leemhuis.info>
 <fac9a564-edff-db25-20d4-7146ae2a7dc8@redhat.com> <87tu42indv.fsf@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <87tu42indv.fsf@intel.com>
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

On 10/17/22 15:35, Jani Nikula wrote:
> On Mon, 17 Oct 2022, Hans de Goede <hdegoede@redhat.com> wrote:
>> Hi,
>>
>> On 10/17/22 13:19, Thorsten Leemhuis wrote:
>>> CCing the regression mailing list, as it should be in the loop for all
>>> regressions, as explained here:
>>> https://www.kernel.org/doc/html/latest/admin-guide/reporting-issues.html
>>
>> Yes sorry about that I meant to Cc the regressions list, not you personally,
>> but the auto-completion picked the wrong address-book entry
>> (and I did not notice this).
>>
>>> On 17.10.22 12:48, Hans de Goede wrote:
>>>> On 10/17/22 10:39, Jani Nikula wrote:
>>>>> On Mon, 17 Oct 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>>>>>> On Thu, 13 Oct 2022, Hans de Goede <hdegoede@redhat.com> wrote:
>>>>>>> With 6.0 the following WARN triggers:
>>>>>>> drivers/gpu/drm/i915/display/intel_bios.c:477:
>>>>>>>
>>>>>>>         drm_WARN(&i915->drm, min_size == 0,
>>>>>>>                  "Block %d min_size is zero\n", section_id);
>>>>>>
>>>>>> What's the value of section_id that gets printed?
>>>>>
>>>>> I'm guessing this is [1] fixed by commit d3a7051841f0 ("drm/i915/bios:
>>>>> Use hardcoded fp_timing size for generating LFP data pointers") in
>>>>> v6.1-rc1.
>>>>>
>>>>> I don't think this is the root cause for your issues, but I wonder if
>>>>> you could try v6.1-rc1 or drm-tip and see if we've fixed the other stuff
>>>>> already too?
>>>>
>>>> 6.1-rc1 indeed does not trigger the drm_WARN and for now (couple of
>>>> reboots, running for 5 minutes now) it seems stable. 6.0.0 usually
>>>> crashed during boot (but not always).
>>>>
>>>> Do you think it would be worthwhile to try 6.0.0 with d3a7051841f0 ?
>>
>> So I have been trying 6.0.0 with d3a7051841f0 doing a whole bunch of
>> reboots + general use and that seems stable, then I reverted it and
>> the very first boot of the kernel with that broke again, so I'm
>> pretty sure that d3a7051841f0 fixes things.
>>
>> So d3a7051841f0 seems to do more then just fix the WARN().
> 
> Wow, so I guess we do screw up the parsing royally then. :o

I'm running the kernel with lockdep + list-debugging enabled and
I could not reproduce this (not easily at least) on a standard
Fedora 6.0.0 build without that. So maybe the parsing just manages
to write out of binds a tiny bit which just happens to hit a list_head
somewhere ... ?

Either way things look stable with d3a7051841f0 and it turns out
that Fedora already had that cherry-picked downstream in the
5.19.13 kernel which was stable for me too.

>> So lets try to get d3a7051841f0 added to the official stable series
>> ASAP (I just noticed that Mark Pearson from Lenovo has already added it
>> to Fedora's 6.0.2 build.
> 
> I think I'd also pick d3a7051841f0^ i.e. both commits:
> 
> d3a7051841f0 ("drm/i915/bios: Use hardcoded fp_timing size for generating LFP data pointers")
> 4e78d6023c15 ("drm/i915/bios: Validate fp_timing terminator presence")
> 
> for stable.

That sounds good, can you take care of submitting these to gkh ?

Regards,

Hans

