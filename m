Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A065560DE7E
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 11:59:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5C9910E363;
	Wed, 26 Oct 2022 09:59:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D84510E26A
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 09:59:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1666778374;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=88clgiauNntAl3Wz7H3JYTecCEZyzTGGOgZ+LgOj43I=;
 b=eAmcIBZ2fJwuaQX2xZ1NE9RXLF7+9MTXgFNgUatjGChLQd+4F2NV08EAwr1F2jM5txspVz
 1iZjj8ggOcUqaO6/U9urOtgwPAMMr7EhOgY6zAujRYBB4dVPgA1bltHWzmlK3CdcoQ7aGF
 I3spo7NoQa0wga+at26gd0GJ8ljvvQk=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-633-QeRVSqOyP36qiW4xyT7tUA-1; Wed, 26 Oct 2022 05:59:33 -0400
X-MC-Unique: QeRVSqOyP36qiW4xyT7tUA-1
Received: by mail-ej1-f72.google.com with SMTP id
 hc43-20020a17090716ab00b0078e28567ffbso4268108ejc.15
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 02:59:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=88clgiauNntAl3Wz7H3JYTecCEZyzTGGOgZ+LgOj43I=;
 b=GUo+ZSgZ/zGGNn2OZnc0kR3hCV8rfabkQZ+Fj+dlLKA3iGxBz56bW2RTYiWCiqjDiE
 iqddShY/fWrhDIPLkvcpb/j8EwzENmn+P4pSm76wNQZpOaPh109aj31cPGu3F9/00zM7
 0Ua6ZHG14/lpFnngHIs95h8zUDlKa9oNI56gNrmyebR0K6E0EXyDcbnvsi3kOlWvWY1c
 ISLZzdTGPvvVfrURYRiS7t4xGqWGFTuSmvhqzWYu0KyhxkaBy1X7H1okTcWQZuvZkmvV
 jQJSSBCEVktA7ip/tXeIs4uF1hKYNzK6eRkzuxWb8O+s8C4s5etvjRf851aDnP9ATo0c
 h05Q==
X-Gm-Message-State: ACrzQf1Y/iK4p0mOhziYwB0odgT5+M47Zi6pcEsclI39Rw8yvfFlUEdk
 6dbzBCC+CHDQwypn3T55wKqAoatA/Jy3njGPJ531XkFv6dkOMa7ZE5d9yTS/pwgNKDeaSqUP06I
 m6MoouJ47zcZvMzz9whv+8pgJbCsk
X-Received: by 2002:a17:906:fe04:b0:777:b13d:30a6 with SMTP id
 wy4-20020a170906fe0400b00777b13d30a6mr36058262ejb.248.1666778372049; 
 Wed, 26 Oct 2022 02:59:32 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM778dCSL7x8318qzKenTU6R7Jp/heP0pFWsLg0Zjgt4GfqQod/XgRUMTGVY4TA8QIvtp3pSAg==
X-Received: by 2002:a17:906:fe04:b0:777:b13d:30a6 with SMTP id
 wy4-20020a170906fe0400b00777b13d30a6mr36058246ejb.248.1666778371810; 
 Wed, 26 Oct 2022 02:59:31 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 x10-20020a1709060eea00b007415f8ffcbbsm2706055eji.98.2022.10.26.02.59.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Oct 2022 02:59:29 -0700 (PDT)
Message-ID: <fa6cc1d9-6740-b495-2c72-cae18c429ca6@redhat.com>
Date: Wed, 26 Oct 2022 11:59:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: Matthew Garrett <mjg59@srcf.ucam.org>
References: <20220825143726.269890-1-hdegoede@redhat.com>
 <20220825143726.269890-3-hdegoede@redhat.com>
 <f914ceb3-94bd-743c-f8b6-0334086e731a@gmail.com>
 <42a5f2c9-a1dc-8fc0-7334-fe6c390ecfbb@redhat.com>
 <20221024203057.GA28675@srcf.ucam.org>
 <8f53b8b6-ead2-22f5-16f7-65b31f7cc05c@redhat.com>
 <20221025193248.GA21457@srcf.ucam.org>
 <144cd47e-42dc-2b84-1a90-ea5e080e08a3@redhat.com>
 <20221025204043.GA23306@srcf.ucam.org>
 <cb5add36-c13c-ccd5-1b4b-71b45163a170@redhat.com>
 <20221025234040.GA27673@srcf.ucam.org>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20221025234040.GA27673@srcf.ucam.org>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v5 02/31] drm/i915: Don't register backlight
 when another backlight should be used (v2)
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
Cc: Pan@freedesktop.org, Karol Herbst <kherbst@redhat.com>,
 "Rafael J . Wysocki" <rafael@kernel.org>, nouveau@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org,
 Dmitry Osipenko <digetx@gmail.com>, amd-gfx@lists.freedesktop.org,
 linux-acpi@vger.kernel.org, Ben Skeggs <bskeggs@redhat.com>,
 David Airlie <airlied@redhat.com>, Len Brown <lenb@kernel.org>,
 Daniel Dadap <ddadap@nvidia.com>, Jani Nikula <jani.nikula@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, Mark Gross <markgross@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Andy Shevchenko <andy@kernel.org>, Xinhui <Xinhui.Pan@amd.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 10/26/22 01:40, Matthew Garrett wrote:
> On Wed, Oct 26, 2022 at 01:27:25AM +0200, Hans de Goede wrote:
> 
>> this code should actually set the ACPI_VIDEO_BACKLIGHT flag:
>> drivers/acpi/scan.c:
>>
>> static acpi_status
>> acpi_backlight_cap_match(acpi_handle handle, u32 level, void *context,
>>                           void **return_value)
>> {
>>         long *cap = context;
>>
>>         if (acpi_has_method(handle, "_BCM") &&
>>             acpi_has_method(handle, "_BCL")) {
>>                 acpi_handle_debug(handle, "Found generic backlight support\n");
>>                 *cap |= ACPI_VIDEO_BACKLIGHT;
>>                 /* We have backlight support, no need to scan further */
>>                 return AE_CTRL_TERMINATE;
>>         }
>>         return 0;
>> }
> 
> Ah, yeah, my local tree no longer matches the upstream behaviour because 
> I've hacked the EC firmware to remove the backlight trigger because it 
> had an extremely poor brightness curve and also automatically changed it 
> on AC events - as a result I removed the backlight code from the DSDT 
> and just fell back to the native control. Like I said I'm a long way 
> from the normal setup, but this did previously work.

Ok, so this is a local customization to what is already a custom BIOS
for a custom motherboard. There is a lot of custom in that sentence and
TBH at some point things might become too custom for them to be expected
to work OOTB.

Note that you can always just override the choses made by the heuristisc/
quirks on the kernel commandline by adding:

acpi_backlight=native   (I think you want this one?)

or if you want the old thinkpad_acpi module vendor/EC interface:

acpi_backlight=vendor

Asking you to pass this on the commandline does not seem like a huge
stretch given the large amount of hw/firmware customization you have done ?

> The "right" logic here seems pretty simple: if ACPI backlight control is 
> expected to work, use it. If it isn't, but there's a vendor interface, 
> use it. If there's no vendor interface, use the native interface.

I'm afraid things are not that simple. I assume that with
"if ACPI backlight control is expected to work" you mean don't
use ACPI backlight control when (acpi_osi_is_win8() && native_available)
evaluates to true because it is known to be broken on some of
those systems because Windows 8 stopped using it ?

Unfortunately something similar applies to vendor interfaces,
When Windows XP started using (and mandating for certification
IIRC) ACPI backlight control, vendors still kept their own
vendor specific EC/smbios/ACPI/WMI backlight interfaces around for
a long long time, except they were often no longer tested.

So basically we have 3 major backlight control methods:

1. native GPU backlight control, which sometimes does not work
on older laptops because the backlight is connected to the EC
rather then the GPU there, yet often still enabled in the
video-bios-tables so the GPU drivers will still try to use it.

2. ACPI -> known to be always present on recent Windows laptops
because mandated by the hardware certification requirements
(even on Windows 8+), but regularly broken on Windows 8+ because
their backlight control was moved from the core-os to the GPU
drivers and those typically use the native method.

3. Vendor specific EC/smbios/ACPI/WMI interfaces which work
on older laptops, but are often present on newer laptops
despite them no longer working and to get working backlight
control either 1. or 2. should be used.

So basically non of the 3 main backlight control methods can
be trusted even if they are present. Which is why need to have
a combination of heuristics + quirks.

And I have been working on moving all this into a central
place in drivers/acpi/video_detect.c because having
the heuristics + quirks spread out all over the place does
not help.

> The 
> problem you're dealing with is that the knowledge of whether or not 
> there's a vendor interface isn't something the core kernel code knows 
> about. What you're proposing here is effectively for us to expose 
> additional information about whether or not there's a vendor interface 
> in the system firmware, but since we're talking in some cases about 
> hardware that's almost 20 years old, we're not realistically going to 
> get those old machines fixed.

I don't understand why you keep talking about the old vendor interfaces,
at least for the chromebook part of this thread the issue is that
the i915 driver no longer registers the intel_backlight device which
is a native device type, which is caused by the patch this email
thread is about (and old vendor interfaces do not come into play
at all here). So AFAICT this is a native vs acpi backlight control
issue ?

I really want to resolve your bug, but I still lack a lot of info,
like what backlight interface you were actually using in 6.0 ?

Can you please provide the following info for your laptop:

1. Output of "ls /sys/class/backlight" with 6.0  (working setup)
2. Output of "ls /sys/class/backlight" with 6.1  (non-working setup)
3. dmidecode output, so that I can check if this quirk:

        {
         .callback = video_detect_force_video,
         /* ThinkPad X201s */
         .matches = {
                DMI_MATCH(DMI_SYS_VENDOR, "LENOVO"),
                DMI_MATCH(DMI_PRODUCT_VERSION, "ThinkPad X201s"),
                },
        },

will trigger.

4. An acpidump. Although you already said that you have removed the
ACPI video bus bits, so I guess I can just assume that
the ACPI_VIDEO_BACKLIGHT flag won't get set.

Regards,

Hans


p.s.

This thread has made me wonder if the 6.1 changes don't cause
regressions on other laptops flashed with a CoreOS BIOS, I will
start a mail-thread asking for testing on the CoreOS mailinglist.

