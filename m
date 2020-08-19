Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF4524A742
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 21:52:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C683A6E80B;
	Wed, 19 Aug 2020 19:52:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB4D86E80B
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 19:52:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22178290-1500050 for multiple; Wed, 19 Aug 2020 20:52:36 +0100
MIME-Version: 1.0
In-Reply-To: <20200819194723.GA7451@amd.ucw.cz>
References: <20200819103952.19083-1-chris@chris-wilson.co.uk>
 <20200819172331.GA4796@amd>
 <159785861047.667.10730572472834322633@build.alporthouse.com>
 <20200819193326.p62h2dj7jpzfkeyy@duo.ucw.cz>
 <159786604254.667.11923001796829417234@build.alporthouse.com>
 <20200819194723.GA7451@amd.ucw.cz>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Pavel Machek <pavel@ucw.cz>
Date: Wed, 19 Aug 2020 20:52:38 +0100
Message-ID: <159786675825.667.4286549190975401985@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gem: Replace reloc chain with
 terminator on error unwind
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Pavel Machek (2020-08-19 20:47:23)
> Hi!
> 
> > > Yep, my machines are low on memory.
> > > 
> > > But ... test did not work that well. I have dead X and blinking
> > > screen. Machine still works reasonably well over ssh, so I guess
> > > that's an improvement.
> > 
> > > [ 7744.718473] BUG: unable to handle page fault for address: f8c00000
> > > [ 7744.718484] #PF: supervisor write access in kernel mode
> > > [ 7744.718487] #PF: error_code(0x0002) - not-present page
> > > [ 7744.718491] *pdpt = 0000000031b0b001 *pde = 0000000000000000 
> > > [ 7744.718500] Oops: 0002 [#1] PREEMPT SMP PTI
> > > [ 7744.718506] CPU: 0 PID: 3004 Comm: Xorg Not tainted 5.9.0-rc1-next-20200819+ #134
> > > [ 7744.718509] Hardware name: LENOVO 17097HU/17097HU, BIOS 7BETD8WW (2.19 ) 03/31/2011
> > > [ 7744.718518] EIP: eb_relocate_vma+0xdbf/0xf20
> > 
> > To save me guessing, paste the above location into
> >       ./scripts/decode_stacktrace.sh ./vmlinux . ./drivers/gpu/drm/i915
> > 
> > The f8c00000 is something running off the end of a kmap, but I didn't
> > spot a path were we would ignore an error and keep on writing.
> > Nevertheless it must exist.
> 
> Like this?
> 
> $ ./scripts/decode_stacktrace.sh ./vmlinux . ./drivers/gpu/drm/i915
> f8c00000
> f8c00000
> eb_relocate_vma+0xdbf/0xf20
> eb_relocate_vma (i915_gem_execbuffer.c:?) 

Ok, that didn't work as well as I'm used to. Thanks,
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
