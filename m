Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98F8A7CD791
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 11:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B81810E091;
	Wed, 18 Oct 2023 09:09:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CDF010E091
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 09:09:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1697620182;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=ZUJES4xzz4OgYhBm0mkytoX+dUxjIQDJlTwNvCoMkHk=;
 b=PEo6eMAS980MGDPn4xwuhswKwlh62zg9W0gamPqreJ65Oul/6e+GpWQsE8hlMwcodYO7oO
 ksum9NoE3jtzyxwXiOlStwISx02T+uBEzQ91YhkZiLG8aEEP5xdQh6qwUAyNjf0YKAH5+T
 H9gTKtpbHOfsCNVomZKakPE1uI+C4nY=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-567-IuJgyBudOAy1yGsZEPY2Sw-1; Wed, 18 Oct 2023 05:09:38 -0400
X-MC-Unique: IuJgyBudOAy1yGsZEPY2Sw-1
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-9bd7c682b33so498960666b.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 02:09:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697620177; x=1698224977;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=ZUJES4xzz4OgYhBm0mkytoX+dUxjIQDJlTwNvCoMkHk=;
 b=K8EGdrhH0izP8WDyQEo185vFpK6dHozyrfugKy9r5IsdQqib/9MhnITJDd7+VpQepp
 dM1Yfr6UBU54a05M36s49lK+wtg0kFuxcrrIMvCgY3PZpBnNUmMaLF4PtK2cFvvsr87v
 g6zzYnA8bBxwI7eoFu/ON6hAgv3vcd5eOtQRH0uzgUrmWWTgnxoxEAqx+QJqFtpO8EhA
 7MmRAenRz+naDkzHhIDn8Wx0bsi+KHJTSdxG7RD+8zD/uYy0CiQU4bxaRlQGeOVbDHcz
 JXaiPI7DvaGko91JlkoJ7o82Q4913JZ+KDhKGlktBsbxSmc4ybBzSVVmPX2PKmy91gp+
 URdA==
X-Gm-Message-State: AOJu0YzlpMMx6TD8JtZAs+FTCm9KqDew+xJCWMtk7YT8Jhl5dVWiYQVU
 bl3ZugqaYWKwu0pWvlrwux3VUIDaMYTJNqFTn8G8OtjvAdw8U9PBKXexoG3Iha/tf7Zfbxdv6u5
 y/Zpt8GXelbXh8RsHKE+/83q2AuLa
X-Received: by 2002:a17:906:dc89:b0:9bd:7f40:caa5 with SMTP id
 cs9-20020a170906dc8900b009bd7f40caa5mr3528474ejc.77.1697620177548; 
 Wed, 18 Oct 2023 02:09:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKHi8O4GH1i87FLH4zCOBGCozeaNzeB8YR07/3Ub04FKBzLRHFthyISjh4iNR2VFpoqq1Z6w==
X-Received: by 2002:a17:906:dc89:b0:9bd:7f40:caa5 with SMTP id
 cs9-20020a170906dc8900b009bd7f40caa5mr3528452ejc.77.1697620177179; 
 Wed, 18 Oct 2023 02:09:37 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 z5-20020a1709060ac500b009b65a834dd6sm1229567ejf.215.2023.10.18.02.09.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Oct 2023 02:09:36 -0700 (PDT)
Message-ID: <0c88666a-ff36-b649-d244-ccce500b6c2f@redhat.com>
Date: Wed, 18 Oct 2023 11:09:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
References: <20231018051052.1328852-1-andriy.shevchenko@linux.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <20231018051052.1328852-1-andriy.shevchenko@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [rft,
 PATCH v1 0/2] drm/i915/dsi: An attempt to get rid of IOSF GPIO on
 VLV
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
Cc: Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andy,

On 10/18/23 07:10, Andy Shevchenko wrote:
> DSI code for VBT has a set of ugly GPIO hacks, one of which is direct
> talking to GPIO IP behind the actual driver's back. An attempt to fix
> that is here.
> 
> If I understood correctly, my approach should work in the similar way as
> the current IOSF GPIO. 
> 
> Hans, I believe you have some devices that use this piece of code,
> is it possible to give a test run on (one of) them?

Yes I should be able to find a device or 2 which poke GPIOs from the
VBT MIPI sequences. Unfortunately I don't know from the top of my head
which devices actually use this, so I may need to try quite a few devices
before finding one which actually uses this.

I'll try to get this series tested sometime the coming weeks,
depending on when I can schedule some time for this.

Regards,

Hans




> 
> Andy Shevchenko (2):
>   drm/i915/dsi: Extract common soc_gpio_exec() helper
>   drm/i915/dsi: Replace poking of VLV GPIOs behind the driver's back
> 
>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 150 +++++++------------
>  1 file changed, 58 insertions(+), 92 deletions(-)
> 

