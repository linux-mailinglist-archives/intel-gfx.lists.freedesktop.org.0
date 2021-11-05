Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9252A4461CA
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Nov 2021 10:59:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69A576E10B;
	Fri,  5 Nov 2021 09:59:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75BF26E10B
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Nov 2021 09:59:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1636106339;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=PAYCTLIu4BclXd+cEViyuoXMMG/fW8iPDkQUaON6iK4=;
 b=C/8KnzySkruZmAcItDg1eTEOWfaUZnWXHfXZHiwjp9nm/iWNZRRnIpI0tAozKCZ4D834ra
 1dedv/ow0D6x/6/8UyLtVGwPOELbgurlFwBtkQ9CuVmjA1KfHmU3sekBW3W2iU/EDhhX3M
 m2NO4u4yTXu1L0/TRLxeOftJmWKkHOI=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-552-PsDuo8naNuODaiZSREYHaw-1; Fri, 05 Nov 2021 05:58:58 -0400
X-MC-Unique: PsDuo8naNuODaiZSREYHaw-1
Received: by mail-wr1-f71.google.com with SMTP id
 w14-20020adfbace000000b001884bf6e902so1447677wrg.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 05 Nov 2021 02:58:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=PAYCTLIu4BclXd+cEViyuoXMMG/fW8iPDkQUaON6iK4=;
 b=j2qeCz/4yui9PpvW0APLqfFvmy7mzhP3NboiExDwFbEjVSooZS38zoRd6+zudICr0X
 z8J3+HkjXIzDsKF4k9cPYRAUcC5WW+waVGuFr7oPWMOoyH9BgyH9/dQ0cudRdXQdiAxB
 nrI2jgZjcEhfDPrmSNhNp9ms34UDONIgawwklG2hywEZvJlXXavNDcTMhBgiaNiWYEdu
 1XvpFFxw1mgCSx+eAFHqDxMS9b6odSVPfhJTEqjNswKm8NuKzF9yDTlHI+faMU5wpRq5
 Pl0k+uY2luYpZe/MsErYj7qwdFDCQSdoUaXSh/tXMsNgzn+bdtLKt7QxTLHl1+vkpnHZ
 18LA==
X-Gm-Message-State: AOAM530puY3cd9UjAGwL9/dtFr/UinczpM5va/qpDm0/8kKByyoymJ1W
 nsixuAqNWNjLm9vwBSocSPmM673hr5PcuwOw05Ea8p8kOZ/pYBih8NRk/CkL/HpAgpqHSGwM6hp
 8MMMfWRlU6uf1v+57zI4OxwxViRs1
X-Received: by 2002:adf:ec90:: with SMTP id z16mr46047444wrn.247.1636106336898; 
 Fri, 05 Nov 2021 02:58:56 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyVMn64qcflGLedLN5EhsNM7GWU6o/3vwDL3aOoAYuCZV9//84CDnDeN1gsW9919fwpqQaOmg==
X-Received: by 2002:adf:ec90:: with SMTP id z16mr46047414wrn.247.1636106336738; 
 Fri, 05 Nov 2021 02:58:56 -0700 (PDT)
Received: from [192.168.1.128] ([92.176.231.106])
 by smtp.gmail.com with ESMTPSA id c17sm7678095wmk.23.2021.11.05.02.58.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 05 Nov 2021 02:58:56 -0700 (PDT)
Message-ID: <87a6bb4a-01ef-4979-f5c2-c0bb0d0a29f9@redhat.com>
Date: Fri, 5 Nov 2021 10:58:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
To: Thomas Zimmermann <tzimmermann@suse.de>,
 Jani Nikula <jani.nikula@linux.intel.com>, linux-kernel@vger.kernel.org
References: <20211104160707.1407052-1-javierm@redhat.com>
 <20211104160707.1407052-3-javierm@redhat.com>
 <f2c40b22-04bf-e8f2-9839-36d6d26189a1@suse.de> <87cznf9cty.fsf@intel.com>
 <2698c680-6d05-f58d-d7c2-ea76aeb0bb47@suse.de>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <2698c680-6d05-f58d-d7c2-ea76aeb0bb47@suse.de>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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

On 11/5/21 10:39, Thomas Zimmermann wrote:

[snip]

>>>>    
>>>> +obj-$(CONFIG_VGA_CONSOLE) += drm_nomodeset.o
>>>> +
>>>
>>> This now depends on the VGA textmode console. Even if you have no VGA
>>> console, you'd want drm_nomodeset.o. Simpledrm might be built-in and can
>>> provide graphics. Non-PC systems don't even have a VGA device.
>>
>> This was discussed in an earlier version, which had this builtin but the
>> header still had a stub for CONFIG_VGA_CONSOLE=n.
>>
>>> I think we really want a separate boolean config option that gets
>>> selected by CONFIG_DRM.
>>
>> Perhaps that should be a separate change on top.
> 
> Sure, make it a separate patch.
>

Agreed. I was planning to do it as a follow-up as well and drop the
#ifdef CONFIG_VGA_CONSOLE guard in the header.
 
> We want to make this work on ARM systems. I even have a request to 
> replace offb on Power architecture by simpledrm. So the final config has 
> to be system agnostic.
>

Same, since we want to drop the fbdev drivers in Fedora, for all arches.
 
> Best regards
> Thomas
> 
Best regards,
-- 
Javier Martinez Canillas
Linux Engineering
Red Hat

