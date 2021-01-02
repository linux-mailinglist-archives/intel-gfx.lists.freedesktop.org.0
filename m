Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BCABD2E871C
	for <lists+intel-gfx@lfdr.de>; Sat,  2 Jan 2021 12:33:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9835B897E4;
	Sat,  2 Jan 2021 11:33:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EA3E897E4;
 Sat,  2 Jan 2021 11:33:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23483380-1500050 for multiple; Sat, 02 Jan 2021 11:32:29 +0000
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0LWLKs+0quG_OS6EPgg2uSAOM69SKTix47tEUmuZWRdw@mail.gmail.com>
References: <20201230153928.456260-1-arnd@kernel.org>
 <160934377188.21284.5702573697011773996@build.alporthouse.com>
 <CAK8P3a0LWLKs+0quG_OS6EPgg2uSAOM69SKTix47tEUmuZWRdw@mail.gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Arnd Bergmann <arnd@kernel.org>
Date: Sat, 02 Jan 2021 11:32:29 +0000
Message-ID: <160958714929.4402.13745234169318953002@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] i915: fix shift warning
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
Cc: dri-devel <dri-devel@lists.freedesktop.org>, Arnd Bergmann <arnd@arndb.de>,
 David Airlie <airlied@linux.ie>,
 Intel Graphics <intel-gfx@lists.freedesktop.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Arnd Bergmann (2021-01-02 11:23:20)
> On Wed, Dec 30, 2020 at 4:56 PM Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Quoting Arnd Bergmann (2020-12-30 15:39:14)
> > > From: Arnd Bergmann <arnd@arndb.de>
> > >
> > > Randconfig builds on 32-bit machines show lots of warnings for
> > > the i915 driver for incorrect bit masks like:
> >
> > mask is a u8.
> >
> > VCS0 is 2, I915_MAX_VCS 4
> >
> > (u8 & GENMASK(5, 2)) >> 2
> 
> Ah right, I misread the warning then.
> 
> > > drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:2584:9: error: shift count >= width of type [-Werror,-Wshift-count-overflow]
> > >         return hweight64(VDBOX_MASK(&i915->gt));
> > >                ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> > > include/asm-generic/bitops/const_hweight.h:29:49: note: expanded from macro 'hweight64'
> > >  #define hweight64(w) (__builtin_constant_p(w) ? __const_hweight64(w) : __arch_hweight64(w))
> >
> > So it's upset by hweight64() on the unsigned long?
> 
> I suspect what is going on is that clang once again warns because it performs
> more code checks before dead-code elimination than gcc does. The warning is
> for the __const_hweight64() case, which is not actually used here because the
> input is not a compile-time constant.
> 
> > So hweight_long?
> 
> That seems to work, I'll send a new version with that.
> 
> > Or use a cast, hweight8((intel_engine_mask_t)VDMASK())?
> >
> > static __always_inline int engine_count(intel_engine_mask_t mask)
> > {
> >         return sizeof(mask) == 1 ? hweight8(mask) :
> >                 sizeof(mask) == 2 ? hweight16(mask) :
> >                 sizeof(mask) == 4 ? hweight32(mask) :
> >                 hweight64(mask);
> > }
> 
> Fine with me as well. If you prefer that way, I'll let you handle that.

While we wait for a generic hweight(), lets use hweight_long() here.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
