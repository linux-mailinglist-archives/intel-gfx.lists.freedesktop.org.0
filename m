Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 497EE1BBEBC
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 15:15:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DF6E6E3D6;
	Tue, 28 Apr 2020 13:15:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6F2E6E3AE
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 13:15:16 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id y24so2813717wma.4
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 06:15:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=qu+YLjAYyKKO4RRqfcjXeHbvdOpcS07kI3bbbobblu0=;
 b=cmKTgIKBshIycEbuPaCVOHOFBZ94kRfz8dP6g15sIKfUBWwomX6SWqYh5CerbiZ9Ge
 t81AsRrouzkR9g6W/gu9D6Lty4SE5ygE/r9Xy78yRMF65mUZEVl7U7wIYpNztPP1AJ0D
 u1wovDXMPvvFpPBaCnXIsiUw1iO30Id+EoWAg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=qu+YLjAYyKKO4RRqfcjXeHbvdOpcS07kI3bbbobblu0=;
 b=C5Tr5eupBd5/0bHxqBK07CMzFq9YyvkKDUuOwjdUtmxG350gzTELusOozcYMQ3urLo
 ytxNaaIt/F9lG5QH46iZPoQ1u/zjb8M92CO0AEPzcofei3Q95nM+d34fy9a6EUhUEcdU
 nxzQV0Sgw0YU3GEebOANg8BlsGpcZAHdx8Dg2T9idWL+t7JVJegpAUV9QhA00AGKYcX1
 LCe/xYuNA+sNj5xZM2Dlazi6KEGGbrO4iSXRRoRxRKAKXPx2qSeu0QSahIpbYdIvE5E/
 gnCqEMUr4Sj1PCdlT0isZNESrKIwpYpErYUprJmXNwfVTI+VlIPJHdwOHgRLaZc/NxJ/
 XIFw==
X-Gm-Message-State: AGi0PuZc2EqRDCL3nxZVD0UNWfdg5FbFPKwd4/oYrVUF9lcjFadPQNZc
 C/0LtIgmejepZ3mC/qPlhO37QLMWvyw=
X-Google-Smtp-Source: APiQypJZsnbgp2WMXkjGVelC7UI5vc0/WfYROoOvvy/HClKK8Wjq9YU0/HU45MiRGegbLL7YYCf2tw==
X-Received: by 2002:a1c:4956:: with SMTP id w83mr4406440wma.43.1588079715236; 
 Tue, 28 Apr 2020 06:15:15 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 62sm16297221wro.65.2020.04.28.06.15.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Apr 2020 06:15:14 -0700 (PDT)
Date: Tue, 28 Apr 2020 15:15:12 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <20200428131512.GI3456981@phenom.ffwll.local>
References: <20200403135828.2542770-1-daniel.vetter@ffwll.ch>
 <20200403135828.2542770-2-daniel.vetter@ffwll.ch>
 <CAKMK7uEEi8NMCopSd+7LqmhaqW0U4ZMif7YLgYQZ58fD7jRfzA@mail.gmail.com>
 <20200406133835.GA24355@kroah.com>
 <CAKMK7uG25kTY9iSyz7A-rxD+wMc4Y0NzuQ288Q51KR-sG0KNzQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKMK7uG25kTY9iSyz7A-rxD+wMc4Y0NzuQ288Q51KR-sG0KNzQ@mail.gmail.com>
X-Operating-System: Linux phenom 5.3.0-3-amd64 
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

On Mon, Apr 06, 2020 at 03:55:28PM +0200, Daniel Vetter wrote:
> On Mon, Apr 6, 2020 at 3:38 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Mon, Apr 06, 2020 at 02:32:51PM +0200, Daniel Vetter wrote:
> > > On Fri, Apr 3, 2020 at 3:58 PM Daniel Vetter <daniel.vetter@ffwll.ch> wrote:
> > > >
> > > > In drm we've added nice drm_device (the main gpu driver thing, which
> > > > also represents the userspace interfaces and has everything else
> > > > dangling off it) init functions using devres, devm_drm_dev_init and
> > > > soon devm_drm_dev_alloc (this patch series adds that).
> > > >
> > > > A slight trouble is that drm_device itself holds a reference on the
> > > > struct device it's sitting on top (for sysfs links and dmesg debug and
> > > > lots of other things), so there's a reference loop. For real drivers
> > > > this is broken at remove/unplug time, where all devres resources are
> > > > released device_release_driver(), before the final device reference is
> > > > dropped. So far so good.
> > > >
> > > > There's 2 exceptions:
> > > > - drm/vkms|vgem: Virtual drivers for which we create a fake/virtual
> > > >   platform device to make them look more like normal devices to
> > > >   userspace. These aren't drivers in the driver model sense, we simple
> > > >   create a platform_device and register it.
> > > >
> > > > - drm/i915/selftests, where we create minimal mock devices, and again
> > > >   the selftests aren't proper drivers in the driver model sense.
> > > >
> > > > For these two cases the reference loop isn't broken, because devres is
> > > > only cleaned up when the last device reference is dropped. But that's
> > > > not happening, because the drm_device holds that last struct device
> > > > reference.
> > > >
> > > > Thus far this wasn't a problem since the above cases simply
> > > > hand-rolled their cleanup code. But I want to convert all drivers over
> > > > to the devm_ versions, hence it would be really nice if these
> > > > virtual/fake/mock uses-cases could also be managed with devres
> > > > cleanup.
> > > >
> > > > I see three possible approaches:
> > >
> > > Restarting this at the top level, because the discussion thus far just
> > > ended in a long "you're doing it wrong", despite that I think we're
> > > doing what v4l is doing (plus/minus that we can't do an exact matching
> > > handling in drm because our uapi has a lot more warts, which we can't
> > > change because no breaking userspace).
> > >
> > > So which one of the three below is the right approach?
> > >
> > > Aside, looking at the v4l solution I think there's also a confusion
> > > about struct device representing a char device (which v4l directly
> > > uses as its userspace interface refcounted thing, and which drm does
> > > _not_ directly). And a struct device embedded into something like
> > > platform_device or a virtual device, where a driver can bind to. My
> > > question here is about the former, I don't care how cdev struct device
> > > are cleaned up one bit. Now if other subsystems relies on the devres
> > > cleanup behaviour we currently have because of such cdev usage, then
> > > yeah first approach doesn't work (and I have a big surprised that use
> > > case, but hey would actually learn something).
> > >
> > > End of aside, since again I want to figure out which of the tree
> > > approaches it the right one. Not about how wrong one of them is,
> > > ignoring the other three I laid out. And maybe there's even more
> > > options for this.
> >
> > Sorry, been swamped with other things, give me a few days to get back to
> > this, I need to dig into how you all are dealing with the virtual
> > drivers.
> 
> Sure, no problem.
> 
> > Doing this in the middle of the merge window is a bit rough :)
> 
> Ah I always forget ... we freeze drm at -rc6, so merge window is
> actually my most relaxed time since everyone is busy and no one has
> time to report drm bugs :-)

Hi Greg,

Since -rc3 is out, had any to ponder this? Otherwise we'll be right back
in the next merge window ...

Cheers, Daniel
-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
