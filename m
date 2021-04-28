Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9253436E151
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Apr 2021 23:57:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 357FC6EC5C;
	Wed, 28 Apr 2021 21:57:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DC436E0DA
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 21:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1619647064;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PcNRGfKq+Fp/bSii4FdmrVznfLn2Epwo2TJlsZcxTEk=;
 b=WqBkc85GrfMJdqnJziyutFDG1FS3iwbkQ+nBYDw0Gi9e4ZqDNgEdNYLqb9iyAcTLqT5Reg
 zKcSI8Gpnr55xlWHSRFRMLsxegXYEzkOwiwV4PRvCp8cvM4OD80bFqtPY10+/KWT+VwpHb
 Z5s7UAQvYhUOOWdJDmOG4l5y658wnlc=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-472-tt2Ko_trNTyf3Ssv2_t6Aw-1; Wed, 28 Apr 2021 17:57:40 -0400
X-MC-Unique: tt2Ko_trNTyf3Ssv2_t6Aw-1
Received: by mail-ed1-f70.google.com with SMTP id
 z3-20020a05640240c3b029037fb0c2bd3bso27862991edb.23
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Apr 2021 14:57:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=PcNRGfKq+Fp/bSii4FdmrVznfLn2Epwo2TJlsZcxTEk=;
 b=cptie0vWEyMbGY7wGWRMVroFxOq8Fn+ZtXSsLDswLJqdufvhEriS7vk7+RJ5W31xHj
 +1rV/kmJ0Q6CBeH7Q60o/kw3ANaDP6Xy3VnArZxQWd0668y0kbfWAUcxzHTrfIPe/Hmv
 PM62Nu5rXiYakm97KJFdgK1+BWLwqjnbZ4x9n3ndrtmRXKh6vWoBdSFbOOe+drRd63q5
 rEbcdO+sDzFZSO0gG82KQGcfnmkzcvdC8W7PuumkPwKueKaq+W77FkNqgq2AYRw6MAqU
 bSLeWZvdzFwRahAUvbsx6WTyY/v9UAqFtZ32WJAuYBcmLiGHhG/8iG8Aos6BVvnTZS99
 Ei1A==
X-Gm-Message-State: AOAM533FhcOCzSfPNwtHc5L8ptF0IZdxruDsw0lY8EIi4cEUU4rpROJ1
 oKYKfZVuaB+WcSe47Sfsk3VlsOR4lOXN4NwiuPIfQZ1jdH0asGWjc+U7eS0xoSW5dLmuUpeH3CI
 Pf/czmYS1FyJft2qoDCaFksStp2hA
X-Received: by 2002:a17:906:858:: with SMTP id
 f24mr24786323ejd.347.1619647059469; 
 Wed, 28 Apr 2021 14:57:39 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxBzmKGVeKYZXxAE1Z2T5grGU6G8KanK3krK5U625IYhTpXdUp6CVhhZxRndNJbLKTcxcgQdg==
X-Received: by 2002:a17:906:858:: with SMTP id
 f24mr24786299ejd.347.1619647059283; 
 Wed, 28 Apr 2021 14:57:39 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id r17sm819538edt.70.2021.04.28.14.57.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 28 Apr 2021 14:57:38 -0700 (PDT)
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Guenter Roeck <linux@roeck-us.net>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>
References: <20210428215257.500088-1-hdegoede@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <81d7d021-d8b7-74ec-784b-40b50bba3f21@redhat.com>
Date: Wed, 28 Apr 2021 23:57:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210428215257.500088-1-hdegoede@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 0/9] drm + usb-type-c: Add support for
 out-of-band hotplug notification
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, linux-usb@vger.kernel.org,
 dri-devel@lists.freedesktop.org, platform-driver-x86@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 4/28/21 11:52 PM, Hans de Goede wrote:
> Hi All,
> 
> Here is a new attempt to make DP over Type-C work on devices where the
> Type-C controller does not drive the HPD pin on the GPU, but instead
> we need to forward HPD events from the Type-C controller to the DRM driver.
> 
> For anyone interested here are the old (2019!) patches for this:
> 
> https://patchwork.freedesktop.org/patch/288491/
> https://patchwork.freedesktop.org/patch/288493/
> https://patchwork.freedesktop.org/patch/288495/
> 
> Last time I posted this the biggest change requested was for more info to
> be included in the event send to the DRM-subsystem, specifically sending
> the following info was requested:
> 
> 1. Which DP connector on the GPU the event is for
> 2. How many lanes are available
> 3. Connector orientation
> 
> This series is basically an entirely new approach, which no longer
> uses the notifier framework at all. Instead the Type-C code looksup
> a connector based on a fwnode (this was suggested by Heikki Krogerus)
> and then calls a new oob_hotplug_event drm_connector_func directly
> on the connector, passing the requested info as argument.

p.s.

Info such as the orientation and the number of dp-lanes is now passed
to the drm_connector_oob_hotplug_event() function as requested in the
review of the old code, but nothing is done with it for now.
Using this info falls well outside of my knowledge of the i915 driver
so this is left to a follow-up patch (I will be available to test
patches for this).

Regards,

Hans

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
