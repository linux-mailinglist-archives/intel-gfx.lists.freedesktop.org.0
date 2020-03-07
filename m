Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14ED717CE39
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 13:55:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE51A89DE5;
	Sat,  7 Mar 2020 12:55:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 10.mo179.mail-out.ovh.net (10.mo179.mail-out.ovh.net
 [46.105.79.46])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E20C89DE5
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Mar 2020 12:55:41 +0000 (UTC)
Received: from player770.ha.ovh.net (unknown [10.108.54.74])
 by mo179.mail-out.ovh.net (Postfix) with ESMTP id 678CB15C9A0
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Mar 2020 13:55:38 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player770.ha.ovh.net (Postfix) with ESMTPSA id E0E30103EDE95;
 Sat,  7 Mar 2020 12:55:32 +0000 (UTC)
Date: Sat, 7 Mar 2020 14:55:31 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200307125531.GA58713@jack.zhora.eu>
References: <20200306230344.53559-1-andi@etezian.org>
 <158358284291.6224.14954481538219251460@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158358284291.6224.14954481538219251460@build.alporthouse.com>
X-Ovh-Tracer-Id: 11081669834274095625
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedruddugedggeekucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpdekuddrudejhedrvddvfedruddukeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejjedtrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
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

Hi Chris,

On Sat, Mar 07, 2020 at 12:07:22PM +0000, Chris Wilson wrote:
> Quoting Andi Shyti (2020-03-06 23:03:44)
> > -void debugfs_gt_register_files(struct intel_gt *gt,
> > -                              struct dentry *root,
> > -                              const struct debugfs_gt_file *files,
> > -                              unsigned long count)
> > +void intel_gt_debugfs_register_files(struct dentry *root,
> > +                                    const struct debugfs_gt_file *files,
> > +                                    unsigned long count, void *data)
> >  {
> >         while (count--) {
> > -               if (!files->eval || files->eval(gt))
> > +               if (!files->eval || files->eval(data))
> >                         debugfs_create_file(files->name,
> > -                                           0444, root, gt,
> > +                                           0444, root, data,
> >                                             files->fops);
> >  
> 
> And now we are not a intel_gt routine, you'll want to move again :)
> i915_debugfs_utils.c ? :)

Actually, this is what it came to and this was the first
discussion I had with Daniele and that's also why I was loyal to
th "_gt_" wrappers until the end. But I had to agree that this
was becoming more a limitation.

The biggest difference left, which by the way is the real
distinguishing factor other than the *gt pointer, is that we
create files under gt directory, instead of having the root
imposed by the drm (even though the caller can eventually choose
different roots).

We could perhaps store the root pointer in the intel_gt
structure so that this function stays de facto an intel_gt
routine and the caller doesn't need to care where the files will
be generated. This is what we planned to do with sysfs as well.

What do you think?

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
