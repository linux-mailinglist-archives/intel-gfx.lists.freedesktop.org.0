Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED9E6D7746
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 10:48:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5747F10E887;
	Wed,  5 Apr 2023 08:48:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com
 [IPv6:2a00:1450:4864:20::532])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3124B8876A
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 08:48:16 +0000 (UTC)
Received: by mail-ed1-x532.google.com with SMTP id
 4fb4d7f45d1cf-502aa0f24daso29529a12.1
 for <intel-gfx@lists.freedesktop.org>; Wed, 05 Apr 2023 01:48:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google; t=1680684494;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=AFqeFcmpYVKfxH4Qmh9JiLnzzuxZwy+QStGun2zwksc=;
 b=Yz0I+sQqLPCOCLQ9VmUO9W3Fch9AgazOq5C3JClos/O3S6IKuU1mkk6N0vS2zTFh31
 q3u1kTNATioDrA+pSptIjKOBgb6SAm9B6MPYAD5yik6h7KUAVkCZKOBuZwaU6RZxEhBE
 25O2dsPBaN5TPmgrFJGya4KNGvzU000DkLAeg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680684494;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=AFqeFcmpYVKfxH4Qmh9JiLnzzuxZwy+QStGun2zwksc=;
 b=K93Ndp8hnB9aGzPgXCFqk+bA24S+fEdL4dYwRijJCKwl1z369Wu5McZoLxa9ItWqpv
 gae11kITplKxPnvsK8jiTCQfcHHA5EyZjZ9do16zwiS3NTRm6ac23UVBH9MU899d413n
 FoTuVFIk0WrdRjZtmnuW5QFFO21M4qbGT9rIpiklqA6iwnHrEaCzaSWns5IRYPyt80N3
 B43SbX3JBeGzxpm2VyvfYL5NX6hM+3BrqRkWCUh0ZXZ0WDH9/IGN02Y60iF2jUqE1DfP
 1z8s+zdMSZBs7+COGoucBJ2ySD4/H2omVkY6iy9mQtMNnJ+nj48abM3gOjCShr21lpst
 SaSg==
X-Gm-Message-State: AAQBX9ffLolbddI6mowSb7cD8WxvnuWS67+OPOg4R4iFFsfsoDcaBWuY
 4nd/DlT1IS9HlNdpX5/HMF83vw==
X-Google-Smtp-Source: AKy350ZdqOuyKM0+bL26ExKxTefXwLGpdvPreJz1tIksj7h5Ldy4eQWpGYu27lmAlhkIkLlMrzWuKw==
X-Received: by 2002:a05:6402:4413:b0:502:ffd:74a0 with SMTP id
 y19-20020a056402441300b005020ffd74a0mr1340537eda.2.1680684494335; 
 Wed, 05 Apr 2023 01:48:14 -0700 (PDT)
Received: from phenom.ffwll.local (212-51-149-33.fiber7.init7.net.
 [212.51.149.33]) by smtp.gmail.com with ESMTPSA id
 o13-20020a50c90d000000b004f9ca99cf5csm6757222edh.92.2023.04.05.01.48.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 05 Apr 2023 01:48:13 -0700 (PDT)
Date: Wed, 5 Apr 2023 10:48:12 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Aaron Plattner <aplattner@nvidia.com>
Message-ID: <ZC01zPuv/gAlWUoQ@phenom.ffwll.local>
References: <20230404201842.567344-1-daniel.vetter@ffwll.ch>
 <20230404201842.567344-7-daniel.vetter@ffwll.ch>
 <090966b8-acad-62df-40aa-232471502edd@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <090966b8-acad-62df-40aa-232471502edd@nvidia.com>
X-Operating-System: Linux phenom 6.1.0-7-amd64 
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Javier Martinez Canillas <javierm@redhat.com>,
 DRI Development <dri-devel@lists.freedesktop.org>, stable@vger.kernel.org,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Helge Deller <deller@gmx.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 04, 2023 at 01:59:33PM -0700, Aaron Plattner wrote:
> On 4/4/23 1:18 PM, Daniel Vetter wrote:
> > Instead of calling aperture_remove_conflicting_devices() to remove the
> > conflicting devices, just call to aperture_detach_devices() to detach
> > the device that matches the same PCI BAR / aperture range. Since the
> > former is just a wrapper of the latter plus a sysfb_disable() call,
> > and now that's done in this function but only for the primary devices.
> > 
> > This fixes a regression introduced by ee7a69aa38d8 ("fbdev: Disable
> > sysfb device registration when removing conflicting FBs"), where we
> > remove the sysfb when loading a driver for an unrelated pci device,
> > resulting in the user loosing their efifb console or similar.
> > 
> > Note that in practice this only is a problem with the nvidia blob,
> > because that's the only gpu driver people might install which does not
> > come with an fbdev driver of it's own. For everyone else the real gpu
> > driver will restore a working console.
> 
> It might be worth noting that this also affects devices that have no driver
> installed, or where the driver failed to initialize or was configured not to
> set a mode. E.g. I reproduced this problem on a laptop with i915.modeset=0
> and an NVIDIA driver that calls drm_fbdev_generic_setup. It would also
> reproduce on a system that sets modeset=0 (or has a GPU that's too new for
> its corresponding kernel driver) and that passes an NVIDIA GPU through to a
> VM using vfio-pci since that also calls
> aperture_remove_conflicting_pci_devices.
> 
> I agree that in practice this will mostly affect people with our driver
> until I get my changes to add drm_fbdev_generic_setup checked in. But these
> other cases don't seem all that unlikely to me.

Thomas Z. refactored the entire modeset=0 handling to be more consistent
across drivers, so I think in practice it'll again only happen with the
nvidia blob driver (unless you patch in the call to
drm_firmware_drivers_only()). Or if you dont use nomodeset or similar and
instead use a driver-specific module option, which isn't what howtos in
distros recommend.

I can add this to the commit message if you want?
-Daniel

> 
> -- Aaron
> 
> > Also note that in the referenced bug there's confusion that this same
> > bug also happens on amdgpu. But that was just another amdgpu specific
> > regression, which just happened to happen at roughly the same time and
> > with the same user-observable symptoms. That bug is fixed now, see
> > https://bugzilla.kernel.org/show_bug.cgi?id=216331#c15
> > 
> > Note that we should not have any such issues on non-pci multi-gpu
> > issues, because I could only find two such cases:
> > - SoC with some external panel over spi or similar. These panel
> >    drivers do not use drm_aperture_remove_conflicting_framebuffers(),
> >    so no problem.
> > - vga+mga, which is a direct console driver and entirely bypasses all
> >    this.
> > 
> > For the above reasons the cc: stable is just notionally, this patch
> > will need a backport and that's up to nvidia if they care enough.
> > 
> > v2:
> > - Explain a bit better why other multi-gpu that aren't pci shouldn't
> >    have any issues with making all this fully pci specific.
> > 
> > v3
> > - polish commit message (Javier)
> > 
> > Fixes: ee7a69aa38d8 ("fbdev: Disable sysfb device registration when removing conflicting FBs")
> > Tested-by: Aaron Plattner <aplattner@nvidia.com>
> > Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
> > References: https://bugzilla.kernel.org/show_bug.cgi?id=216303#c28
> > Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> > Cc: Aaron Plattner <aplattner@nvidia.com>
> > Cc: Javier Martinez Canillas <javierm@redhat.com>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: Helge Deller <deller@gmx.de>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Alex Deucher <alexander.deucher@amd.com>
> > Cc: <stable@vger.kernel.org> # v5.19+ (if someone else does the backport)
> > ---
> >   drivers/video/aperture.c | 7 ++++---
> >   1 file changed, 4 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/video/aperture.c b/drivers/video/aperture.c
> > index 8f1437339e49..2394c2d310f8 100644
> > --- a/drivers/video/aperture.c
> > +++ b/drivers/video/aperture.c
> > @@ -321,15 +321,16 @@ int aperture_remove_conflicting_pci_devices(struct pci_dev *pdev, const char *na
> >   	primary = pdev == vga_default_device();
> > +	if (primary)
> > +		sysfb_disable();
> > +
> >   	for (bar = 0; bar < PCI_STD_NUM_BARS; ++bar) {
> >   		if (!(pci_resource_flags(pdev, bar) & IORESOURCE_MEM))
> >   			continue;
> >   		base = pci_resource_start(pdev, bar);
> >   		size = pci_resource_len(pdev, bar);
> > -		ret = aperture_remove_conflicting_devices(base, size, name);
> > -		if (ret)
> > -			return ret;
> > +		aperture_detach_devices(base, size);
> >   	}
> >   	if (primary) {

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
