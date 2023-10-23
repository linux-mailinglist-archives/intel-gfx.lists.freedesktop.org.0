Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 226CE7D3791
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 15:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38E8510E102;
	Mon, 23 Oct 2023 13:17:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D527B10E102
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 13:17:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1698067062;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=sSFfEkjm+TRHFIpNtkrlAc+VslBdL04S4deDLRJut34=;
 b=aWgaqfJ2O6aWhvM9pzi9tJ+HP+tZTRZ2pMUX8fpFdj8d841VCsNmNUg05AXzg4NaQ7hSOh
 qzJ3uK57H+b3iiwdAdjrKO3ohM/terwNTdK8yPd7bW8JKNwmGNz6cVlJKTat4EQI6nLlx8
 nlMQlGOmNrQu7g/ZNcZQbq+5uq0aLcc=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-634-HImMuGtoNziwBavKPW4Eag-1; Mon, 23 Oct 2023 09:17:40 -0400
X-MC-Unique: HImMuGtoNziwBavKPW4Eag-1
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-99bcb13d8ddso203092466b.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 06:17:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698067059; x=1698671859;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=sSFfEkjm+TRHFIpNtkrlAc+VslBdL04S4deDLRJut34=;
 b=KHlmVcOZzAyknRWV/dgGOUIaW75Zk8AFPWrcDvnKvqjdR0HYCaa1BM2kxprr8xIiXA
 /jyxzkvHlBB3S7yI4FYTp6JrsNPgopj4txy/8LkpXVuOqL6Wj7uMr74kUCxZzuNavaLU
 RGt6WVi2s6kzSLyAZqN7gstR9LNa4s3Kf+cA3BwE8IYa16ABOh3GkPGWBHs4qhRta55f
 aTzjh6Pq2ITvDwggjXn6tfkZ24204KuqcrI0f3Or7UYQ9M04YOdD1GywnDAsqTFp2kGT
 8FzaaHm47djiSmImDHuW49O+KPFdqyXbSIE5ReoLiFBHU4RzlDcPRTvIpbuLTRxtUqN7
 iBiQ==
X-Gm-Message-State: AOJu0YygCmxfkaF5MYuXqboTXHRYGrSCHs/zD5oSPZ+I5hEC0MSq1Zqr
 NTmuk9q/VMCCXa/eXDl/aWhHTZal0Qq/7bwzSkxUTiv631IbgLqQPfmvXP8AGES/W6LdFd60a6B
 Tx0DgmFwQMrOkRb4v6Qu/TkJFw/Rj
X-Received: by 2002:a17:907:7da4:b0:9bf:4915:22c9 with SMTP id
 oz36-20020a1709077da400b009bf491522c9mr7444018ejc.32.1698067059564; 
 Mon, 23 Oct 2023 06:17:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEEw6I3Skyk2VSTQQ0L/ocw36Hx+FffccCo6LtPT9cF0KLaOGOuHE4Y/IuzoMVRWRlkthG96w==
X-Received: by 2002:a17:907:7da4:b0:9bf:4915:22c9 with SMTP id
 oz36-20020a1709077da400b009bf491522c9mr7443986ejc.32.1698067059228; 
 Mon, 23 Oct 2023 06:17:39 -0700 (PDT)
Received: from [10.40.98.142] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 a23-20020a1709064a5700b009ad89697c86sm6717636ejv.144.2023.10.23.06.17.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 23 Oct 2023 06:17:38 -0700 (PDT)
Message-ID: <d1f0c5a5-77e1-a7de-88f7-6097a7338f54@redhat.com>
Date: Mon, 23 Oct 2023 15:17:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Sean Young <sean@mess.org>
References: <cover.1697534024.git.sean@mess.org>
 <a7fcd19938d5422abc59c968ff7b3d5c275577ed.1697534024.git.sean@mess.org>
 <90728c06-4c6c-b3d2-4723-c24711be2fa5@redhat.com>
 <20231019105118.64gdzzixwqrztjir@pengutronix.de>
 <01a505ac-320f-3819-a58d-2b82c1bf2a86@redhat.com>
 <ZTT9fvEF+lqfzGJ/@gofer.mess.org>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <ZTT9fvEF+lqfzGJ/@gofer.mess.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v3 1/3] pwm: make it possible to apply pwm
 changes in atomic context
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
Cc: linux-fbdev@vger.kernel.org, linux-doc@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Pavel Machek <pavel@ucw.cz>, David Airlie <airlied@gmail.com>,
 linux-leds@vger.kernel.org, Daniel Thompson <daniel.thompson@linaro.org>,
 Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
 Jonathan Corbet <corbet@lwn.net>, Helge Deller <deller@gmx.de>,
 Lee Jones <lee@kernel.org>, Javier Martinez Canillas <javierm@redhat.com>,
 =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 =?UTF-8?Q?Ilpo_J=c3=a4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, linux-pwm@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, intel-gfx@lists.freedesktop.org,
 linux-input@vger.kernel.org, Mark Gross <markgross@kernel.org>,
 Mark Brown <broonie@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
 Support Opensource <support.opensource@diasemi.com>,
 Jingoo Han <jingoohan1@gmail.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Sean,

On 10/22/23 12:46, Sean Young wrote:
> Hi Hans,
> 
> On Sat, Oct 21, 2023 at 11:08:22AM +0200, Hans de Goede wrote:
>> On 10/19/23 12:51, Uwe Kleine-König wrote:
>>> On Wed, Oct 18, 2023 at 03:57:48PM +0200, Hans de Goede wrote:
>>>> On 10/17/23 11:17, Sean Young wrote:
>>>>> Some drivers require sleeping, for example if the pwm device is connected
>>>>> over i2c. The pwm-ir-tx requires precise timing, and sleeping causes havoc
>>>>> with the generated IR signal when sleeping occurs.
>>>>>
>>>>> This patch makes it possible to use pwm when the driver does not sleep,
>>>>> by introducing the pwm_can_sleep() function.
>>>>>
>>>>> Signed-off-by: Sean Young <sean@mess.org>
>>>>
>>>> I have no objection to this patch by itself, but it seems a bit
>>>> of unnecessary churn to change all current callers of pwm_apply_state()
>>>> to a new API.
>>>
>>> The idea is to improve the semantic of the function name, see
>>> https://lore.kernel.org/linux-pwm/20231013180449.mcdmklbsz2rlymzz@pengutronix.de
>>> for more context.
>>
>> Hmm, so the argument here is that the GPIO API has this, but GPIOs
>> generally speaking can be set atomically, so there not being able
>> to set it atomically is special.
>>
>> OTOH we have many many many other kernel functions which may sleep
>> and we don't all postfix them with _can_sleep.
>>
>> And for PWM controllers pwm_apply_state is IMHO sorta expected to
>> sleep. Many of these are attached over I2C so things will sleep,
>> others have a handshake to wait for the current dutycycle to
>> end before you can apply a second change on top of an earlier
>> change during the current dutycycle which often also involves
>> sleeping.
>>
>> So the natural/expeected thing for pwm_apply_state() is to sleep
>> and thus it does not need a postfix for this IMHO.
> 
> Most pwm drivers look like they can be made to work in atomic context,
> I think. Like you say this is not the case for all of them. Whatever
> we choose to be the default for pwm_apply_state(), we should have a
> clear function name for the alternative. This is essentially why
> pam_apply_cansleep() was picked.
> 
> The alternative to pwm_apply_cansleep() is to have a function name
> which implies it can be used from atomic context. However, 
> pwm_apply_atomic() is not great because the "atomic" could be
> confused with the PWM atomic API, not the kernel process/atomic
> context.

Well pwm_apply_state() is the atomic PWM interface right?

So to me pwm_apply_state_atomic() would be clearly about
running atomically.

> So what should the non-sleeping function be called then? 
>  - pwm_apply_cannotsleep() 
>  - pwm_apply_nosleep()
>  - pwm_apply_nonsleeping()
>  - pwm_apply_atomic_context()

I would just go with:

pwm_apply_state_atomic()

but if this is disliked by others then lets just rename

pwm_apply_state() to pwm_apply_state_cansleep() as
is done in this patch and use plain pwm_apply_state()
for the new atomic-context version.

Regards,

Hans



> 
>>> I think it's very subjective if you consider this
>>> churn or not.
>>
>> I consider it churn because I don't think adding a postfix
>> for what is the default/expected behavior is a good idea
>> (with GPIOs not sleeping is the expected behavior).
>>
>> I agree that this is very subjective and very much goes
>> into the territory of bikeshedding. So please consider
>> the above my 2 cents on this and lets leave it at that.
> 
> You have a valid point. Let's focus on having descriptive function names.
> 
>>> While it's nice to have every caller converted in a single
>>> step, I'd go for
>>>
>>> 	#define pwm_apply_state(pwm, state) pwm_apply_cansleep(pwm, state)
>>>
>>> , keep that macro for a while and convert all users step by step. This
>>> way we don't needlessly break oot code and the changes to convert to the
>>> new API can go via their usual trees without time pressure.
>>
>> I don't think there are enough users of pwm_apply_state() to warrant
>> such an exercise.
>>
>> So if people want to move ahead with the _can_sleep postfix addition
>> (still not a fan) here is my acked-by for the drivers/platform/x86
>> changes, for merging this through the PWM tree in a single commit:
>>
>> Acked-by: Hans de Goede <hdegoede@redhat.com>
> 
> Thanks,
> 
> Sean
> 

