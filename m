Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6259621A402
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jul 2020 17:48:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 116D66EABE;
	Thu,  9 Jul 2020 15:48:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB2726EAB2
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jul 2020 15:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594309684;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=kOxnlG8KI3xPEqow6g4YLIn7sm4skGyEPtPky2pJiSs=;
 b=eVrz5wx9d+WTUftyhJ8gH0Y26bWKCwK+x+m6rj8oqrEktQdvVjCfTPtfoi2AloOyLsDeY/
 o+j6y9XJXPMbgclhVSc3H+YPG9ENfo7Fl9xAQT4kK3zg419q8tFYjyq2B3/OpEgqCCGm75
 T2VPsfRh8W5Xy0yWF6ZpsVu6UgK2ahE=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-110-Gv0CF-WVNZOBOFm-k_WPRg-1; Thu, 09 Jul 2020 11:48:02 -0400
X-MC-Unique: Gv0CF-WVNZOBOFm-k_WPRg-1
Received: by mail-wr1-f69.google.com with SMTP id y18so2317100wrq.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Jul 2020 08:48:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kOxnlG8KI3xPEqow6g4YLIn7sm4skGyEPtPky2pJiSs=;
 b=WwVMdd5BJVAozQgACmN+gwZHF6AE6QcdoJ0iPYw/2TRvxZZ6QzRcwgJSnltXlw5we5
 gchaMEzx9+HRbEgN9t1yoTPxxPXKcd2yF1xdT1bVHjp4xP9FZ1cnrb0UVlQ/7OxJ0ETj
 CB2WZ3a5Z2unrsTS/clULjr13Ov2w+EZIfaGScQoqFHiQ5gsvbK5gM2GExQ8sj4Ppzu2
 CvRWdCIgVGI+TKJ2c1DWsQl5aHwkru80eAWsG0LFc2swHd4Bd/GgmPXwrEqLh/wm5alU
 kAkK1URDS6NJEVkQaJaXu8gIgp8qUsAKOT9qv4rXvjbG9wtQNpUa9R/qk/bfinkiZPKX
 g+Lg==
X-Gm-Message-State: AOAM5330C6/vrIsCR6FD0HMe1mQi+XyBq+l5vF/9cYj2vK9Fgj6Pop7B
 lDRxZsAHiYAX7TODx5o7yAWes7NkOKKQCP0Nkak0lbXunSdI+wJ7CFXsPHdGeatJI0iKaMh+Isw
 qF8N/GozaBNMNlLDFbBN/npIjNzJU
X-Received: by 2002:a1c:3954:: with SMTP id g81mr628332wma.73.1594309681192;
 Thu, 09 Jul 2020 08:48:01 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz4y2IzEii9YOA5nS+ZHsnfXytiSmWTStGmkEq37GvHGpqpwSSNWVeWnQtjd9K2u/5bw2gGAQ==
X-Received: by 2002:a1c:3954:: with SMTP id g81mr628315wma.73.1594309680971;
 Thu, 09 Jul 2020 08:48:00 -0700 (PDT)
Received: from x1.localdomain ([2a0e:5700:4:11:334c:7e36:8d57:40cb])
 by smtp.gmail.com with ESMTPSA id z8sm5484573wmg.39.2020.07.09.08.47.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Jul 2020 08:48:00 -0700 (PDT)
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20200708211432.28612-1-hdegoede@redhat.com>
 <20200708211432.28612-7-hdegoede@redhat.com>
 <20200709145013.GA3703480@smile.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <af7158c5-02bb-38ce-4b22-e469079dcccf@redhat.com>
Date: Thu, 9 Jul 2020 17:47:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200709145013.GA3703480@smile.fi.intel.com>
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
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 7/9/20 4:50 PM, Andy Shevchenko wrote:
> On Wed, Jul 08, 2020 at 11:14:22PM +0200, Hans de Goede wrote:
>> The datasheet specifies that programming the base_unit part of the
>> ctrl register to 0 results in a contineous low signal.
>>
>> Adjust the get_state method to reflect this by setting pwm_state.period
>> to 1 and duty_cycle to 0.
> 
> ...
> 
>> +	if (freq == 0) {
>> +		/* In this case the PWM outputs a continous low signal */
> 
>> +		state->period = 1;
> 
> I guess this should be something like half of the range (so base unit calc
> will give 128). Because with period = 1 (too small) it will give too small
> base unit (if apply) and as a result we get high frequency pulses.

You are right, that if after this the user only changes the duty-cycle
things will work very poorly, we will end up with a base_unit value of
e.g 65535 and then have almost no duty-cycle resolution at all.

How about using a value here which results in a base_unit value of
256 (for 16 bit base-unit registers), that is the highest frequency we
can do while still having full duty-cycle resolution and it also
is the power-on-reset value, so using a higher period which translates
to a base_unit value of 256 (the por calue) seems like a sensible thing to do.

Uwe what do you think about this?

Regards,

Hans



> 
>> +		state->duty_cycle = 0;
>> +	} else {
>>   		state->period = NSEC_PER_SEC / (unsigned long)freq;
>> +		on_time_div *= state->period;
>> +		do_div(on_time_div, 255);
>> +		state->duty_cycle = on_time_div;
>> +	}
> 

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
