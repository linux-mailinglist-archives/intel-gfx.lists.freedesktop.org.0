Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AD921C478
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jul 2020 15:47:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4020D6E049;
	Sat, 11 Jul 2020 13:47:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B79806E049
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jul 2020 13:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1594475221;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Lp+tu20h5F5uGIa4pcPQExsFoszmhkg8Fk2XKaoMSl4=;
 b=DcKp9d8myLBpYr801D1AE4WMALCTyCISvP/aDPXRNnXXOs57abP09fEN+4RfFkHTcvojW2
 5t/Xy2tC/KqO5eSv/p7xmNZ3QwU/lIpQ5b3TnRzU9bLTOw3lvtMZ7f/aottra2395bVjzC
 uUeDddYFrzTemv7kWIeWiTat/fWRpBE=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-481-ZPRGuFL8M06A6fsfGZcs7A-1; Sat, 11 Jul 2020 09:46:59 -0400
X-MC-Unique: ZPRGuFL8M06A6fsfGZcs7A-1
Received: by mail-ej1-f70.google.com with SMTP id b14so10558450ejv.14
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jul 2020 06:46:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=ypJLZNaMeKtGfv3TVsmWUfAoJ1cM0/nyBbZwCNLwYBE=;
 b=s6r5jicpcMAMUFrsxLgwVzg5yPdGETPt8/XjyxJDofQJtbtOa3HX/ZKr3CzFTumpEn
 Pz5uwrS12wpOUrCM7qnrptS1FTFtP3YXa4qBDpScTwKpWo7sd8LjMbB47QQ6aWMOAFco
 MPVy7/9F+wmvGnfO8HEsY9opCTfNXNbRUZzvbUp0PDuX/RUG4gCDDAuO8xFLwRc/Svga
 a4awqllIk6hqTK4CQKiuLYBm6JlJSg2M43D0s1estJyLrZyYRxrUEIlRL7X/WDHSFX2A
 ByvY/C++2APjS+z9aVXTf2+E9uGlrm0JZ9bLtOQ4VygYn50vvqsxulvn2CvmRMbU+XR6
 z/Lw==
X-Gm-Message-State: AOAM531RfeS9Pz7edeqviR1Gu0kDg+8xLoUH4d5Dz4X6R+/zBcHl0c3P
 6YKwJ3FPLL3Sv1lPB9hweiHgYuHnH4cwDD+L6TOpp4J1M/LzWjkZsuv64Jnt92RPmeBZEJvGXrq
 8ikLcy8xsQXYTT1LqqXBz/u3M7Xah
X-Received: by 2002:a17:906:6442:: with SMTP id
 l2mr63973638ejn.383.1594475218080; 
 Sat, 11 Jul 2020 06:46:58 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzcDIT5JUOvQ8Y96Gig/aI8F/ZHtJpqKvkvPxprUQyKyKFjT1eV0H1cE4/1/UPdyq8qGvVKjA==
X-Received: by 2002:a17:906:6442:: with SMTP id
 l2mr63973627ejn.383.1594475217866; 
 Sat, 11 Jul 2020 06:46:57 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c0c-fe00-d2ea-f29d-118b-24dc.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c0c:fe00:d2ea:f29d:118b:24dc])
 by smtp.gmail.com with ESMTPSA id y24sm5521015ejj.97.2020.07.11.06.46.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 11 Jul 2020 06:46:57 -0700 (PDT)
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>
References: <20200708211432.28612-1-hdegoede@redhat.com>
 <20200709141407.GA226971@ravnborg.org>
 <fb370663-9efe-a820-2e57-d43d3af7828c@redhat.com>
 <20200711061901.njwx3xofo4awcflg@pengutronix.de>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <d9079987-1c98-7542-8900-b2cc7b17446f@redhat.com>
Date: Sat, 11 Jul 2020 15:46:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200711061901.njwx3xofo4awcflg@pengutronix.de>
Content-Language: en-US
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v4 00/15] acpi/pwm/i915: Convert pwm-crc and
 i915 driver's PWM code to use the atomic PWM API
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
Cc: linux-pwm@vger.kernel.org,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-acpi@vger.kernel.org,
 dri-devel@lists.freedesktop.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Sam Ravnborg <sam@ravnborg.org>, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 7/11/20 8:19 AM, Uwe Kleine-K=C3=B6nig wrote:
> Hi Hans,
> =

> On Thu, Jul 09, 2020 at 04:40:56PM +0200, Hans de Goede wrote:
>> On 7/9/20 4:14 PM, Sam Ravnborg wrote:
>>> On Wed, Jul 08, 2020 at 11:14:16PM +0200, Hans de Goede wrote:
>>>> Here is v4 of my patch series converting the i915 driver's code for
>>>> controlling the panel's backlight with an external PWM controller to
>>>> use the atomic PWM API. See below for the changelog.
>>>
>>> Why is it that i915 cannot use the pwm_bl driver for backlight?
>>> I have not studied the code - just wondering.
>>
>> The intel_panel.c code deals with 7 different types of PWM controllers
>> which are built into the GPU + support for external PWM controllers
>> through the kernel's PWM subsystem.
>>
>> pwm_bl will work for the external PWM controller case, but not for
>> the others. On top of that the intel_panel code integrates which
>> the video BIOS, getting things like frequency, minimum value
>> and if the range is inverted (0% duty =3D=3D backlight brightness max).
>> I'm not even sure if pwm_bl supports all of this, but even if it
>> does the intel_panel code handles this in a unified manner for
>> all supported PWM controllers, including the ones which are
>> an integral part of the GPU.
> =

> pwm_bl handles inverted PWM just fine. I'm unsure what "integrates which
> the video BIOS" means,

Integrating with the video BIOS means reading the VBT (Video BIOS Tables)
and extracting info about which PWM controller to use, what frequency
to program the output at, minimum allowed duty-cycle and if the scale
is inverted.

> but I don't see how "handling 7 different types
> of PWM controllers explicitly and others using the PWM API" can be seen
> as "unified manner" compared to "provide a pwm driver for whatever might
> be in the GPU and then use generic code (PWM API, pwm_bl) to drive it".

Part of this is historical, the main x86 GPU drivers have always treated
backlight control as integral part of the display pipeline and in some
cases it really is, e.g. for eDP panels in some cases the backlight
is controlled through the DP aux channel, there is no PWM controller
(visible to the kernel involved). So the intel_panel.c code really
is a backlight-control de-multiplexer, picking the right "plugin"
to control the backlight, which may also be the eDP backlight control
code. Using a PWM controller supported by the PWM-core/class is just
one of the many supported "plugins".

Also the GPU currently is treated as a single device, not as a MFD
device, so we cannot have an isolated PWM driver. We could have code
inside the GPU driver which exports a PWM-controller to the PWM-core,
to then get a reference to the exported PWM-controller but that would
be very roundabout.

The devices which are using an external PWM controller are actually
the exception here, 99.9% of all devices use the GPU integrated PWM
controller.

Anyways changing over the other PWM-like controllers support by
the intel-panel code falls way outside of the scope of this
patch-set.

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
