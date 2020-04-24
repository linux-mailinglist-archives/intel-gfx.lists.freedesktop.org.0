Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C232E1B71DD
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2020 12:22:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31EE16E44E;
	Fri, 24 Apr 2020 10:22:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C457A6E44E
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2020 10:22:17 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21006192-1500050 for multiple; Fri, 24 Apr 2020 11:22:14 +0100
MIME-Version: 1.0
In-Reply-To: <20200424101617.GC460760@jack.zhora.eu>
References: <20200422190558.30509-1-chris@chris-wilson.co.uk>
 <20200424101617.GC460760@jack.zhora.eu>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>
Message-ID: <158772373399.27391.9734457345695952260@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 24 Apr 2020 11:22:13 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Only close vma we open
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Andi Shyti (2020-04-24 11:16:17)
> Hi Chris,
> 
> On Wed, Apr 22, 2020 at 08:05:58PM +0100, Chris Wilson wrote:
> > The history of i915_vma_close() is confusing, as is its use. As the
> > lifetime of the i915_vma is currently bounded by the object it is
> > attached to, we needed a means of identify when a vma was no longer in
> > use by userspace (via the user's fd). This is further complicated by
> > that only ppgtt vma should be closed at the user's behest, as the ggtt
> > were always shared.
> > 
> > Now that we attach the vma to a lut on the user's context, the open
> > count does indicate how many unique and open context/vm are referencing
> > this vma from the user. As such, we can and should just use the
> > open_count to track when the vma is still in use by userspace.
> > 
> > It's a poor man's replacement for reference counting.
> > 
> > Closes: https://gitlab.freedesktop.org/drm/intel/issues/1193
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> [...]
> 
> > @@ -1777,21 +1737,20 @@ int i915_gem_huge_page_mock_selftests(void)
> >       if (!i915_vm_is_4lvl(&ppgtt->vm)) {
> >               pr_err("failed to create 48b PPGTT\n");
> >               err = -EINVAL;
> > -             goto out_close;
> > +             goto out_put;
> >       }
> >  
> >       /* If we were ever hit this then it's time to mock the 64K scratch */
> >       if (!i915_vm_has_scratch_64K(&ppgtt->vm)) {
> >               pr_err("PPGTT missing 64K scratch page\n");
> >               err = -EINVAL;
> > -             goto out_close;
> > +             goto out_put;
> >       }
> >  
> >       err = i915_subtests(tests, ppgtt);
> >  
> > -out_close:
> > +out_put:
> >       i915_vm_put(&ppgtt->vm);
> 
> Did anything change here?

Oh, diff says no :)

By this point I was doing search and replace and given up caring.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
