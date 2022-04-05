Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C254F2966
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Apr 2022 11:19:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1093210ED60;
	Tue,  5 Apr 2022 09:19:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB00310EC65
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Apr 2022 09:19:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1649150360;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=Vwp/klJZ6w8cqXIRnQlGelnzUBW3VqC3Y+5RomljZNo=;
 b=Yo1yPJXL6GhMj/cU/cCQOyXPAQ5wMR6UzdkyPEhA651OdrL3OAuOaLAnl0D2gVOhx+B1y6
 YbkJPt539JWM8zYxcJvz3VcUii2RSG0BwK57DOfED26cJVygxRHUBqa06mAcLajZcDErkC
 6JORiM9R/HEmRLqVLm8yIXmv43MI3mQ=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-146-yUf6plgGObGDgtt6Ycpdbg-1; Tue, 05 Apr 2022 05:19:17 -0400
X-MC-Unique: yUf6plgGObGDgtt6Ycpdbg-1
Received: by mail-wm1-f69.google.com with SMTP id
 q6-20020a1cf306000000b0038c5726365aso990413wmq.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Apr 2022 02:19:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=Vwp/klJZ6w8cqXIRnQlGelnzUBW3VqC3Y+5RomljZNo=;
 b=ph0plLDUduQ6GHJCAyVI7xwrDnFgk87/eIJV7JP9WqEsZ/EJ1Jkufm9iJo43MzCgK9
 yTJ3hT/rgdLMsGgPOHB3Y4rLDqS4hy5fabFjvTOsYj1n1+vhbxi4NEi2f4lMK5g99qcj
 85l10gH1zZJFBq5To6JtS6JLnCG7DXsNkFlniIw9lnuJ3KdcpKvHSqdK7Mz5ZIAgpHHD
 igCb+ven2f9owEHlmCpypb/EU26pUUwOmxwaYp+OJ/U8VTKZvQ5mjNN29+t8j2PSkSw8
 KwefRkS5Xcovqy94iEfXJiXOCVCB0uFWERXfxUHBXalvTY9rt/cRIsSRS8ybjlNI5iJv
 Dlag==
X-Gm-Message-State: AOAM53186DE3L3ovwY/ZPEyikXrioQTsNpZWqUexe4ybbFgY2aLtVX1h
 dewyc05fSjBvkd9qSBDW8EmGS+/t/wHryRvwkDlAXxQ2lcIfDbYZ3mEvwHrgqej9ohplXDaKkRM
 NnfP3GpY6Wze84Q6E03LZf7YGMP4J
X-Received: by 2002:a05:6000:1d9d:b0:206:1cf4:f9a6 with SMTP id
 bk29-20020a0560001d9d00b002061cf4f9a6mr1914983wrb.492.1649150356447; 
 Tue, 05 Apr 2022 02:19:16 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwLhZGbdLpNdT/GdxUoAqjrwvfb3mcQPDAmjPtZRUifF4rT2Th6dQMMAa/mHgAToD3JKo/uLg==
X-Received: by 2002:a05:6000:1d9d:b0:206:1cf4:f9a6 with SMTP id
 bk29-20020a0560001d9d00b002061cf4f9a6mr1914957wrb.492.1649150356175; 
 Tue, 05 Apr 2022 02:19:16 -0700 (PDT)
Received: from [192.168.1.102] ([92.176.231.205])
 by smtp.gmail.com with ESMTPSA id
 a2-20020a5d53c2000000b0020604b2667asm12159724wrw.81.2022.04.05.02.19.15
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 Apr 2022 02:19:15 -0700 (PDT)
Message-ID: <408ffe9b-f09f-dc7e-7f5e-a93b311a06fa@redhat.com>
Date: Tue, 5 Apr 2022 11:19:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
To: DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 linux-fbdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Zack Rusin <zackr@vmware.com>,
 Hans de Goede <hdegoede@redhat.com>, Ilya Trukhanov <lahvuun@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Peter Jones <pjones@redhat.com>
References: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
 <20220208210824.2238981-19-daniel.vetter@ffwll.ch>
 <4ae20b63-f452-fdb4-ced6-d4968a8d69f0@redhat.com>
 <Ykv/k/WoVemoCJJA@phenom.ffwll.local> <YkwAhSt9HlbxcuZo@phenom.ffwll.local>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <YkwAhSt9HlbxcuZo@phenom.ffwll.local>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=javierm@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2 18/19] Revert "fbdev: Prevent probing
 generic drivers if a FB is already registered"
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Daniel,

On 4/5/22 10:40, Daniel Vetter wrote:
> On Tue, Apr 05, 2022 at 10:36:35AM +0200, Daniel Vetter wrote:
>> On Wed, Feb 09, 2022 at 01:19:26AM +0100, Javier Martinez Canillas wrote:
>>> On 2/8/22 22:08, Daniel Vetter wrote:
>>>> This reverts commit fb561bf9abde49f7e00fdbf9ed2ccf2d86cac8ee.
>>>>
>>>> With
>>>>
>>>> commit 27599aacbaefcbf2af7b06b0029459bbf682000d
>>>> Author: Thomas Zimmermann <tzimmermann@suse.de>
>>>> Date:   Tue Jan 25 10:12:18 2022 +0100
>>>>
>>>>     fbdev: Hot-unplug firmware fb devices on forced removal
>>>>
>>>> this should be fixed properly and we can remove this somewhat hackish
>>>> check here (e.g. this won't catch drm drivers if fbdev emulation isn't
>>>> enabled).
>>>>
>>>
>>> Unfortunately this hack can't be reverted yet. Thomas' patch solves the issue
>>> of platform devices matched with fbdev drivers to be properly unregistered if
>>> a DRM driver attempts to remove all the conflicting framebuffers.
>>>
>>> But the problem that fb561bf9abde ("fbdev: Prevent probing generic drivers if
>>> a FB is already registered") worked around is different. It happens when the
>>> DRM driver is probed before the {efi,simple}fb and other fbdev drivers, the
>>> kicking out of conflicting framebuffers already happened and these drivers
>>> will be allowed to probe even when a DRM driver is already present.
>>>
>>> We need a clearer way to prevent it, but can't revert fb561bf9abde until that.
>>
>> Yeah that entire area is a mess still, ideally we'd have something else
>> creating the platform devices, and efifb/offb and all these would just
>> bind against them.
>>
>> Hm one idea that just crossed my mind: Could we have a flag in fb_info for
>> fw drivers, and check this in framebuffer_register? Then at least all the
>> logic would be in the fbdev core.
>

I can't answer right away since I've since forgotten this part of the code
and will require to do a detailed read to refresh my memory.

I'll answer later but preferred to mention the other question ASAP.
 
> Ok coffee just kicked in, how exactly does your scenario work?
> 
> This code I'm reverting here is in the platform_dev->probe function.
> Thomas' patch removes the platform_dev. How exactly can you still probe
> against a platform dev if that platform dev is gone?
>

Because the platform was not even registered by the time the DRM driver
probed and all the devices for the conflicting drivers were unregistered.
 
> Iow, now that I reponder your case after a few weeks I'm no longer sure
> things work like you claim.
>

This is how I think that work, please let me know if you see something
wrong in my logic:

1) A PCI device of OF device is registered for the GPU, this attempt to
   match a registered driver but no driver was registered that match yet.

2) The efifb driver is built-in, will be initialized according to the link
   order of the objects under drivers/video and the fbdev driver is registered.

   There is no platform device or PCI/OF device registered that matches.

3) The DRM driver is built-in, will be initialized according to the link
   order of the objects under drivers/gpu and the DRM driver is registered.
   
   This matches the device registered in (1) and the DRM driver probes.

4) The DRM driver .probe kicks out any conflicting DRM drivers and pdev
   before registering the DRM device.

   There are no conflicting drivers or platform device at this point.

5) Latter at some point the drivers/firmware/sysfb.c init function is
   executed, and this registers a platform device for the generic fb.

   This device matches the efifb driver registered in (2) and the fbdev
   driver probes.
   
   Since that happens *after* the DRM driver already matched, probed
   and registered the DRM device, that is a bug and what the reverted
   patch worked around.

So we need to prevent (5) if (1) and (3) already happened. Having a flag
set in the fbdev core somewhere when remove_conflicting_framebuffers()
is called could be a solution indeed.

That is, the fbdev core needs to know that a DRM driver already probed
and make register_framebuffer() fail if info->flag & FBINFO_MISC_FIRMWARE

I can attempt to write a patch for that.

-- 
Best regards,

Javier Martinez Canillas
Linux Engineering
Red Hat

