Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC6A11E5FE
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 15:59:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 615406E8C4;
	Fri, 13 Dec 2019 14:59:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B3D76E8C4
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 14:59:52 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19569089-1500050 for multiple; Fri, 13 Dec 2019 14:59:34 +0000
MIME-Version: 1.0
To: Andi Shyti <andi@etezian.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191213144404.GB5108@jack.zhora.eu>
References: <20191213124549.28412-1-andi@etezian.org>
 <20191213124549.28412-3-andi@etezian.org>
 <157624155700.6987.7147279410865367970@skylake-alporthouse-com>
 <20191213144404.GB5108@jack.zhora.eu>
Message-ID: <157624917204.7535.18372189012368917932@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 13 Dec 2019 14:59:32 +0000
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915/gt: Move power management
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

Quoting Andi Shyti (2019-12-13 14:44:04)
> Hi Chris,
> 
> > > +int intel_gt_pm_debugfs_register(struct intel_gt *gt)
> > > +{
> > > +       struct dentry *root = gt->debugfs_entry;
> > > +       int i;
> > > +
> > > +       pr_info("ANDIII function start\n");
> > > +       if (unlikely(!root))
> > > +               return -ENODEV;
> > > +
> > > +       for (i = 0; i < ARRAY_SIZE(gt_pm_debugfs_files); i++) {
> > > +               const struct gt_pm_debugfs_files *f = &gt_pm_debugfs_files[i];
> > > +
> > > +               if (f->eval && !f->eval(gt))
> > > +                       continue;
> > > +
> > > +               debugfs_create_file(f->name, 0444, root, gt, f->fops);
> > > +       }
> > > +       pr_info("ANDIII function end\n");
> > > +
> > > +       return 0;
> > 
> > Looking better!
> 
> you liked my wonderful debugging printouts? :D
> 
> > Do we even need to keep the gt->debugfs_entry around?
> 
> Yes, that can be removed, indeed, I was thinking that perhaps in
> the future we might need that pointer, but yes, definitely not
> necessary.
> 
> > We are not going to ever do hotplug are we and so only
> > need to populate once?
> 
> for example? do you mean something like files generated in
> certain conditions, like during interrupts or files generated and
> destroyed depending on the power state?
> 
> If so, you might want an interface for generating/destroying
> files, but do we have such case now to really care about?

No, I was trying to highlight that such a dynamic interface is hard to
deal with, so we don't bother unless it inherent in the HW and we can't
avoid it. i.e. we only need to populate the debugfs once on boot and
then can throw away our dentry pointers.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
