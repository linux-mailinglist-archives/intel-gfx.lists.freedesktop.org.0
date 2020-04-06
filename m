Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A133519F753
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 15:55:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94B386E3CB;
	Mon,  6 Apr 2020 13:55:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com
 [IPv6:2607:f8b0:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1747C6E3CB
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Apr 2020 13:55:40 +0000 (UTC)
Received: by mail-ot1-x344.google.com with SMTP id v2so15371980oto.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 06 Apr 2020 06:55:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vEoDxDauFm8UXU1PxP6cMoGFWELp90yUWSMLW0dCfYA=;
 b=Y0wE+5csJbmtFodeJ8ZCgZTMIWVtBHfUqk/Rku64FMUqPpgGHa0gHI2GybEhfGqnrW
 Er0FTBby51bEq29zpN53AxRm4QTqm1sqKwaQ2ydcHhgAGXIw6rurXv14fv4ncSxFmhWC
 7CSavoUeaF5vzEqDW1u3kST7jOdKgApWTpILk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vEoDxDauFm8UXU1PxP6cMoGFWELp90yUWSMLW0dCfYA=;
 b=CPs9U5B1IaV/ADGepF0SFb3Yd14nO52anBIU1bfuJoHUmVjBPD7HKE5TcyFi7x4sNZ
 yYwMjnctoo1lLCjnnoKWjvQtTFUH7XS0OI4KV+1EXxNFcpX0qx8byYNgKYv1zK1qSjKZ
 El1dn1f+PhwQAtcxinshYnI4u2t2fHWPJBsi4S9lI2lEpFQMKrgzxyS1B0xmPN4/Up73
 err0Ygwe1jTht907JL5M2eRJdcpGtGB3JzuvmHzyEDlcX/n4bS17aR76TaLJiFE8j531
 n7TNd94DK+4viCD2kWab3OOQoa5Sj6jK5olP1YYCkGQGuUH6XlnU1Riola+COmm/Mw6n
 ygRA==
X-Gm-Message-State: AGi0PuZpecAbubLVeMAvvMdVdyIYjwjIicy4Fb6P9AqeqLFFFAtSRR/l
 e4Y0Mt2oilU9zkUHxjr1WWp2rLoBvq6KNdhkwar5WJuP
X-Google-Smtp-Source: APiQypKgOqUPklz4kLLsmy77+eELn9F6PY7qLhZwNvbTUUJtnUviuoPqwJe2HdtYGzxmpw3ieaNf02ozdr2pBe6cfpE=
X-Received: by 2002:a05:6830:15d4:: with SMTP id
 j20mr17368719otr.303.1586181339270; 
 Mon, 06 Apr 2020 06:55:39 -0700 (PDT)
MIME-Version: 1.0
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
 <20200403135828.2542770-2-daniel.vetter@ffwll.ch>
 <CAKMK7uEEi8NMCopSd+7LqmhaqW0U4ZMif7YLgYQZ58fD7jRfzA@mail.gmail.com>
 <20200406133835.GA24355@kroah.com>
In-Reply-To: <20200406133835.GA24355@kroah.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 6 Apr 2020 15:55:28 +0200
Message-ID: <CAKMK7uG25kTY9iSyz7A-rxD+wMc4Y0NzuQ288Q51KR-sG0KNzQ@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
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

On Mon, Apr 6, 2020 at 3:38 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Mon, Apr 06, 2020 at 02:32:51PM +0200, Daniel Vetter wrote:
> > On Fri, Apr 3, 2020 at 3:58 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > >
> > > In drm we've added nice drm_device (the main gpu driver thing, which
> > > also represents the userspace interfaces and has everything else
> > > dangling off it) init functions using devres, devm_drm_dev_init and
> > > soon devm_drm_dev_alloc (this patch series adds that).
> > >
> > > A slight trouble is that drm_device itself holds a reference on the
> > > struct device it's sitting on top (for sysfs links and dmesg debug and
> > > lots of other things), so there's a reference loop. For real drivers
> > > this is broken at remove/unplug time, where all devres resources are
> > > released device_release_driver(), before the final device reference is
> > > dropped. So far so good.
> > >
> > > There's 2 exceptions:
> > > - drm/vkms|vgem: Virtual drivers for which we create a fake/virtual
> > >   platform device to make them look more like normal devices to
> > >   userspace. These aren't drivers in the driver model sense, we simple
> > >   create a platform_device and register it.
> > >
> > > - drm/i915/selftests, where we create minimal mock devices, and again
> > >   the selftests aren't proper drivers in the driver model sense.
> > >
> > > For these two cases the reference loop isn't broken, because devres is
> > > only cleaned up when the last device reference is dropped. But that's
> > > not happening, because the drm_device holds that last struct device
> > > reference.
> > >
> > > Thus far this wasn't a problem since the above cases simply
> > > hand-rolled their cleanup code. But I want to convert all drivers over
> > > to the devm_ versions, hence it would be really nice if these
> > > virtual/fake/mock uses-cases could also be managed with devres
> > > cleanup.
> > >
> > > I see three possible approaches:
> >
> > Restarting this at the top level, because the discussion thus far just
> > ended in a long "you're doing it wrong", despite that I think we're
> > doing what v4l is doing (plus/minus that we can't do an exact matching
> > handling in drm because our uapi has a lot more warts, which we can't
> > change because no breaking userspace).
> >
> > So which one of the three below is the right approach?
> >
> > Aside, looking at the v4l solution I think there's also a confusion
> > about struct device representing a char device (which v4l directly
> > uses as its userspace interface refcounted thing, and which drm does
> > _not_ directly). And a struct device embedded into something like
> > platform_device or a virtual device, where a driver can bind to. My
> > question here is about the former, I don't care how cdev struct device
> > are cleaned up one bit. Now if other subsystems relies on the devres
> > cleanup behaviour we currently have because of such cdev usage, then
> > yeah first approach doesn't work (and I have a big surprised that use
> > case, but hey would actually learn something).
> >
> > End of aside, since again I want to figure out which of the tree
> > approaches it the right one. Not about how wrong one of them is,
> > ignoring the other three I laid out. And maybe there's even more
> > options for this.
>
> Sorry, been swamped with other things, give me a few days to get back to
> this, I need to dig into how you all are dealing with the virtual
> drivers.

Sure, no problem.

> Doing this in the middle of the merge window is a bit rough :)

Ah I always forget ... we freeze drm at -rc6, so merge window is
actually my most relaxed time since everyone is busy and no one has
time to report drm bugs :-)

Thanks, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
+41 (0) 79 365 57 48 - http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
