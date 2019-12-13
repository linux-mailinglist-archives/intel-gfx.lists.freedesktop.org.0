Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B7811ECB4
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 22:17:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 010846ED9E;
	Fri, 13 Dec 2019 21:17:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 5428 seconds by postgrey-1.36 at gabe;
 Fri, 13 Dec 2019 21:17:35 UTC
Received: from 11.mo6.mail-out.ovh.net (11.mo6.mail-out.ovh.net
 [188.165.38.119])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67FD06ED9E
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 21:17:35 +0000 (UTC)
Received: from player778.ha.ovh.net (unknown [10.108.35.103])
 by mo6.mail-out.ovh.net (Postfix) with ESMTP id 0AE911EB5FA
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 22:17:33 +0100 (CET)
Received: from etezian.org (net-37-116-49-191.cust.vodafonedsl.it
 [37.116.49.191]) (Authenticated sender: andi@etezian.org)
 by player778.ha.ovh.net (Postfix) with ESMTPSA id 64321D36A947;
 Fri, 13 Dec 2019 21:17:29 +0000 (UTC)
Date: Fri, 13 Dec 2019 23:17:36 +0200
From: Andi Shyti <andi@etezian.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191213211736.GA32684@jack.zhora.eu>
References: <20191213210050.33611-1-andi@etezian.org>
 <20191213210050.33611-3-andi@etezian.org>
 <157627141764.7535.12426160938543673699@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157627141764.7535.12426160938543673699@skylake-alporthouse-com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Ovh-Tracer-Id: 18441396050488574473
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrudelledgudegjecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujggfsehttdertddtredvnecuhfhrohhmpeetnhguihcuufhhhihtihcuoegrnhguihesvghtvgiiihgrnhdrohhrgheqnecukfhppedtrddtrddtrddtpdefjedrudduiedrgeelrdduledunecurfgrrhgrmhepmhhouggvpehsmhhtphdqohhuthdphhgvlhhopehplhgrhigvrhejjeekrdhhrgdrohhvhhdrnhgvthdpihhnvghtpedtrddtrddtrddtpdhmrghilhhfrhhomheprghnughisegvthgviihirghnrdhorhhgpdhrtghpthhtohepihhnthgvlhdqghhfgieslhhishhtshdrfhhrvggvuggvshhkthhophdrohhrghenucevlhhushhtvghrufhiiigvpedt
Subject: Re: [Intel-gfx] [PATCH v5 2/2] drm/i915/gt: Move power management
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

> > The GT system is becoming more and more a stand-alone system in
> > i915 and it's fair to assign it its own debugfs directory.
> > 
> > rc6, rps and llc debugfs files are gt related, move them into the
> > gt debugfs directory.
> > 
> > Signed-off-by: Andi Shyti <andi.shyti@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile              |   2 +
> >  drivers/gpu/drm/i915/gt/intel_debugfs_gt.c |  23 +
> >  drivers/gpu/drm/i915/gt/intel_debugfs_gt.h |  27 +
> >  drivers/gpu/drm/i915/gt/intel_debugfs_pm.c | 623 +++++++++++++++++++++
> >  drivers/gpu/drm/i915/gt/intel_debugfs_pm.h |  16 +
> 
> That's the worst of all worlds. debugfs is not a piece of intel hw.

I don't see other way for having everything grouped by name. We
can keep the previous patch (v4) with "debugfs_*", then.

Is that fine? If so we can just ignore this version.

Andi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
