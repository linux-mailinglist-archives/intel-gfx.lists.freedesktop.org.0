Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB9E4552F6D
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 12:07:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C52DD112A14;
	Tue, 21 Jun 2022 10:06:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E9FF112A14
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 10:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1655806013;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=OVKCPH4a0JKLpBoajp+D/luYrEgaQCvDF1hMTvEYmdY=;
 b=M0Bpnn/4FeJBxPX2CuJWT3wvYizLMA8DmgcpL+CMHLaSIzX/NuC8kxAWvvnzwPRMs+Jje6
 KzrJkFWp83eFxVe/kQhGxGxxzI/PeE12IxKbTb87WnOrKydC0ICwPfK/TSEznrm8MZcBJ+
 h2P+DSCD6A5J2ztpjR1Y2IcIH+042po=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-6-iAxgQTdENNW2_W9FBLxOXg-1; Tue, 21 Jun 2022 06:06:50 -0400
X-MC-Unique: iAxgQTdENNW2_W9FBLxOXg-1
Received: by mail-ej1-f70.google.com with SMTP id
 l2-20020a170906078200b006fed42bfeacso4585479ejc.16
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 03:06:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=OVKCPH4a0JKLpBoajp+D/luYrEgaQCvDF1hMTvEYmdY=;
 b=FKqXmlFIgT+8692vmo+RkGElFOi1TD5wXRGeTWzky56/tFmqctRQiWMeHeLIRTalTi
 RGwOzws6cMcoUeBNf5AMJnA3TA00eiME5eZNY173h3YiRoS5XVFQIu9N0vOTXaBLCZL2
 O2/gIpP4yG+jdcGNYmpwovCOtvuSwsLkeu3EjuZtiGUIzuvSXQMkdQK8ng6Y545ObWqn
 I010HXh7YJXLgdhv4+8rsvhD0JBgLJSYeq4fzdnpU1tT6vboIu7vnD8qXua7vkTSPOzq
 od2ZOYwNnVaySh3ITRGT7bmkvh218KhAJKS2hmP54zGTeZ0wlhkF9baS4+ilCqyvoaJi
 b6Lg==
X-Gm-Message-State: AJIora8SGy8KX5HW02VQTcoisDqo0MQ72wp+DdhQGy2r8GUtNsXqKssd
 719ZPMqeF7TqK9xNgEMAfot5VllO4KCODG1TFYR24cySuRFmzeyM7ocBkQOFhOmnsqHI90PlWqC
 4mxi1OhQ4ECtnj7SAufG0xpvztqtI
X-Received: by 2002:a17:907:7e90:b0:704:b67d:623e with SMTP id
 qb16-20020a1709077e9000b00704b67d623emr24830599ejc.634.1655806009497; 
 Tue, 21 Jun 2022 03:06:49 -0700 (PDT)
X-Google-Smtp-Source: AGRyM1vfDU5HBc6eg5PVLcqUujSoxltFjtYrZOrHgADfRD8wTvWQQMXNdkhuwCq1OBqcEKcR1dzWmQ==
X-Received: by 2002:a17:907:7e90:b0:704:b67d:623e with SMTP id
 qb16-20020a1709077e9000b00704b67d623emr24830566ejc.634.1655806009205; 
 Tue, 21 Jun 2022 03:06:49 -0700 (PDT)
Received: from [10.1.0.34] ([31.137.219.240]) by smtp.gmail.com with ESMTPSA id
 d13-20020a170906304d00b00704757b1debsm7329217ejd.9.2022.06.21.03.06.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jun 2022 03:06:48 -0700 (PDT)
Message-ID: <7a9bec36-b699-4a5f-ba79-36806f3d36b5@redhat.com>
Date: Tue, 21 Jun 2022 12:06:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
To: Jani Nikula <jani.nikula@linux.intel.com>, Ben Skeggs
 <bskeggs@redhat.com>, Karol Herbst <kherbst@redhat.com>,
 Lyude <lyude@redhat.com>, Daniel Dadap <ddadap@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, "Rafael J . Wysocki"
 <rafael@kernel.org>, Mika Westerberg <mika.westerberg@linux.intel.com>,
 Mark Gross <markgross@kernel.org>, Andy Shevchenko <andy@kernel.org>
References: <20220517152331.16217-1-hdegoede@redhat.com>
 <20220517152331.16217-2-hdegoede@redhat.com> <87y1yzdxtk.fsf@intel.com>
 <dc30ddc2-b00e-234e-5ec3-b1ea79c74082@redhat.com> <87pmk9dhe1.fsf@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <87pmk9dhe1.fsf@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 01/14] ACPI: video: Add a native function
 parameter to acpi_video_get_backlight_type()
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

On 5/19/22 11:02, Jani Nikula wrote:
> On Wed, 18 May 2022, Hans de Goede <hdegoede@redhat.com> wrote:
>> Hi,
>>
>> On 5/18/22 10:55, Jani Nikula wrote:
>>> On Tue, 17 May 2022, Hans de Goede <hdegoede@redhat.com> wrote:
>>>> ATM on x86 laptops where we want userspace to use the acpi_video backlight
>>>> device we often register both the GPU's native backlight device and
>>>> acpi_video's firmware acpi_video# backlight device. This relies on
>>>> userspace preferring firmware type backlight devices over native ones, but
>>>> registering 2 backlight devices for a single display really is undesirable.
>>>>
>>>> On x86 laptops where the native GPU backlight device should be used,
>>>> the registering of other backlight devices is avoided by their drivers
>>>> using acpi_video_get_backlight_type() and only registering their backlight
>>>> if the return value matches their type.
>>>>
>>>> acpi_video_get_backlight_type() uses
>>>> backlight_device_get_by_type(BACKLIGHT_RAW) to determine if a native
>>>> driver is available and will never return native if this returns
>>>> false. This means that the GPU's native backlight registering code
>>>> cannot just call acpi_video_get_backlight_type() to determine if it
>>>> should register its backlight, since acpi_video_get_backlight_type() will
>>>> never return native until the native backlight has already registered.
>>>>
>>>> To fix this add a native function parameter to
>>>> acpi_video_get_backlight_type(), which when set to true will make
>>>> acpi_video_get_backlight_type() behave as if a native backlight has
>>>> already been registered.
> 
> Regarding the question below, this is the part that throws me off.
> 
>>>>
>>>> Note that all current callers are updated to pass false for the new
>>>> parameter, so this change in itself causes no functional changes.
>>>
>>>
>>>> diff --git a/drivers/acpi/video_detect.c b/drivers/acpi/video_detect.c
>>>> index becc198e4c22..0a06f0edd298 100644
>>>> --- a/drivers/acpi/video_detect.c
>>>> +++ b/drivers/acpi/video_detect.c
>>>> @@ -17,12 +17,14 @@
>>>>   * Otherwise vendor specific drivers like thinkpad_acpi, asus-laptop,
>>>>   * sony_acpi,... can take care about backlight brightness.
>>>>   *
>>>> - * Backlight drivers can use acpi_video_get_backlight_type() to determine
>>>> - * which driver should handle the backlight.
>>>> + * Backlight drivers can use acpi_video_get_backlight_type() to determine which
>>>> + * driver should handle the backlight. RAW/GPU-driver backlight drivers must
>>>> + * pass true for the native function argument, other drivers must pass false.
>>>>   *
>>>>   * If CONFIG_ACPI_VIDEO is neither set as "compiled in" (y) nor as a module (m)
>>>>   * this file will not be compiled and acpi_video_get_backlight_type() will
>>>> - * always return acpi_backlight_vendor.
>>>> + * return acpi_backlight_native when its native argument is true and
>>>> + * acpi_backlight_vendor when it is false.
>>>>   */
>>>
>>> Frankly, I think the boolean native parameter here, and at the call
>>> sites, is confusing, and the slightly different explanations in the
>>> commit message and comment here aren't helping.
>>
>> Can you elaborate the "slightly different explanations in the
>> commit message and comment" part a bit (so that I can fix this) ?
>>
>>> I suggest adding a separate function that the native backlight drivers
>>> should use. I think it's more obvious all around, and easier to document
>>> too.
>>
>> Code wise I think this would mean renaming the original and
>> then adding 2 wrappers, but that is fine with me. I've no real
>> preference either way and I'm happy with adding a new variant of
>> acpi_video_get_backlight_type() for the native backlight drivers
>> any suggestion for a name ?
> 
> Alternatively, do the native backlight drivers have any need for the
> actual backlight type information from acpi? They only need to be able
> to ask if they should register themselves, right?
> 
> I understand this sounds like bikeshedding, but I'm trying to avoid
> duplicating the conditions in the drivers where a single predicate
> function call could be sufficient, and the complexity could be hidden in
> acpi.
> 
> 	if (!acpi_video_backlight_use_native())
> 		return;

acpi_video_backlight_use_native() sounds good, I like I will change
this for v2. This also removes churn in all the other
acpi_video_get_backlight_type() callers.

> Perhaps all the drivers/platform/x86/* backlight drivers could use:
> 
> 	if (acpi_video_backlight_use_vendor())
> 		...

Hmm, as part of the ractoring there also will be new apple_gmux
and nvidia_wmi_ec types. I'm not sure about adding seperate functions
for all of those vs get_type() != foo. I like get_type != foo because
it makes clear that there will also be another caller somewhere
where get_type == foo and that that one will rbe the one which
actually gets to register its backlight.

> You can still use the native parameter etc. internally, but just hide
> the details from everyone else, and, hopefully, make it harder for them
> to do silly things?

Ack.

Regards,

Hans

