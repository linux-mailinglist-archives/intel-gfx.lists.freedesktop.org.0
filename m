Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 628CC5A0BF3
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Aug 2022 10:55:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A01A810E5D4;
	Thu, 25 Aug 2022 08:55:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A89A11B553
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 08:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1661417687;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=7OWfNCpLdSo1viH5XGsi5IJxCkX8SeFaK11y2Vq0C60=;
 b=EoEOgGZMtJm+cI1IH0EQY9bWjf5jXU2LbA1YXK1LHAwA86XqfI/3eGh86hD5YQ1iMjfhqO
 vCyKqf2hJTgE4sMjs9v6ifx3+6akiKwQ9iH/poD6RmNYWIESvgt3Dl0VE6J0c5nAOYN+he
 biKHb0xjR/lzzM9YtbCx5Nj/yq0gM14=
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com
 [209.85.208.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-347-vX2FVhiGPQ6fto9TR4CU2Q-1; Thu, 25 Aug 2022 04:54:41 -0400
X-MC-Unique: vX2FVhiGPQ6fto9TR4CU2Q-1
Received: by mail-ed1-f72.google.com with SMTP id
 h17-20020a05640250d100b00446d1825c9fso6886860edb.14
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Aug 2022 01:54:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc;
 bh=7OWfNCpLdSo1viH5XGsi5IJxCkX8SeFaK11y2Vq0C60=;
 b=Eik4ZmIo1fDOSOtYNfHGscM5GrmupliFdatasCbqWiKDtAt2T9WBgrdgKzjAokVvBc
 sYrSxfcOQDoUN2JazReJwrylcL5LiL0gzZwCvI9mRYzoya7YL7Bq459cIrgRrFOiJ9Q6
 DsOo1lg9N5DCVXwEpcTLeOFUrSsOTLnMschcNla5nsptrwn/j9xbSD/dZJGlfk5AxBU1
 DOe+yFRgMQA8Xc4LlFh+P/IW/8hcaaOb7qdIoOmcx3yhpH50ND82QfVd+nrlMghMN9nP
 synFa1jkEPLe4YsfJe7bfu2dTRxrtFP7kCAUtL66A8AtSQkXhGnN7ewpVz69za0+gl2K
 vtcQ==
X-Gm-Message-State: ACgBeo3lN+peojkGqJAzj6Olo/fPaiY1M8KwiZyhvx2MVGEs8llu5PsQ
 EYcK+Fg7uMZqjHPhwa7oxlVwHPUN/OkFtKQz1dr5n3G8xqJNwbHIUPw5yTDiKy4CE7Dnxqw9nEp
 GKObeKTO0zWWwloOfaDoE/gZQweMT
X-Received: by 2002:a17:907:728d:b0:731:8396:ea86 with SMTP id
 dt13-20020a170907728d00b007318396ea86mr1742623ejc.361.1661417679928; 
 Thu, 25 Aug 2022 01:54:39 -0700 (PDT)
X-Google-Smtp-Source: AA6agR4iRqqUbLSIQozsEoevWSbUBOoNa7wZuPHEqVSEVtqoqW7Rc5PQi4B3ygUaYiDI2xHU+dtygQ==
X-Received: by 2002:a17:907:728d:b0:731:8396:ea86 with SMTP id
 dt13-20020a170907728d00b007318396ea86mr1742616ejc.361.1661417679691; 
 Thu, 25 Aug 2022 01:54:39 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c1e:bf00:d69d:5353:dba5:ee81?
 (2001-1c00-0c1e-bf00-d69d-5353-dba5-ee81.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:d69d:5353:dba5:ee81])
 by smtp.gmail.com with ESMTPSA id
 q23-20020a17090676d700b0073d74e1a467sm997841ejn.167.2022.08.25.01.54.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 25 Aug 2022 01:54:39 -0700 (PDT)
Message-ID: <914dec00-65f4-f49c-9ace-39321b88e8b6@redhat.com>
Date: Thu, 25 Aug 2022 10:54:38 +0200
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
 <20220824121523.1291269-3-hdegoede@redhat.com> <87v8qhiz4f.fsf@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <87v8qhiz4f.fsf@intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v4 02/31] drm/i915: Don't register backlight
 when another backlight should be used
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
Cc: nouveau@lists.freedesktop.org, intel-gfx <intel-gfx@lists.freedesktop.org>,
 amd-gfx@lists.freedesktop.org, platform-driver-x86@vger.kernel.org,
 linux-acpi@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Len Brown <lenb@kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi All,

On 8/24/22 14:50, Jani Nikula wrote:
> On Wed, 24 Aug 2022, Hans de Goede <hdegoede@redhat.com> wrote:
>> Before this commit when we want userspace to use the acpi_video backlight
>> device we register both the GPU's native backlight device and acpi_video's
>> firmware acpi_video# backlight device. This relies on userspace preferring
>> firmware type backlight devices over native ones.
>>
>> Registering 2 backlight devices for a single display really is
>> undesirable, don't register the GPU's native backlight device when
>> another backlight device should be used.
>>
>> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_backlight.c | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
>> index 681ebcda97ad..a4dd7924e0c1 100644
>> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
>> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
>> @@ -8,6 +8,8 @@
>>  #include <linux/pwm.h>
>>  #include <linux/string_helpers.h>
>>  
>> +#include <acpi/video.h>
>> +
>>  #include "intel_backlight.h"
>>  #include "intel_backlight_regs.h"
>>  #include "intel_connector.h"
>> @@ -952,6 +954,11 @@ int intel_backlight_device_register(struct intel_connector *connector)
>>  
>>  	WARN_ON(panel->backlight.max == 0);
>>  
>> +	if (!acpi_video_backlight_use_native()) {
>> +		DRM_INFO("Skipping intel_backlight registration\n");
> 
> Could use drm_info with drm_device.

Ack, fixed for v5.

> Either way,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Thank you.

> and ack for merging via whichever tree suits you best.

My plan is to create a branch with the series on top
of 6.0-rc1 and then send a pull-req to all involved trees.

So far there are no conflicts between this branch and drm-tip...

Regards,

Hans



>> +		return 0;
>> +	}
>> +
>>  	memset(&props, 0, sizeof(props));
>>  	props.type = BACKLIGHT_RAW;
> 

