Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 123894AE5D3
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 01:19:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EFE6E10E2D7;
	Wed,  9 Feb 2022 00:19:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEA2E10E230
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Feb 2022 00:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1644365970;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=+YfCnyxSCyr5vTP3YrAazeA9ULAGVzys2UZvocNOmGA=;
 b=Ts/dEPbO4woQGpfsghSDXDVZZcF6vJYScE/pVW/51pxVWgkGludc3wgQWCim0q/6VARIWO
 //IsO0R22hcVMmGJGw6bOrtlvUM8FOQzmwFq6C4vBVrrkJ2RJUZbD1KdvXAig1aum1Fs68
 AM0FISoNSkHLVZYrMzzRTmDy32FLsoQ=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-675-L-oSUtTONMeUr6acANOjEA-1; Tue, 08 Feb 2022 19:19:29 -0500
X-MC-Unique: L-oSUtTONMeUr6acANOjEA-1
Received: by mail-wm1-f70.google.com with SMTP id
 a17-20020a05600c069100b0037bb7eb6944so40040wmn.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 08 Feb 2022 16:19:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=+YfCnyxSCyr5vTP3YrAazeA9ULAGVzys2UZvocNOmGA=;
 b=DdpGFdRj+4Zj7bhpUGnpGm9mMXHcX7rGUzOUW8QFYRYbClMbMGJrn+ojng8YG6nyhm
 4jBSAe8ZOBigr/GGaleaKhySmv4WHH8InXy4wJtIFpwyaqE/cjbbXjV0DK7lOUMnqEuu
 VvyGPtZxP1x2pnJw36l5LfIDhRgWZdsFtw2pxxJgVgTXlHxwt6lfU0PZd3/RvFJR3RsF
 iWfKb6ZpKqSRlwIRvaI4UQX/d2IN5apJX0IsdXl4zX+K9MWBX2Q2Otf4QuZFsdlkZ/tr
 qsxE9u4uIQlaO7OwmTcmgB4L+OrlcM+YU4DYoLImCtXv3BM8LvPA4PE/Zq6sw9F4sdO9
 KSug==
X-Gm-Message-State: AOAM5330KaBjxSXMatcLmk9rvCg1p0WOgRhJdGZLRnbPWJkTMxd/AwvM
 YjVZce+u9HuSv4/cdh9C6DgJY/R9N2BslN5xaCTBed42bj9qygEMik/0AEINfc8dMT48ajN+O81
 oooFTW7xErsoHMNOUfknpe5glq8Rb
X-Received: by 2002:a05:6000:1363:: with SMTP id
 q3mr272620wrz.468.1644365968201; 
 Tue, 08 Feb 2022 16:19:28 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwA2Lg39k9Sbo0xLJ5uWj2LvpSd71eFqK97Wop1ro0TUcBQLjaot/weyoE5zyFF03j8y59UbA==
X-Received: by 2002:a05:6000:1363:: with SMTP id
 q3mr272596wrz.468.1644365967877; 
 Tue, 08 Feb 2022 16:19:27 -0800 (PST)
Received: from [192.168.1.102] ([92.176.231.205])
 by smtp.gmail.com with ESMTPSA id n26sm3877837wms.13.2022.02.08.16.19.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 08 Feb 2022 16:19:27 -0800 (PST)
Message-ID: <4ae20b63-f452-fdb4-ced6-d4968a8d69f0@redhat.com>
Date: Wed, 9 Feb 2022 01:19:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20220208210824.2238981-1-daniel.vetter@ffwll.ch>
 <20220208210824.2238981-19-daniel.vetter@ffwll.ch>
From: Javier Martinez Canillas <javierm@redhat.com>
In-Reply-To: <20220208210824.2238981-19-daniel.vetter@ffwll.ch>
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
Cc: linux-fbdev@vger.kernel.org,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>, Peter Jones <pjones@redhat.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Ilya Trukhanov <lahvuun@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Zack Rusin <zackr@vmware.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2/8/22 22:08, Daniel Vetter wrote:
> This reverts commit fb561bf9abde49f7e00fdbf9ed2ccf2d86cac8ee.
> 
> With
> 
> commit 27599aacbaefcbf2af7b06b0029459bbf682000d
> Author: Thomas Zimmermann <tzimmermann@suse.de>
> Date:   Tue Jan 25 10:12:18 2022 +0100
> 
>     fbdev: Hot-unplug firmware fb devices on forced removal
> 
> this should be fixed properly and we can remove this somewhat hackish
> check here (e.g. this won't catch drm drivers if fbdev emulation isn't
> enabled).
>

Unfortunately this hack can't be reverted yet. Thomas' patch solves the issue
of platform devices matched with fbdev drivers to be properly unregistered if
a DRM driver attempts to remove all the conflicting framebuffers.

But the problem that fb561bf9abde ("fbdev: Prevent probing generic drivers if
a FB is already registered") worked around is different. It happens when the
DRM driver is probed before the {efi,simple}fb and other fbdev drivers, the
kicking out of conflicting framebuffers already happened and these drivers
will be allowed to probe even when a DRM driver is already present.

We need a clearer way to prevent it, but can't revert fb561bf9abde until that.

Best regards,
-- 
Javier Martinez Canillas
Linux Engineering
Red Hat

