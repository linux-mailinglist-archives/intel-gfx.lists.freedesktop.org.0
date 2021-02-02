Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85CE330B9CF
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 09:28:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 689296E922;
	Tue,  2 Feb 2021 08:27:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 847336E907
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 08:27:30 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23766951-1500050 for multiple; Tue, 02 Feb 2021 08:27:15 +0000
MIME-Version: 1.0
In-Reply-To: <87ft2fgcu1.fsf@intel.com>
References: <87lfcqobpl.fsf@intel.com> <87ft2fgcu1.fsf@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Imre Deak <imre.deak@intel.com>, Jani Nikula <jani.nikula@intel.com>, Matt Roper <matthew.d.roper@intel.com>, Mika Kuoppala <mika.kuoppala@linux.intel.com>, Tvrtko Ursulin <tvrtko.ursulin@intel.com>, Ville Syrjälä <ville.syrjala@linux.intel.com>
Date: Tue, 02 Feb 2021 08:27:16 +0000
Message-ID: <161225443612.7399.13785637314340829371@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] Fixes that failed to apply to v5.11-rc4
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

Quoting Jani Nikula (2021-02-02 07:15:18)
> On Mon, 18 Jan 2021, Jani Nikula <jani.nikula@intel.com> wrote:
> > The following commits have been marked as Cc: stable or fixing something
> > in v5.11-rc4 or earlier, but failed to cherry-pick to
> > drm-intel-fixes. Please see if they are worth backporting, and please do
> > so if they are.
> >
> > Conflicts:
> > dbe13ae1d6ab ("drm/i915/pmu: Don't grab wakeref when enabling events")
> > 9bb36cf66091 ("drm/i915: Check for rq->hwsp validity after acquiring RCU lock")
> > 5b4dc95cf7f5 ("drm/i915/gt: Prevent use of engine->wa_ctx after error")
> > 6a3daee1b38e ("drm/i915/selftests: Fix some error codes")
> > 67fba3f1c73b ("drm/i915/dp: Fix LTTPR vswing/pre-emp setting in non-transparent mode")
> >
> > Fails to build:
> > 3170a21f7059 ("drm/i915: Only enable DFP 4:4:4->4:2:0 conversion when outputting YCbCr 4:4:4")
> >
> > BR,
> > Jani.
> 
> Update.
> 
> Conflicts:
> 5b4dc95cf7f5 ("drm/i915/gt: Prevent use of engine->wa_ctx after error")

Already in 488751a0ef9b ("drm/i915/gt: Prevent use of engine->wa_ctx after error")

> 6a3daee1b38e ("drm/i915/selftests: Fix some error codes")

No user or even likely CI impact, not worth backporting [unless it turns
up later as a prerequisite].

> 67fba3f1c73b ("drm/i915/dp: Fix LTTPR vswing/pre-emp setting in non-transparent mode")
> 699390f7f026 ("drm/i915: Fix the PHY compliance test vs. hotplug mishap")
> e7004ea4f5f5 ("drm/i915/gt: Close race between enable_breadcrumbs and cancel_breadcrumbs")

Required at least one other friend.

There's another patch that we need in fixes for v5.10, so I'll include
that: drm/i915/gem: Drop lru bumping on display unpinning

I've put the 3 patches on fdo,
https://cgit.freedesktop.org/~ickle/linux-2.6/log/?h=dif

Hopefully they are a happy bunch.

p.s. 5.11-rc6 kills CI.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
