Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C78E156592
	for <lists+intel-gfx@lfdr.de>; Sat,  8 Feb 2020 17:57:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABFE96E384;
	Sat,  8 Feb 2020 16:57:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B1B6E384
 for <intel-gfx@lists.freedesktop.org>; Sat,  8 Feb 2020 16:57:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20159468-1500050 for multiple; Sat, 08 Feb 2020 16:57:08 +0000
MIME-Version: 1.0
To: Andi Shyti <andi@etezian.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200208165139.GA32188@jack.zhora.eu>
References: <20200208122759.30833-1-andi@etezian.org>
 <158117917844.18291.12433280872368810807@skylake-alporthouse-com>
 <20200208165139.GA32188@jack.zhora.eu>
Message-ID: <158118102661.18291.13808402197936060238@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sat, 08 Feb 2020 16:57:06 +0000
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

Quoting Andi Shyti (2020-02-08 16:51:39)
> On Sat, Feb 08, 2020 at 04:26:18PM +0000, Chris Wilson wrote:
> > Quoting Andi Shyti (2020-02-08 12:27:59)
> > > From: Andi Shyti <andi.shyti@intel.com>
> > > 
> > > The GT has its own properties and in sysfs they should be grouped
> > > in the 'gt/' directory.
> > > 
> > > Create the 'gt/' directory in sysfs and move the power management
> > > related files.
> > 
> > As shown by BAT, we have a conundrum; do we have to preserve the old
> > names forevermore? Or do we just userspace that they have to adapt?
> 
> With this, I guess you are suggesting to change igt accordingly,
> because I'm pretty sure this interface is subject to change,
> sooner or later.

Right; but what about powertop? And the bajillion wikis?

Just feels clumsy, so I'd like to spend a moment to see if we can think
of any options before dropping them. No matter how silly, if userspace
breaks, it's a regression :(

Maybe we could do something like keep the old ones and put a deprecation
warning in?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
