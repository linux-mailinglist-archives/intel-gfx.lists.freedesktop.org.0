Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 419A521A125
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 15:48:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 407FF6EA6C;
	Thu,  9 Jul 2020 13:48:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 909A26EA6C
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 13:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594302497;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oZs9AErY+eQgpCGxcTsul8XzFzR2Qfr+Xb/wqEYukpw=;
 b=eELWqoGsdfhV4D36rD6Uao4WoImME9c/AXHlJL78GaUvgDOV9CIcS5WBzCKiw10TI6BGMF
 JhMmXNAiCd3Ygsr9h08gGFDuSTQo3z4FxLpTsW/hmy837qs32DY6tzSRgoxuwQPfDZI0ip
 yvlAoKxfeI75Z7FBjYYXGS5TTCWajJg=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-150-XaLbH-AeOXuRusLiU9jcLQ-1; Thu, 09 Jul 2020 09:48:15 -0400
X-MC-Unique: XaLbH-AeOXuRusLiU9jcLQ-1
Received: by mail-wm1-f71.google.com with SMTP id e15so2188259wme.8
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Jul 2020 06:48:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=oZs9AErY+eQgpCGxcTsul8XzFzR2Qfr+Xb/wqEYukpw=;
 b=NpkXC9YcOG394HOb4dkMvdpV/zUruK1M43l6wgTL2/lf/u5cNtuuuTXLesu2HA7/8l
 r4elmlFtJ9OnlGoYu9DwCbX3k0zRlPRAPBPGqpnEAEUA7mvZ1pIc5fqGPeZ+UKMwYhWi
 cVlPerIZy+FKxpNXf5mzpOhWFvT95bXlgl4PgIXjMajApiD1QroIgCCfKv2lgBUKwpTH
 Zj37aUVv4CKqSUfcvyWlbAm8AwXCS6nMfAmNAfUoC1jcmv+KnTYYSBZJujfUsgsG+Ipa
 3RzEw2k3FnPxXN8UoRJXaxUHn+Y1UIgqEgQ1/D0CAq8H3U3B9GDESVOMBgmOP18+iJxq
 Oq7A==
X-Gm-Message-State: AOAM531+yzvZqd/PGRcpIYXHUroKLPfpRkzO53qqdUCd9YKU1SF6f+3Z
 qEyNnjnL2jiFjOn2cnokP+St4Rtbr1mU6OFmGl1IWkOl47PjMY+/BDyUujNFixdGvPdW8dC7qef
 iGRBSE627ZvYeB1FUIY5Li5YZAkxG
X-Received: by 2002:a1c:449:: with SMTP id 70mr44225wme.149.1594302494646;
 Thu, 09 Jul 2020 06:48:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxuuC+JM9A1gKl2XR85+WZwwYVCoVivUZyp1H46ayENTaqORebNvPr++i1WNeaEEEcapYMsTg==
X-Received: by 2002:a1c:449:: with SMTP id 70mr44190wme.149.1594302494345;
 Thu, 09 Jul 2020 06:48:14 -0700 (PDT)
Received: from x1.localdomain ([2a0e:5700:4:11:334c:7e36:8d57:40cb])
 by smtp.gmail.com with ESMTPSA id v12sm5532702wrt.31.2020.07.09.06.48.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jul 2020 06:48:13 -0700 (PDT)
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20200708211432.28612-1-hdegoede@redhat.com>
 <20200708211432.28612-6-hdegoede@redhat.com>
 <20200709133609.GY3703480@smile.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <a003c79c-abe5-b812-1da8-3e67bfc31eb3@redhat.com>
Date: Thu, 9 Jul 2020 15:48:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200709133609.GY3703480@smile.fi.intel.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v4 05/16] pwm: lpss: Use pwm_lpss_apply()
 when restoring state on resume
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

On 7/9/20 3:36 PM, Andy Shevchenko wrote:
> On Wed, Jul 08, 2020 at 11:14:21PM +0200, Hans de Goede wrote:
>> Before this commit a suspend + resume of the LPSS PWM controller
>> would result in the controller being reset to its defaults of
>> output-freq = clock/256, duty-cycle=100%, until someone changes
>> to the output-freq and/or duty-cycle are made.
>>
>> This problem has been masked so far because the main consumer
>> (the i915 driver) was always making duty-cycle changes on resume.
>> With the conversion of the i915 driver to the atomic PWM API the
>> driver now only disables/enables the PWM on suspend/resume leaving
>> the output-freq and duty as is, triggering this problem.
>>
>> The LPSS PWM controller has a mechanism where the ctrl register value
>> and the actual base-unit and on-time-div values used are latched. When
>> software sets the SW_UPDATE bit then at the end of the current PWM cycle,
>> the new values from the ctrl-register will be latched into the actual
>> registers, and the SW_UPDATE bit will be cleared.
>>
>> The problem is that before this commit our suspend/resume handling
>> consisted of simply saving the PWM ctrl register on suspend and
>> restoring it on resume, without setting the PWM_SW_UPDATE bit.
>> When the controller has lost its state over a suspend/resume and thus
>> has been reset to the defaults, just restoring the register is not
>> enough. We must also set the SW_UPDATE bit to tell the controller to
>> latch the restored values into the actual registers.
>>
>> Fixing this problem is not as simple as just or-ing in the value which
>> is being restored with SW_UPDATE. If the PWM was enabled before we must
>> write the new settings + PWM_SW_UPDATE before setting PWM_ENABLE.
>> We must also wait for PWM_SW_UPDATE to become 0 again and depending on the
>> model we must do this either before or after the setting of PWM_ENABLE.
>>
>> All the necessary logic for doing this is already present inside
>> pwm_lpss_apply(), so instead of duplicating this inside the resume
>> handler, this commit makes the resume handler use pwm_lpss_apply() to
>> restore the settings when necessary. This fixes the output-freq and
>> duty-cycle being reset to their defaults on resume.
> 
> ...
> 
>> +static int __pwm_lpss_apply(struct pwm_chip *chip, struct pwm_device *pwm,
>> +			    const struct pwm_state *state, bool from_resume)
>>   {
>>   	struct pwm_lpss_chip *lpwm = to_lpwm(chip);
>>   	int ret;
>>   
>>   	if (state->enabled) {
>>   		if (!pwm_is_enabled(pwm)) {
>> -			pm_runtime_get_sync(chip->dev);
>> +			if (!from_resume)
>> +				pm_runtime_get_sync(chip->dev);
>> +
>>   			ret = pwm_lpss_is_updating(pwm);
>>   			if (ret) {
>> -				pm_runtime_put(chip->dev);
>> +				if (!from_resume)
>> +					pm_runtime_put(chip->dev);
>> +
>>   				return ret;
>>   			}
>>   			pwm_lpss_prepare(lpwm, pwm, state->duty_cycle, state->period);
>>   			pwm_lpss_cond_enable(pwm, lpwm->info->bypass == false);
>>   			ret = pwm_lpss_wait_for_update(pwm);
>>   			if (ret) {
>> -				pm_runtime_put(chip->dev);
>> +				if (!from_resume)
>> +					pm_runtime_put(chip->dev);
>> +
>>   				return ret;
>>   			}
>>   			pwm_lpss_cond_enable(pwm, lpwm->info->bypass == true);
> 
>>   		}
>>   	} else if (pwm_is_enabled(pwm)) {
>>   		pwm_lpss_write(pwm, pwm_lpss_read(pwm) & ~PWM_ENABLE);
>> -		pm_runtime_put(chip->dev);
>> +
>> +		if (!from_resume)
>> +			pm_runtime_put(chip->dev);
>>   	}
> 
> I'm wondering if splitting more will make this look better, like:
> 
> 	...
> 	if (from_resume) {
> 		ret = pwm_lpss_prepare_enable(...); // whatever name you think suits better
> 	} else {
> 		pm_runtime_get_sync(...);
> 		ret = pwm_lpss_prepare_enable(...);
> 		if (ret)
> 			pm_runtime_put(...);
> 	}
> 	...
> 

That is a good idea, I like it. We already had multiple pm_runtime_put() calls
before for the error handlig and this patch did not make it any better.

So adding a pwm_lpss_prepare_enable() helper (the name works for)
will also cleanup the original code. I will add this helper as
a separate preparation patch for this one in v5 of the patch-set.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
