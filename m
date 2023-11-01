Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3087DDF45
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Nov 2023 11:20:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF95410E6B3;
	Wed,  1 Nov 2023 10:20:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7231510E6B3
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Nov 2023 10:20:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1698834027;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=dxZkGQlELPKTx4ZEkf/xjndhXilo1fuybmUWb62vNJo=;
 b=gIVL6jFvUCxhvmI82KrOqK2QfyultKd0jcLr3cUkKCc4AufJz0bg/PfZf5aR1BHVnLlyuD
 TiR5NxNaxzVjFNWS4+/kWLBAxzw6TlIOVcZTnfGEZyALCZCmDJzxK/t3HEPTmem3/vzqh2
 KdzWYcQF6vx0vB4+IsNSbKFkDC0FYsA=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-577-SK1dgpe-PDiP7cVNlghNQg-1; Wed, 01 Nov 2023 06:20:26 -0400
X-MC-Unique: SK1dgpe-PDiP7cVNlghNQg-1
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-9a62adedadbso461680266b.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 01 Nov 2023 03:20:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698834025; x=1699438825;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=dxZkGQlELPKTx4ZEkf/xjndhXilo1fuybmUWb62vNJo=;
 b=KzegTr8Fu9EFl5QotP/1O5Dg5QM9ygZHCDpa+FAI1TBu+u52lU8sSD4gkz5g7wkldj
 gTDHJXUNEw1uxcpwfkZwgjNlLzoCHtIG1elliiCt0d3mGPQTTzk2McT6bnYQa46aYb3T
 wxYIqxt818q/oUarVB5IpJF3D0mjwQP7iI+38goc2KhfoXg7qLtf4eCL/Q/5CW1BJLrE
 T9bhlxO9NBYVRloSV9W22zpvLwwGvV4Reb6v2JJ80CMU5nWloGPdR6pc3P6ibyvrT2zk
 Oa9dzyv24M6swpES2o8prMQxcLjbcZELRQ5JkuUxLHjKjQIixiKkkZJ9jMPDL42uk7Mh
 uGQA==
X-Gm-Message-State: AOJu0YwPYPB6D+AIetecrhWmT2HKv+JMA3FB0xRYNcsyKAXYIY0TNJ/E
 1afjrvh5JfxzHfgWDYg2X0LU/VpPD/QDdJ8DsgFoFhpHhM50qTIRgqsuuz2f19IqmXpi+sq1tc4
 HglKQHTXScTIQuS2GtXw4b0cxLWo4
X-Received: by 2002:a50:ef0e:0:b0:540:9444:c281 with SMTP id
 m14-20020a50ef0e000000b005409444c281mr12883099eds.24.1698834025205; 
 Wed, 01 Nov 2023 03:20:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEx5HMtvWX7uX1/e+f0BpfFb0fDc18xYncSC48psIYMvU8Wo7A5K4aVkm5jCQ14ieNxwK4o2Q==
X-Received: by 2002:a50:ef0e:0:b0:540:9444:c281 with SMTP id
 m14-20020a50ef0e000000b005409444c281mr12883084eds.24.1698834024911; 
 Wed, 01 Nov 2023 03:20:24 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 q29-20020a50cc9d000000b0053e2a64b5f8sm894534edi.14.2023.11.01.03.20.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 01 Nov 2023 03:20:24 -0700 (PDT)
Message-ID: <f68dca47-d9ed-a146-b152-c19bcc9d8828@redhat.com>
Date: Wed, 1 Nov 2023 11:20:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
References: <20231024155739.3861342-1-andriy.shevchenko@linux.intel.com>
 <20231024155739.3861342-7-andriy.shevchenko@linux.intel.com>
 <ZTfssxRsrDxhzSQ6@smile.fi.intel.com>
 <b489675d-e9de-4bca-9622-78545aa8606d@redhat.com>
 <16e533e2-81bb-47ba-9e23-460a626bcad7@redhat.com>
 <ZUIbPtEEbl6pjdqg@smile.fi.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <ZUIbPtEEbl6pjdqg@smile.fi.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 6/7] drm/i915/dsi: Replace poking of CHV
 GPIOs behind the driver's back
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 11/1/23 10:32, Andy Shevchenko wrote:
> On Tue, Oct 31, 2023 at 10:15:52PM +0100, Hans de Goede wrote:
>> On 10/31/23 17:07, Hans de Goede wrote:
>>> On 10/24/23 18:11, Andy Shevchenko wrote:
>>>> On Tue, Oct 24, 2023 at 06:57:38PM +0300, Andy Shevchenko wrote:
> 
> ...
> 
>>> As for the CHT support, I have not added that to my tree yet, I would
>>> prefer to directly test the correct/fixed patch.
>>
>> And I hit the "jackpot" on the first device I tried and the code needed
>> some fixing to actually work, so here is something to fold into v3 to
>> fix things:
> 
> Thanks!
> 
> But let me first send current v3 as it quite differs to v2 in the sense
> of how I do instantiate GPIO lookup tables.

The problem is there already is a GPIO lookup table registered for
the "0000:00:02.0" device by intel_dsi_vbt_gpio_init() and there can
be only be one GPIO lookup table per device. So no matter how you
instantiate GPIO lookup tables it will not work.

The solution that I chose is to not instantiate a GPIO lookup table
at all and instead to extend the existing table with an extra entry.

Although thinking more about it I must admit that this is racy.

So a better idea would be to unregister the GPIO lookup
table registered by intel_dsi_vbt_gpio_init() after getting
the GPIOs there, that would allow instantiating a new one
from soc_exec_opaque_gpio() as it currently does and that
would be race free.

> Meanwhile I will look into the change you sent (and hopefully we can
> incorporate something in v3 for v4).

Ok, lets go with your v3.

I'll prepare a patch  to move the unregistering of the existing
conflicting GPIO lookup from intel_dsi_vbt_gpio_cleanup()
to the end of intel_dsi_vbt_gpio_init() to avoid the conflict
we have there.

Note you still need the first part of my patch which is
an unrelated bugfix:

--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
@@ -219,8 +219,7 @@ static void soc_exec_gpio(struct intel_connector *connector, const char *con_id,
 	} else {
 		gpio_desc = devm_gpiod_get_index(dev_priv->drm.dev,
 						 con_id, gpio_index,
-						 value ? GPIOD_OUT_LOW :
-						 GPIOD_OUT_HIGH);
+						 value ? GPIOD_OUT_HIGH : GPIOD_OUT_LOW);
 		if (IS_ERR(gpio_desc)) {
 			drm_err(&dev_priv->drm,
 				"GPIO index %u request failed (%pe)\n",

Regards,

Hans


