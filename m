Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D8553C53A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 08:56:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9F5B1138E7;
	Fri,  3 Jun 2022 06:55:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC7AB113910
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 06:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1654239353;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7E5lR+VTALld2mTfNQxdusQn4aNxYfVVAc9A8NqQeSE=;
 b=Nz0l04JLGbwDWCCiWfy67r4/8HTRp3B6NjqbT3ceFUNaYHq/HHuzNJ92noZzpmRD7K3aqi
 Cd+PJfk/VqAf8I89WEL1AW+riLqZUef1T1Rh4yfzUfNKNe2GG+OMIinKVTBLlbcy9bpME4
 h5Od75eVltKNKX4FFTOO8ly+wDS8PZo=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-503-xOg48HbtPnmap_9xNKyxLQ-1; Fri, 03 Jun 2022 02:55:50 -0400
X-MC-Unique: xOg48HbtPnmap_9xNKyxLQ-1
Received: by mail-wm1-f69.google.com with SMTP id
 k5-20020a05600c1c8500b003974c5d636dso3973780wms.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 02 Jun 2022 23:55:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=7E5lR+VTALld2mTfNQxdusQn4aNxYfVVAc9A8NqQeSE=;
 b=GLlK3hfPYoP4zLRrQkZeXAcN+fqMG8vF3vQejj4ZMpzItCZ0f9CZIRaaGAe54V0zEN
 txX0HmMwPz0jPDYOLCc9cMHvftdfRSW/dXUqIV6kAvJjv/gSCpXl2viK8SZDbzoT2ixL
 TOrP/lEXW+kQt0GHxa2tbmw4ildMk/Cjjt0DQPEx8yqivAoHsJGrAocG5h0A9HZvDOD+
 KjcOkxmoU0/RR6c2ZmF42SMp2E2Gof79INOeneyaVIR9XxRmZ/CPELD+i4HX+/GlqAjM
 2AoPytnSJ0ZbIJtK/z9UGU20CbJN5otWwpm9OEvIX6ovrZzFWAVWvHusumopRqBUgSxf
 sc8A==
X-Gm-Message-State: AOAM530+RYmgreX+IjvSa7nSeonNcH4RAf3k+BFetLWFvukanDduRgWs
 ++KMnIo+vEHJCLJTmwcv/5c+s1FJD0g0sWXQS4YzTGznLC9q+0XkIg1IqDHKMA2lwJtxAqfnhmC
 MTy3rqauIgVmhroEAQZvpBr7Cn6hg
X-Received: by 2002:a05:600c:1c86:b0:39c:eeb:39a3 with SMTP id
 k6-20020a05600c1c8600b0039c0eeb39a3mr7114015wms.40.1654239349221; 
 Thu, 02 Jun 2022 23:55:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxrSRa5Dxj7z6MY5xtT+kIz0IbbtMCxkQJLgdqcN5Ae38x2SZ7pJ1GoY/N+E8qgoPHMEiuqSQ==
X-Received: by 2002:a05:600c:1c86:b0:39c:eeb:39a3 with SMTP id
 k6-20020a05600c1c8600b0039c0eeb39a3mr7113980wms.40.1654239348953; 
 Thu, 02 Jun 2022 23:55:48 -0700 (PDT)
Received: from [172.28.2.131] (163.106.124.80.rev.sfr.net. [80.124.106.163])
 by smtp.gmail.com with ESMTPSA id
 l10-20020a5d410a000000b0020fc6590a12sm6256206wrp.41.2022.06.02.23.55.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 02 Jun 2022 23:55:48 -0700 (PDT)
Message-ID: <a3cd0f3f-9e97-706a-27af-4e5b6f63eb05@redhat.com>
Date: Fri, 3 Jun 2022 08:55:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
To: Lyude Paul <lyude@redhat.com>, Ben Skeggs <bskeggs@redhat.com>,
 Karol Herbst <kherbst@redhat.com>, Daniel Dadap <ddadap@nvidia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, "Rafael J . Wysocki"
 <rafael@kernel.org>, Mika Westerberg <mika.westerberg@linux.intel.com>,
 Mark Gross <markgross@kernel.org>, Andy Shevchenko <andy@kernel.org>
References: <20220517152331.16217-1-hdegoede@redhat.com>
 <20220517152331.16217-13-hdegoede@redhat.com>
 <0c9c2c59ca9c351769921c47beb49dda79ddd5de.camel@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <0c9c2c59ca9c351769921c47beb49dda79ddd5de.camel@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 12/14] drm/nouveau: Register ACPI video
 backlight when nv_backlight registration fails
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

Hi Lyude,

Thank you for the reviews.

On 5/18/22 19:39, Lyude Paul wrote:
> On Tue, 2022-05-17 at 17:23 +0200, Hans de Goede wrote:
>> Typically the acpi_video driver will initialize before nouveau, which
>> used to cause /sys/class/backlight/acpi_video0 to get registered and then
>> nouveau would register its own nv_backlight device later. After which
>> the drivers/acpi/video_detect.c code unregistered the acpi_video0 device
>> to avoid there being 2 backlight devices.
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
>> Add a call to the new acpi_video_register_backlight() when native backlight
>> device registration has failed / was skipped to ensure that there is a
>> backlight device available before the drm_device gets registered with
>> userspace.
>>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>  drivers/gpu/drm/nouveau/nouveau_backlight.c | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/nouveau/nouveau_backlight.c
>> b/drivers/gpu/drm/nouveau/nouveau_backlight.c
>> index f56ff797c78c..0ae8793357a4 100644
>> --- a/drivers/gpu/drm/nouveau/nouveau_backlight.c
>> +++ b/drivers/gpu/drm/nouveau/nouveau_backlight.c
>> @@ -436,6 +436,13 @@ nouveau_backlight_init(struct drm_connector *connector)
>>  
>>  fail_alloc:
>>         kfree(bl);
>> +       /*
>> +        * If we get here we have an internal panel, but no nv_backlight,
>> +        * try registering an ACPI video backlight device instead.
>> +        */
>> +       if (ret == 0)
>> +               acpi_video_register_backlight();
> 
> Assuming we don't need to return the value of acpi_video_register_backlight()
> here:

The function return type is void, so no return value to check :)

> 
> Reviewed-by: Lyude Paul <lyude@redhat.com>
> 
>> +
>>         return ret;
>>  }
>>  
> 

