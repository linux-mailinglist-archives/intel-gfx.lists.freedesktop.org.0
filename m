Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CF760F6FC
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 14:17:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F07110E5F2;
	Thu, 27 Oct 2022 12:17:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB0FA10E5F4
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 12:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1666873030;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=nNSQHBPSHJEe/PSS7iMw1xD+BezXUHkmeN0CFT7EetY=;
 b=eEiqvbOPirEEnq9tkzdrEgRQ4Ufswx5A45iiZUS2yjK0uwdjNnSrrRCOsqECk8TjiYBif7
 05MZMGWi4ZvEPLj//HflT24KWDJC+HEXJcxImC+iHZSictqacI0Ssla2E2jGpU77gLTbee
 hUvp7+u3VvcuuDO/wWLY5QxZtNsv2Nc=
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com
 [209.85.218.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-540-nb_wmW93ODGinhWEJBERKQ-1; Thu, 27 Oct 2022 08:17:09 -0400
X-MC-Unique: nb_wmW93ODGinhWEJBERKQ-1
Received: by mail-ej1-f72.google.com with SMTP id
 sd8-20020a1709076e0800b007ac2e1693abso902043ejc.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 05:17:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=nNSQHBPSHJEe/PSS7iMw1xD+BezXUHkmeN0CFT7EetY=;
 b=bSf5sOLbXM45NOOwcQnZS47UTzEeWWTRkIIUDK3UkBsIRyB5E0V1zUp67jnqObswl1
 xNYuQ2o6UaezbJF5osmvRrGa4nY7LFBt2gmiOxKVF+Wz6DkLAHLdmOwHs9Rsdc2aStgz
 sN2xnQZ0mxEPO8EfzB6q15r5BsjzN5EnN9T2SNWYvCAbsSzznf8QA5B2kCXcGacHBSxl
 ZqdPnUS3lu6G+eRF00sxoma1Gcf2i2Z70/AAHUbhRF1ZD1Xlqr3qSJo5QCRJuURh5Msl
 opDNMD9TbkDCn7g1CxGRX617U46NOod43P/IW3u6SIjZSgsD04YK66VYzu9XGnuEgNtH
 2qiw==
X-Gm-Message-State: ACrzQf2jsKIBZdb/W36HhMUQfCJGez4DWvBtbqFKeMw8jOxZnDHsKNE2
 p5/v/7kiarjK6si5Ej+H8ulGywyQeMJvO4e+AJvtUlYlhxxWkHNgrqavN2aDh7JyC2wh3hQEfT8
 1nVVFB3F43FGjgI9Vdeodhvf5kbft
X-Received: by 2002:a17:907:60d3:b0:78d:f874:3267 with SMTP id
 hv19-20020a17090760d300b0078df8743267mr41647585ejc.409.1666873028244; 
 Thu, 27 Oct 2022 05:17:08 -0700 (PDT)
X-Google-Smtp-Source: AMsMyM5kUJ8EV+Zs2dQ2kNzThHLFb2/0/6HQPEpmjy0US3opwfZNp14T88TCVeiHIyLkRkgiys3h2w==
X-Received: by 2002:a17:907:60d3:b0:78d:f874:3267 with SMTP id
 hv19-20020a17090760d300b0078df8743267mr41647570ejc.409.1666873028031; 
 Thu, 27 Oct 2022 05:17:08 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 m2-20020a50ef02000000b00461c375d88csm858104eds.97.2022.10.27.05.17.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Oct 2022 05:17:07 -0700 (PDT)
Message-ID: <526db9ed-bc39-b6be-c977-d4509ce22152@redhat.com>
Date: Thu, 27 Oct 2022 14:17:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
To: "Rafael J. Wysocki" <rafael@kernel.org>
References: <20221025193248.GA21457@srcf.ucam.org>
 <144cd47e-42dc-2b84-1a90-ea5e080e08a3@redhat.com>
 <20221025204043.GA23306@srcf.ucam.org>
 <cb5add36-c13c-ccd5-1b4b-71b45163a170@redhat.com>
 <20221025234040.GA27673@srcf.ucam.org>
 <fa6cc1d9-6740-b495-2c72-cae18c429ca6@redhat.com>
 <20221026204920.GA15326@srcf.ucam.org>
 <099dee98-8aeb-af36-828c-110f5ac6e9a3@redhat.com>
 <20221027091123.GA28089@srcf.ucam.org>
 <933be908-0bc2-56cc-8d6f-38f2d208ef20@redhat.com>
 <20221027095249.GA28666@srcf.ucam.org>
 <6df2016d-ed2d-57fa-dcad-48537732895f@redhat.com>
 <CAJZ5v0jM1JAySagv=u2be1bAmfTt3jJgVnOEjGzskBvZY7k6aw@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <CAJZ5v0jM1JAySagv=u2be1bAmfTt3jJgVnOEjGzskBvZY7k6aw@mail.gmail.com>
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
Cc: Karol Herbst <kherbst@redhat.com>, Daniel Dadap <ddadap@nvidia.com>,
 nouveau@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 platform-driver-x86@vger.kernel.org, Dmitry Osipenko <digetx@gmail.com>,
 amd-gfx@lists.freedesktop.org, linux-acpi@vger.kernel.org,
 Ben Skeggs <bskeggs@redhat.com>, David Airlie <airlied@redhat.com>,
 Len Brown <lenb@kernel.org>, Jani Nikula <jani.nikula@intel.com>,
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

On 10/27/22 14:09, Rafael J. Wysocki wrote:
> On Thu, Oct 27, 2022 at 12:37 PM Hans de Goede <hdegoede@redhat.com> wrote:
>>
>> Hi,
>>
>> On 10/27/22 11:52, Matthew Garrett wrote:
>>> On Thu, Oct 27, 2022 at 11:39:38AM +0200, Hans de Goede wrote:
>>>
>>>> The *only* behavior which actually is new in 6.1 is the native GPU
>>>> drivers now doing the equivalent of:
>>>>
>>>>      if (acpi_video_get_backlight_type() != acpi_backlight_native)
>>>>              return;
>>>>
>>>> In their backlight register paths (i), which is causing the native
>>>> backlight to disappear on your custom laptop setup and on Chromebooks
>>>> (with the Chromebooks case being already solved I hope.).
>>>
>>> It's causing the backlight control to vanish on any machine that isn't
>>> ((acpi_video || vendor interface) || !acpi). Most machines that fall
>>> into that are either weird or Chromebooks or old, but there are machines
>>> that fall into that.
>>
>> I acknowledge that their are machines that fall into this category,
>> but I expect / hope there to be so few of them that we can just DMI
>> quirk our way out if this.
>>
>> I believe the old group to be small because:
>>
>> 1. Generally speaking the "native" control method is usually not
>> present on the really old (pre ACPI video spec) mobile GPUs.
>>
>> 2. On most old laptops I would still expect there to be a vendor
>> interface too, and if both get registered standard desktop environments
>> will prefer the vendor one, so then we need a native DMI quirk to
>> disable the vendor interface anyways and we already have a bunch of
>> those, so some laptops in this group are already covered by DMI quirks.
>>
>> And a fix for the Chromebook case is already in Linus' tree, which
>> just leaves the weird case, of which there will hopefully be only
>> a few.
>>
>> I do share your worry that this might break some machines, but
>> the only way to really find out is to get this code out there
>> I'm afraid.
>>
>> I have just written a blog post asking for people to check if
>> their laptop might be affected; and to report various details
>> to me of their laptop is affected:
>>
>> https://hansdegoede.dreamwidth.org/26548.html
>>
>> Lets wait and see how this goes. If I get (too) many reports then
>> I will send a revert of the addition of the:
>>
>>         if (acpi_video_get_backlight_type() != acpi_backlight_native)
>>                 return;
>>
>> check to the i915 / radeon / amd / nouveau drivers.
>>
>> (And if I only get a couple of reports I will probably just submit
>> DMI quirks for the affected models).
> 
> Sounds reasonable to me, FWIW.
> 
> And IIUC the check above can be overridden by passing
> acpi_backlight=native in the kernel command line, right?

Right, that can be used as a quick workaround, but we really do
want this to work OOTB everywhere.

Regards,

Hans

