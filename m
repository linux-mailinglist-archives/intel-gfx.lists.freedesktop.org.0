Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5433414652D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2020 10:55:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F4626FB94;
	Thu, 23 Jan 2020 09:55:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 65D006FB94
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2020 09:55:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19979574-1500050 for multiple; Thu, 23 Jan 2020 09:55:10 +0000
MIME-Version: 1.0
To: Matthew Auld <matthew.william.auld@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAM0jSHPGiEgUSJK9NuAML6yZBE5sHph=JAgxCkv5g-Qb6tn48Q@mail.gmail.com>
References: <20200122201822.889250-1-chris@chris-wilson.co.uk>
 <20200123085124.1256919-1-chris@chris-wilson.co.uk>
 <CAM0jSHPGiEgUSJK9NuAML6yZBE5sHph=JAgxCkv5g-Qb6tn48Q@mail.gmail.com>
Message-ID: <157977330762.18920.10789924976282438046@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 23 Jan 2020 09:55:07 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Poison GTT scratch pages
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

Quoting Matthew Auld (2020-01-23 09:38:02)
> On Thu, 23 Jan 2020 at 08:51, Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Using a clear page for scratch means that we have relatively benign
> > errors in case it is accidentally used, but that can be rather too
> > benign for debugging. If we poison the scratch, ideally it quickly
> > results in an obvious error.
> >
> > Suggested-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> 
> [snip]
> 
> >
> > +static void poison_scratch_page(struct page *page, unsigned long size)
> > +{
> > +       if (!IS_ENABLED(CONFIG_DRM_I915_DEBUG_GEM))
> > +               return;
> > +
> > +       kunmap_atomic(memset(kmap_atomic(page), POISON_FREE, size));
> 
> kmap works for !order-zero?

Definitely works if not highmem :)
But needs a page by page approach just in case, fine.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
