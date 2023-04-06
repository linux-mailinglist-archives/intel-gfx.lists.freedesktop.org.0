Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1D86D91CA
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 10:38:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 113D110EB2E;
	Thu,  6 Apr 2023 08:38:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.129.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4493D10EB2E
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 08:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1680770308;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=hkchePf9OLmsTXYWAsI9wTVTm6UQ5Vnb4omxYS3AXNw=;
 b=hmCQO4VhtgcpoAdzjDYaHQuvFC1ONwMxt8em0Vshwqe4S3cKfHmHapmHC5krxIvOAB6o7y
 azus+r+WAUr5w6Uf4RfsyDOcCcUcRR/JKNvE5Z6JgfgCnKe1Tmd9mcgQe7gzjVlfGIoQ/1
 k53LY6w9GkoAJD5gwyKDh3KCyOLm5uQ=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-13-XxK-CLbRPN6Xe_14jNQInA-1; Thu, 06 Apr 2023 04:38:27 -0400
X-MC-Unique: XxK-CLbRPN6Xe_14jNQInA-1
Received: by mail-wm1-f71.google.com with SMTP id
 q21-20020a05600c46d500b003ee570749f7so18461045wmo.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 06 Apr 2023 01:38:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680770306;
 h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
 :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=hkchePf9OLmsTXYWAsI9wTVTm6UQ5Vnb4omxYS3AXNw=;
 b=Z1GqNuINURguvZKJMP4BH0HO+WxROXZ4ufBj0YVJ1eMJXkGX6WjwJ1q+UoiiL3EdxR
 avxjrpeyUX1cT6txjaTdWFGGlhDDA9RLuqnfA/WfGmF0NY4kneUZ5YD2fl6pti69hvVh
 cyFXmP956aVHqX4x8sIy/7hLdrnKGvXbo7r+fCZ0JIlxcwUhZ4RGUHHtfYn07MuB3TPC
 aq25mHSy5/98JTXsQ7WG+AisSs1EpzGOCSOlD0js4sBa2tAzFCmBI/v3fsipyFmKn2VV
 ifYawQd5weSbXriwFU3FdPMfLJpKyXIfUYXNjmcme02Uwgjvtgy1YRPo/tDIV1UwbtXI
 tDLg==
X-Gm-Message-State: AAQBX9c+/HCvAZSTyGulmYWDYtesdnGgtSPBkmPK635/ounJ2NSMRbCI
 y45lblz2JUnT3YNFTVwWVh/uuc5jnbu65wBuZxilBqw3wcdLwjKiA69WwUhKgKX5Sz+mYwHYXID
 zFrioKSakhPrxc26tdsoiwbimIwpa
X-Received: by 2002:a1c:f216:0:b0:3ee:4ff0:83d6 with SMTP id
 s22-20020a1cf216000000b003ee4ff083d6mr6819314wmc.40.1680770306382; 
 Thu, 06 Apr 2023 01:38:26 -0700 (PDT)
X-Google-Smtp-Source: AKy350Yojg2hQUkAVKwGstUj4dhtr6KfgtFqksoey1inKawioKRJeSTROyvsWZxKKEZVNw0r4QsONg==
X-Received: by 2002:a1c:f216:0:b0:3ee:4ff0:83d6 with SMTP id
 s22-20020a1cf216000000b003ee4ff083d6mr6819298wmc.40.1680770306081; 
 Thu, 06 Apr 2023 01:38:26 -0700 (PDT)
Received: from localhost ([84.78.248.32]) by smtp.gmail.com with ESMTPSA id
 m21-20020a7bcb95000000b003ee4e99a8f6sm912948wmi.33.2023.04.06.01.38.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Apr 2023 01:38:25 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, Daniel Vetter
 <daniel.vetter@ffwll.ch>, DRI Development <dri-devel@lists.freedesktop.org>
In-Reply-To: <66f9196e-df2b-19ce-e2ec-15f7a81d63c7@suse.de>
References: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
 <66f9196e-df2b-19ce-e2ec-15f7a81d63c7@suse.de>
Date: Thu, 06 Apr 2023 10:38:24 +0200
Message-ID: <87ttxt8kxr.fsf@minerva.mail-host-address-is-not-set>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/8] drm/gma500: Use
 drm_aperture_remove_conflicting_pci_framebuffers
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thomas Zimmermann <tzimmermann@suse.de> writes:

[...]

> Am 04.04.23 um 22:18 schrieb Daniel Vetter:
> Gma500 therefore calls both helpers to catch all cases. It's confusing
> as it implies that there's something about the PCI device that requires
> ownership management. The relationship between the PCI device and the
> VGA devices is non-obvious. At worst, readers might assume that calling
> two functions for aperture clearing ownership is a bug in the driver.
>

Yeah, or someone looking as the driver for reference may wrongly think
that calling both aperture helpers are needed for PCI drivers and that
is not the case.

> Hence, move the PCI removal helper's code for VGA functionality into
> a separate function and call this function from gma500. Documents the
> purpose of each call to aperture helpers. The change contains comments
> and example code form the discussion at [1].
>
> Signed-off-by: Thomas Zimmermann <tzimmermann@suse.de>
> Link: https://patchwork.kernel.org/project/dri-devel/patch/20230404201842.567344-1-daniel.vetter@ffwll.ch/ # 1
> ---

Looks good to me and I agree that it makes the code easier to understand.

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

I've a couple of comments below though:

[...]

> + * Hardware for gma500 is a hybrid device, which both acts as a PCI
> + * device (for legacy vga functionality) but also more like an
> + * integrated display on a SoC where the framebuffer simply
> + * resides in main memory and not in a special PCI bar (that
> + * internally redirects to a stolen range of main memory) like all
> + * other integrated PCI display devices have.
> + *

Is "have" the correct word here or "do" ? Or maybe "are implemented" ?

> + * To catch all cases we need to remove conflicting firmware devices
> + * for the stolen system memory and for the VGA functionality. As we
> + * currently cannot easily find the framebuffer's location in stolen
> + * memory, we remove all framebuffers here.
> + *
> + * TODO: Refactor psb_driver_load() to map vdc_reg earlier. Then
> + *       we might be able to read the framebuffer range from the
> + *       device.
> + */
> +static int gma_remove_conflicting_framebuffers(struct pci_dev *pdev,
> +					       const struct drm_driver *req_driver)
>  {
> -	struct drm_psb_private *dev_priv;
> -	struct drm_device *dev;
> +	resource_size_t base = 0;
> +	resource_size_t size = PHYS_ADDR_MAX;
> +	const char *name = req_driver->name;
>  	int ret;
>  
> -	/*
> -	 * We cannot yet easily find the framebuffer's location in memory. So
> -	 * remove all framebuffers here. Note that we still want the pci special
> -	 * handling to kick out vgacon.
> -	 *
> -	 * TODO: Refactor psb_driver_load() to map vdc_reg earlier. Then we
> -	 *       might be able to read the framebuffer range from the device.
> -	 */
> -	ret = drm_aperture_remove_framebuffers(&driver);
> +	ret = aperture_remove_conflicting_devices(base, size, name);
>  	if (ret)
>  		return ret;
>  
> -	ret = drm_aperture_remove_conflicting_pci_framebuffers(pdev, &driver);
> +	return __aperture_remove_legacy_vga_devices(pdev);

I don't like the __ prefix for this function name, as it usually implies
that is a function that is only local to the compilation unit. But it is
an exported symbol from the aperture infrastructure.

[...]
  
> +/**
> + * __aperture_remove_legacy_vga_devices - remove legacy VGA devices of a PCI devices
> + * @pdev: PCI device
> + *
> + * This function removes VGA devices provided by @pdev, such as a VGA
> + * framebuffer or a console. This is useful if you have a VGA-compatible
> + * PCI graphics device with framebuffers in non-BAR locations. Drivers
> + * should acquire ownership of those memory areas and afterwards call
> + * this helper to release remaining VGA devices.
> + *
> + * If your hardware has its framebuffers accessible via PCI BARS, use
> + * aperture_remove_conflicting_pci_devices() instead. The function will
> + * release any VGA devices automatically.
> + *
> + * WARNING: Apparently we must remove graphics drivers before calling
> + *          this helper. Otherwise the vga fbdev driver falls over if
> + *          we have vgacon configured.
> + *
> + * Returns:
> + * 0 on success, or a negative errno code otherwise
> + */
> +int __aperture_remove_legacy_vga_devices(struct pci_dev *pdev)
> +{
> +	/* VGA framebuffer */
> +	aperture_detach_devices(VGA_FB_PHYS_BASE, VGA_FB_PHYS_SIZE);
> +
> +	/* VGA textmode console */
> +	return vga_remove_vgacon(pdev);
> +}
> +EXPORT_SYMBOL(__aperture_remove_legacy_vga_devices);

I would just call this symbol aperture_remove_legacy_vga_devices() as
mentioned, the fact that aperture_remove_conflicting_pci_devices() use it
internally is an implementation detail IMO. But it's an exported symbol so
the naming should be consistent.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat

