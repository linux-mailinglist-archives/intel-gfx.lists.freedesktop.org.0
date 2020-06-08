Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DD61F1756
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 13:13:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B1B089C1E;
	Mon,  8 Jun 2020 11:13:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5A3889C1E
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 11:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591614786;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=UhgJTWJr6h9G9PmHmPph9dyAvRbYjMyPRPIHK6pK8vc=;
 b=F3ud4RqtpYEnSlAIqACKsQMg5ASW2izchYkv3CVtcNWQjPqbBwzWS6S48od+Nz0ynkQkZw
 vtczwO1sQSSFygLoq249xhUIFJvxJJIYts2bNHyDNOOfsTUUO1BM+aV6rGyn+V+ZTawnll
 cc6kJwAOmosqAmI0dkufWoG5XAEU2zU=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-5-fBHzY5lbMYip8NMz-7xMYg-1; Mon, 08 Jun 2020 07:13:04 -0400
X-MC-Unique: fBHzY5lbMYip8NMz-7xMYg-1
Received: by mail-wm1-f70.google.com with SMTP id h6so3823094wmb.7
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Jun 2020 04:13:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=UhgJTWJr6h9G9PmHmPph9dyAvRbYjMyPRPIHK6pK8vc=;
 b=OI2Kj89fYCIa9HUf+gQmzkXcjHFFpZTFxV0YhRPe6gbJogyBjEAf8KwCrSX1n+rgDh
 PfVkoTAoAezXtnAbck2x3c8nblPybnlAx9XPXZVkeQr4XqXHRLxoSgVoxX6mUTqn0NBP
 +r9C0BikyoRnuYY/RQfGp5vdYsDaRBQZvPApnHHxFEd+LU7v6vOHUjS9IONdsVuGkGYH
 YAf2r8jDlmmGXmI8aa2sNv/zrFtPQ1vjwTT0qX+2bg9q7jmPK9Jgk3GJjP0ijv8hy3O4
 KIuK6ODeGQ6LpUi864QVH4s1OKJewwFFPtn9ATldmjEVQA7o83dZHJNY2z69kmxHF+4g
 WXjg==
X-Gm-Message-State: AOAM533iB2JUw0EKa99iVTAOD76qz0ocUDNMGoaeZK7RpKwkNeaqYX+5
 cdpUS4Y5y7b7N++0320LGCa4U99+D9Okx6bLd69y6ayAMXx8oO63t5R4+ni1IGBfO/TnkfAFvyO
 tDSSkbGKcvplu2tI+D3Qqajau5ZwZ
X-Received: by 2002:a05:6000:10cf:: with SMTP id
 b15mr22474429wrx.214.1591614783694; 
 Mon, 08 Jun 2020 04:13:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwsVhaPysSkuHY7OnSe0IptFhwBN2fdZnKtM5beXPetYqOZNC7m8APlsFf+Xeln1lc8xR47Kg==
X-Received: by 2002:a05:6000:10cf:: with SMTP id
 b15mr22474396wrx.214.1591614783396; 
 Mon, 08 Jun 2020 04:13:03 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id v19sm21737311wml.26.2020.06.08.04.13.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2020 04:13:02 -0700 (PDT)
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20200607181840.13536-1-hdegoede@redhat.com>
 <20200607181840.13536-5-hdegoede@redhat.com>
 <20200608035512.GA2428291@smile.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <c8a8d466-9b4a-9021-ca74-01d315e99117@redhat.com>
Date: Mon, 8 Jun 2020 13:13:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200608035512.GA2428291@smile.fi.intel.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v2 04/15] pwm: lpss: Fix off by one error in
 base_unit math in pwm_lpss_prepare()
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

On 6/8/20 5:55 AM, Andy Shevchenko wrote:
> On Sun, Jun 07, 2020 at 08:18:29PM +0200, Hans de Goede wrote:
>> According to the data-sheet the way the PWM controller works is that
>> each input clock-cycle the base_unit gets added to a N bit counter and
>> that counter overflowing determines the PWM output frequency.
>>
>> So assuming e.g. a 16 bit counter this means that if base_unit is set to 1,
>> after 65535 input clock-cycles the counter has been increased from 0 to
>> 65535 and it will overflow on the next cycle, so it will overflow after
>> every 65536 clock cycles and thus the calculations done in
>> pwm_lpss_prepare() should use 65536 and not 65535.
>>
>> This commit fixes this. Note this also aligns the calculations in
>> pwm_lpss_prepare() with those in pwm_lpss_get_state().
> 
> This one sounds like a bug which I have noticed on Broxton (but thought as a
> hardware issue). In any case it has to be tested on various platforms to see
> how it affects on them.

If you like at the datasheet / read my commit description then it
becomes obvious that because of the way the PWM controller works that
it takes the full 2^(base-unit-bits) for the counter to overflow,
not 2^(base-unit-bits) - 1. This will make a difference of a factor
65535/65536 in the output frequency which will be tricky to measure.

IOW I'm not sure we can really test if this helps, but it is
obviously the right thing to do and it aligns the pwm_apply code
with the pwm_get_state code which already does not have the - 1.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
