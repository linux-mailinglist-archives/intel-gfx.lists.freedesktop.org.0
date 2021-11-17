Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BA904454B0C
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Nov 2021 17:33:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28D9089C0A;
	Wed, 17 Nov 2021 16:33:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56C4B89C0A
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 16:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1637166807;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=FOhG48xSjuHSVPDHQxfhP6Tk9A7OLeP6W1wQQNgRhLg=;
 b=bdmnkANXYBfugsf0mKDSFGR/3Qw3ADcy29qbz8g3zDfEqFi1Uujy5goK3gd/8Jgw0c9XA/
 m+706o5L9FwSnX/nokxWvgvjkNh9Hw4ESP8o9oDMqX/c7Nm4ARFXGGNwdFHXrZmDuwM1sq
 jS2A/6MwJAUxgnpgRHXc3Fwm63GPL/k=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-600-F3DhiihkOLaZRsIAj4sXfA-1; Wed, 17 Nov 2021 11:33:25 -0500
X-MC-Unique: F3DhiihkOLaZRsIAj4sXfA-1
Received: by mail-ed1-f71.google.com with SMTP id
 q17-20020aa7da91000000b003e7c0641b9cso2633329eds.12
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Nov 2021 08:33:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=FOhG48xSjuHSVPDHQxfhP6Tk9A7OLeP6W1wQQNgRhLg=;
 b=pAWH19mGLBZIVA9Ish/5st8wbub/IdPTEmK1AFiatV1+iRRv3M0fJdT4e5fIcNAerX
 EmBQwvC/lF6VjrG1iN+Qdu6V2JnYZTGQjK6xi8Z8mUU/605Fd3NalB5DMJgO44dZ5UVK
 8wKgKW8PzgxfhhdyymZYkqf1KTlVW3fEIljQSoIv0pOG7w54GR1YyH+EiC4OQ8Mk/7Af
 T4B1NeEMxXae+ts5hmuBwmCHr3mLI4PvTSmJzWkdlk8AO1OiFF0JdkOOVyHCc184NZ/h
 zwHTyRVOyeeevf4/4NQ+LgwcKq89TyVMok0UDjDNykY5snxe9ebduiJ1CXzmF0gloF3t
 tz2w==
X-Gm-Message-State: AOAM532zeWI8SKo7RcHrcmDgZtNeeuE9AEg/gCgTV4b6fJMhSrYLyJpa
 GDDmYqhtAj2HWIPb6Or+Wa8ad7e0bvqzvblSuK9sdes8gUn/58mL0pFNLyxMmY7ImNOvvnZ1bSv
 xQQ4EI4+xvFZv0lFqKzyTwgnM9wrC
X-Received: by 2002:a50:c3cc:: with SMTP id i12mr23905434edf.350.1637166804651; 
 Wed, 17 Nov 2021 08:33:24 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxWn9cDAy0xoqCMNvaHDdIccZp5gKbxEwx8Z8DBYWpVDPwyDa0ysdIlJa07poBZgaH96qvudQ==
X-Received: by 2002:a50:c3cc:: with SMTP id i12mr23905349edf.350.1637166804315; 
 Wed, 17 Nov 2021 08:33:24 -0800 (PST)
Received: from ?IPV6:2001:1c00:c1e:bf00:1054:9d19:e0f0:8214?
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id j15sm159037edl.34.2021.11.17.08.33.23
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Nov 2021 08:33:23 -0800 (PST)
Message-ID: <ae08b6c4-5f91-b6a3-873d-138fe5b3b83f@redhat.com>
Date: Wed, 17 Nov 2021 17:33:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Rajat Jain <rajatja@google.com>
References: <20211005202322.700909-1-hdegoede@redhat.com>
 <20211005202322.700909-4-hdegoede@redhat.com>
 <CACK8Z6EhQnn6xiGsYvx-GyEs==-LDC642OFjPH7mBbMpPYvn_A@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <CACK8Z6EhQnn6xiGsYvx-GyEs==-LDC642OFjPH7mBbMpPYvn_A@mail.gmail.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 03/10] drm/privacy-screen: Add X86 specific
 arch init code
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
Cc: Mark Pearson <markpearson@lenovo.com>,
 Marco Trevisan <marco.trevisan@canonical.com>,
 Sebastien Bacher <seb128@ubuntu.com>, David Airlie <airlied@linux.ie>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 platform-driver-x86@vger.kernel.org, Mark Gross <markgross@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Andy Shevchenko <andy@infradead.org>,
 Mario Limonciello <mario.limonciello@outlook.com>,
 Pekka Paalanen <pekka.paalanen@collabora.com>, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Rajat,

On 11/17/21 15:13, Rajat Jain wrote:
> Hello Hans,
> 
> On Tue, Oct 5, 2021 at 1:23 PM Hans de Goede <hdegoede@redhat.com> wrote:
>>
>> Add X86 specific arch init code, which fills the privacy-screen lookup
>> table by checking for various vendor specific ACPI interfaces for
>> controlling the privacy-screen.
>>
>> This initial version only checks for the Lenovo Thinkpad specific ACPI
>> methods for privacy-screen control.
>>
>> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>
>> Reviewed-by: Lyude Paul <lyude@redhat.com>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>  drivers/gpu/drm/Makefile                 |  2 +-
>>  drivers/gpu/drm/drm_privacy_screen_x86.c | 86 ++++++++++++++++++++++++
>>  include/drm/drm_privacy_screen_machine.h |  5 ++
>>  3 files changed, 92 insertions(+), 1 deletion(-)
>>  create mode 100644 drivers/gpu/drm/drm_privacy_screen_x86.c
>>
>> diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
>> index 788fc37096f6..12997ca5670d 100644
>> --- a/drivers/gpu/drm/Makefile
>> +++ b/drivers/gpu/drm/Makefile
>> @@ -32,7 +32,7 @@ drm-$(CONFIG_OF) += drm_of.o
>>  drm-$(CONFIG_PCI) += drm_pci.o
>>  drm-$(CONFIG_DEBUG_FS) += drm_debugfs.o drm_debugfs_crc.o
>>  drm-$(CONFIG_DRM_LOAD_EDID_FIRMWARE) += drm_edid_load.o
>> -drm-$(CONFIG_DRM_PRIVACY_SCREEN) += drm_privacy_screen.o
>> +drm-$(CONFIG_DRM_PRIVACY_SCREEN) += drm_privacy_screen.o drm_privacy_screen_x86.o
>>
>>  obj-$(CONFIG_DRM_DP_AUX_BUS) += drm_dp_aux_bus.o
>>
>> diff --git a/drivers/gpu/drm/drm_privacy_screen_x86.c b/drivers/gpu/drm/drm_privacy_screen_x86.c
>> new file mode 100644
>> index 000000000000..a2cafb294ca6
>> --- /dev/null
>> +++ b/drivers/gpu/drm/drm_privacy_screen_x86.c
>> @@ -0,0 +1,86 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright (C) 2020 Red Hat, Inc.
>> + *
>> + * Authors:
>> + * Hans de Goede <hdegoede@redhat.com>
>> + */
>> +
>> +#include <linux/acpi.h>
>> +#include <drm/drm_privacy_screen_machine.h>
>> +
>> +#ifdef CONFIG_X86
>> +static struct drm_privacy_screen_lookup arch_lookup;
>> +
>> +struct arch_init_data {
>> +       struct drm_privacy_screen_lookup lookup;
>> +       bool (*detect)(void);
>> +};
>> +
>> +#if IS_ENABLED(CONFIG_THINKPAD_ACPI)
>> +static acpi_status __init acpi_set_handle(acpi_handle handle, u32 level,
>> +                                         void *context, void **return_value)
>> +{
>> +       *(acpi_handle *)return_value = handle;
>> +       return AE_CTRL_TERMINATE;
>> +}
>> +
>> +static bool __init detect_thinkpad_privacy_screen(void)
>> +{
>> +       union acpi_object obj = { .type = ACPI_TYPE_INTEGER };
>> +       struct acpi_object_list args = { .count = 1, .pointer = &obj, };
>> +       acpi_handle ec_handle = NULL;
>> +       unsigned long long output;
>> +       acpi_status status;
>> +
>> +       /* Get embedded-controller handle */
>> +       status = acpi_get_devices("PNP0C09", acpi_set_handle, NULL, &ec_handle);
>> +       if (ACPI_FAILURE(status) || !ec_handle)
>> +               return false;
>> +
>> +       /* And call the privacy-screen get-status method */
>> +       status = acpi_evaluate_integer(ec_handle, "HKEY.GSSS", &args, &output);
>> +       if (ACPI_FAILURE(status))
>> +               return false;
>> +
>> +       return (output & 0x10000) ? true : false;
>> +}
>> +#endif
>> +
>> +static const struct arch_init_data arch_init_data[] __initconst = {
>> +#if IS_ENABLED(CONFIG_THINKPAD_ACPI)
>> +       {
>> +               .lookup = {
>> +                       .dev_id = NULL,
>> +                       .con_id = NULL,
>> +                       .provider = "privacy_screen-thinkpad_acpi",
>> +               },
>> +               .detect = detect_thinkpad_privacy_screen,
>> +       },
>> +#endif
>> +};
> 
> As I'm trying to add privacy-screen support for my platform, I'm
> trying to understand if my platform needs to make an entry in this
> static list.
> 
> Do I understand it right that the reason you needed this static list
> (and this whole file really), instead of just doing a
> drm_privacy_screen_lookup_add() in the platform code in
> thinkpad_acpi.c, was because that code was executed AFTER the
> drm_connectors had already initialized> 
> In other words, the privacy-screen providers (platform code) need to
> register a privacy-screen and a lookup structure, BEFORE the drm
> connectors are initialized. If the platform code that provides a
> privacy-screen is executed AFTER the drm-connector initializes, then
> we need an entry in this static list, so that the drm probe (for i915
> atleast) is DEFERRED until the privacy-screen provider registers the
> privacy-screen?
> 
> OTOH, if the platform can register a privacy-screen and a lookup
> function (via drm_privacy_screen_lookup_add()) BEFORE drm probe, then
> I do not need an entry in this static list.
> 
> Is this correct understanding?

Yes, this is all here to deal with probe-ordering.

On a platform where the link between connectors and device-tree
is available in something like devicetree this all becomes
much easier.

The i915 code does a:

       privacy_screen = drm_privacy_screen_get(&pdev->dev, NULL);
       if (IS_ERR(privacy_screen) && PTR_ERR(privacy_screen) == -EPROBE_DEFER)
               return true;

Early on to determine if there is a privacy_screen device it needs
to wait for.

With devicetree you can just scan for connector fwnodes under
pdev->dev.fwnode and if any of those declare a link to a privacy_screen
check if the provider if that screen is ready and if not return -EPROBE_DEFER.

Rather then hardcoding "eDP-1" as con_id as I suggested before I guess
it would be good to have a generic:

int drm_privacy_screen_providers_ready(struct device *dev);

helper which always returns either 0 or -EPROBE_DEFER.

For devicetree this could check all connector fwnodes and for
non-devicetree fallsback to the current:

       privacy_screen = drm_privacy_screen_get(&pdev->dev, NULL);
       if (IS_ERR(privacy_screen) && PTR_ERR(privacy_screen) == -EPROBE_DEFER)
               return -EPROBE_DEFER;

code.

Then there is no need to hardcode "eDP-1" here.

This way you won't even have to ensure that the privacy_screen gets
registered first, instead you are correctly having the i915 probe defer
until the privacy_screen(s) get registered.

Either way you definitely should NOT need to add entries to this static
table on a devicetree based platform.

I hope this helps, if anything is not clear please keep asking questions.

Regards,

Hans

