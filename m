Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 125192578B3
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Aug 2020 13:50:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F80D8936C;
	Mon, 31 Aug 2020 11:50:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BCCF89254
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Aug 2020 11:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1598874650;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WjU6ksiFY5rNC2vk4k2IBWzscUFIhhky8xaIdyl+5Yo=;
 b=Wt2KoGSvNFFRshqMcRkUSs/Ogna1mZZNjRCk8NE7RPj1IZVctGwxnJdnmXVLgvzyIXvRvA
 fVEZ92KsopzvbrUlpBKPF6dENTUtK/JHsrTbtd7XRnAhtbncQF/jPRv7OKRGlbPKanmykG
 5vJGNjm14zuhgQwQjMvZQI1Z7uHRepE=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-518-waDxMRlWNsKKmLOyAE5SrA-1; Mon, 31 Aug 2020 07:50:47 -0400
X-MC-Unique: waDxMRlWNsKKmLOyAE5SrA-1
Received: by mail-ej1-f70.google.com with SMTP id n20so379625eja.18
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Aug 2020 04:50:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=WjU6ksiFY5rNC2vk4k2IBWzscUFIhhky8xaIdyl+5Yo=;
 b=ab9gUwbjZayYJC2/WmtVZT4N5LxrsQ2mUwLZNBpXFKyCByPQQutWeA23F2H8Uf2Pe2
 RcMyh6Bc1FO8X1aKokc5l9cuiIo5klDo/vTlPJBFZ1z9XYLXZQjOa5ctNuGChW2H2FK5
 H6/XLVIHZ6ZUMEZzxWBc1hbB75irFn1Th4qYbMQBigZWn9MG+L3670kK6OcyzDM6sh23
 ejpsw7Ph/Nz+ria9TiI+lGvbTfU5nrxML5SVWbEgHzcZiFTDWGuk4RKf6taApj6x5hIX
 V51dy8VRWOodeufILIt9MvHau99/jG/GGNlvhXleVqdEGSINLCm07TdmMs/ASzJotV0x
 UqOw==
X-Gm-Message-State: AOAM532jXTfbPjyQtswIyRBaAbmKsGX0rqUEfDQjiHt8qpqvVOK4dnGM
 HZOEN1smKa4urtjzidHaBi0zwZZH/v8srdyIgGCeZENaAKjRxccU6zH0a5vWZuU6d43qIkRigF2
 YGGelbwVXJPaPxvvhUIFlcKaptU06
X-Received: by 2002:a17:906:3b4b:: with SMTP id
 h11mr749784ejf.381.1598874646447; 
 Mon, 31 Aug 2020 04:50:46 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwSUQxbJrReB/0fm2S5MeNHKixC/oEmL76NSUvi2tbHRKtKnHqLT4ULpWLMlBxAnYXO6QA3GQ==
X-Received: by 2002:a17:906:3b4b:: with SMTP id
 h11mr749763ejf.381.1598874646249; 
 Mon, 31 Aug 2020 04:50:46 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id y8sm7967538ejd.57.2020.08.31.04.50.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 31 Aug 2020 04:50:45 -0700 (PDT)
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20200830125753.230420-1-hdegoede@redhat.com>
 <20200830125753.230420-8-hdegoede@redhat.com>
 <20200831085649.GB1891694@smile.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <a6afd6bc-52b3-8712-ae39-f2c0511a096b@redhat.com>
Date: Mon, 31 Aug 2020 13:50:45 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200831085649.GB1891694@smile.fi.intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0.004
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v8 07/17] pwm: lpss: Always update state and
 set update bit
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
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 8/31/20 10:56 AM, Andy Shevchenko wrote:
> On Sun, Aug 30, 2020 at 02:57:43PM +0200, Hans de Goede wrote:
>> This commit removes a check where we would skip writing the ctrl register
>> and then setting the update bit in case the ctrl register already contains
>> the correct values.
>>
>> In a perfect world skipping the update should be fine in these cases, but
>> on Cherry Trail devices the AML code in the GFX0 devices' PS0 and PS3
>> methods messes with the PWM controller.
>>
>> The "ACPI / LPSS: Resume Cherry Trail PWM controller in no-irq phase" patch
>> earlier in this series stops the GFX0._PS0 method from messing with the PWM
>> controller and on the DSDT-s inspected sofar the _PS3 method only reads
>> from the PWM controller (and turns it off before we get a change to do so):
>>
>>      {
>>          PWMB = PWMC /* \_SB_.PCI0.GFX0.PWMC */
>>          PSAT |= 0x03
>>          Local0 = PSAT /* \_SB_.PCI0.GFX0.PSAT */
>>      }
>>
>> The PWM controller getting turning off before we do this ourselves is
>> a bit annoying but not really an issue.
>>
>> The problem this patch fixes comes from a new variant of the GFX0._PS3 code
>> messing with the PWM controller found on the Acer One 10 S1003 (1):
>>
>>      {
>>          PWMB = PWMC /* \_SB_.PCI0.GFX0.PWMC */
>>          PWMT = PWMC /* \_SB_.PCI0.GFX0.PWMC */
>>          PWMT &= 0xFF0000FF
>>          PWMT |= 0xC0000000
>>          PWMC = PWMT /* \_SB_.PCI0.GFX0.PWMT */
>>          PWMT = PWMC /* \_SB_.PCI0.GFX0.PWMC */
>>          Sleep (0x64)
>>          PWMB &= 0x3FFFFFFF
>>          PWMC = PWMB /* \_SB_.PCI0.GFX0.PWMB */
>>          PSAT |= 0x03
>>          Local0 = PSAT /* \_SB_.PCI0.GFX0.PSAT */
>>      }
>>
>> This "beautiful" piece of code clears the base-unit part of the ctrl-reg,
>> which effectively disables the controller, and it sets the update flag
>> to apply this change. Then after this it restores the original ctrl-reg
>> value, so we do not see it has mucked with the controller.
>>
>> *But* it does not set the update flag when restoring the original value.
>> So the check to see if we can skip writing the ctrl register succeeds
>> but since the update flag was not set, the old base-unit value of 0 is
>> still in use and the PWM controller is effectively disabled.
>>
>> IOW this PWM controller poking means that we cannot trust the base-unit /
>> on-time-div value we read back from the PWM controller since it may not
>> have been applied/committed. Thus we must always update the ctrl-register
>> and set the update bit.
>>
>> 1) And once I knew what to look for also in a bunch of other devices
>> including the popular Lenovo Ideapad Miix 310 and 320 models and
>> various Medion models.
> 
> Despite the above mentioned issue I'm always in favour of not micro-optimizing I/O.
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>

Thank you.

Regards,

Hans



> 
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>> Changes in v8:
>> - New patch in v8 of this patch-set
>> ---
>>   drivers/pwm/pwm-lpss.c | 10 ++++------
>>   1 file changed, 4 insertions(+), 6 deletions(-)
>>
>> diff --git a/drivers/pwm/pwm-lpss.c b/drivers/pwm/pwm-lpss.c
>> index 9a7400c6fb6e..20f6b6d6f874 100644
>> --- a/drivers/pwm/pwm-lpss.c
>> +++ b/drivers/pwm/pwm-lpss.c
>> @@ -85,7 +85,7 @@ static void pwm_lpss_prepare(struct pwm_lpss_chip *lpwm, struct pwm_device *pwm,
>>   	unsigned long long on_time_div;
>>   	unsigned long c = lpwm->info->clk_rate, base_unit_range;
>>   	unsigned long long base_unit, freq = NSEC_PER_SEC;
>> -	u32 orig_ctrl, ctrl;
>> +	u32 ctrl;
>>   
>>   	do_div(freq, period_ns);
>>   
>> @@ -104,16 +104,14 @@ static void pwm_lpss_prepare(struct pwm_lpss_chip *lpwm, struct pwm_device *pwm,
>>   	do_div(on_time_div, period_ns);
>>   	on_time_div = 255ULL - on_time_div;
>>   
>> -	orig_ctrl = ctrl = pwm_lpss_read(pwm);
>> +	ctrl = pwm_lpss_read(pwm);
>>   	ctrl &= ~PWM_ON_TIME_DIV_MASK;
>>   	ctrl &= ~((base_unit_range - 1) << PWM_BASE_UNIT_SHIFT);
>>   	ctrl |= (u32) base_unit << PWM_BASE_UNIT_SHIFT;
>>   	ctrl |= on_time_div;
>>   
>> -	if (orig_ctrl != ctrl) {
>> -		pwm_lpss_write(pwm, ctrl);
>> -		pwm_lpss_write(pwm, ctrl | PWM_SW_UPDATE);
>> -	}
>> +	pwm_lpss_write(pwm, ctrl);
>> +	pwm_lpss_write(pwm, ctrl | PWM_SW_UPDATE);
>>   }
>>   
>>   static inline void pwm_lpss_cond_enable(struct pwm_device *pwm, bool cond)
>> -- 
>> 2.28.0
>>
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
