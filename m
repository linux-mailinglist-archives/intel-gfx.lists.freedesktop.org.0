Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 79762231314
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jul 2020 21:49:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D24516E3D3;
	Tue, 28 Jul 2020 19:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com
 (us-smtp-delivery-1.mimecast.com [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTP id CE7F96E3D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 19:49:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1595965783;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qGvTzT8NM7IHgswr1ardDnnF8Kc5Lio2kQPzsmWgHR8=;
 b=bU30BtTYKscB1C3YIg8heGeKemY8vngrU3rr+qgwxx1J26rsq7xNqq5eyYu+2eiIUb0hBs
 BHIx1HMy6ESRLkfvaZqfl0ReTpcUN3rwqRH55rRR94wuJbeHemN5J6a0zk2Q12vuEta21u
 EYf9o9FOBgVRXqi4J59RioYRDgTvqjk=
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com
 [209.85.208.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-289-HBLHTkrwNbSHhlikussNOw-1; Tue, 28 Jul 2020 15:49:38 -0400
X-MC-Unique: HBLHTkrwNbSHhlikussNOw-1
Received: by mail-ed1-f69.google.com with SMTP id t30so4888036edi.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jul 2020 12:49:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qGvTzT8NM7IHgswr1ardDnnF8Kc5Lio2kQPzsmWgHR8=;
 b=ubbx1RC6upqWzuios8NwLQnfhVTyjbnJBL7OPsnYsiUHYen0mO8NXykfKAtGHyp+fW
 OUsOa4xyf3qaKX0o6/p50H2nA/BooDXt4MCUJzb273PGX24oK/V2Me850k9z7YAJ6dPD
 8TmQbCRFtMCo9Q2kl3gDhIBdqPOner3OXaj+Nh+3JyaAOO38/ZwZ0QmfVNMjR38XzXBP
 Q/OCWck+74LexVRPA+mfP31uZ6AjngMYu0KmljTDFD5o3LP4NNLn2qYgJHYODURjoRPZ
 kCAb34go8vLl9Pd1awcwTznoZJOL1yIWp/U2CKbiCuEcQQnu2iXL6EglNinyhLNqExZ+
 VLiQ==
X-Gm-Message-State: AOAM531dmNKQcH8tFLrol9qPHOr/XTYGr5qBvxUQl2ecW3pXza3qP9YD
 xE3BhI+moR+6L6zJs2zK1qWySD+yjXJ74yasVlQS3ZzrmafOtAZ1JRCJ46/9v4bUsKy0A7Hbjgi
 U3LC0gDgzrlbMNA+W2+mNiQE4N3qw
X-Received: by 2002:a17:906:2816:: with SMTP id
 r22mr3236529ejc.215.1595965777423; 
 Tue, 28 Jul 2020 12:49:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyST52qxA4L/r7rRNNQhsCVnQBD9xfOfW4Zv8ngTpgqQ7I6PmsbCzOTgI7uEiR84fie460aPA==
X-Received: by 2002:a17:906:2816:: with SMTP id
 r22mr3236509ejc.215.1595965777212; 
 Tue, 28 Jul 2020 12:49:37 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id yj16sm9921523ejb.122.2020.07.28.12.49.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Jul 2020 12:49:36 -0700 (PDT)
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20200717133753.127282-1-hdegoede@redhat.com>
 <20200717133753.127282-6-hdegoede@redhat.com>
 <20200728184553.GZ3703480@smile.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <e4517382-b294-c7ab-b587-21ed67b5dde9@redhat.com>
Date: Tue, 28 Jul 2020 21:49:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200728184553.GZ3703480@smile.fi.intel.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v5 05/16] pwm: lpss: Add
 pwm_lpss_prepare_enable() helper
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

On 7/28/20 8:45 PM, Andy Shevchenko wrote:
> On Fri, Jul 17, 2020 at 03:37:42PM +0200, Hans de Goede wrote:
>> In the not-enabled -> enabled path pwm_lpss_apply() needs to get a
>> runtime-pm reference; and then on any errors it needs to release it
>> again.
>>
>> This leads to somewhat hard to read code. This commit introduces a new
>> pwm_lpss_prepare_enable() helper and moves all the steps necessary for
>> the not-enabled -> enabled transition there, so that we can error check
>> the entire transition in a single place and only have one pm_runtime_put()
>> on failure call site.
>>
>> While working on this I noticed that the enabled -> enabled (update
>> settings) path was quite similar, so I've added an enable parameter to
>> the new pwm_lpss_prepare_enable() helper, which allows using it in that
>> path too.
> 
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> But see below.
> 
>> Suggested-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>   drivers/pwm/pwm-lpss.c | 45 ++++++++++++++++++++++++------------------
>>   1 file changed, 26 insertions(+), 19 deletions(-)
>>
>> diff --git a/drivers/pwm/pwm-lpss.c b/drivers/pwm/pwm-lpss.c
>> index da9bc3d10104..8a136ba2a583 100644
>> --- a/drivers/pwm/pwm-lpss.c
>> +++ b/drivers/pwm/pwm-lpss.c
>> @@ -122,41 +122,48 @@ static inline void pwm_lpss_cond_enable(struct pwm_device *pwm, bool cond)
>>   		pwm_lpss_write(pwm, pwm_lpss_read(pwm) | PWM_ENABLE);
>>   }
>>   
>> +static int pwm_lpss_prepare_enable(struct pwm_lpss_chip *lpwm,
>> +				   struct pwm_device *pwm,
>> +				   const struct pwm_state *state,
>> +				   bool enable)
>> +{
>> +	int ret;
>> +
>> +	ret = pwm_lpss_is_updating(pwm);
>> +	if (ret)
>> +		return ret;
>> +
>> +	pwm_lpss_prepare(lpwm, pwm, state->duty_cycle, state->period);
>> +	pwm_lpss_cond_enable(pwm, enable && lpwm->info->bypass == false);
>> +	ret = pwm_lpss_wait_for_update(pwm);
>> +	if (ret)
>> +		return ret;
>> +
>> +	pwm_lpss_cond_enable(pwm, enable && lpwm->info->bypass == true);
>> +	return 0;
>> +}
>> +
>>   static int pwm_lpss_apply(struct pwm_chip *chip, struct pwm_device *pwm,
>>   			  const struct pwm_state *state)
>>   {
>>   	struct pwm_lpss_chip *lpwm = to_lpwm(chip);
>> -	int ret;
> 
>> +	int ret = 0;
> 
> We can avoid this change...
> 
>>   	if (state->enabled) {
>>   		if (!pwm_is_enabled(pwm)) {
>>   			pm_runtime_get_sync(chip->dev);
>> -			ret = pwm_lpss_is_updating(pwm);
>> -			if (ret) {
>> -				pm_runtime_put(chip->dev);
>> -				return ret;
>> -			}
>> -			pwm_lpss_prepare(lpwm, pwm, state->duty_cycle, state->period);
>> -			pwm_lpss_cond_enable(pwm, lpwm->info->bypass == false);
>> -			ret = pwm_lpss_wait_for_update(pwm);
>> -			if (ret) {
>> +			ret = pwm_lpss_prepare_enable(lpwm, pwm, state, true);
>> +			if (ret)
>>   				pm_runtime_put(chip->dev);
>> -				return ret;
>> -			}
>> -			pwm_lpss_cond_enable(pwm, lpwm->info->bypass == true);
>>   		} else {
>> -			ret = pwm_lpss_is_updating(pwm);
>> -			if (ret)
>> -				return ret;
>> -			pwm_lpss_prepare(lpwm, pwm, state->duty_cycle, state->period);
>> -			return pwm_lpss_wait_for_update(pwm);
> 
>> +			ret = pwm_lpss_prepare_enable(lpwm, pwm, state, false);
> 
> ...by simple return directly from here. But I admit I haven't seen the next patch yet.

True, but I'm not a big fan of earlier returns except for errors.

Regards,

Hans


> 
>>   		}
>>   	} else if (pwm_is_enabled(pwm)) {
>>   		pwm_lpss_write(pwm, pwm_lpss_read(pwm) & ~PWM_ENABLE);
>>   		pm_runtime_put(chip->dev);
>>   	}
>>   
>> -	return 0;
>> +	return ret;
>>   }
>>   
>>   static void pwm_lpss_get_state(struct pwm_chip *chip, struct pwm_device *pwm,
>> -- 
>> 2.26.2
>>
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
