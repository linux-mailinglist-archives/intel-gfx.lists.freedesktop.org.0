Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0800A22F91F
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jul 2020 21:33:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1CC689E7B;
	Mon, 27 Jul 2020 19:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oo1-xc44.google.com (mail-oo1-xc44.google.com
 [IPv6:2607:f8b0:4864:20::c44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CEFA89E7B
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jul 2020 19:32:57 +0000 (UTC)
Received: by mail-oo1-xc44.google.com with SMTP id y9so3360261oot.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jul 2020 12:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6ETs2U16dncoJaBw8eN+4tA+CAu6TySMWsZrptH76Wk=;
 b=HXJ1Fvv8NEqid/NwrEv5F5ax5w5wgu6e51tF7nZSkJnm2Sz7teOJzWGv1sK9bsOvBW
 qjrbnP4XLpkYHA0I8xx4T7Rnw8PlWFdZtWj+s0CcVJaItVLpnN9H+QORM89er09Wxv8F
 4GbJw+AYRsQtefrUl/nQifaNeqkGKmVzT5FTs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6ETs2U16dncoJaBw8eN+4tA+CAu6TySMWsZrptH76Wk=;
 b=TDF456l0nGXIViK7mx8XDlizlXwgEllaHF3dju3gqPIK1LqsbfkjXYc1DXw+/kpvAX
 T0CRBhDWg7FdDItNv086mvILzBwjE50B6xi8jsKq9eGClL/8TaTqIMWNtSAC+GTlJLlo
 08unhRm9dP7iXUwL4kYpAH2EmvmzJr54BN0jwoiwacKI0TQ1a3Uyvg1nPzf1GiQglqFl
 fwfyhwFWd+h4NdNmJEUusiZSquVh9DcGjJTw89wsfd7ql+Yhmqi7e+RS/xQmPfVLvMTK
 t/xfRCG6VXdRnQwgYjApFiK94bh2ma2JZv+0kRru60oucjYgzOyX/k8bVCUv6svFY3k+
 LV/g==
X-Gm-Message-State: AOAM530pNPh/hGITgzSHN0kx7ex3m5BjTMtcNvChj4fRjIFiSv5URSU0
 MztDb3Zk21W75TH2W40tjRPZAMDEsjwnmwYaJsWS1g==
X-Google-Smtp-Source: ABdhPJzIAgj5nNNhI/dMaqBJVapbHeMP3vhaPhVGgW8+zYd2O7m0Yzdx5AXpKBrMDoULF93Z/kpPOHO8Rh//wmbgim4=
X-Received: by 2002:a4a:4949:: with SMTP id z70mr19062313ooa.85.1595878376847; 
 Mon, 27 Jul 2020 12:32:56 -0700 (PDT)
MIME-Version: 1.0
References: <20200723172119.17649-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200723172119.17649-1-chris@chris-wilson.co.uk>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 27 Jul 2020 21:32:45 +0200
Message-ID: <CAKMK7uFt5ViekqBPqdBbJWN4FhfxvF57K58VW8hAZGZwjRDz0w@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, Dave Airlie <airlied@redhat.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm: Restore driver.preclose() for all
 to use
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Gustavo Padovan <gustavo.padovan@collabora.com>,
 stable <stable@vger.kernel.org>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 23, 2020 at 7:21 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
>
> An unfortunate sequence of events, but it turns out there is a valid
> usecase for being able to free/decouple the driver objects before they
> are freed by the DRM core. In particular, if we have a pointer into a
> drm core object from inside a driver object, that pointer needs to be
> nerfed *before* it is freed so that concurrent access (e.g. debugfs)
> does not following the dangling pointer.
>
> The legacy marker was adding in the code movement from drp_fops.c to
> drm_file.c

I might fumble a lot, but not this one:

commit 45c3d213a400c952ab7119f394c5293bb6877e6b
Author: Daniel Vetter <daniel.vetter@ffwll.ch>
Date:   Mon May 8 10:26:33 2017 +0200

    drm: Nerf the preclose callback for modern drivers

Also looking at the debugfs hook that has some rather adventurous
stuff going on I think, feels a bit like a kitchensink with batteries
included. If that's really all needed I'd say iterate the contexts by
first going over files, then the ctx (which arent shared anyway) and
the problem should also be gone.
-Daniel

> References: 9acdac68bcdc ("drm: rename drm_fops.c to drm_file.c")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Gustavo Padovan <gustavo.padovan@collabora.com>
> Cc: CQ Tang <cq.tang@intel.com>
> Cc: <stable@vger.kernel.org> # v4.12+
> ---
>  drivers/gpu/drm/drm_file.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_file.c b/drivers/gpu/drm/drm_file.c
> index 0ac4566ae3f4..7b4258d6f7cc 100644
> --- a/drivers/gpu/drm/drm_file.c
> +++ b/drivers/gpu/drm/drm_file.c
> @@ -258,8 +258,7 @@ void drm_file_free(struct drm_file *file)
>                   (long)old_encode_dev(file->minor->kdev->devt),
>                   atomic_read(&dev->open_count));
>
> -       if (drm_core_check_feature(dev, DRIVER_LEGACY) &&
> -           dev->driver->preclose)
> +       if (dev->driver->preclose)
>                 dev->driver->preclose(dev, file);
>
>         if (drm_core_check_feature(dev, DRIVER_LEGACY))
> --
> 2.20.1
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel



-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
