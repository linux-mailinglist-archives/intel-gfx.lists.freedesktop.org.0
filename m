Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D78951F1735
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jun 2020 13:07:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41334890C8;
	Mon,  8 Jun 2020 11:07:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [205.139.110.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BCDD890C8
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 11:07:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591614438;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=e8PAvNJwl8CVvzuQhQrqiLIXXDJ1qmAQ7ddNr8veIRE=;
 b=D+3yOyA0QOiB8otD8X6++S89FLHDDEdf1ZaY3ucrYMHs/C8UZGb4Os4Tq2LxNSyD6Zp9Fe
 RueguPBudXyUsp00QFuaHtcdo48QOaMUwr4gA7Ewl9pBxm6m5Ec7WR2hv/XEtRZjpauIgi
 yy0vUa/jPV9AyCi/b4382ubWC5XWzEs=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-66--MSsJ_YUNOuDcqYmSe2bPw-1; Mon, 08 Jun 2020 07:07:17 -0400
X-MC-Unique: -MSsJ_YUNOuDcqYmSe2bPw-1
Received: by mail-wm1-f69.google.com with SMTP id y15so832443wmi.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 08 Jun 2020 04:07:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=e8PAvNJwl8CVvzuQhQrqiLIXXDJ1qmAQ7ddNr8veIRE=;
 b=RkPf+PuTajk9u2lhDHhN3nGHHvTELjZWr5Q9xTI1lkHz8ELzXhvTaNHUTaaCIWmdG/
 nks5GPMYkOo3id1nuYb+F0Xop3T/Gl4ninKaYowzFaJwiqPEBYuRL3re8Iuay/6CZJmu
 hNxHv2fOoom8nnoc8Vf5S42FSPE/Ibfd8C/PakbH/tXl8dnqVQez0CkTw8ePAqQjXXNW
 wsMnTH2AHemUj7x3L26eOkaAzYQpAp3HH4r8uPGRa+gtMaRGeYYPHmFb5o0Yk/WYw9JD
 SD58RbluitsoqmzU91eui47HlRDkgPYboANMTduHZxHVwNTQNo0QHiK3mupPnjR5z5Jz
 IyZA==
X-Gm-Message-State: AOAM531rZ7guTPs2pgPkRaV5YYHGIuksqRdDVrl/oHXO1IQUcwUR9CMz
 9yTBWjfDgh/JTIRFptuNyoUamQoX39X5PBb20duZg4SGeoA575CEaMw6UH5SUpkpV+SwuHz8iS/
 qZsaa1DWabX/RUTMzIfXpytsw+Cdg
X-Received: by 2002:a7b:c041:: with SMTP id u1mr3779533wmc.56.1591614434812;
 Mon, 08 Jun 2020 04:07:14 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwdmXNioeILy0TwT3HF2mT0/SxnOtWw0UuEKWxJARe1kqkMmGS1C96ubFrpAE8YjhmMf7MKIQ==
X-Received: by 2002:a7b:c041:: with SMTP id u1mr3779498wmc.56.1591614434473;
 Mon, 08 Jun 2020 04:07:14 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id h15sm22301292wrt.73.2020.06.08.04.07.13
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 08 Jun 2020 04:07:13 -0700 (PDT)
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20200607181840.13536-1-hdegoede@redhat.com>
 <20200607181840.13536-4-hdegoede@redhat.com>
 <20200608035023.GZ2428291@smile.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <90769dc0-3174-195b-34e0-ef4bb9d9b982@redhat.com>
Date: Mon, 8 Jun 2020 13:07:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200608035023.GZ2428291@smile.fi.intel.com>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v2 03/15] pwm: lpss: Add range limit check
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
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Mika Westerberg <mika.westerberg@linux.intel.com>, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 6/8/20 5:50 AM, Andy Shevchenko wrote:
> On Sun, Jun 07, 2020 at 08:18:28PM +0200, Hans de Goede wrote:
>> When the user requests a high enough period ns value, then the
>> calculations in pwm_lpss_prepare() might result in a base_unit value of 0.
>>
>> But according to the data-sheet the way the PWM controller works is that
>> each input clock-cycle the base_unit gets added to a N bit counter and
>> that counter overflowing determines the PWM output frequency. Adding 0
>> to the counter is a no-op. The data-sheet even explicitly states that
>> writing 0 to the base_unit bits will result in the PWM outputting a
>> continuous 0 signal.
> 
> So, and why it's a problem?

Lets sya the user requests a PWM output frequency of 100Hz on Cherry Trail
which has a 19200000 Hz clock this will result in 100 * 65536 / 19200000 =
0.3 -> 0 as base-unit value. So instead of getting 100 Hz the user will
now get a pin which is always outputting low.

OTOH if we clamp to 1 as lowest value, the user will get 192000000 / 65536
= 292 Hz as output frequency which is as close to the requested value as
we can get while actually still working as a PWM controller.

>> base_unit values > (base_unit_range / 256), or iow base_unit values using
>> the 8 most significant bits, cause loss of resolution of the duty-cycle.
>> E.g. assuming a base_unit_range of 65536 steps, then a base_unit value of
>> 768 (256 * 3), limits the duty-cycle resolution to 65536 / 768 = 85 steps.
>> Clamp the max base_unit value to base_unit_range / 32 to ensure a
>> duty-cycle resolution of at least 32 steps. This limits the maximum
>> output frequency to 600 KHz / 780 KHz depending on the base clock.
> 
> This part I don't understand. Why we limiting base unit? I seems like a
> deliberate regression.

The way the PWM controller works is that the base-unit gets added to
say a 16 bit (on CHT) counter each input clock and then the highest 8
bits of that counter get compared to the value programmed into the
ON_TIME_DIV bits.

Lets say we do not clamp and allow any value and lets say the user
selects an output frequency of half the input clock, so base-unit
value is 32768, then the counter will only have 2 values:
0 and 32768 after that it will wrap around again. So any on time-div
value < 128 will result in the output being always high and any
value > 128 will result in the output being high/low 50% of the time
and a value of 255 will make the output always low.

So in essence we now only have 3 duty cycle levels, which seems like
a bad idea to me / not what a pwm controller is supposed to do.

So I decided to put a cut of at having at least 32 steps.

The mean reason I wrote this patch though is to avoid a base-unit
value of 0 which really results in a completely non working PWM
output. I personally believe clamping on the high side is a good
idea too. But if you are against that I can drop that part.

Note that the clamping on the high side will not affect the
primary user of the LPSS-pwm driver which is the i915 backlight
code, that never asks for such high frequencies.  But it could
help to avoid an user shooting themselves in the foot when using
the PWM on a dev board through the sysfs interface.

Regards,

Hans


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
