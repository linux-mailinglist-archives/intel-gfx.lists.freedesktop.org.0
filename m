Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFC392D9046
	for <lists+intel-gfx@lfdr.de>; Sun, 13 Dec 2020 20:52:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A41D89B67;
	Sun, 13 Dec 2020 19:52:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F106589B67
 for <intel-gfx@lists.freedesktop.org>; Sun, 13 Dec 2020 19:52:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23313953-1500050 for multiple; Sun, 13 Dec 2020 19:51:55 +0000
MIME-Version: 1.0
In-Reply-To: <20201210175111.GA26573@sdutt-i7>
References: <20201207193824.18114-1-chris@chris-wilson.co.uk>
 <20201207193824.18114-12-chris@chris-wilson.co.uk>
 <20201210175111.GA26573@sdutt-i7>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Matthew Brost <matthew.brost@intel.com>
Date: Sun, 13 Dec 2020 19:51:55 +0000
Message-ID: <160788911579.1732.6367442457951938918@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 12/20] drm/i915/gt: Track the overall
 awake/busy time
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

Quoting Matthew Brost (2020-12-10 17:51:12)
> On Mon, Dec 07, 2020 at 07:38:16PM +0000, Chris Wilson wrote:
> > Since we wake the GT up before executing a request, and go to sleep as
> > soon as it is retired, the GT wake time not only represents how long the
> > device is powered up, but also provides a summary, albeit an overestimate,
> > of the device runtime (i.e. the rc0 time to compare against rc6 time).
> > 
> > v2: s/busy/awake/
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/debugfs_gt_pm.c  |  5 ++-
> >  drivers/gpu/drm/i915/gt/intel_gt_pm.c    | 49 ++++++++++++++++++++++++
> >  drivers/gpu/drm/i915/gt/intel_gt_pm.h    |  2 +
> >  drivers/gpu/drm/i915/gt/intel_gt_types.h | 24 ++++++++++++
> >  drivers/gpu/drm/i915/i915_debugfs.c      |  5 ++-
> >  drivers/gpu/drm/i915/i915_pmu.c          |  6 +++
> >  include/uapi/drm/i915_drm.h              |  1 +
> >  7 files changed, 89 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> > index 174a24553322..8975717ace06 100644
> > --- a/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> > +++ b/drivers/gpu/drm/i915/gt/debugfs_gt_pm.c
> > @@ -11,6 +11,7 @@
> >  #include "i915_drv.h"
> >  #include "intel_gt.h"
> >  #include "intel_gt_clock_utils.h"
> > +#include "intel_gt_pm.h"
> >  #include "intel_llc.h"
> >  #include "intel_rc6.h"
> >  #include "intel_rps.h"
> > @@ -558,7 +559,9 @@ static int rps_boost_show(struct seq_file *m, void *data)
> >  
> >       seq_printf(m, "RPS enabled? %s\n", yesno(intel_rps_is_enabled(rps)));
> >       seq_printf(m, "RPS active? %s\n", yesno(intel_rps_is_active(rps)));
> > -     seq_printf(m, "GPU busy? %s\n", yesno(gt->awake));
> > +     seq_printf(m, "GPU busy? %s, %llums\n",
> > +                yesno(gt->awake),
> > +                ktime_to_ms(intel_gt_get_awake_time(gt)));
> 
> I think it would be useful to print the total time the gt has been alive
> too. This would give a nice comparison to total awake time which you
> print here. Should be easy enough to do.

This is the total time for which we hold the wakeref for the GT. What
metric do you have in mind? The C0 counters usually found on the engine?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
