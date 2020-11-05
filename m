Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1C062A835A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 17:19:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0177B6EDC2;
	Thu,  5 Nov 2020 16:19:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 983096EDC2
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 16:19:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22904933-1500050 for multiple; Thu, 05 Nov 2020 16:19:14 +0000
MIME-Version: 1.0
In-Reply-To: <CAM0jSHPOLeNPfuibTd52Sn=W++QYBCPAix543Dtj6Su7LB_Qxg@mail.gmail.com>
References: <20201105101134.19716-1-chris@chris-wilson.co.uk>
 <20201105101134.19716-2-chris@chris-wilson.co.uk>
 <CAM0jSHOKQX3GU3UNf=LydCPYCXaL4BXecTC5M_7qSwj3hBVmEw@mail.gmail.com>
 <CAM0jSHPLnY4zoAPLav0W5-g18=dJi8XcUud6xww2O6-kE+BOfQ@mail.gmail.com>
 <160459112079.19889.15043622583499008479@build.alporthouse.com>
 <CAM0jSHPOLeNPfuibTd52Sn=W++QYBCPAix543Dtj6Su7LB_Qxg@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 05 Nov 2020 16:19:12 +0000
Message-ID: <160459315214.18394.10229531911101267237@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 02/22] drm/i915/gem: Pull phys pread/pwrite
 implementations to the backend
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Matthew Auld (2020-11-05 16:02:38)
> On Thu, 5 Nov 2020 at 15:45, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Quoting Matthew Auld (2020-11-05 15:40:20)
> > > On Thu, 5 Nov 2020 at 15:39, Matthew Auld
> > > <matthew.william.auld@gmail.com> wrote:
> > > >
> > > > On Thu, 5 Nov 2020 at 10:11, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > > > >
> > > > > More the specialised interation with the physical GEM object from the
> > > >
> > > > Move                           interaction
> > > >
> > > > > pread/pwrite ioctl handler into the phys backend.
> > > > >
> > > > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > > > Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> > >
> > > Does  this need  Fixes btw?
> >
> > I was thinking so long as we land before dg1 it would be fine. If we did
> > a fake lmem with no aperture, we would have problems already. But there's
> > no user exposure, so no pressing need for cc:stable.
> 
> I was thinking we could maybe be evil and achieve the same thing with
> existing userspace, just requires the use of gtt_mmap to steal all of
> the mappable aperture at the opportune time, such that
> insert_mappable_node() still returns -ENOSPC? Or maybe I am
> misunderstanding something.

To steal all the aperture... Harder than you might think...

Everything with full-ppgtt is pretty much impossible to arbitrarily pin
the aperture. Many, many, many contexts would do. But we have to be sure
not to leave any holes. The contexts can be anywhere, so we are
looking at about 60k contexts before we start exhausting the GGTT, and
there's no guarantee we didn't leave a hole large enough for the 4K GGTT
slot.

On global/aliasing, we can pin framebuffers into the aperture, but only
two for each CRTC. Again, we have to leave no holes. That seems difficult
with so few objects we can pin.

The other angle is to try and prolong all the transient pins, but they
are meant to be tiny ones... Wait. We can arbitrarily delay
copy_from_user by using userfaultfd, so we would only need 64k threads
or so to force ourselves into ENOSPC. That seems doable...
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
