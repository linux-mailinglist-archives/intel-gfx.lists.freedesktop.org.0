Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B83E59FA69
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 14:50:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49B29B496F;
	Wed, 24 Aug 2022 12:50:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 432B4B48F8
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 12:49:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1661345390;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=wC5Z2C/PK6NcUw1f++1+B+zqmXR0UZybCJvVZVgpOUU=;
 b=M4QU1nmc4Vsg74/I4DJa2X18ox0g+0nkttPaUyfQ5s6RNOqTexR1yTM9DoPBH15eeIpRDk
 L3Q4N0iRUYwqPrYZgJFFxWVRwDmNc7J54jxy33ihn3nR7dtDvq2XoHYOHGXIk2E56iwj9n
 zGK5cQB0as95b0eMhjCGewRazkhCKlA=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-327-7-O4Hr4dPumxZxh7Cn-ZcQ-1; Wed, 24 Aug 2022 08:49:49 -0400
X-MC-Unique: 7-O4Hr4dPumxZxh7Cn-ZcQ-1
Received: by mail-ed1-f72.google.com with SMTP id
 r20-20020a05640251d400b00446e3eee8a1so5022489edd.21
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Aug 2022 05:49:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc;
 bh=wC5Z2C/PK6NcUw1f++1+B+zqmXR0UZybCJvVZVgpOUU=;
 b=vxB1c2lXqD3KPjrRbRJAHeIhjanXul7CwLiFMGEjmhkKRaTFUdAuSED3Q2P+VdMrfB
 A9mbrtepbKoxwEFxw01tJKZnpw6qFw5yc9TUObljbOVMmxSRPxU8f47/rYEknomB79Zf
 +HH/CSuav+LvF1htLyykVQpfvNMm5p2r9tBRAB/+wo1mDVfX/HTIplxrT/WWc//XY6XP
 PxJpKz721wuSLjH1ejhDo9y4i98yvahu06duNs2lRXhVbEqVD24ArtDCEdzdl6yTc6zm
 DigFHXn9ywwbPKT+ZBt/U8TRXaeXt1Z1rdPTmeVQwbVUiPEg/bAtPVc/TP1f9WEPkNmP
 FY8w==
X-Gm-Message-State: ACgBeo1Pps/rwf/cgqZTNbkaj1qcLgSBRVgvfyOClN7cEBY00o5IM6q/
 +wB9rsg6wqxQJkADoHRCh1UiHeZZ8fsQh3qNdIXluZtWeFF45vHGT2bw+GBA80YbRuoFmPmKsCU
 YjLqStnuW38pNtv/sGka4nbdHG8lO
X-Received: by 2002:a17:907:8317:b0:731:2189:7f4d with SMTP id
 mq23-20020a170907831700b0073121897f4dmr2797120ejc.468.1661345388326; 
 Wed, 24 Aug 2022 05:49:48 -0700 (PDT)
X-Google-Smtp-Source: AA6agR7LUjqu0rvL8O6CJd+R/NNz3ck80tOf12k72l8wmeciZQsEIJBktllD4PXgxW3LjrTA+ksdIw==
X-Received: by 2002:a17:907:8317:b0:731:2189:7f4d with SMTP id
 mq23-20020a170907831700b0073121897f4dmr2797084ejc.468.1661345388005; 
 Wed, 24 Aug 2022 05:49:48 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 2-20020a170906328200b0073c9d68ca0dsm1107366ejw.133.2022.08.24.05.49.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 24 Aug 2022 05:49:47 -0700 (PDT)
Message-ID: <7660855c-6307-a321-5250-cc8a51075bda@redhat.com>
Date: Wed, 24 Aug 2022 14:49:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
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
 Lukas Wunner <lukas@wunner.de>, Mark Gross <markgross@kernel.org>,
 Andy Shevchenko <andy@kernel.org>
References: <20220824121523.1291269-1-hdegoede@redhat.com>
 <20220824121523.1291269-12-hdegoede@redhat.com> <87y1vdizau.fsf@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <87y1vdizau.fsf@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 11/31] drm/i915: Call
 acpi_video_register_backlight() (v2)
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
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Len Brown <lenb@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 8/24/22 14:47, Jani Nikula wrote:
> On Wed, 24 Aug 2022, Hans de Goede <hdegoede@redhat.com> wrote:
>> On machins without an i915 opregion the acpi_video driver immediately
>> probes the ACPI video bus and used to also immediately register
>> acpi_video# backlight devices when supported.
>>
>> Once the drm/kms driver then loaded later and possibly registered
>> a native backlight device then the drivers/acpi/video_detect.c code
>> unregistered the acpi_video0 device to avoid there being 2 backlight
>> devices (when acpi_video_get_backlight_type()==native).
>>
>> This means that userspace used to briefly see 2 devices and the
>> disappearing of acpi_video0 after a brief time confuses the systemd
>> backlight level save/restore code, see e.g.:
>> https://bbs.archlinux.org/viewtopic.php?id=269920
>>
>> To fix this the ACPI video code has been modified to make backlight class
>> device registration a separate step, relying on the drm/kms driver to
>> ask for the acpi_video backlight registration after it is done setting up
>> its native backlight device.
>>
>> Add a call to the new acpi_video_register_backlight() after the i915 calls
>> acpi_video_register() (after setting up the i915 opregion) so that the
>> acpi_video backlight devices get registered on systems where the i915
>> native backlight device is not registered.
>>
>> Changes in v2:
>> -Only call acpi_video_register_backlight() when a panel is detected
>>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++++
>>  drivers/gpu/drm/i915/display/intel_panel.c   | 3 +++
>>  drivers/gpu/drm/i915/i915_drv.h              | 2 ++
>>  3 files changed, 13 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 6103b02c081f..2bb53efdb149 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -9088,6 +9088,14 @@ void intel_display_driver_register(struct drm_i915_private *i915)
>>  	/* Must be done after probing outputs */
>>  	intel_opregion_register(i915);
>>  	acpi_video_register();
>> +	/*
>> +	 * Only call this if i915 is driving the internal panel. If the internal
>> +	 * panel is not driven by i915 then another GPU driver may still register
>> +	 * a native backlight driver later and this should only be called after
>> +	 * any native backlights have been registered.
>> +	 */
>> +	if (i915->have_panel)
>> +		acpi_video_register_backlight();
> 
> Apologies for procrastinating the review.
> 
> Please let's not add new flags like have_panel to i915; we're trying to
> clean it up instead.
> 
> The code here needs to iterate over the connectors to decide. Maybe
> better abstracted a function.

So something like add a i915_have_panel() helper which iterates over all
the connectors and then of 1 of them is of the LVDS / eDP / DSI type
return true ?

Regards,

Hans



>>  	intel_audio_init(i915);
>>  
>> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
>> index 237a40623dd7..4536c527f50c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_panel.c
>> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
>> @@ -646,8 +646,11 @@ intel_panel_mode_valid(struct intel_connector *connector,
>>  
>>  int intel_panel_init(struct intel_connector *connector)
>>  {
>> +	struct drm_i915_private *dev_priv = to_i915(connector->base.dev);
>>  	struct intel_panel *panel = &connector->panel;
>>  
>> +	dev_priv->have_panel = true;
>> +
>>  	intel_backlight_init_funcs(panel);
>>  
>>  	drm_dbg_kms(connector->base.dev,
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index 69ce6db6a7c1..14b0dcaf25c2 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -756,6 +756,8 @@ struct drm_i915_private {
>>  
>>  	bool ipc_enabled;
>>  
>> +	bool have_panel;
>> +
>>  	struct intel_audio_private audio;
>>  
>>  	struct i915_pmu pmu;
> 

