Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25EFE97886B
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Sep 2024 21:03:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BF3E010ED76;
	Fri, 13 Sep 2024 19:03:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="CPZSbG1i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48EA810ED76
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 19:03:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1726254207;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=dYiHtrYuhPoEC2IVGh93zvXITGRuT7jAGDXeAvwWaas=;
 b=CPZSbG1iYfFmvr3wU6oGQLzaSRV0aZ3uLngbOYS3c6GeS3w4FWn29Ktx1Nf4ZEpFRlLyKp
 Nnu2lxamrr0h5O3N64+Dnpdl9uET87u3Y/SyClGRv2Cq5x7YKKSuPSyoTnAzVb+wnTMMFc
 6oTEr4d+i3HlgNm+vPzaNkmQWuzUmbI=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-447-EBFQVhewMtCBAPlRYFSpCw-1; Fri, 13 Sep 2024 15:03:26 -0400
X-MC-Unique: EBFQVhewMtCBAPlRYFSpCw-1
Received: by mail-wm1-f69.google.com with SMTP id
 5b1f17b1804b1-42cb471a230so18061895e9.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Sep 2024 12:03:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1726254205; x=1726859005;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=dYiHtrYuhPoEC2IVGh93zvXITGRuT7jAGDXeAvwWaas=;
 b=ageYWO01ny08APH/R20IrABn5NhIFReeuJOEDZ6wo0e8EgJELSwDmGVU948Nm/qSlQ
 +I9ff9DHElLZBNG86i+FnoglEc9ixIRNCbXzamMtfxOqi6kV8ObR4uW3++vE/g5KBQMl
 sTlnCicqrQSVRq8cQacmsnKiX5wteQo0/Ksi5r6KIhYfovFtT9ULZKdTdtoFC3YSs5zv
 1/BAjG6JuAK48SvpxLITKhnDORvUjp4EIde8btg6rGtcKcbnMKhuJbS2fXZ5SRQSAyEU
 k7IB/LSDP5VogIHDzr26E2y9JNzPPq2A9s7NCNFI5dlZrZeOWf+xnAnFYCpOSaP2W0TG
 iQ5A==
X-Forwarded-Encrypted: i=1;
 AJvYcCUYFMrkg59z9g8fKiPrpiCoSwosqzMWMDycyKrHfQhVlJhhXoBXN3xShJ6WMzN++bj5fFdoIo5ei0I=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzrQstke2PV1O2y6x1C43+vua/t+m8hECu8UfL0NRq+pgde9m6d
 bvR4TgQT1ojQQ/NMrSLuWYx+h8uVkToT4ryPBLGEE8xEmC12lEqoV7nCdLTCV8daD7+InEkJpvt
 e6x0n/sM/TvO0mS4vbLDm/n5N0XGsIXQ70C145Nv/pUlRVNY7v2ANoSTxZJe4FSR7yQ==
X-Received: by 2002:a05:600c:1c9d:b0:42c:b52b:4335 with SMTP id
 5b1f17b1804b1-42cdb538dacmr63021075e9.10.1726254204963; 
 Fri, 13 Sep 2024 12:03:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRz3mDo+UOLtkc694wwnf+f5aqlW9E/LUMwSnPag0qSnF8P/Z7+zEqTNNZ+4f12hbHDQrUPQ==
X-Received: by 2002:a05:600c:1c9d:b0:42c:b52b:4335 with SMTP id
 5b1f17b1804b1-42cdb538dacmr63020755e9.10.1726254204371; 
 Fri, 13 Sep 2024 12:03:24 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
 by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42d9b194c57sm33736195e9.48.2024.09.13.12.03.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Sep 2024 12:03:24 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Brian Norris <briannorris@chromium.org>
Cc: Julius Werner <jwerner@chromium.org>, Borislav Petkov <bp@alien8.de>,
 Hugues Bruant <hugues.bruant@gmail.com>, stable@vger.kernel.org,
 regressions@lists.linux.dev, linux-kernel@vger.kernel.org, Fenghua Yu
 <fenghua.yu@intel.com>, Reinette Chatre <reinette.chatre@intel.com>, Tony
 Luck <tony.luck@intel.com>, Tzung-Bi Shih <tzungbi@kernel.org>,
 chrome-platform@lists.linux.dev, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [NOT A REGRESSION] firmware: framebuffer-coreboot: duplicate
 device name "simple-framebuffer.0"
In-Reply-To: <ZuR6yvqpCiV4Cjqf@google.com>
References: <CALvjV29jozswRtmYxDur2TuEQ=1JSDrM+uWVHmghW3hG5Y9F+w@mail.gmail.com>
 <20240909080200.GAZt6reI9c98c9S_Xc@fat_crate.local>
 <ZuCGkjoxKxpnhEh6@google.com>
 <87jzfhayul.fsf@minerva.mail-host-address-is-not-set>
 <CAODwPW8P+jcF0erUph5XyWoyQgLFbZWxEM6Ygi_LFCCTLmH89Q@mail.gmail.com>
 <87mskczv9l.fsf@minerva.mail-host-address-is-not-set>
 <ZuR6yvqpCiV4Cjqf@google.com>
Date: Fri, 13 Sep 2024 21:03:23 +0200
Message-ID: <877cbfz890.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Brian Norris <briannorris@chromium.org> writes:

Hello Brian,

> Hi Javier,
>
> On Thu, Sep 12, 2024 at 06:33:58PM +0200, Javier Martinez Canillas wrote:
>> That's a very good point. I'm actually not familiar with Coreboot and I
>> used an educated guess (in the case of DT for example, that's the main
>> source of truth and I didn't know if a Core table was in a similar vein).
>> 
>> Maybe something like the following (untested) patch then?
>
> Julius is more familiar with the Coreboot + payload ecosystem than me,
> but his explanations make sense to me, as does this patch.
>
>> From de1c32017006f4671d91b695f4d6b4e99c073ab2 Mon Sep 17 00:00:00 2001
>> From: Javier Martinez Canillas <javierm@redhat.com>
>> Date: Thu, 12 Sep 2024 18:31:55 +0200
>> Subject: [PATCH] firmware: coreboot: Don't register a pdev if screen_info data
>>  is available
>> 
>> On Coreboot platforms, a system framebuffer may be provided to the Linux
>> kernel by filling a LB_TAG_FRAMEBUFFER entry in the Coreboot table. But
>> a Coreboot payload (e.g: SeaBIOS) could also provide this information to
>> the Linux kernel.
>> 
>> If that the case, early arch x86 boot code will fill the global struct
>> screen_info data and that data used by the Generic System Framebuffers
>> (sysfb) framework to add a platform device with platform data about the
>> system framebuffer.
>
> Normally, these sorts of "early" and "later" ordering descriptions would
> set alarm bells when talking about independent drivers. But I suppose
> the "early arch" code has better ordering guaranteeds than drivers, so
> this should be fine.
>

Yes, I didn't want to imply ordering here but just mentioning what code
was registering a "simple-framebuffer" platform_device, that conflicted
with this driver.

>> But later then the framebuffer_coreboot driver will try to do the same
>> framebuffer (using the information from the Coreboot table), which will
>> lead to an error due a simple-framebuffer.0 device already registered:
>> 

[...]

>>  
>> +	/*
>> +	 * If the global screen_info data has been filled, the Generic
>> +	 * System Framebuffers (sysfb) will already register a platform
>
> Did you mean 'platform_device'?
>

Ups, yeah I forgot to write device there.

>> +	 * and pass the screen_info as platform_data to a driver that
>> +	 * could scan-out using the system provided framebuffer.
>> +	 *
>> +	 * On Coreboot systems, the advertise LB_TAG_FRAMEBUFFER entry
>
> s/advertise/advertised/ ?
>

Ok.

        >> +	 * in the Coreboot table should only be used if the payload did
>> +	 * not set video mode info and passed it to the Linux kernel.
>
> s/passed/pass/
>

Ok.

>> +	 */
>> +	if (si->orig_video_isVGA == VIDEO_TYPE_VLFB ||
>> +            si->orig_video_isVGA == VIDEO_TYPE_EFI)
>
> This line is using spaces for indentation. It should use a tab, and then
> spaces for alignment. But presumably this will change based on Thomas's
> suggestions anyway.
>

Yes, I usually run checkpatch --strict before posting but didn't in this
case because just shared the patch as a response.

>> +		return -EINVAL;
>
> Is EINVAL right? IIUC, that will print a noisier error to the logs. I
> believe the "expected" sorts of return codes are ENODEV or ENXIO. (See
> call_driver_probe().) ENODEV seems like a fine choice, similar to
> several of the other return codes already used here.
>

You are right, -ENODEV is indeed a more suitable error code for this.

> Anyway, this seems along the right track. Thanks for tackling, and feel
> free to carry a:
>
> Reviewed-by: Brian Norris <briannorris@chromium.org>
>

Thanks and for your comments.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

