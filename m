Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 724A123135C
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 22:00:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6253F6E0A1;
	Tue, 28 Jul 2020 20:00:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTP id 7BA896E0A1
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 20:00:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1595966429;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=hSzFFDyUfAnXvkkVJ84iprpsx2ZHjX86onKI2woEOHU=;
 b=D+T8/GpaDWT//rJYg/LyqSwyeSOkVS/wypRYQhSzq/kMGOYiaIgYrIA7ohoe3GNksyAg9H
 mn9irEOBaUwFWLyXcvjaNihuzriqwxuM7K0rkFKndHHOCAzMHOOIl4mOalNrSerc31N8PP
 KhC+dQrPw31hRkGa8fnCVTEd41GA36U=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-238-fX03FejJM8i4QGwPr78uMw-1; Tue, 28 Jul 2020 16:00:27 -0400
X-MC-Unique: fX03FejJM8i4QGwPr78uMw-1
Received: by mail-ej1-f72.google.com with SMTP id cf15so7621669ejb.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 13:00:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=hSzFFDyUfAnXvkkVJ84iprpsx2ZHjX86onKI2woEOHU=;
 b=TyBIQc8nDqNyE6qLREpFjKha/6uOZfmmr4u3t1EquYvChJ2akLXCKxvCvNPPbSrfAS
 EbPRx9+8CmpIWdc+3HSrkQ9qNYX855MRE+5F3bfU663yTPOHQd8lgeLw6rcL9S7PmFXS
 oyDO0TqBPXd/XneSuDQvQ6Ga/8982GLM3X9DtwVW+2eaP6jgfdZNsDH8S9so2/W5IlHf
 CzCDvhGH9ENVWW/KzYh0vmS4SuOecU4teORpltFu8Pr+DTcs1fTlaJycTm5uVSYjt3yD
 lLIv7Vm6cyTkCcPc6IMlw1vMykkqy+Rp2ffTAwGAS0xrc572HO3H/P7fxA2XVx+/sJ4s
 rsfg==
X-Gm-Message-State: AOAM531ZW5doS/CYXvfrEjAxsIUeIiSDZ4sqIGu+S+dG91qTr5Yc1dyU
 8oKsG7smKOvYlfb3ivDTFgQfRMKBBSqFSWFKLtC4D0rkUs34Ixwz2wJhI4zgch6ntfMo6irBz8C
 2aPjbkwUAXrnmg7PJlxTR8mCCyx8B
X-Received: by 2002:a17:906:e46:: with SMTP id
 q6mr25991236eji.234.1595966425299; 
 Tue, 28 Jul 2020 13:00:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzV14O9arRYB6XE8+8IFKAQO6S/91DQBaJNDTc1IjVEOlhbwsAm5kcJXeUo4rgsWkPdUP3wYw==
X-Received: by 2002:a17:906:e46:: with SMTP id
 q6mr25991222eji.234.1595966425063; 
 Tue, 28 Jul 2020 13:00:25 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id y22sm9846217ejf.108.2020.07.28.13.00.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Jul 2020 13:00:24 -0700 (PDT)
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20200717133753.127282-1-hdegoede@redhat.com>
 <20200717133753.127282-8-hdegoede@redhat.com>
 <20200728193634.GD3703480@smile.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <a05f24ec-3be5-42c7-38b8-69e8a3a2b330@redhat.com>
Date: Tue, 28 Jul 2020 22:00:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200728193634.GD3703480@smile.fi.intel.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v5 07/16] pwm: crc: Fix period / duty_cycle
 times being off by a factor of 256
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

On 7/28/20 9:36 PM, Andy Shevchenko wrote:
> On Fri, Jul 17, 2020 at 03:37:44PM +0200, Hans de Goede wrote:
>> While looking into adding atomic-pwm support to the pwm-crc driver I
>> noticed something odd, there is a PWM_BASE_CLK define of 6 MHz and
>> there is a clock-divider which divides this with a value between 1-128,
>> and there are 256 duty-cycle steps.
>>
>> The pwm-crc code before this commit assumed that a clock-divider
>> setting of 1 means that the PWM output is running at 6 MHZ, if that
>> is true, where do these 256 duty-cycle steps come from?
>>
>> This would require an internal frequency of 256 * 6 MHz = 1.5 GHz, that
>> seems unlikely for a PMIC which is using a silicon process optimized for
>> power-switching transistors. It is way more likely that there is an 8
>> bit counter for the duty cycle which acts as an extra fixed divider
>> wrt the PWM output frequency.
>>
>> The main user of the pwm-crc driver is the i915 GPU driver which uses it
>> for backlight control. Lets compare the PWM register values set by the
>> video-BIOS (the GOP), assuming the extra fixed divider is present versus
>> the PWM frequency specified in the Video-BIOS-Tables:
>>
>> Device:		PWM Hz set by BIOS	PWM Hz specified in VBT
>> Asus T100TA 	200			200
>> Asus T100HA 	200			200
>> Lenovo Miix 2 8	23437			20000
>> Toshiba WT8-A	23437			20000
>>
>> So as we can see if we assume the extra division by 256 then the register
>> values set by the GOP are an exact match for the VBT values, where as
>> otherwise the values would be of by a factor of 256.
>>
>> This commit fixes the period / duty_cycle calculations to take the
>> extra division by 256 into account.
> 
> So, base clock is 6MHz, then 7 bit divisor. That's what original values
> were for. On top of that there is 8-bit duty cycle control ("divide by 256"
> whatever it means) with the output range 23.437kHz..183Hz.

Right, so that range matches with a clock div of 1*256 (6 MHz/256 = 23437.5KHz)
to 128*256 (6 MHz/(128*256) = 183.1Hz) IOW this patch is correct.

Before this patch the code assumed a clkdiv of 1-128 (*), which leads to a
very different output frequency range.

Regards,

Hans


*) 0-127 really, that is fixed in a followup patch



> 
>>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>> Changes in v3:
>> - Use NSEC_PER_USEC instead of adding a new (non-sensical) NSEC_PER_MHZ define
>> ---
>>   drivers/pwm/pwm-crc.c | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/pwm/pwm-crc.c b/drivers/pwm/pwm-crc.c
>> index 272eeb071147..c056eb9b858c 100644
>> --- a/drivers/pwm/pwm-crc.c
>> +++ b/drivers/pwm/pwm-crc.c
>> @@ -21,8 +21,8 @@
>>   
>>   #define PWM_MAX_LEVEL		0xFF
>>   
>> -#define PWM_BASE_CLK		6000000  /* 6 MHz */
>> -#define PWM_MAX_PERIOD_NS	21333    /* 46.875KHz */
>> +#define PWM_BASE_CLK_MHZ	6	/* 6 MHz */
>> +#define PWM_MAX_PERIOD_NS	5461333	/* 183 Hz */
>>   
>>   /**
>>    * struct crystalcove_pwm - Crystal Cove PWM controller
>> @@ -72,7 +72,7 @@ static int crc_pwm_config(struct pwm_chip *c, struct pwm_device *pwm,
>>   
>>   		/* changing the clk divisor, need to disable fisrt */
>>   		crc_pwm_disable(c, pwm);
>> -		clk_div = PWM_BASE_CLK * period_ns / NSEC_PER_SEC;
>> +		clk_div = PWM_BASE_CLK_MHZ * period_ns / (256 * NSEC_PER_USEC);
>>   
>>   		regmap_write(crc_pwm->regmap, PWM0_CLK_DIV,
>>   					clk_div | PWM_OUTPUT_ENABLE);
>> -- 
>> 2.26.2
>>
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
