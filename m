Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A5217CF7C
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 18:36:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 562086E037;
	Sat,  7 Mar 2020 17:36:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1DC66E037
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Mar 2020 17:36:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20480214-1500050 for multiple; Sat, 07 Mar 2020 17:35:46 +0000
MIME-Version: 1.0
In-Reply-To: <20200307125531.GA58713@jack.zhora.eu>
References: <20200306230344.53559-1-andi@etezian.org>
 <158358284291.6224.14954481538219251460@build.alporthouse.com>
 <20200307125531.GA58713@jack.zhora.eu>
To: Andi Shyti <andi@etezian.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158360254703.6224.5041578469627024671@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sat, 07 Mar 2020 17:35:47 +0000
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/gt: allow setting generic data
 pointer
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

Quoting Andi Shyti (2020-03-07 12:55:31)
> Hi Chris,
> 
> On Sat, Mar 07, 2020 at 12:07:22PM +0000, Chris Wilson wrote:
> > Quoting Andi Shyti (2020-03-06 23:03:44)
> > > -void debugfs_gt_register_files(struct intel_gt *gt,
> > > -                              struct dentry *root,
> > > -                              const struct debugfs_gt_file *files,
> > > -                              unsigned long count)
> > > +void intel_gt_debugfs_register_files(struct dentry *root,
> > > +                                    const struct debugfs_gt_file *files,
> > > +                                    unsigned long count, void *data)
> > >  {
> > >         while (count--) {
> > > -               if (!files->eval || files->eval(gt))
> > > +               if (!files->eval || files->eval(data))
> > >                         debugfs_create_file(files->name,
> > > -                                           0444, root, gt,
> > > +                                           0444, root, data,
> > >                                             files->fops);
> > >  
> > 
> > And now we are not a intel_gt routine, you'll want to move again :)
> > i915_debugfs_utils.c ? :)
> 
> Actually, this is what it came to and this was the first
> discussion I had with Daniele and that's also why I was loyal to
> th "_gt_" wrappers until the end. But I had to agree that this
> was becoming more a limitation.
> 
> The biggest difference left, which by the way is the real
> distinguishing factor other than the *gt pointer, is that we
> create files under gt directory, instead of having the root
> imposed by the drm (even though the caller can eventually choose
> different roots).
> 
> We could perhaps store the root pointer in the intel_gt
> structure so that this function stays de facto an intel_gt
> routine and the caller doesn't need to care where the files will
> be generated. This is what we planned to do with sysfs as well.
> 
> What do you think?

I thought we were passing along the root. If not I think we should, more
of a debugfs constructor context?

The main thing of course is not to overengineer and do the minimal
necessary for the immediate users we have. We can always extend and
refactor for a third user, etc, etc.

So if this works for gt + children, go for it and worry about tomorrow,
tomorrow. Trusting our good practice for "a stitch in time saves nine".
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
