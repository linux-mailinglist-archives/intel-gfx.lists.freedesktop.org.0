Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 565D84461C3
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 10:57:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C7B56E0DE;
	Fri,  5 Nov 2021 09:57:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D37366E106
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Nov 2021 09:57:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636106222;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=oZ67s9sbnfsD5fqdtGG0nGBmSdAaIG5RWNWBFufx9E8=;
 b=W7IGsDQVC0RYBsafcKMVArUW0bQ6fSy44WFpJVO4U3eUdy0fzoK8YaahUEM2FoQkhdo4ID
 qhu/wJIkObICBKmNQkfIVOqd/ZxHqYiEHkmTdn3CU4DvlqSB0fv7WUQrWE4Mj4uKoUD8mi
 AoMpAaeyxxBcn2QQG3ETdgQpoMTtlp8=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-4-G8MSWnWcO4GrwQ9lEgAbzQ-1; Fri, 05 Nov 2021 05:55:43 -0400
X-MC-Unique: G8MSWnWcO4GrwQ9lEgAbzQ-1
Received: by mail-wr1-f70.google.com with SMTP id
 p3-20020a056000018300b00186b195d4ddso2129322wrx.15
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Nov 2021 02:55:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=oZ67s9sbnfsD5fqdtGG0nGBmSdAaIG5RWNWBFufx9E8=;
 b=iQ3i2ym+NZWx3ySPGw/2Rq8JmgFiDm8sdO3egkobhLcHuzTkjFVADj8XLedst5Rxbn
 mpKPmSv5N+RZ4vKJXHIjFDnXA3dg/jWRNQ02mvGSV0ptyQCDsQlurvGtU8wEngZAy7k4
 xFlOl54X6jTj9/eSyhRQT4/bBqpg2PpFgZanwsNSCQ6bfNdq24QmsGHR8yyhz8+jOr0/
 xWcFKZEokeb6VQODVIrQCaGigF4fL389Z/4oE6+wb3MU0B4KO6LVYkTIejK8YD6i2shi
 HOjQKUsQRoQNpF08S6c+htLonqmhYU+7pxq0PgQwlHrASGsZjJxCjTB8dtB1o8lnoZyB
 aPsA==
X-Gm-Message-State: AOAM533ba/adR2XZoVqEBqz5zNM+nMxxaEyoUNHAAzoHWF5jQ0NzPSl9
 gkNmTfSoPF4k3uLC9/h/cMVPNwXHPVNaUZJ0/V1qmVaW7GR/XyinDyqdU8f81fgGYR3r3bDPuNL
 agDwkGhe3KubzoY2UakpSprZRKrBk
X-Received: by 2002:a7b:c8d5:: with SMTP id f21mr27635773wml.146.1636106142131; 
 Fri, 05 Nov 2021 02:55:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyT8viACi1U7JY5S3rkG/MaHma60ZlmQ0NQODpS8eTcPcWv9ZvZPYhizNzNYarjDaHcIaJjnA==
X-Received: by 2002:a7b:c8d5:: with SMTP id f21mr27635740wml.146.1636106141897; 
 Fri, 05 Nov 2021 02:55:41 -0700 (PDT)
Received: from [192.168.1.128] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id s26sm5390804wmc.0.2021.11.05.02.55.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Nov 2021 02:55:41 -0700 (PDT)
Message-ID: <847c2315-b4a2-3bd1-e048-4263b5f496ed@redhat.com>
Date: Fri, 5 Nov 2021 10:55:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Thomas Zimmermann <tzimmermann@suse.de>, linux-kernel@vger.kernel.org
References: <20211104160707.1407052-1-javierm@redhat.com>
 <20211104160707.1407052-3-javierm@redhat.com>
 <f2c40b22-04bf-e8f2-9839-36d6d26189a1@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <f2c40b22-04bf-e8f2-9839-36d6d26189a1@suse.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm: Move nomodeset kernel parameter
 to the DRM subsystem
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
Cc: linux-fbdev@vger.kernel.org, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org,
 Gurchetan Singh <gurchetansingh@chromium.org>,
 Gerd Hoffmann <kraxel@redhat.com>, amd-gfx@lists.freedesktop.org,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Peter Robinson <pbrobinson@gmail.com>, nouveau@lists.freedesktop.org,
 Dave Airlie <airlied@redhat.com>, Chia-I Wu <olvaffe@gmail.com>,
 Ben Skeggs <bskeggs@redhat.com>,
 =?UTF-8?Q?Michel_D=c3=a4nzer?= <michel@daenzer.net>,
 Maxime Ripard <mripard@kernel.org>, virtualization@lists.linux-foundation.org,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Pan,
 Xinhui" <Xinhui.Pan@amd.com>, spice-devel@lists.freedesktop.org,
 Alex Deucher <alexander.deucher@amd.com>, intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Zack Rusin <zackr@vmware.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 11/5/21 10:00, Thomas Zimmermann wrote:

[snip]

>> +
>> +static int __init disable_modeset(char *str)
>> +{
>> +	drm_nomodeset = true;
>> +
>> +	pr_warn("You have booted with nomodeset. This means your GPU drivers are DISABLED\n");
>> +	pr_warn("Any video related functionality will be severely degraded, and you may not even be able to suspend the system properly\n");
>> +	pr_warn("Unless you actually understand what nomodeset does, you should reboot without enabling it\n");
> 
> I'd update this text to be less sensational.
>

This is indeed quite sensational. But think we can do it as a follow-up patch.

Since we will have to stick with nomodeset for backward compatibility, I was
planning to add documentation to explain what this parameter is about and what
is the actual effect of setting it.

So I think we can change this as a part of that patch-set.
 
>> +
>> +	return 1;
>> +}
>> +
>> +/* Disable kernel modesetting */
>> +__setup("nomodeset", disable_modeset);
>> diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i915_module.c
>> index 45cb3e540eff..c890c1ca20c4 100644
>> --- a/drivers/gpu/drm/i915/i915_module.c
>> +++ b/drivers/gpu/drm/i915/i915_module.c
>> @@ -4,8 +4,6 @@
>>    * Copyright © 2021 Intel Corporation
>>    */
>>   
>> -#include <linux/console.h>
>> -
>
> These changes should be in patch 1?
>

Yes, I forgot to move these when changed the order of the patches.

Best regards, -- 
Javier Martinez Canillas
Linux Engineering
Red Hat

