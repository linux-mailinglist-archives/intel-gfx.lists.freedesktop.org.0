Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF8F11ECFE
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 22:38:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D888A6EDD7;
	Fri, 13 Dec 2019 21:38:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C2236EDD7
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 21:38:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19573210-1500050 for multiple; Fri, 13 Dec 2019 21:37:56 +0000
MIME-Version: 1.0
To: Andi Shyti <andi@etezian.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191213211736.GA32684@jack.zhora.eu>
References: <20191213210050.33611-1-andi@etezian.org>
 <20191213210050.33611-3-andi@etezian.org>
 <157627141764.7535.12426160938543673699@skylake-alporthouse-com>
 <20191213211736.GA32684@jack.zhora.eu>
Message-ID: <157627307453.7535.631671277255143579@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 13 Dec 2019 21:37:54 +0000
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

Quoting Andi Shyti (2019-12-13 21:17:36)
> > > The GT system is becoming more and more a stand-alone system in
> > > i915 and it's fair to assign it its own debugfs directory.
> > > 
> > > rc6, rps and llc debugfs files are gt related, move them into the
> > > gt debugfs directory.
> > > 
> > > Signed-off-by: Andi Shyti <andi.shyti@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/Makefile              |   2 +
> > >  drivers/gpu/drm/i915/gt/intel_debugfs_gt.c |  23 +
> > >  drivers/gpu/drm/i915/gt/intel_debugfs_gt.h |  27 +
> > >  drivers/gpu/drm/i915/gt/intel_debugfs_pm.c | 623 +++++++++++++++++++++
> > >  drivers/gpu/drm/i915/gt/intel_debugfs_pm.h |  16 +
> > 
> > That's the worst of all worlds. debugfs is not a piece of intel hw.
> 
> I don't see other way for having everything grouped by name. We
> can keep the previous patch (v4) with "debugfs_*", then.
> 
> Is that fine? If so we can just ignore this version.

I had no objections, just a suggestion for gt-${CONFIG_DEBUGFS} :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
