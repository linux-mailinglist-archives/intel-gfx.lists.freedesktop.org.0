Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7091AD12B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 22:34:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC1FC6EB63;
	Thu, 16 Apr 2020 20:34:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 513916EB63
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2020 20:34:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20926124-1500050 for multiple; Thu, 16 Apr 2020 21:33:53 +0100
MIME-Version: 1.0
In-Reply-To: <20200416203110.GQ50947@intel.intel>
References: <20200416155100.22331-1-chris@chris-wilson.co.uk>
 <20200416155100.22331-2-chris@chris-wilson.co.uk>
 <20200416203110.GQ50947@intel.intel>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi.shyti@intel.com>
Message-ID: <158706923213.5570.9523945865985244311@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Thu, 16 Apr 2020 21:33:52 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Use the RPM config
 register to determine clk frequencies
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Andi Shyti (2020-04-16 21:31:10)
> Hi Chris,
> 
> > For many configuration details within RC6 and RPS we are programming
> > intervals for the internal clocks. From gen11, these clocks are
> > configuration via the RPM_CONFIG and so for convenience, we would like
> > to convert to/from more natural units (ns).
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Andi Shyti <andi.shyti@intel.com>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile           |  1 +
> >  drivers/gpu/drm/i915/gt/debugfs_gt_pm.c | 27 +++++----
> >  drivers/gpu/drm/i915/gt/intel_gt_clk.c  | 76 +++++++++++++++++++++++++
> >  drivers/gpu/drm/i915/gt/intel_gt_clk.h  | 21 +++++++
> >  drivers/gpu/drm/i915/gt/intel_rps.c     | 37 +++++++-----
> >  drivers/gpu/drm/i915/gt/selftest_rps.c  |  6 +-
> >  drivers/gpu/drm/i915/i915_debugfs.c     | 34 +++++++----
> >  drivers/gpu/drm/i915/i915_reg.h         | 25 --------
> >  8 files changed, 161 insertions(+), 66 deletions(-)
> >  create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_clk.c
> >  create mode 100644 drivers/gpu/drm/i915/gt/intel_gt_clk.h
> 
> I like the patch, it's a nice refactoring but the file name is
> misleading. When I see a *clk.[ch] file I think of a clock device
> rather than a set of utilities for frequency and interval
> conversion.
> 
> Can we call the file intel_gt_timing.[ch] or clk_utils.[ch]?

clk_utils.c

It started off with the idea of just doing the clock probing, but the
utility routines were more practical.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
