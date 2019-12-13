Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F78E11EB31
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 20:48:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E2AB6EC42;
	Fri, 13 Dec 2019 19:48:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FAD06EC42
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 19:48:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19572424-1500050 for multiple; Fri, 13 Dec 2019 19:47:54 +0000
MIME-Version: 1.0
To: Andi Shyti <andi@etezian.org>,
 Michal Wajdeczko <michal.wajdeczko@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191213194129.GC5108@jack.zhora.eu>
References: <20191213183736.31992-1-andi@etezian.org>
 <20191213183736.31992-3-andi@etezian.org>
 <op.0cq3bxq3xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
 <20191213194129.GC5108@jack.zhora.eu>
Message-ID: <157626647152.7535.6702950422683821773@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 13 Dec 2019 19:47:51 +0000
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/gt: Move power management
 debug files into a gt aware debugfs
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Andi Shyti (2019-12-13 19:41:29)
> Hi Michal,
> 
> > > @@ -75,6 +75,8 @@ i915-$(CONFIG_PERF_EVENTS) += i915_pmu.o
> > >  # "Graphics Technology" (aka we talk to the gpu)
> > >  obj-y += gt/
> > >  gt-y += \
> > > +   gt/debugfs_gt.o \
> > > +   gt/debugfs_pm.o \
> > 
> > hm, maybe this should be:
> >       gt/intel_gt_debugfs.o
> > and
> >       gt/intel_pm_debugfs.o
> 
> this was actually the name I wanted to give it originally, but
> meantime I also wanted to have the debugfs files alphabetically
> sorted in sequence, like the selftest_* files (I can imagine in
> the future having more debugfs files).
> 
> Maybe intel_debugfs_gt.c/intel_debugfs_pm.c would be a good
> compromise?

I don't mind, your argument that we will partition these files off
under gt-${CONFIG_DEBUGFS} += gt/debugfs_*.o was convincing.

> 
> > > @@ -0,0 +1,22 @@
> > > +/* SPDX-License-Identifier: MIT */
> > 
> > in .c SPDX shall start with //
> 
> I agree this is the "official" way of doing it, and I also read
> some discussions about it in this mailing list. But however I do
> it, I know someone won't like it. I checked the style in this
> directory and tried to keep it conform to the "gt way".

Shrug. I don't like the coding style violation, so leave it up to
someone who insists to do treewide changes.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
