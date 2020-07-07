Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B91F7217534
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 19:31:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B45AD6E250;
	Tue,  7 Jul 2020 17:31:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D5D26E21E
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 17:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594143094;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/ngIsaVrgE6cWX9Wfc7B2KiuqrZPEc+gF9Rrn9/xaTM=;
 b=f6NehPyflLg0f0tT44z7HnRxR+DZfIyaL+8NMsubvMixQOB+V0GBy+AG2al+8hRcpBXO9q
 /sHjPr4jkgPt8IZsy2AMays0OV3/QWzFM0uv9Xv8Ke1fS6BsOXYsA+fgrbSyQdJFYH/Svq
 AXrEM0VxG9qtN8PkdomVlR09uq/7yL8=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-65-lB3hH0MSOzmZ0L44-5_xwA-1; Tue, 07 Jul 2020 13:31:33 -0400
X-MC-Unique: lB3hH0MSOzmZ0L44-5_xwA-1
Received: by mail-ed1-f72.google.com with SMTP id g18so54733578edu.22
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Jul 2020 10:31:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ZkpZ9ksQd7iWxIlvtNfzO9EHx1DMJN1+3vOo10sqsHI=;
 b=QAponxSHO3+e4Ube9+y60Wi0DsD8iOPe9ri4+nxNGFf8cDqLYJvf+fDZs//H7g5Jcd
 nxIMIbbiJmX2O0GmPhiRc1meHDWzD/yABEy/9yebFakyD97cCXSA1ZE5q+J7xwVxvisV
 qnu/NpVYkpjTyb/jETuC+RXzmkUd/2gXBY5tPACawzH5kLO+54W8ToHOEj0VyQ3t5ENC
 rJg1L85GLnC9UfY/YrNGQJBuz9KhkV1kUJhW93Q/s5U/YHHHDYiTCaiz08F/d0EWjt3w
 AhJcgcxyu1+FsdKk2duaWemLrtVceQr9JWP331ReAGe4AQVqythBzmt+/2MR9N8MKsup
 JhVg==
X-Gm-Message-State: AOAM531tdp98fDAPfbSjpEYTsyOpxS/pmk5t5osJ/BLwg+hAb7zhATdr
 Xrw/jUKVYDpgMzZasBpBNYZ0yHXSJHHeXMOL66auA/hsYfQiaYIAv3kJDIyn2Xnwj11No6xdTNV
 LKyPBPvVvCNHlVrCkGluu2nWcgB+D
X-Received: by 2002:a05:6402:1777:: with SMTP id
 da23mr61480137edb.260.1594143091311; 
 Tue, 07 Jul 2020 10:31:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw9VwVc3j4Gj9BryDzoyTih9enqH0U2nPjxRT5SbM/g3/dUXuTaZu6s6ggKNVhBmkisFGZCNA==
X-Received: by 2002:a05:6402:1777:: with SMTP id
 da23mr61480119edb.260.1594143091129; 
 Tue, 07 Jul 2020 10:31:31 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id n16sm650173ejo.54.2020.07.07.10.31.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Jul 2020 10:31:30 -0700 (PDT)
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20200620121758.14836-1-hdegoede@redhat.com>
 <20200620121758.14836-5-hdegoede@redhat.com>
 <20200622073554.wf3smq3tvnr6t2xy@taurus.defre.kleine-koenig.org>
 <e07a7dd6-c361-32b8-c4e7-91e022f9c21d@redhat.com>
 <20200707073424.w6vd6e4bhl56kosd@pengutronix.de>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <1496178b-ce39-9285-ff75-cd39bc0e9aa7@redhat.com>
Date: Tue, 7 Jul 2020 19:31:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200707073424.w6vd6e4bhl56kosd@pengutronix.de>
Content-Language: en-US
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v3 04/15] pwm: lpss: Add range limit check
 for the base_unit register value
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

On 7/7/20 9:34 AM, Uwe Kleine-K=C3=B6nig wrote:
> On Mon, Jul 06, 2020 at 10:53:08PM +0200, Hans de Goede wrote:
>> Hi,
>>
>> Thank you for your review and sorry for the slow reply.
> =

> No problem for me, I didn't hold my breath :-)
>   =

>>>> diff --git a/drivers/pwm/pwm-lpss.c b/drivers/pwm/pwm-lpss.c
>>>> index 43b1fc634af1..80d0f9c64f9d 100644
>>>> --- a/drivers/pwm/pwm-lpss.c
>>>> +++ b/drivers/pwm/pwm-lpss.c
>>>> @@ -97,6 +97,9 @@ static void pwm_lpss_prepare(struct pwm_lpss_chip *l=
pwm, struct pwm_device *pwm,
>>>>    	freq *=3D base_unit_range;
>>>>    	base_unit =3D DIV_ROUND_CLOSEST_ULL(freq, c);
>>>
>>> DIV_ROUND_CLOSEST_ULL is most probably wrong, too. But I didn't spend
>>> the time to actually confirm that.
>>
>> Yes I saw your comment elsewhere that the PWM API defines rounding
>> in a certain direction, but fixing that falls outside of this patch.
> =

> Yeah, sure.
> =

>> [...]
>> I hope this helps to explain what is going on a bit.
> =

> I will try to make sense of that and reply to the patch directly when I
> succeeded.
> =

>> ###
>>
>> As for the behavior on base_unit=3D=3D0 in the get_state method,
>> as mentioned above I wrote that when I did not fully understood
>> how the controller works.
>>
>> We really should never encounter this.
>>
>> But if we do then I think closest to the truth would be:
>>
>> state->period     =3D UINT_MAX;
>> state->duty_cycle =3D 0;
> =

> I'd say state->period =3D 1 & state->duty_cycle =3D 0 is a better
> representation.

But that would suggest the output is configured for an
infinitely high output frequency, but the frequency is
actually 0, the reason why get_state needs to treat a
base_unit val of 0 special at all is to avoid a division
by 0, and in math dividing by 0 gives infinite, isn't
UINT_MAX a better way to represent infinity ?

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
