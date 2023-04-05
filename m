Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCFF6D7B7C
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 13:37:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3331E10E8F4;
	Wed,  5 Apr 2023 11:37:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5136910E8FD
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 11:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680694649;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=TqQ80Zxc7TIJSa7ZvAwt9oQmNHqtPUMz0WDZ7JjmvKo=;
 b=HvVu/F0RX+jHa2h3xBlPJQd/jndvb/uNtjYf4tO2k3cBfXie3Xkdc6ZSTSSdKvN4YrhLfi
 jg5qrgjbWZFT+hCgnd4lak0gfh78toNNIy2joZM1R3PUgnbaBUvmFsXJxPm/4wpP6wv9oH
 8TjCLigbzyjSJegec+g56GUAoAnht9g=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-75-wn04me3zNn-2pSxKk9S7IQ-1; Wed, 05 Apr 2023 07:37:28 -0400
X-MC-Unique: wn04me3zNn-2pSxKk9S7IQ-1
Received: by mail-wm1-f70.google.com with SMTP id
 k25-20020a05600c1c9900b003ef79f2c207so11494639wms.5
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 04:37:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680694647;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=TqQ80Zxc7TIJSa7ZvAwt9oQmNHqtPUMz0WDZ7JjmvKo=;
 b=rbeJ/eBo/68LVi0AAkMIoQapWAd+g9WVFwhSXgdJP0mxxZ4jnovFegS3bt1LxMIWjH
 Iqb7VMfKGyBpSe3GK70seleIf0ENQ6xcN9BMjtMbcTdyYgiIfP/eGlAy08ByT+kQc0yO
 ncxdXh7SwuPhIf7L3LqL3sB97JFTmLC5MyUN5VZsB3ZL4C9KZPZ5yqXhtg0HzAK5Da7C
 pmmJBAn73Wlv9A5dhU9/EpJTViuqAxlYRYVUUGsGSHR7yQZYm/KRt0lUVnKivJWViutp
 Tgbf9O+pSEU9F/AQELfq25vqQZE03xN5N65EWGxcm40lnSQZkZwkCZ2x7YEGgXttR+2m
 uUmA==
X-Gm-Message-State: AAQBX9djYw4myHtVekV1O1Ixy0qY1cIOd55iay3iQFsSl+nTwPyJyKec
 YlCMWQAN2623UrFW9KRrBP3ekj6JO+ql+t+MidbXtFMqMhtfw/L4BaPXCRes/N3vM2LP8vyFvpe
 BfeojUUoccnsD32uvqetlsUDK31Rw
X-Received: by 2002:a05:600c:211a:b0:3f0:44f1:9714 with SMTP id
 u26-20020a05600c211a00b003f044f19714mr4526858wml.30.1680694647324; 
 Wed, 05 Apr 2023 04:37:27 -0700 (PDT)
X-Google-Smtp-Source: AKy350ap/kJBMaVXiTkEpHLntbqdMO6Me8Kx2LSJWWjtkpOBf7LVwv76PkfSXSEo1lOs2BLcmmPlJA==
X-Received: by 2002:a05:600c:211a:b0:3f0:44f1:9714 with SMTP id
 u26-20020a05600c211a00b003f044f19714mr4526835wml.30.1680694646990; 
 Wed, 05 Apr 2023 04:37:26 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es.
 [92.176.231.205]) by smtp.gmail.com with ESMTPSA id
 k20-20020a7bc414000000b003ee1b2ab9a0sm1934447wmi.11.2023.04.05.04.37.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 04:37:26 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Daniel Vetter <daniel.vetter@ffwll.ch>, DRI Development
 <dri-devel@lists.freedesktop.org>
In-Reply-To: <20230404201842.567344-7-daniel.vetter@ffwll.ch>
References: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
 <20230404201842.567344-7-daniel.vetter@ffwll.ch>
Date: Wed, 05 Apr 2023 13:37:25 +0200
Message-ID: <87pm8iblvu.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 7/8] video/aperture: Only remove sysfb on
 the default vga pci device
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
Cc: Aaron Plattner <aplattner@nvidia.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 stable@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Daniel Vetter <daniel.vetter@ffwll.ch> writes:

> Instead of calling aperture_remove_conflicting_devices() to remove the
> conflicting devices, just call to aperture_detach_devices() to detach
> the device that matches the same PCI BAR / aperture range. Since the
> former is just a wrapper of the latter plus a sysfb_disable() call,
> and now that's done in this function but only for the primary devices.
>
> This fixes a regression introduced by ee7a69aa38d8 ("fbdev: Disable
> sysfb device registration when removing conflicting FBs"), where we
> remove the sysfb when loading a driver for an unrelated pci device,
> resulting in the user loosing their efifb console or similar.
>
> Note that in practice this only is a problem with the nvidia blob,
> because that's the only gpu driver people might install which does not
> come with an fbdev driver of it's own. For everyone else the real gpu
> driver will restore a working console.
>
> Also note that in the referenced bug there's confusion that this same
> bug also happens on amdgpu. But that was just another amdgpu specific
> regression, which just happened to happen at roughly the same time and
> with the same user-observable symptoms. That bug is fixed now, see
> https://bugzilla.kernel.org/show_bug.cgi?id=216331#c15
>
> Note that we should not have any such issues on non-pci multi-gpu
> issues, because I could only find two such cases:
> - SoC with some external panel over spi or similar. These panel
>   drivers do not use drm_aperture_remove_conflicting_framebuffers(),
>   so no problem.
> - vga+mga, which is a direct console driver and entirely bypasses all
>   this.
>
> For the above reasons the cc: stable is just notionally, this patch
> will need a backport and that's up to nvidia if they care enough.
>
> v2:
> - Explain a bit better why other multi-gpu that aren't pci shouldn't
>   have any issues with making all this fully pci specific.
>
> v3
> - polish commit message (Javier)
>
> Fixes: ee7a69aa38d8 ("fbdev: Disable sysfb device registration when removing conflicting FBs")
> Tested-by: Aaron Plattner <aplattner@nvidia.com>
> Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
> References: https://bugzilla.kernel.org/show_bug.cgi?id=216303#c28
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Aaron Plattner <aplattner@nvidia.com>
> Cc: Javier Martinez Canillas <javierm@redhat.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Helge Deller <deller@gmx.de>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Alex Deucher <alexander.deucher@amd.com>
> Cc: <stable@vger.kernel.org> # v5.19+ (if someone else does the backport)
> ---
>  drivers/video/aperture.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

