Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D18663E86
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 11:48:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D13010E590;
	Tue, 10 Jan 2023 10:48:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 240FA10E593
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 10:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1673347694;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=/yYcTtQPoskS9gZPccIHbO8lXQE75TydsMzb/way5LQ=;
 b=eb9pZxqm1Tjp6an0yWISzPmMQnFPcgN/jwyCH2ckewCBHzgK+GWBNS86PRDZKgVEISwHC0
 hh5/j346zcRsMGqXG2pFG6VvwURQMQ8BLEYgNY9+AXISuQzr7GpqINbEJnHwquMzKS8KBr
 vKVajPWnvYpaliYcZeWwEt1Ihh2PX6w=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-589-ZuRJzbvUMrW8iabpk67Nfw-1; Tue, 10 Jan 2023 05:48:12 -0500
X-MC-Unique: ZuRJzbvUMrW8iabpk67Nfw-1
Received: by mail-wm1-f72.google.com with SMTP id
 j15-20020a05600c1c0f00b003d9ec0eaa74so479262wms.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 02:48:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:references:cc:to:from
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=/yYcTtQPoskS9gZPccIHbO8lXQE75TydsMzb/way5LQ=;
 b=SIn3nFSBtwSkjuixcOBoRd/o4Q+P6RZVuBJpbYLStJZXWNRflO5ntUXVlJ9LgiqNh9
 PUGz7HBCP5FNGPBM2uXCbwiqIOxGkvrs/cM3zU7UzwRcvzeqTZorVDmZSDrOKvq+Japb
 nQKPL+E/orchLAUmPTC6gnxvX/ULIdhrPkBa3NUAYxNsWgU4eRFI3o034W0gdnLUQkCA
 AThjvzPBStJkkty3LKzrB31yqBRnbFyL81sf5NdhaLPZj46s60JEqBHtPU6Hz7gdgy3d
 9I9k1qnXXBrsM+f2LZDWFzTNTw7clPmnSZg3oZSYbh6RSuldHypvxVyN3GuK7LLxpyiZ
 bUiw==
X-Gm-Message-State: AFqh2kpkHjQ5Nbt3KDQ7fd6ilI6v20CAaRWiRSkV08YWKpNaKfMjx7Jc
 u/DlaSGiAIMwsbIbgGr/LGDnAHqPue2rWHCO9LNrfNjnQBvtRWPTNYgbMSx5DGFuhCbFBx2n7eg
 rnq5tstBDu7gRGPmy+Nd35upbGrjG
X-Received: by 2002:a05:600c:3d90:b0:3d9:f798:dcba with SMTP id
 bi16-20020a05600c3d9000b003d9f798dcbamr1969642wmb.38.1673347691870; 
 Tue, 10 Jan 2023 02:48:11 -0800 (PST)
X-Google-Smtp-Source: AMrXdXuX/ud7ajQR16rgBukjH6thYHmemQ8EN6E6QgIiDHPbwyrfNMT43bQzV8gjJ8nIvM4ld62nsw==
X-Received: by 2002:a05:600c:3d90:b0:3d9:f798:dcba with SMTP id
 bi16-20020a05600c3d9000b003d9f798dcbamr1969630wmb.38.1673347691640; 
 Tue, 10 Jan 2023 02:48:11 -0800 (PST)
Received: from [192.168.1.130] (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 iv14-20020a05600c548e00b003b47b80cec3sm21792602wmb.42.2023.01.10.02.48.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Jan 2023 02:48:11 -0800 (PST)
Message-ID: <51e8233c-1b9f-239b-ff4a-6410b622b53c@redhat.com>
Date: Tue, 10 Jan 2023 11:48:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
From: Javier Martinez Canillas <javierm@redhat.com>
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 "Pan, Xinhui" <Xinhui.Pan@amd.com>, Dave Airlie <airlied@redhat.com>,
 Patrik Jakobsson <patrik.r.jakobsson@gmail.com>,
 Xinliang Liu <xinliang.liu@linaro.org>, Tian Tao <tiantao6@hisilicon.com>,
 John Stultz <jstultz@google.com>, Xinwei Kong
 <kong.kongxinwei@hisilicon.com>, Chen Feng <puck.chen@hisilicon.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Ben Skeggs <bskeggs@redhat.com>, Karol Herbst <kherbst@redhat.com>,
 Lyude Paul <lyude@redhat.com>
References: <20221219083627.1401627-1-u.kleine-koenig@pengutronix.de>
 <c1f358fc-5784-b3b2-2d9e-bc896b8036ff@redhat.com>
In-Reply-To: <c1f358fc-5784-b3b2-2d9e-bc896b8036ff@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v3] drm: Only select I2C_ALGOBIT for drivers
 that actually need it
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
Cc: kernel@pengutronix.de, nouveau@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 12/19/22 09:49, Javier Martinez Canillas wrote:
> Hello Uwe,
> 
> On 12/19/22 09:36, Uwe Kleine-König wrote:
>> While working on a drm driver that doesn't need the i2c algobit stuff I
>> noticed that DRM selects this code even though only 8 drivers actually use
>> it. While also only some drivers use i2c, keep the select for I2C for the
>> next cleanup patch. Still prepare this already by also selecting I2C for
>> the individual drivers.
>>
>> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
>> ---
> 
> Thanks for sending a v3 of this.
> 
> Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
> 

I've pushed this to drm-misc (dri-misc-next) now. Thanks!

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

