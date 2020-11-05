Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 936D12A827A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Nov 2020 16:45:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18EE86EDA8;
	Thu,  5 Nov 2020 15:45:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2530A6EDA8
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Nov 2020 15:45:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22904447-1500050 for multiple; Thu, 05 Nov 2020 15:45:23 +0000
MIME-Version: 1.0
In-Reply-To: <CAM0jSHPLnY4zoAPLav0W5-g18=dJi8XcUud6xww2O6-kE+BOfQ@mail.gmail.com>
References: <20201105101134.19716-1-chris@chris-wilson.co.uk>
 <20201105101134.19716-2-chris@chris-wilson.co.uk>
 <CAM0jSHOKQX3GU3UNf=LydCPYCXaL4BXecTC5M_7qSwj3hBVmEw@mail.gmail.com>
 <CAM0jSHPLnY4zoAPLav0W5-g18=dJi8XcUud6xww2O6-kE+BOfQ@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 05 Nov 2020 15:45:20 +0000
Message-ID: <160459112079.19889.15043622583499008479@build.alporthouse.com>
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

Quoting Matthew Auld (2020-11-05 15:40:20)
> On Thu, 5 Nov 2020 at 15:39, Matthew Auld
> <matthew.william.auld@gmail.com> wrote:
> >
> > On Thu, 5 Nov 2020 at 10:11, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> > >
> > > More the specialised interation with the physical GEM object from the
> >
> > Move                           interaction
> >
> > > pread/pwrite ioctl handler into the phys backend.
> > >
> > > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> 
> Does  this need  Fixes btw?

I was thinking so long as we land before dg1 it would be fine. If we did
a fake lmem with no aperture, we would have problems already. But there's
no user exposure, so no pressing need for cc:stable.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
