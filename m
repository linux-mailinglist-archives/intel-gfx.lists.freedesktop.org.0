Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0F519F5D7
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 14:33:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B37686E3A6;
	Mon,  6 Apr 2020 12:33:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com
 [IPv6:2607:f8b0:4864:20::241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 355136E39E
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 12:33:03 +0000 (UTC)
Received: by mail-oi1-x241.google.com with SMTP id r21so4446545oij.11
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Apr 2020 05:33:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=irjLTvVIJFxBo2Z3POGywV9/b9JCgoAHqWj3gQ7KPC0=;
 b=RsSwXpl4lIE46kbtoRR/rEOI0m1D/xP7qvofJc2aFtkOqYvzQ+IkfLBsoKmdRIcnND
 13RQxM/wdUqBhMVRDTWhXh3Ahd29HT8COuPEgnkg5fzUiaJh3dKGRD6syZTPCoozfGEE
 2z2c/pR9c93yJwnw4k09EVjacATOgBxJgrmog=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=irjLTvVIJFxBo2Z3POGywV9/b9JCgoAHqWj3gQ7KPC0=;
 b=ChSlAM6foAHfS3azczqsu4SVRVjQpoqTQnhtWMXV9R0dShtqiPEsaayvzO1fbQnSpe
 7dhJcHv15EmGzmYlM0/iCacv8aUi6VCMl4vxY1Sw2EwgdhyHojRNv1bdkBq9B0G3x0ZQ
 MxoJV2cE6dQ+B9d6+FdChTUYGqv7wuCdnfo4EKnUJDS5X+xDFOXk1LzsykVyLYWXEeO1
 Mkmz50UGT4xFNR5e/tpqmIVgAa323jag6QsOQ/xdw3Do+2WodSa4/NgOLLFGKx9D+dQh
 y+9PegcFKbBGbDgTZMsBmklT8ie8iEvLXxx7GwxVczSb5+ULr0P+aGbNFI93N2bq/rub
 oV5g==
X-Gm-Message-State: AGi0PuZFaTRNYehbLBwhIldE2TRPm3tApqK6B18pGLPUj81KrOWOqc9Q
 FofoJmxPPzxmSiks1p8J4gF18CN/GjX/3gW54MANQw==
X-Google-Smtp-Source: APiQypL0pxMfUkRZB39ETX6gCuuJ9rTMWtGzYXuY2CUB+5+5/AJ6im9vfsMkXxmuVyXcdjMOkjANqkHvEIgASmCdW/4=
X-Received: by 2002:aca:aac1:: with SMTP id t184mr12629410oie.14.1586176382379; 
 Mon, 06 Apr 2020 05:33:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
 <20200403135828.2542770-2-daniel.vetter@ffwll.ch>
In-Reply-To: <20200403135828.2542770-2-daniel.vetter@ffwll.ch>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 6 Apr 2020 14:32:51 +0200
Message-ID: <CAKMK7uEEi8NMCopSd+7LqmhaqW0U4ZMif7YLgYQZ58fD7jRfzA@mail.gmail.com>
To: DRI Development <dri-devel@lists.freedesktop.org>
Subject: Re: [Intel-gfx] [PATCH 01/44] drivers/base: Always release devres
 on device_del
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
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Apr 3, 2020 at 3:58 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
>
> In drm we've added nice drm_device (the main gpu driver thing, which
> also represents the userspace interfaces and has everything else
> dangling off it) init functions using devres, devm_drm_dev_init and
> soon devm_drm_dev_alloc (this patch series adds that).
>
> A slight trouble is that drm_device itself holds a reference on the
> struct device it's sitting on top (for sysfs links and dmesg debug and
> lots of other things), so there's a reference loop. For real drivers
> this is broken at remove/unplug time, where all devres resources are
> released device_release_driver(), before the final device reference is
> dropped. So far so good.
>
> There's 2 exceptions:
> - drm/vkms|vgem: Virtual drivers for which we create a fake/virtual
>   platform device to make them look more like normal devices to
>   userspace. These aren't drivers in the driver model sense, we simple
>   create a platform_device and register it.
>
> - drm/i915/selftests, where we create minimal mock devices, and again
>   the selftests aren't proper drivers in the driver model sense.
>
> For these two cases the reference loop isn't broken, because devres is
> only cleaned up when the last device reference is dropped. But that's
> not happening, because the drm_device holds that last struct device
> reference.
>
> Thus far this wasn't a problem since the above cases simply
> hand-rolled their cleanup code. But I want to convert all drivers over
> to the devm_ versions, hence it would be really nice if these
> virtual/fake/mock uses-cases could also be managed with devres
> cleanup.
>
> I see three possible approaches:

Restarting this at the top level, because the discussion thus far just
ended in a long "you're doing it wrong", despite that I think we're
doing what v4l is doing (plus/minus that we can't do an exact matching
handling in drm because our uapi has a lot more warts, which we can't
change because no breaking userspace).

So which one of the three below is the right approach?

Aside, looking at the v4l solution I think there's also a confusion
about struct device representing a char device (which v4l directly
uses as its userspace interface refcounted thing, and which drm does
_not_ directly). And a struct device embedded into something like
platform_device or a virtual device, where a driver can bind to. My
question here is about the former, I don't care how cdev struct device
are cleaned up one bit. Now if other subsystems relies on the devres
cleanup behaviour we currently have because of such cdev usage, then
yeah first approach doesn't work (and I have a big surprised that use
case, but hey would actually learn something).

End of aside, since again I want to figure out which of the tree
approaches it the right one. Not about how wrong one of them is,
ignoring the other three I laid out. And maybe there's even more
options for this.
-Daniel

> - Clean up devres from device_del (or platform_device_unregister) even
>   when no driver is bound. This seems like the simplest solution, but
>   also the one with the widest impact, and what this patch implements.
>   We might want to include more of the cleanup than just
>   devres_release_all, but this is all I need to get my use case going.
>
> - Create a devres group and release that when we unbind. The code in
>   virtual drivers gets a bit ugly, since every error case has a
>   different cleanup code until we've chained everything
>   (platform_device, devres group and then drm_device) together and a
>   devres_release_group takes care of everything. Doable, but a bit
>   confusing when I typed it out.
>
> - Convert the virtual drivers to real (in the device model sense)
>   drivers. Feels like too much boilerplate for not much gain. And
>   especially with the mock objects minimal mocking is kinda the goal,
>   to limit the amount of accidentally pulled in code into our unit
>   tests as much as possible.
>
> Either way I think time to discuss this a bit and figure out what's
> the recommended approach here.

>
> Signed-off-by: Daniel Vetter <daniel.vetter@intel.com>
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: "Rafael J. Wysocki" <rafael@kernel.org>
> ---
>  drivers/base/dd.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/base/dd.c b/drivers/base/dd.c
> index b25bcab2a26b..1bcfb0ff5f44 100644
> --- a/drivers/base/dd.c
> +++ b/drivers/base/dd.c
> @@ -1155,6 +1155,8 @@ static void __device_release_driver(struct device *dev, struct device *parent)
>                                                      dev);
>
>                 kobject_uevent(&dev->kobj, KOBJ_UNBIND);
> +       } else {
> +               devres_release_all(dev);
>         }
>  }
>
> --
> 2.25.1
>


-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
