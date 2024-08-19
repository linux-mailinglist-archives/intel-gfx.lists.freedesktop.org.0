Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D24FC95720C
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2024 19:23:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0922E10E330;
	Mon, 19 Aug 2024 17:23:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="EJPEMbLM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2E2B10E330
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2024 17:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1724088219;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=fSh+AKHfROTY2o6Hz6Tk9lBXTICcXCJ9yq1Q239cTB8=;
 b=EJPEMbLMDI7QT5/fvJDZEI96fhtWPzoKOXzVu5+l8pS6/SNP0cu5rRMLvo4UHbmrNKDM+b
 JDosMeIdtCM8DTU0oJkOt4ndjMtwfOVL6/lYFJb6KZolk9YVOzhzh2Wa9v9mMDGEFSfflS
 roN4FRiGTrNXPhYfHdkMFqqo2RWCXi0=
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com
 [209.85.210.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-681-mY8DEZ9dMemZ4g8gPZIiZg-1; Mon, 19 Aug 2024 13:23:37 -0400
X-MC-Unique: mY8DEZ9dMemZ4g8gPZIiZg-1
Received: by mail-pf1-f198.google.com with SMTP id
 d2e1a72fcca58-70eab26e146so3668033b3a.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2024 10:23:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724088217; x=1724693017;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=fSh+AKHfROTY2o6Hz6Tk9lBXTICcXCJ9yq1Q239cTB8=;
 b=qrOdtU00VlJNRWMd+tk+vDTDlzj18Wh5a7QTU6LLO1qUhA681nj/2q0qMSJfI+W1GY
 OspAne5IYe/DfehJwg3y6z9DFlgryitFpfBVIHYrhMYSa5wzBsLBfA4gNkRP30SBSzYo
 9otLAgrdnaSXhe9GvIKYSkw3J1LkRPAPYsDNubNxw63j3vfuXuOvukQFFl+SpOZzT9SL
 tGf9gIrZ4Bkgus1pyGXZ78BeCI33C47ocZVrp6zowc3sFUMefP/m7ubTAErCZKDw7LHp
 3I4ifZD9jIC80+nc4QSQWkcpBC5aHeKS+z66Ho6DjBr33mhzLdm+fTYbkV3rntsI9L6S
 Bkyg==
X-Gm-Message-State: AOJu0YyoYlzu8CaD7YBPdhbbd0+H3OPQx53DLY55OUKybYaUif5ty3Nw
 xGGNXWMtBFiEFffJPo4PonYdCP0vfZpnolCXiiRmcAQB4gGpqcqRUPdodTFZcvqtWyV5tfWSl9c
 Yy0WnSMMdPTSP6Yu7lAmJEUWnMkPelioKBujmDeKuvz5i4URpZBstPctMPkH+cRgIBg==
X-Received: by 2002:a05:6a20:9d8f:b0:1c4:b843:fa25 with SMTP id
 adf61e73a8af0-1c904fb656bmr11943416637.26.1724088216822; 
 Mon, 19 Aug 2024 10:23:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSDHyDrjBuGFu+b/kmVXsnPxa87OiRQHTdxkMfzpoHRCn+Sotx/RfRkFNZUyRweZND934hmQ==
X-Received: by 2002:a05:6a20:9d8f:b0:1c4:b843:fa25 with SMTP id
 adf61e73a8af0-1c904fb656bmr11943383637.26.1724088216373; 
 Mon, 19 Aug 2024 10:23:36 -0700 (PDT)
Received: from localhost ([2803:2a00:8:776f:e199:77:1ec5:b560])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7127aef8996sm6790756b3a.122.2024.08.19.10.23.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 19 Aug 2024 10:23:35 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Alex Deucher <alexander.deucher@amd.com>, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Alex Deucher
 <alexander.deucher@amd.com>, Thomas Zimmermann <tzimmermann@suse.de>,
 Helge Deller <deller@gmx.de>, Sam
 Ravnborg <sam@ravnborg.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 stable@vger.kernel.org
Subject: Re: [PATCH V2] video/aperture: match the pci device when calling
 sysfb_disable()
In-Reply-To: <20240819165341.799848-1-alexander.deucher@amd.com>
References: <20240819165341.799848-1-alexander.deucher@amd.com>
Date: Mon, 19 Aug 2024 19:23:33 +0200
Message-ID: <87frr0a0kq.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
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

Alex Deucher <alexander.deucher@amd.com> writes:

Hello Alex,

> In aperture_remove_conflicting_pci_devices(), we currently only
> call sysfb_disable() on vga class devices.  This leads to the
> following problem when the pimary device is not VGA compatible:
>
> 1. A PCI device with a non-VGA class is the boot display
> 2. That device is probed first and it is not a VGA device so
>    sysfb_disable() is not called, but the device resources
>    are freed by aperture_detach_platform_device()
> 3. Non-primary GPU has a VGA class and it ends up calling sysfb_disable()
> 4. NULL pointer dereference via sysfb_disable() since the resources
>    have already been freed by aperture_detach_platform_device() when
>    it was called by the other device.
>
> Fix this by passing a device pointer to sysfb_disable() and checking
> the device to determine if we should execute it or not.
>
> v2: Fix build when CONFIG_SCREEN_INFO is not set
>
> Fixes: 5ae3716cfdcd ("video/aperture: Only remove sysfb on the default vga pci device")
> Cc: Javier Martinez Canillas <javierm@redhat.com>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Helge Deller <deller@gmx.de>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> Signed-off-by: Alex Deucher <alexander.deucher@amd.com>
> Cc: stable@vger.kernel.org
> ---

The patch looks good to me.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

I just have to minor comments below:

...

>  /**
>   * sysfb_disable() - disable the Generic System Framebuffers support
> + * @dev:	the device to check if non-NULL
>   *
>   * This disables the registration of system framebuffer devices that match the
>   * generic drivers that make use of the system framebuffer set up by firmware.
> @@ -61,8 +64,12 @@ static bool sysfb_unregister(void)
>   * Context: The function can sleep. A @disable_lock mutex is acquired to serialize
>   *          against sysfb_init(), that registers a system framebuffer device.
>   */
> -void sysfb_disable(void)
> +void sysfb_disable(struct device *dev)
>  {
> +	struct screen_info *si = &screen_info;
> +
> +	if (dev && dev != sysfb_parent_dev(si))
> +		return;

Does this need to be protected by the disable_lock mutex? i.e:

        mutex_lock(&disable_lock);
        if (!dev || dev == sysfb_parent_dev(si) {
                sysfb_unregister();
                disabled = true;
        }
        mutex_unlock(&disable_lock);

...

> @@ -353,8 +353,7 @@ int aperture_remove_conflicting_pci_devices(struct pci_dev *pdev, const char *na
>  	if (pdev == vga_default_device())
>  		primary = true;
>
> -	if (primary)
> -		sysfb_disable();
> +	sysfb_disable(&pdev->dev);
>

After this change the primary variable is only used to determine whether 
__aperture_remove_legacy_vga_devices(pdev) should be called or not. So I
wonder if could just be dropped and instead have:

	/*
	 * If this is the primary adapter, there could be a VGA device
	 * that consumes the VGA framebuffer I/O range. Remove this
	 * device as well.
	 */
	if (pdev == vga_default_device())
		ret = __aperture_remove_legacy_vga_devices(pdev);



-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

