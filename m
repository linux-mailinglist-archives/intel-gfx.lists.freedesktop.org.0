Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CBCD2167F9
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 10:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D87F06E107;
	Tue,  7 Jul 2020 08:05:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 751D189F99
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 08:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594109114;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=6ZFxjlI5sMZp++zSPQ2tEXXGIe/Pl7tWFMFOmpG1I0c=;
 b=QeGJUcYXmp9aAB9y7+nTkK6EU2+/3ed7I38jNSsFUWmR5TP5G09IO5BLV2/QVcE3pfc/EI
 +NPgFM/h/oKRTZMGjvizGV4UXlkgliU483Wjust3j2pLPSLLYZJBKqg2Y1In21aWOnISNX
 AK/v2pRDew1jKFhvLdK+fCqvdW34u/w=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-488-xUGZi8_LOLimScC0Mn_jIA-1; Tue, 07 Jul 2020 04:05:01 -0400
X-MC-Unique: xUGZi8_LOLimScC0Mn_jIA-1
Received: by mail-ej1-f71.google.com with SMTP id yh3so32187843ejb.16
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Jul 2020 01:05:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GB1QNbctl/Mx/SFUPpl4ypLqVQ62zsSb8czTF+T7RVk=;
 b=sYvqCfvie9Fnh/QTIFrwb5NY1yl02GfOlvQ+Fn8oE9VwDoBFcAUzI9qy/queC0/Yb3
 AEP8jB+wKAYXFXNdikOPBsuVCt96ixwvmegpiYASh5sN6dEtF1ybQtEFAj07obHHtrhb
 8H5x0TZRXYaR4U832Opn0ZarndPk1F2CxnVPVwHoObEX8aWMoA1xDM0TnLHvypiiiOFF
 7r7pTivvE7Vd0J6cDfh4VPbwDmJyMlZt52oBPxVf1w8wxhuIOeh35/1M6+fZC8BSx153
 d6PsDJVzn2m09cD2fDKwm7yq4E9qx3LmczRcnIbrp1OnQtzAnapv+u8THUn/XH0QyRQ7
 xxmQ==
X-Gm-Message-State: AOAM5326IaoMkFiSADSqnOVwQn5RGyuipcHXFxry4bL3Cm6z3jgIZNL5
 mROS44ZR0v1/ysICb71OHBRq9zS0uZbqlKVklO7jzYXWEqwVxG5npRSOTG+dCgYdNsV3Cw+fPki
 od6K7quAMkIwjW8gdUGjZf2GXfmgb
X-Received: by 2002:a17:906:eb93:: with SMTP id
 mh19mr45243087ejb.552.1594109100189; 
 Tue, 07 Jul 2020 01:05:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw/cLO+WZhKB2j89clcfZyc+ByS2W7nYLObC2VeM2LUr6Hq2CXhfOpetmvPhCaQwzvlD2NYng==
X-Received: by 2002:a17:906:eb93:: with SMTP id
 mh19mr45243060ejb.552.1594109099889; 
 Tue, 07 Jul 2020 01:04:59 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id s18sm18303668ejm.16.2020.07.07.01.04.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 07 Jul 2020 01:04:59 -0700 (PDT)
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20200620121758.14836-1-hdegoede@redhat.com>
 <20200620121758.14836-5-hdegoede@redhat.com>
 <20200622073554.wf3smq3tvnr6t2xy@taurus.defre.kleine-koenig.org>
 <e07a7dd6-c361-32b8-c4e7-91e022f9c21d@redhat.com>
 <20200707073424.w6vd6e4bhl56kosd@pengutronix.de>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <c2143daa-cdc0-0a72-196f-f27d1677278f@redhat.com>
Date: Tue, 7 Jul 2020 10:04:58 +0200
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

In case it helps here is the datasheet for the LPSS PWM controller
(somewhat hard to find if you don't know what you are looking for):

https://cdrdv2.intel.com/v1/dl/getcontent/332065
https://www.intel.com/content/dam/www/public/us/en/documents/datasheets/ato=
m-z8000-datasheet-vol-2.pdf

The first link contains a description about how the PWM controller works in
section 17.5  "SIO - Pulse Width Modulation (PWM)", the second link contains
all register definitions for the SoC and is not all that interesting other
then for verifying the existing register bits defines.

Regards,

Hans



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
> =

> Best regards
> Uwe
> =


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
