Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D471821C491
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jul 2020 15:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA7AF6E2DA;
	Sat, 11 Jul 2020 13:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E223B6E064
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jul 2020 13:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594475888;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=GorC7H2mPyM9HiYSVOpaQ0GOSuzksYAJjMkiJ77nsns=;
 b=DZ+yjIb3viawM9Lf3zPO3pG0fp4jig9Ah2lDmN/l5PepaqpyTXoiPg2FTF62+j9SLrFE6U
 tx5IMXaTxdIeQGO6363xNuOcevFRGAeRKjB5DTJCHmIkg1MBStIVdPZYkKOkysDLXKsJbz
 nOdhvygD0pF9p3Xb1miTRTA+kHy1JrE=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-273-Tn0cG2wCOE2e5qSpvgpgOA-1; Sat, 11 Jul 2020 09:58:05 -0400
X-MC-Unique: Tn0cG2wCOE2e5qSpvgpgOA-1
Received: by mail-ed1-f72.google.com with SMTP id da18so11415139edb.13
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jul 2020 06:58:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=m6J6T6hNE9yvLEROStKfnmk4k6OpGMdc4beepe1jo0w=;
 b=JzliAArJan1B8ntsTM8juYv569k21Sg2xq0I8xhmbPYReaV3QJwZHSZAhRQORYxMUs
 qpICSZJc1X6s1Iv4gWsFUgVvE1AkGGj3/oXa2L7uTKSRoKK90JqkPaF3qa15UR7XSDRE
 bGgUAiG/8eaqbr3F/9HcSSjC8OsHXo1VEhxUlp3PUmRwohaZoQMvnKi/jaQ1BI7cYOyn
 GVA4Q7FSn1sWCuQT1VlEmTqjW9h/RZyMUnUXcxybQd2b0u9tCKzQ3j7YTstFCcsJkr3G
 /NrSv3hEBVRyQOSgFlPQHA6/6KOUsj5Jdm/1ndg0gJlobp6uHaHwMmkS/NJkSjyG4duN
 0EyQ==
X-Gm-Message-State: AOAM531/JM043y9VeaQLZm5WAj4Y+Y+/KIqwbri8hGOtfFPyJLkvqdfr
 ofQuUXBCZVLkqfoYB9lBE6sJmoVklKLaVoUZ2LG2SdgZ2dR5FIFG8S/XmuJ54hFp5Lv8ipA6i5a
 H5GdrwBD8hG+bPBXHXKz+yuSdiUBP
X-Received: by 2002:a17:906:1a59:: with SMTP id
 j25mr62206009ejf.398.1594475884052; 
 Sat, 11 Jul 2020 06:58:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyV4+j4+MFepvD2IOQF0qSRfySKoiQJW2DpkPXYqNJOhV5/QUkfGAppFHknge4Oh4ffuHn1Aw==
X-Received: by 2002:a17:906:1a59:: with SMTP id
 j25mr62205990ejf.398.1594475883843; 
 Sat, 11 Jul 2020 06:58:03 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id g21sm6868328edr.45.2020.07.11.06.58.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 11 Jul 2020 06:58:03 -0700 (PDT)
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20200708211432.28612-1-hdegoede@redhat.com>
 <20200708211432.28612-7-hdegoede@redhat.com>
 <20200709145013.GA3703480@smile.fi.intel.com>
 <af7158c5-02bb-38ce-4b22-e469079dcccf@redhat.com>
 <20200711061120.di53sk5utjerb72q@pengutronix.de>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <d98c758b-711d-baae-e752-1b32040128a4@redhat.com>
Date: Sat, 11 Jul 2020 15:58:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200711061120.di53sk5utjerb72q@pengutronix.de>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v4 06/16] pwm: lpss: Correct get_state
 result for base_unit == 0
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
Cc: linux-pwm@vger.kernel.org, intel-gfx <intel-gfx@lists.freedesktop.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 7/11/20 8:11 AM, Uwe Kleine-K=C3=B6nig wrote:
> On Thu, Jul 09, 2020 at 05:47:59PM +0200, Hans de Goede wrote:
>> Hi,
>>
>> On 7/9/20 4:50 PM, Andy Shevchenko wrote:
>>> On Wed, Jul 08, 2020 at 11:14:22PM +0200, Hans de Goede wrote:
>>>> The datasheet specifies that programming the base_unit part of the
>>>> ctrl register to 0 results in a contineous low signal.
>>>>
>>>> Adjust the get_state method to reflect this by setting pwm_state.period
>>>> to 1 and duty_cycle to 0.
>>>
>>> ...
>>>
>>>> +	if (freq =3D=3D 0) {
>>>> +		/* In this case the PWM outputs a continous low signal */
>>>
>>>> +		state->period =3D 1;
>>>
>>> I guess this should be something like half of the range (so base unit c=
alc
>>> will give 128). Because with period =3D 1 (too small) it will give too =
small
>>> base unit (if apply) and as a result we get high frequency pulses.
>>
>> You are right, that if after this the user only changes the duty-cycle
>> things will work very poorly, we will end up with a base_unit value of
>> e.g 65535 and then have almost no duty-cycle resolution at all.
> =

> Is this a problem of the consumer that we don't need to solve? Are there
> known consumers running into this problem?

AFAICT we never ever actually see freq =3D=3D 0 here, this is just a code-p=
ath
to avoid a divide by 0 in case we somehow mysteriously do get freq =3D=3D 0
here.

On boot the PWM controller is either not used and then the default freq =3D
input-clock / 256, or it is used and programmed to same sane value.

> pwm_lpss_prepare() is buggy here, a request for a too low period should be
> refused.

So instead of clamping as is done in an earlier patch, we should return
-EINVAL ?  Only for too low periods, or also for too high periods ?

I must say this does worry me a bit, the VBT may request 200Hz output
frequency and some revisions of the PWM controller can do 283Hz as
lowest output freq. ATM we just give the i915 code the 283 Hz if it
request 200, that seems more sane then to give it -EINVAL, since -EINVAL
would require the i915 driver to know the exact limits of each PWM
controller and then to clamp the VBT value before passing it to the
PWM driver, that means moving knowledge out of the PWM driver into
the i915 code.

I believe that without first amending the PWM API too allow a consumer
to query the period min/max values, returning -EINVAL is not the right
thing to do here.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
