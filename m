Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 548C816EA5F
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 16:46:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70CB26E8E2;
	Tue, 25 Feb 2020 15:46:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA3FA6E8E2;
 Tue, 25 Feb 2020 15:46:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20346956-1500050 for multiple; Tue, 25 Feb 2020 15:45:52 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <2cfd56bbd82abeba251ad38d7dd9830f8e503e68.camel@linux.intel.com>
References: <20200221111701.30006-1-janusz.krzysztofik@linux.intel.com>
 <20200221111701.30006-3-janusz.krzysztofik@linux.intel.com>
 <158229528380.6499.10205591790332300594@skylake-alporthouse-com>
 <2cfd56bbd82abeba251ad38d7dd9830f8e503e68.camel@linux.intel.com>
Message-ID: <158264555069.3062.12378145563887738523@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 25 Feb 2020 15:45:50 +0000
Subject: Re: [Intel-gfx] [RFC PATCH i-g-t v2 2/2] tests/gem_userptr_blits:
 Exercise mmap-offset mapping to userptr
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Janusz Krzysztofik (2020-02-25 15:41:28)
> Hi Chris,
> 
> On Fri, 2020-02-21 at 14:28 +0000, Chris Wilson wrote:
> > Quoting Janusz Krzysztofik (2020-02-21 11:17:01)
> > > +       /* create userptr object */
> > > +       igt_assert_eq(posix_memalign(&ptr, PAGE_SIZE, PAGE_SIZE),
> > > 0);
> > > +       gem_userptr(fd, ptr, PAGE_SIZE, 0, userptr_flags, &handle);
> > > +
> > > +       /* set up mmap-offset mapping on top of the object, skip if
> > > refused */
> > > +       map = __gem_mmap_offset(fd, handle, 0, PAGE_SIZE,
> > > +                               PROT_READ | PROT_WRITE, t->type);
> > > +       igt_skip_on_f(!map && errno == -ENODEV,
> 
> errno should be compared against a positive value, sorry for that bug.
> Thanks for fixing it and merging.

I was lazier than that. I feared we had scrubbed errno.
But the fixes were an improvement so had no reason to delay.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
