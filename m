Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D37A51A2A83
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 22:41:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFEB16EAE6;
	Wed,  8 Apr 2020 20:41:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 011976EAE6
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 20:40:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20843974-1500050 for multiple; Wed, 08 Apr 2020 21:40:56 +0100
MIME-Version: 1.0
In-Reply-To: <158637508347.23732.17831144977931918019@build.alporthouse.com>
References: <20200408170456.399604-1-matthew.auld@intel.com>
 <158637508347.23732.17831144977931918019@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <158637845565.23732.11928074596314010558@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 08 Apr 2020 21:40:55 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/evict: watch out for unevictable
 nodes
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-04-08 20:44:43)
> Quoting Matthew Auld (2020-04-08 18:04:56)
> > In an address space there can be sprinkling of I915_COLOR_UNEVICTABLE
> > nodes, which lack a parent vma. For platforms with cache coloring we
> > might be very unlucky and abut with such a node thinking we can simply
> > unbind the vma.
> 
> I did notice this myself recently (from observation); it's highly
> unlikely to ever matter.
> 
> > Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_gem_evict.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_gem_evict.c b/drivers/gpu/drm/i915/i915_gem_evict.c
> > index 4518b9b35c3d..9e462c6a4c6a 100644
> > --- a/drivers/gpu/drm/i915/i915_gem_evict.c
> > +++ b/drivers/gpu/drm/i915/i915_gem_evict.c
> > @@ -227,6 +227,10 @@ i915_gem_evict_something(struct i915_address_space *vm,
> >         }
> >  
> >         while (ret == 0 && (node = drm_mm_scan_color_evict(&scan))) {
> > +               /* If we find any non-objects (!vma), we cannot evict them */
> > +               if (node->color == I915_COLOR_UNEVICTABLE)
> > +                       return -ENOSPC;
> 
> Returning error immediately looks ok, I was worried as around here we
> usually have lists to clean up, but this is after those. However, I
> would suggest that setting ret = -ENOSPC would be more consistent with
> the flow.

Actually, while this prevents an explosion [good], it now returns an
unexpected error [bad]. No explosion is the lesser evil.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
