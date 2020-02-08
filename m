Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A21EC1565C5
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 18:41:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E1F76E225;
	Sat,  8 Feb 2020 17:41:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 599 seconds by postgrey-1.36 at gabe;
 Sat, 08 Feb 2020 17:41:29 UTC
Received: from 3.mo179.mail-out.ovh.net (3.mo179.mail-out.ovh.net
 [178.33.251.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8B246E225
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Feb 2020 17:41:29 +0000 (UTC)
Received: from player787.ha.ovh.net (unknown [10.108.57.44])
 by mo179.mail-out.ovh.net (Postfix) with ESMTP id AE524157D52
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Feb 2020 18:23:49 +0100 (CET)
Received: from etezian.org (81-175-223-118.bb.dnainternet.fi [81.175.223.118])
 (Authenticated sender: andi@etezian.org)
 by player787.ha.ovh.net (Postfix) with ESMTPSA id AB4F9F54AD97;
 Sat,  8 Feb 2020 17:23:44 +0000 (UTC)
Date: Sat, 8 Feb 2020 19:23:42 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200208172342.GC32188@jack.zhora.eu>
References: <20200208122759.30833-1-andi@etezian.org>
 <158117917844.18291.12433280872368810807@skylake-alporthouse-com>
 <20200208165139.GA32188@jack.zhora.eu>
 <158118102661.18291.13808402197936060238@skylake-alporthouse-com>
 <20200208170153.GB32188@jack.zhora.eu>
 <158118159751.18291.5299528510826622998@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158118159751.18291.5299528510826622998@skylake-alporthouse-com>
X-Ovh-Tracer-Id: 17196150753454244361
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedugedrheejgddutddvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpdekuddrudejhedrvddvfedruddukeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejkeejrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrgh
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: make a gt sysfs group and move
 power management files
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

> > > > > > The GT has its own properties and in sysfs they should be grouped
> > > > > > in the 'gt/' directory.
> > > > > > 
> > > > > > Create the 'gt/' directory in sysfs and move the power management
> > > > > > related files.
> > > > > 
> > > > > As shown by BAT, we have a conundrum; do we have to preserve the old
> > > > > names forevermore? Or do we just userspace that they have to adapt?
> > > > 
> > > > With this, I guess you are suggesting to change igt accordingly,
> > > > because I'm pretty sure this interface is subject to change,
> > > > sooner or later.
> > > 
> > > Right; but what about powertop? And the bajillion wikis?
> > 
> > mmhhh... right!
> > 
> > > Just feels clumsy, so I'd like to spend a moment to see if we can think
> > > of any options before dropping them. No matter how silly, if userspace
> > > breaks, it's a regression :(
> > > 
> > > Maybe we could do something like keep the old ones and put a deprecation
> > > warning in?
> > 
> > how about linking and declare the old interface obsolete?
> 
> Is a possibility, but I'm not keen on having more and more dangling
> symlinks.
> 
> 1. Do nothing; have redundant files.
> 2. Remove them, expect complaints.
> 3. Mark them as deprecated, remove in 5.9?
> 4. Symlinks forevermore (not clear if we can symlink and emit a warning)

my symlinks suggestions was a mix of the above and it would be:

 1. add symlinks (or redundant files with warning) and mark the
    interfaces as deprecated.
 2. in 5.9 remove the symlinks (or redundant files, I like the
    idea of warning userspace).
 3. expect anyway complaints :-P

Let's give it a few days, perhaps after the weekend someone might
have an opinion or better recommendation.

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
