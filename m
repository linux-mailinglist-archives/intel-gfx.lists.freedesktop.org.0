Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAF919F71D
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 15:38:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03CDD6E3BC;
	Mon,  6 Apr 2020 13:38:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9C4D6E095;
 Mon,  6 Apr 2020 13:38:39 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D4CA23356;
 Mon,  6 Apr 2020 13:38:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586180319;
 bh=CPlJ6V3ATvMiy7si9/NG3B9JHpu8lzufixuIa/M7hdQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WRrwp38bcuvOSfVYPnOEwOVQ5zQcH/oQPW2fE+wwFQ5w/egh7ALFdzOlAb4EPg2Nk
 gDbaccrnYXpo2VNc2yb5EoiNroMos+Z+lLsuNcjgf790J+dfyboUYHqhkE3bgWyshY
 hqgt+LYFrQ9zIRoWMBfw3XzH0q3Qx1oUvlp4odss=
Date: Mon, 6 Apr 2020 15:38:35 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Daniel Vetter <daniel.vetter@ffwll.ch>
Message-ID: <20200406133835.GA24355@kroah.com>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
 <20200403135828.2542770-2-daniel.vetter@ffwll.ch>
 <CAKMK7uEEi8NMCopSd+7LqmhaqW0U4ZMif7YLgYQZ58fD7jRfzA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uEEi8NMCopSd+7LqmhaqW0U4ZMif7YLgYQZ58fD7jRfzA@mail.gmail.com>
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
 DRI Development <dri-devel@lists.freedesktop.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 06, 2020 at 02:32:51PM +0200, Daniel Vetter wrote:
> On Fri, Apr 3, 2020 at 3:58 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> >
> > In drm we've added nice drm_device (the main gpu driver thing, which
> > also represents the userspace interfaces and has everything else
> > dangling off it) init functions using devres, devm_drm_dev_init and
> > soon devm_drm_dev_alloc (this patch series adds that).
> >
> > A slight trouble is that drm_device itself holds a reference on the
> > struct device it's sitting on top (for sysfs links and dmesg debug and
> > lots of other things), so there's a reference loop. For real drivers
> > this is broken at remove/unplug time, where all devres resources are
> > released device_release_driver(), before the final device reference is
> > dropped. So far so good.
> >
> > There's 2 exceptions:
> > - drm/vkms|vgem: Virtual drivers for which we create a fake/virtual
> >   platform device to make them look more like normal devices to
> >   userspace. These aren't drivers in the driver model sense, we simple
> >   create a platform_device and register it.
> >
> > - drm/i915/selftests, where we create minimal mock devices, and again
> >   the selftests aren't proper drivers in the driver model sense.
> >
> > For these two cases the reference loop isn't broken, because devres is
> > only cleaned up when the last device reference is dropped. But that's
> > not happening, because the drm_device holds that last struct device
> > reference.
> >
> > Thus far this wasn't a problem since the above cases simply
> > hand-rolled their cleanup code. But I want to convert all drivers over
> > to the devm_ versions, hence it would be really nice if these
> > virtual/fake/mock uses-cases could also be managed with devres
> > cleanup.
> >
> > I see three possible approaches:
> 
> Restarting this at the top level, because the discussion thus far just
> ended in a long "you're doing it wrong", despite that I think we're
> doing what v4l is doing (plus/minus that we can't do an exact matching
> handling in drm because our uapi has a lot more warts, which we can't
> change because no breaking userspace).
> 
> So which one of the three below is the right approach?
> 
> Aside, looking at the v4l solution I think there's also a confusion
> about struct device representing a char device (which v4l directly
> uses as its userspace interface refcounted thing, and which drm does
> _not_ directly). And a struct device embedded into something like
> platform_device or a virtual device, where a driver can bind to. My
> question here is about the former, I don't care how cdev struct device
> are cleaned up one bit. Now if other subsystems relies on the devres
> cleanup behaviour we currently have because of such cdev usage, then
> yeah first approach doesn't work (and I have a big surprised that use
> case, but hey would actually learn something).
> 
> End of aside, since again I want to figure out which of the tree
> approaches it the right one. Not about how wrong one of them is,
> ignoring the other three I laid out. And maybe there's even more
> options for this.

Sorry, been swamped with other things, give me a few days to get back to
this, I need to dig into how you all are dealing with the virtual
drivers.

Doing this in the middle of the merge window is a bit rough :)

thanks,

greg k-h
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
