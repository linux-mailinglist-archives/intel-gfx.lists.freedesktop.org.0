Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E97FE11EC4B
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 21:57:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66D2C6EDC1;
	Fri, 13 Dec 2019 20:57:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 4534 seconds by postgrey-1.36 at gabe;
 Fri, 13 Dec 2019 20:57:07 UTC
Received: from 16.mo6.mail-out.ovh.net (16.mo6.mail-out.ovh.net
 [87.98.139.208])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E94FA6EDC1
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 20:57:07 +0000 (UTC)
Received: from player770.ha.ovh.net (unknown [10.108.57.188])
 by mo6.mail-out.ovh.net (Postfix) with ESMTP id 2A0971F4AB0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 20:41:30 +0100 (CET)
Received: from etezian.org (net-37-116-49-191.cust.vodafonedsl.it
 [37.116.49.191]) (Authenticated sender: andi@etezian.org)
 by player770.ha.ovh.net (Postfix) with ESMTPSA id 5E691D481938;
 Fri, 13 Dec 2019 19:41:25 +0000 (UTC)
Date: Fri, 13 Dec 2019 21:41:29 +0200
From: Andi Shyti <andi@etezian.org>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>
Message-ID: <20191213194129.GC5108@jack.zhora.eu>
References: <20191213183736.31992-1-andi@etezian.org>
 <20191213183736.31992-3-andi@etezian.org>
 <op.0cq3bxq3xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <op.0cq3bxq3xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Ovh-Tracer-Id: 16819255762392760935
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudelledguddvkecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpdefjedrudduiedrgeelrdduledunecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejjedtrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrghenucevlhhushhtvghrufhiiigvpedt
Subject: Re: [Intel-gfx] [PATCH v4 2/2] drm/i915/gt: Move power management
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

Hi Michal,

> > @@ -75,6 +75,8 @@ i915-$(CONFIG_PERF_EVENTS) += i915_pmu.o
> >  # "Graphics Technology" (aka we talk to the gpu)
> >  obj-y += gt/
> >  gt-y += \
> > +	gt/debugfs_gt.o \
> > +	gt/debugfs_pm.o \
> 
> hm, maybe this should be:
> 	gt/intel_gt_debugfs.o
> and
> 	gt/intel_pm_debugfs.o

this was actually the name I wanted to give it originally, but
meantime I also wanted to have the debugfs files alphabetically
sorted in sequence, like the selftest_* files (I can imagine in
the future having more debugfs files).

Maybe intel_debugfs_gt.c/intel_debugfs_pm.c would be a good
compromise?

> > @@ -0,0 +1,22 @@
> > +/* SPDX-License-Identifier: MIT */
> 
> in .c SPDX shall start with //

I agree this is the "official" way of doing it, and I also read
some discussions about it in this mailing list. But however I do
it, I know someone won't like it. I checked the style in this
directory and tried to keep it conform to the "gt way".

If no one will reject it because of it, I will send a v5 with '//'.

Thanks for the review,
Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
