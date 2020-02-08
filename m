Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA401565AB
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 18:07:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D266D6E39E;
	Sat,  8 Feb 2020 17:07:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D6216E39E
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Feb 2020 17:07:11 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20159542-1500050 for multiple; Sat, 08 Feb 2020 17:06:39 +0000
MIME-Version: 1.0
To: Andi Shyti <andi@etezian.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200208170153.GB32188@jack.zhora.eu>
References: <20200208122759.30833-1-andi@etezian.org>
 <158117917844.18291.12433280872368810807@skylake-alporthouse-com>
 <20200208165139.GA32188@jack.zhora.eu>
 <158118102661.18291.13808402197936060238@skylake-alporthouse-com>
 <20200208170153.GB32188@jack.zhora.eu>
Message-ID: <158118159751.18291.5299528510826622998@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 08 Feb 2020 17:06:37 +0000
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

Quoting Andi Shyti (2020-02-08 17:01:53)
> Hi Chris,
> 
> > > > > The GT has its own properties and in sysfs they should be grouped
> > > > > in the 'gt/' directory.
> > > > > 
> > > > > Create the 'gt/' directory in sysfs and move the power management
> > > > > related files.
> > > > 
> > > > As shown by BAT, we have a conundrum; do we have to preserve the old
> > > > names forevermore? Or do we just userspace that they have to adapt?
> > > 
> > > With this, I guess you are suggesting to change igt accordingly,
> > > because I'm pretty sure this interface is subject to change,
> > > sooner or later.
> > 
> > Right; but what about powertop? And the bajillion wikis?
> 
> mmhhh... right!
> 
> > Just feels clumsy, so I'd like to spend a moment to see if we can think
> > of any options before dropping them. No matter how silly, if userspace
> > breaks, it's a regression :(
> > 
> > Maybe we could do something like keep the old ones and put a deprecation
> > warning in?
> 
> how about linking and declare the old interface obsolete?

Is a possibility, but I'm not keen on having more and more dangling
symlinks.

1. Do nothing; have redundant files.
2. Remove them, expect complaints.
3. Mark them as deprecated, remove in 5.9?
4. Symlinks forevermore (not clear if we can symlink and emit a warning)
5. Profit?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
