Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD32D1EFC76
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jun 2020 17:27:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 092836E930;
	Fri,  5 Jun 2020 15:27:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A16F6E930
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jun 2020 15:27:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21408626-1500050 for multiple; Fri, 05 Jun 2020 16:27:09 +0100
MIME-Version: 1.0
In-Reply-To: <CAM0jSHOEBC9AWEzx2rgRZ3u221PTB4U-p36G3+XSeCwZzXXfpA@mail.gmail.com>
References: <20200605105646.24300-1-chris@chris-wilson.co.uk>
 <CAM0jSHOEBC9AWEzx2rgRZ3u221PTB4U-p36G3+XSeCwZzXXfpA@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.william.auld@gmail.com>
Message-ID: <159137082695.22562.10637211751464660148@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 05 Jun 2020 16:27:06 +0100
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Discard a misplaced GGTT vma
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

Quoting Matthew Auld (2020-06-05 16:00:49)
> On Fri, 5 Jun 2020 at 11:56, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Across the many users of the GGTT vma (internal objects, mmapings,
> > display etc), we may end up with conflicting requirements for the
> > placement. Currently, we try to resolve the conflict by unbinding the
> > vma and rebinding it to match the new constraints; over time we will end
> > up with a GGTT that matches the most strict constraints over all
> > concurrent users. However, this causes a problem if the vma is currently
> > in use as we must wait until it is idle before moving it. But there is
> > no restriction on the number of views we may use (apart from the limited
> > size of the GGTT itself), and so if the active vma does not meet our
> > requirements, try and build a new one!
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> Heebie-jeebies aside,
> Reviewed-by: Matthew Auld <matthew.auld@intel.com>

It's definitely "interesting". This is certainly one case where it would
be nice to decouple the vma and let it expire as soon as it becomes
inactive. As it stands, it has to wait around until it is evicted so
adding to the fragmentation pressure.

I'm sure it's not the only stall compositors see [changing to uncached
and clflushing is the major one]. The trick I used in the ddx was to
fault in a ggtt mmap, so that the framebuffer stood a chance of being in
the aperture prior to use, along with making it uncached before use. But
long gone are the days where userspace drivers control this.

But it does prevent at least one instance of an arbitrary lockup in igt,
so it probably helps somewhere.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
