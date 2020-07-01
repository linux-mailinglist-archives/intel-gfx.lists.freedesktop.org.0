Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 741CC210BCC
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 15:09:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5F136E8B8;
	Wed,  1 Jul 2020 13:09:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56FE56E8B8;
 Wed,  1 Jul 2020 13:09:36 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21675420-1500050 for multiple; Wed, 01 Jul 2020 14:09:31 +0100
MIME-Version: 1.0
In-Reply-To: <14063C7AD467DE4B82DEDB5C278E8663011E8636D8@fmsmsx107.amr.corp.intel.com>
References: <20200630212515.1132791-1-chris@chris-wilson.co.uk>
 <14063C7AD467DE4B82DEDB5C278E8663011E8636D8@fmsmsx107.amr.corp.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: "Ruhl, Michael J" <michael.j.ruhl@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 01 Jul 2020 14:09:31 +0100
Message-ID: <159360897195.17178.15908745323615959086@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_close_race: Mix in
 a contexts and a small delay to closure
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Ruhl, Michael J (2020-07-01 13:39:22)
> >               do {
> >-                      if (drmIoctl(crashme.fd, DRM_IOCTL_GEM_OPEN,
> >&name))
> >+                      uint32_t ctx = 0;
> >+
> >+                      if (drmIoctl(crashme.fd,
> >+                                   DRM_IOCTL_GEM_OPEN,
> >+                                   &name))
> >                               break;
> >
> >-                      selfcopy(crashme.fd, name.handle, 100);
> >-                      drmIoctl(crashme.fd, DRM_IOCTL_GEM_CLOSE,
> >&name.handle);
> >+                      if (flags & CONTEXTS)
> >+                              __gem_context_create(crashme.fd, &ctx);
> >+
> >+                      selfcopy(crashme.fd, ctx, name.handle, 1);
> >+
> >+                      ctx = history[n % N_HISTORY];
> 
> Ahh this 'ctx' isn't really a context, it an unclosed handle.

Welcome to my world of laziness.
 
> So the difference is that you keep around N_HISTORY open handles and
> the associated contexts (if requested) until the test is done.
> 
> And 256 is enough history?  Any concerns with faster CPU/GPUs?

It's a balancing between trying to keep the original test where we are
closing handles as go along and keeping some around. On the slow atom
with debug enabled, it would complete a few hundred cycles in the 100ms
loop. So I picked 256 so that it would start evicting some old handles
on some passes.

For the purpose of hitting the bookmark, we just need to hit one case
with more than one element. And I manually verified that the test case
was seeing contention at that point, i.e. we released the spinlock so
that another close_object was seeing the other bookmarks in its
obj->lut_list walk. So I'm confident this will hit the path in question
in CI, I'm not happy that it can't prove it did :|

[At the extreme, we could look at the fairness of close_object!]

> Looks like a good way to stress things.
> 
> Reviewed-by: Michael J. Ruhl <michael.j.ruhl@intel.com>

Ta,
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
