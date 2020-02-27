Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE15C171586
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2020 11:59:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D9F06EC82;
	Thu, 27 Feb 2020 10:59:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AC1A6EC82
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Feb 2020 10:59:15 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20368588-1500050 for multiple; Thu, 27 Feb 2020 10:59:00 +0000
MIME-Version: 1.0
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <87h7zc8fr1.fsf@gaia.fi.intel.com>
References: <20200226185657.26445-1-daniele.ceraolospurio@intel.com>
 <87h7zc8fr1.fsf@gaia.fi.intel.com>
Message-ID: <158280113823.8627.8306065573224721708@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 27 Feb 2020 10:58:58 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ggtt: do not set bits 1-11 in
 gen12 ptes
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
Cc: "Sodhi,
 Vunny" <vunny.sodhi@intel.com>, Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Mika Kuoppala (2020-02-27 10:51:46)
> Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> writes:
> >  static void gen8_set_pte(void __iomem *addr, gen8_pte_t pte)
> >  {
> >       writeq(pte, addr);
> > @@ -172,7 +179,7 @@ static void gen8_ggtt_insert_page(struct i915_address_space *vm,
> >       gen8_pte_t __iomem *pte =
> >               (gen8_pte_t __iomem *)ggtt->gsm + offset / I915_GTT_PAGE_SIZE;
> >  
> > -     gen8_set_pte(pte, gen8_pte_encode(addr, level, 0));
> > +     gen8_set_pte(pte, gen8_ggtt_pte_encode(addr, level, 0));
> 
> Make me ponder why we don't use the vm->pte_encode all the way
> as we have it :P

Don't use vfuncs if the target routine is known.

Apparently it's even cheaper to do a bsearch on a page of target
routines than it is to use retpolines.

Anyway, the era of vfuncs is over.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
