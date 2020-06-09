Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB061F3CF3
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jun 2020 15:44:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F233B6E0ED;
	Tue,  9 Jun 2020 13:44:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B0596E0ED
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2020 13:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591710262;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ciM2j9nevs9rj7f3kAoWqHnY0nARQeatB2ntlMR/UQk=;
 b=OcnNoqIzeLLbl4kL5KfiQkPLu65hqWlRhRaoT5YcRDlzmTaKZbA6B0oTRYqaFDi0SJuw+p
 WM9rMb/NIJLFSSORoJ3JHDGCN0oN6XCKNvE84+wQhPQuJ3PTK/ZYkk0/EXy254Zph3w+T7
 gNnrbOV2K5/aqYRT4tLQaYQ1e/WkEwo=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-367-lUppwKtzNNm5ckv-SbCgyQ-1; Tue, 09 Jun 2020 09:44:20 -0400
X-MC-Unique: lUppwKtzNNm5ckv-SbCgyQ-1
Received: by mail-ed1-f69.google.com with SMTP id y5so8222411edw.19
 for <intel-gfx@lists.freedesktop.org>; Tue, 09 Jun 2020 06:44:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ciM2j9nevs9rj7f3kAoWqHnY0nARQeatB2ntlMR/UQk=;
 b=TqDFODmrHKCBWw0pVT/Yh6ZaUz98UZqJJYr6oUisIo/JUHPlLKOniukOjKNbelqd8a
 07SbBE2ZsWM8qTgCyPrwa/iwOitKroILAkLXfX9a9NoFM1zxDBYMnZ4op6hENj0MFyEM
 2z6W3ub+Hb4esSm+1Ue+fqt18hN9D7705t6PN24J4O83loHuAkDAC7+gZxUT/2VW2eJj
 3ee5TboahFLs6wjnWXG2yL3UNoESIcC9d3qkFC8hPTuT+v4Sk3vCabovXbNH66S7AXiT
 yKceS8AZ12Zn6+epmnGmpAXl5rsyyaPV0XlHWtARK8ocqULxlRRSe4hQB2ORhZux4vC4
 y12g==
X-Gm-Message-State: AOAM533IubxbyHTpfKcegteqpFvvWqafUFAjfu++3NucpfzOu6lJC9Sj
 wnXwNErQJC8GaLVNVDLU8x55VXJ3iZ+vOhbznz4d/CF27JXE2jkXqoWrvtiqgJ09z5qhx3SLIkw
 2dT7KX4cXiMqc+tc0hrqMjCdktmTh
X-Received: by 2002:a17:906:aec5:: with SMTP id
 me5mr26966117ejb.54.1591710259682; 
 Tue, 09 Jun 2020 06:44:19 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwKA4dtsW1lefAvu07pIsZYL8eurJ7KGixlwM3PoADUunSCQ5qYiEPYeJz/bkLkGnOdTBQrmg==
X-Received: by 2002:a17:906:aec5:: with SMTP id
 me5mr26966096ejb.54.1591710259476; 
 Tue, 09 Jun 2020 06:44:19 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id gj10sm13143604ejb.61.2020.06.09.06.44.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 06:44:18 -0700 (PDT)
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20200607181840.13536-1-hdegoede@redhat.com>
 <20200607181840.13536-11-hdegoede@redhat.com>
 <20200609113220.GM2428291@smile.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <93c7843d-1225-c8c6-9eb7-1f11b44bec34@redhat.com>
Date: Tue, 9 Jun 2020 15:44:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200609113220.GM2428291@smile.fi.intel.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v2 10/15] pwm: crc: Implement apply() method
 to support the new atomic PWM API
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

On 6/9/20 1:32 PM, Andy Shevchenko wrote:
> On Sun, Jun 07, 2020 at 08:18:35PM +0200, Hans de Goede wrote:
>> Replace the enable, disable and config pwm_ops with an apply op,
>> to support the new atomic PWM API.
> 
> ...
> 
>> -static int crc_pwm_calc_clk_div(int period_ns)
>> +static int crc_pwm_apply(struct pwm_chip *chip, struct pwm_device *pwm,
>> +			 const struct pwm_state *state)
>>   {
>> -	int clk_div;
>> -
>> -	clk_div = PWM_BASE_CLK_MHZ * period_ns / (256 * NSEC_PER_MHZ);
>> -	/* clk_div 1 - 128, maps to register values 0-127 */
>> -	if (clk_div > 0)
>> -		clk_div--;
>> -
>> -	return clk_div;
>> -}
> 
> ...
> 
>> +		clk_div = PWM_BASE_CLK_MHZ * state->period /
>> +			  (256 * NSEC_PER_MHZ);
>> +		/* clk_div 1 - 128, maps to register values 0-127 */
>> +		if (clk_div > 0)
>> +			clk_div--;
> 
> And again... :-(

Well yes I cannot help it that the original code, as submitted by Intel,
was of very questionable quality, so instead of just converting it to the
atomic PWM API I had to do a ton of bugfixes first...   I tried to do
this all in small bits rather then in a single big rewrite the buggy
<beep> commit to make life easier for reviewers.

I can introduce the crc_pwm_calc_clk_div helper earlier as you suggested
in an earlier mail. I guess I could also keep the helper here, and then
fold it into the function in a later commit (*).

Would that work for you ?

Regards,

Hans



*) Because having a helper for 3 lines of code when it is used only
once is not helpful IMHO, it only makes it harder to figure out what
the code is exactly doing when readin the code.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
