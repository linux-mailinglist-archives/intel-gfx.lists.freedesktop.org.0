Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B34C5576111
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jul 2022 14:01:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF30018A91E;
	Fri, 15 Jul 2022 12:01:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E6D0218A91E
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 12:01:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1657886505;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oVqiCGNB6a+1hDQPxLgnu2SagG2cJPOWVlfxzqlYu1Q=;
 b=V9hI8qkykIwPEFFhPzpA/rdQIT/Sl7Lq/9c2aOBY57igbdcgRg7Y68tDwosM3/P1+0Euxj
 rh6FYi7p8gEQXaQgHdUgwNZgehHR1XWdwVId1olxrE2+0oN2Fs2IqwcPEg6tqaimKfC73I
 N9fJUYRtqYB9bt3s9x6m6JIM2cGETww=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-508-OCoo8kQrPEmQ74kKIKFYeA-1; Fri, 15 Jul 2022 08:01:43 -0400
X-MC-Unique: OCoo8kQrPEmQ74kKIKFYeA-1
Received: by mail-ej1-f72.google.com with SMTP id
 sb15-20020a1709076d8f00b0072b692d938cso1448332ejc.10
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 05:01:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=oVqiCGNB6a+1hDQPxLgnu2SagG2cJPOWVlfxzqlYu1Q=;
 b=zxi67Zlyr5qEqw9Xcc3uCI9XrWKkVZdSpCgtu1BhInousezoOXJyOny0/v/YxcZsgp
 u2OGV0yl/rjwEkKOMTQCbKhLg5q46NRVfUY3bofY4EXMQH4gI0Ck9VatzuGerDDiKY+w
 P877XtxSLh1Nr8Ebz8fNSZN9beWvc4BQzMhu8501QP9MYlUdAR+idcGIrRdf9zooBWHP
 nztz6XAGKdoexjSQHoHacjW8OApD1uvMP7rEB+R9/8aXcDhA3WI0BQTTVvYvtrX3nkFC
 nwlB6v9X5duZAUK+26HRewHztTZfMv4crGSEIMe4oX1xwJ1qnPFNwCt7xP1AAqhl0gaU
 neKA==
X-Gm-Message-State: AJIora9JKs7nHj/2kpXfroUYxDq0M3N/AAxFr/WvsWBfk4eah2FWNm/8
 MuiZYFMEho/2ygA1Q+2mU7xkAF05z7F0GjAEX3jz/rBwSYBM/awYOgWGxvGBsMUKcdvBjyPvDJF
 tR1TOK5DRBhSpP+7vzzWoNglCCgy/
X-Received: by 2002:a05:6402:1011:b0:43a:76bf:6c40 with SMTP id
 c17-20020a056402101100b0043a76bf6c40mr18706530edu.352.1657886502439; 
 Fri, 15 Jul 2022 05:01:42 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1s4ZXT/YV1dR7jU5drrgi+u+qGxZJjoBjsMNrXR/NiwsA9lFfG5d91HH4Ib0JA6GRvbpcAhIw==
X-Received: by 2002:a05:6402:1011:b0:43a:76bf:6c40 with SMTP id
 c17-20020a056402101100b0043a76bf6c40mr18706479edu.352.1657886502117; 
 Fri, 15 Jul 2022 05:01:42 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 2-20020a170906218200b0072b873f19a0sm1933827eju.129.2022.07.15.05.01.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 15 Jul 2022 05:01:41 -0700 (PDT)
Message-ID: <235a6965-b6df-022f-82ed-b287af81f959@redhat.com>
Date: Fri, 15 Jul 2022 14:01:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
To: Daniel Dadap <ddadap@nvidia.com>, Ben Skeggs <bskeggs@redhat.com>,
 Karol Herbst <kherbst@redhat.com>, Lyude <lyude@redhat.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Xinhui <Xinhui.Pan@amd.com>, "Rafael J . Wysocki" <rafael@kernel.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Lukas Wunner <lukas@wunner.de>, Mark Gross <markgross@kernel.org>,
 Andy Shevchenko <andy@kernel.org>
References: <20220712193910.439171-1-hdegoede@redhat.com>
 <20220712193910.439171-21-hdegoede@redhat.com>
 <2c4fafb0-e47f-d640-0fc9-4530a8d462e0@nvidia.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <2c4fafb0-e47f-d640-0fc9-4530a8d462e0@nvidia.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 20/29] platform/x86: acer-wmi: Move
 backlight DMI quirks to acpi/video_detect.c
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
Cc: David Airlie <airlied@linux.ie>, nouveau@lists.freedesktop.org,
 intel-gfx <intel-gfx@lists.freedesktop.org>, amd-gfx@lists.freedesktop.org,
 platform-driver-x86@vger.kernel.org, linux-acpi@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Len Brown <lenb@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 7/12/22 22:24, Daniel Dadap wrote:
> I'll ask around to see if there's some DMI property we can match in order to detect whether a system is expected to use the EC backlight driver: if so, maybe we can avoid the WMI interactions in patch 16/29 of this series. Although I suppose even if there were a DMI property, we'd still need to call the WMI-wrapped ACPI method to check whether the system is currently configured to drive the backlight through the EC, unless the system somehow exports a different DMI table depending on the current backlight control configuration, which I imagine to be unlikely.

IMHO the duplication is fine, it is also important that
the video_detect.c code and the actual backlight driver use
the same detection mechanism where possible.
Otherwise acpi_video_get_backlight_type() may return
acpi_backlight_nvidia_wmi_ec while the EC backlight driver
refuses to load...

Regards,

Hans





> 
> This change looks fine to me, although I suppose somebody who maintains the acer-wmi driver should comment. The bugzilla links are a nice touch.
> 
> On 7/12/22 14:39, Hans de Goede wrote:
>> Move the backlight DMI quirks to acpi/video_detect.c, so that
>> the driver no longer needs to call acpi_video_set_dmi_backlight_type().
>>
>> acpi_video_set_dmi_backlight_type() is troublesome because it may end up
>> getting called after other backlight drivers have already called
>> acpi_video_get_backlight_type() resulting in the other drivers
>> already being registered even though they should not.
>>
>> Note that even though the DMI quirk table name was video_vendor_dmi_table,
>> 5/6 quirks were actually quirks to use the GPU native backlight.
>>
>> These 5 quirks also had a callback in their dmi_system_id entry which
>> disabled the acer-wmi vendor driver; and any DMI match resulted in:
>>
>>     acpi_video_set_dmi_backlight_type(acpi_backlight_vendor);
>>
>> which disabled the acpi_video driver, so only the native driver was left.
>> The new entries for these 5/6 devices correctly marks these as needing
>> the native backlight driver.
>>
>> Also note that other changes in this series change the native backlight
>> drivers to no longer unconditionally register their backlight. Instead
>> these drivers now do this check:
>>
>>     if (acpi_video_get_backlight_type(false) != acpi_backlight_native)
>>         return 0; /* bail */
>>
>> which without this patch would have broken these 5/6 "special" quirks.
>>
>> Since I had to look at all the commits adding the quirks anyways, to make
>> sure that I understood the code correctly, I've also added links to
>> the various original bugzillas for these quirks to the new entries.
>>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>   drivers/acpi/video_detect.c     | 53 ++++++++++++++++++++++++++
>>   drivers/platform/x86/acer-wmi.c | 66 ---------------------------------
>>   2 files changed, 53 insertions(+), 66 deletions(-)
>>
>> diff --git a/drivers/acpi/video_detect.c b/drivers/acpi/video_detect.c
>> index a514adaec14d..cd51cb0d7821 100644
>> --- a/drivers/acpi/video_detect.c
>> +++ b/drivers/acpi/video_detect.c
>> @@ -147,6 +147,15 @@ static const struct dmi_system_id video_detect_dmi_table[] = {
>>           DMI_MATCH(DMI_BOARD_NAME, "X360"),
>>           },
>>       },
>> +    {
>> +     /* https://bugzilla.redhat.com/show_bug.cgi?id=1128309 */
>> +     .callback = video_detect_force_vendor,
>> +     /* Acer KAV80 */
>> +     .matches = {
>> +        DMI_MATCH(DMI_SYS_VENDOR, "Acer"),
>> +        DMI_MATCH(DMI_PRODUCT_NAME, "KAV80"),
>> +        },
>> +    },
>>       {
>>       .callback = video_detect_force_vendor,
>>       /* Asus UL30VT */
>> @@ -427,6 +436,41 @@ static const struct dmi_system_id video_detect_dmi_table[] = {
>>           DMI_MATCH(DMI_BOARD_NAME, "JV50"),
>>           },
>>       },
>> +    {
>> +     /* https://bugzilla.redhat.com/show_bug.cgi?id=1012674 */
>> +     .callback = video_detect_force_native,
>> +     /* Acer Aspire 5741 */
>> +     .matches = {
>> +        DMI_MATCH(DMI_BOARD_VENDOR, "Acer"),
>> +        DMI_MATCH(DMI_PRODUCT_NAME, "Aspire 5741"),
>> +        },
>> +    },
>> +    {
>> +     /* https://bugzilla.kernel.org/show_bug.cgi?id=42993 */
>> +     .callback = video_detect_force_native,
>> +     /* Acer Aspire 5750 */
>> +     .matches = {
>> +        DMI_MATCH(DMI_BOARD_VENDOR, "Acer"),
>> +        DMI_MATCH(DMI_PRODUCT_NAME, "Aspire 5750"),
>> +        },
>> +    },
>> +    {
>> +     /* https://bugzilla.kernel.org/show_bug.cgi?id=42833 */
>> +     .callback = video_detect_force_native,
>> +     /* Acer Extensa 5235 */
>> +     .matches = {
>> +        DMI_MATCH(DMI_BOARD_VENDOR, "Acer"),
>> +        DMI_MATCH(DMI_PRODUCT_NAME, "Extensa 5235"),
>> +        },
>> +    },
>> +    {
>> +     .callback = video_detect_force_native,
>> +     /* Acer TravelMate 4750 */
>> +     .matches = {
>> +        DMI_MATCH(DMI_BOARD_VENDOR, "Acer"),
>> +        DMI_MATCH(DMI_PRODUCT_NAME, "TravelMate 4750"),
>> +        },
>> +    },
>>       {
>>        /* https://bugzilla.kernel.org/show_bug.cgi?id=207835 */
>>        .callback = video_detect_force_native,
>> @@ -437,6 +481,15 @@ static const struct dmi_system_id video_detect_dmi_table[] = {
>>           DMI_MATCH(DMI_BOARD_NAME, "BA51_MV"),
>>           },
>>       },
>> +    {
>> +     /* https://bugzilla.kernel.org/show_bug.cgi?id=36322 */
>> +     .callback = video_detect_force_native,
>> +     /* Acer TravelMate 5760 */
>> +     .matches = {
>> +        DMI_MATCH(DMI_BOARD_VENDOR, "Acer"),
>> +        DMI_MATCH(DMI_PRODUCT_NAME, "TravelMate 5760"),
>> +        },
>> +    },
>>       {
>>       .callback = video_detect_force_native,
>>       /* ASUSTeK COMPUTER INC. GA401 */
>> diff --git a/drivers/platform/x86/acer-wmi.c b/drivers/platform/x86/acer-wmi.c
>> index 9c6943e401a6..c08eeb1e0e05 100644
>> --- a/drivers/platform/x86/acer-wmi.c
>> +++ b/drivers/platform/x86/acer-wmi.c
>> @@ -643,69 +643,6 @@ static const struct dmi_system_id non_acer_quirks[] __initconst = {
>>       {}
>>   };
>>   -static int __init
>> -video_set_backlight_video_vendor(const struct dmi_system_id *d)
>> -{
>> -    interface->capability &= ~ACER_CAP_BRIGHTNESS;
>> -    pr_info("Brightness must be controlled by generic video driver\n");
>> -    return 0;
>> -}
>> -
>> -static const struct dmi_system_id video_vendor_dmi_table[] __initconst = {
>> -    {
>> -        .callback = video_set_backlight_video_vendor,
>> -        .ident = "Acer TravelMate 4750",
>> -        .matches = {
>> -            DMI_MATCH(DMI_BOARD_VENDOR, "Acer"),
>> -            DMI_MATCH(DMI_PRODUCT_NAME, "TravelMate 4750"),
>> -        },
>> -    },
>> -    {
>> -        .callback = video_set_backlight_video_vendor,
>> -        .ident = "Acer Extensa 5235",
>> -        .matches = {
>> -            DMI_MATCH(DMI_BOARD_VENDOR, "Acer"),
>> -            DMI_MATCH(DMI_PRODUCT_NAME, "Extensa 5235"),
>> -        },
>> -    },
>> -    {
>> -        .callback = video_set_backlight_video_vendor,
>> -        .ident = "Acer TravelMate 5760",
>> -        .matches = {
>> -            DMI_MATCH(DMI_BOARD_VENDOR, "Acer"),
>> -            DMI_MATCH(DMI_PRODUCT_NAME, "TravelMate 5760"),
>> -        },
>> -    },
>> -    {
>> -        .callback = video_set_backlight_video_vendor,
>> -        .ident = "Acer Aspire 5750",
>> -        .matches = {
>> -            DMI_MATCH(DMI_BOARD_VENDOR, "Acer"),
>> -            DMI_MATCH(DMI_PRODUCT_NAME, "Aspire 5750"),
>> -        },
>> -    },
>> -    {
>> -        .callback = video_set_backlight_video_vendor,
>> -        .ident = "Acer Aspire 5741",
>> -        .matches = {
>> -            DMI_MATCH(DMI_BOARD_VENDOR, "Acer"),
>> -            DMI_MATCH(DMI_PRODUCT_NAME, "Aspire 5741"),
>> -        },
>> -    },
>> -    {
>> -        /*
>> -         * Note no video_set_backlight_video_vendor, we must use the
>> -         * acer interface, as there is no native backlight interface.
>> -         */
>> -        .ident = "Acer KAV80",
>> -        .matches = {
>> -            DMI_MATCH(DMI_SYS_VENDOR, "Acer"),
>> -            DMI_MATCH(DMI_PRODUCT_NAME, "KAV80"),
>> -        },
>> -    },
>> -    {}
>> -};
>> -
>>   /* Find which quirks are needed for a particular vendor/ model pair */
>>   static void __init find_quirks(void)
>>   {
>> @@ -2482,9 +2419,6 @@ static int __init acer_wmi_init(void)
>>         set_quirks();
>>   -    if (dmi_check_system(video_vendor_dmi_table))
>> -        acpi_video_set_dmi_backlight_type(acpi_backlight_vendor);
>> -
>>       if (acpi_video_get_backlight_type() != acpi_backlight_vendor)
>>           interface->capability &= ~ACER_CAP_BRIGHTNESS;
>>   
> 

