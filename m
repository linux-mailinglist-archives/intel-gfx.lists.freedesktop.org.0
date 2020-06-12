Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49A2D1F7BE2
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jun 2020 19:00:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2A9B6EA11;
	Fri, 12 Jun 2020 17:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 796E16EA0E
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 17:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1591981205;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RSxETv919iNwwn2Qchkd484q2EDMbODrI/YRurJgmf8=;
 b=CG/YwHZVWf5RRtpYDdia92aJT10c5ZxWM2n2A5dBlsrAl2eUV54SrP/ZBEitJoRPVa8XSh
 hnCkPDIxeF5knHuzVKkpMB0C0buQPjkmRKfACqsF15eGAzNFTOkQ3PDsnIDzkDQn4us18V
 +vseseLdWK0mJyizD9XXjfmQRZSE7Tk=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-143-7NagFxMJN6epHA2JVnuyfw-1; Fri, 12 Jun 2020 13:00:01 -0400
X-MC-Unique: 7NagFxMJN6epHA2JVnuyfw-1
Received: by mail-ej1-f69.google.com with SMTP id ca6so4409867ejb.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jun 2020 10:00:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YZefpytQS9Nuutazh9XOblfbRG+wXV9orLCiC5J8cHs=;
 b=cYQXNY7BdSfjsffEqydYB5ipI3kJ9SZnx/t1IO0K+PUIqYsMXOl84MuJ//ksvMRZlX
 SPAVeA/dnEJ3xw5GwtFRF/UNilo85Jt2bk9V4Jy7rqUpYzwwG4PqC8oJdrdASJDDRE9u
 hjLoXPvCkLsnE9EQtxkZzS5/Gu7YptU+XwVQbayw8MCX5mJQkFV+WG5M+7QjAA/vUmF/
 NNNip9TopCGB/X57TjghxaFd/84+eYYeOUqXz1XCHTaZqLjRYo7f70dBsEM/8iJ0K04Z
 OoNRNHnm+nhFbRVU815M36Hu5ADRfv5q4rnAZpBdHW15ys3ajbLSgGfEuc5DioEaH4qM
 M8nA==
X-Gm-Message-State: AOAM531rj+OivuPejrKncPE9ctkKC+b3IveSGNxVCmodyHww1KG0/p6w
 Z5z0lKB9A+C3x/3uCt3xl5JHY7ybtQeGOnwTclpyHin+Q4NVXBvtwe/XTuwnwT6p8sTK3B5OXYh
 DnSFqMOnK+VjB4vXGJ+e9Z2UZ5yqI
X-Received: by 2002:a17:906:a387:: with SMTP id
 k7mr14926622ejz.408.1591981200751; 
 Fri, 12 Jun 2020 10:00:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzbjRA0DxcpKz6XFn10/ujz+AwaKQghqUPzhohiLhOX8HiLCbiRGn+Y5AlGw1zWUhaDAf5BGg==
X-Received: by 2002:a17:906:a387:: with SMTP id
 k7mr14926611ejz.408.1591981200562; 
 Fri, 12 Jun 2020 10:00:00 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id h16sm3865328ejq.62.2020.06.12.09.59.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Jun 2020 09:59:59 -0700 (PDT)
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20200607181840.13536-1-hdegoede@redhat.com>
 <20200607181840.13536-10-hdegoede@redhat.com>
 <20200611222029.csyo2wxof7nuhjws@taurus.defre.kleine-koenig.org>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <1af668ef-7b42-340a-8aa2-f66c266ac6ef@redhat.com>
Date: Fri, 12 Jun 2020 18:59:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200611222029.csyo2wxof7nuhjws@taurus.defre.kleine-koenig.org>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v2 09/15] pwm: crc: Enable/disable PWM
 output on enable/disable
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

On 6/12/20 12:20 AM, Uwe Kleine-K=C3=B6nig wrote:
> On Sun, Jun 07, 2020 at 08:18:34PM +0200, Hans de Goede wrote:
>> The pwm-crc code is using 2 different enable bits:
>> 1. bit 7 of the PWM0_CLK_DIV (PWM_OUTPUT_ENABLE)
>> 2. bit 0 of the BACKLIGHT_EN register
>>
>> So far we've kept the PWM_OUTPUT_ENABLE bit set when disabling the PWM,
>> this commit makes crc_pwm_disable() clear it on disable and makes
>> crc_pwm_enable() set it again on re-enable.
>>
>> This should disable the internal (divided) PWM clock and tri-state the
>> PWM output pin when disabled, saving some power.
> =

> It would be great if you could also document that disabling the PWM
> makes the output tri-state. There are a few drivers that have a
> "Limitations" section at their top. Describing that there (in the same
> format) would be the right place.
> =

> Also note that according to Thierry's conception getting a (driven)
> inactive output is the right thing for a disabled PWM.

Hmm, the tri-state thing is an assumption from my side and we
don't have any docs for this PWM controller, so I'm not sure at
all if that is true. So I think it will be better to just drop
the tri-state bit from the commit msg for the next version.

Regards,

Hans


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
