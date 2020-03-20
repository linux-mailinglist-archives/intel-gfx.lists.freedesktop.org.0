Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0456E18CD72
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 13:05:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A04D0892FE;
	Fri, 20 Mar 2020 12:05:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9912892FE
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 12:04:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20630004-1500050 for multiple; Fri, 20 Mar 2020 12:04:14 +0000
MIME-Version: 1.0
In-Reply-To: <b9e4e08d-262d-8e74-b356-ae3b4d539669@linux.intel.com>
References: <20200320034901.102550-1-andi@etezian.org>
 <158470270622.7928.7469444156799101687@build.alporthouse.com>
 <20200320114514.GG27848@jack.zhora.eu>
 <b9e4e08d-262d-8e74-b356-ae3b4d539669@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Andi Shyti <andi@etezian.org>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <158470585416.7928.4810604977467116501@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 20 Mar 2020 12:04:14 +0000
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: move files more files into
 debugfs
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

Quoting Tvrtko Ursulin (2020-03-20 12:01:14)
> 
> 
> On 20/03/2020 11:45, Andi Shyti wrote:
> > Hi Chris,
> > 
> > On Fri, Mar 20, 2020 at 11:11:46AM +0000, Chris Wilson wrote:
> >> Quoting Andi Shyti (2020-03-20 03:49:01)
> >>> From: Andi Shyti <andi.shyti@intel.com>
> >>>
> >>> The following interfaces:
> >>>
> >>> i915_wedged
> >>> i915_forcewake_user
> >>> i915_gem_interrupt
> >>> i915_sseu_status
> >>>
> >>> are dependent on gt values. Put them inside gt/ and drop the
> >>> "i915_" prefix name. This would be the new structure:
> >>>
> >>>    gt
> >>>    |
> >>>    +-- forcewake_user
> >>>    |
> >>>    +-- interrupt_info_show
> >>
> >> Please tell me you didn't actually include _show :)
> > 
> > You know me, everything can happen!
> > I did overlook indeed, but I had to check if I actually did
> > include _show. Thanks for spotting it.
> > 
> >>>    |
> >>>    +-- sseu_status
> >>>    |
> >>>    +-- wedge
> >>
> >> The world will rejoice when it's stopped being called wedged.
> >> Well Mika will at any rate.
> > 
> > well, I did keep the original name.
> > 
> >> 'echo rcs0 > reset' maybe? Yeah. Wait, but rcs0 is uabi name, so top
> >> level.
> >>
> >> Oh well, I definitely do not think copying a mistake is a good idea.
> > 
> > OK, I'll call it reset
> 
> Wedge is wedge and reset is reset, or is it not?

i915_wedged is reset :)

Hysterical raisons.

But my main question is what do you feed into a gt/reset? Currently we
have a random bitmask to reset a group of engines. Should we just go and
put reset into sysfs/engine/ ?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
