Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5395A17D080
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Mar 2020 23:59:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F3D56E265;
	Sat,  7 Mar 2020 22:59:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 2381 seconds by postgrey-1.36 at gabe;
 Sat, 07 Mar 2020 22:59:45 UTC
Received: from 8.mo3.mail-out.ovh.net (8.mo3.mail-out.ovh.net [87.98.172.249])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3A776E265
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Mar 2020 22:59:45 +0000 (UTC)
Received: from player711.ha.ovh.net (unknown [10.108.42.174])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id 3A575241A98
 for <intel-gfx@lists.freedesktop.org>; Sat,  7 Mar 2020 23:20:01 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player711.ha.ovh.net (Postfix) with ESMTPSA id 56D6810082D06;
 Sat,  7 Mar 2020 22:19:55 +0000 (UTC)
Date: Sun, 8 Mar 2020 00:19:55 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200307221955.GA60782@jack.zhora.eu>
References: <20200306230344.53559-1-andi@etezian.org>
 <158358284291.6224.14954481538219251460@build.alporthouse.com>
 <20200307125531.GA58713@jack.zhora.eu>
 <158360254703.6224.5041578469627024671@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158360254703.6224.5041578469627024671@build.alporthouse.com>
X-Ovh-Tracer-Id: 2166512897397735945
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedruddugedgudeifecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucfkpheptddrtddrtddrtddpkedurddujeehrddvvdefrdduudeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmohguvgepshhmthhpqdhouhhtpdhhvghlohepphhlrgihvghrjeduuddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdprhgtphhtthhopehinhhtvghlqdhgfhigsehlihhsthhsrdhfrhgvvgguvghskhhtohhprdhorhhg
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

> > > Quoting Andi Shyti (2020-03-06 23:03:44)
> > > > -void debugfs_gt_register_files(struct intel_gt *gt,
> > > > -                              struct dentry *root,
> > > > -                              const struct debugfs_gt_file *files,
> > > > -                              unsigned long count)
> > > > +void intel_gt_debugfs_register_files(struct dentry *root,
> > > > +                                    const struct debugfs_gt_file *files,
> > > > +                                    unsigned long count, void *data)
> > > >  {
> > > >         while (count--) {
> > > > -               if (!files->eval || files->eval(gt))
> > > > +               if (!files->eval || files->eval(data))
> > > >                         debugfs_create_file(files->name,
> > > > -                                           0444, root, gt,
> > > > +                                           0444, root, data,
> > > >                                             files->fops);
> > > >  
> > > 
> > > And now we are not a intel_gt routine, you'll want to move again :)
> > > i915_debugfs_utils.c ? :)
> > 
> > Actually, this is what it came to and this was the first
> > discussion I had with Daniele and that's also why I was loyal to
> > th "_gt_" wrappers until the end. But I had to agree that this
> > was becoming more a limitation.
> > 
> > The biggest difference left, which by the way is the real
> > distinguishing factor other than the *gt pointer, is that we
> > create files under gt directory, instead of having the root
> > imposed by the drm (even though the caller can eventually choose
> > different roots).
> > 
> > We could perhaps store the root pointer in the intel_gt
> > structure so that this function stays de facto an intel_gt
> > routine and the caller doesn't need to care where the files will
> > be generated. This is what we planned to do with sysfs as well.
> > 
> > What do you think?
> 
> I thought we were passing along the root. If not I think we should, more
> of a debugfs constructor context?

What do you mean with debugfs constructor context? Is it a
gt->debugfs_root pointer like the gt->sysfs_root?

> The main thing of course is not to overengineer and do the minimal
> necessary for the immediate users we have. We can always extend and
> refactor for a third user, etc, etc.
> 
> So if this works for gt + children, go for it and worry about tomorrow,
> tomorrow. Trusting our good practice for "a stitch in time saves nine".

this came after Daniele's guc patches where he preferred to
define his own functions instead of using this one that is meant
to be used in that situation.

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
