Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8D520B405
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 16:51:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 222256ECB3;
	Fri, 26 Jun 2020 14:51:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D53226ECB3
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 14:51:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21626119-1500050 for multiple; Fri, 26 Jun 2020 15:51:16 +0100
MIME-Version: 1.0
In-Reply-To: <f711551d-e5dd-0cbf-8bbf-db27425620b9@intel.com>
References: <20200625234212.22811-1-daniele.ceraolospurio@intel.com>
 <20200625234212.22811-4-daniele.ceraolospurio@intel.com>
 <159318233803.13600.604722317964699116@build.alporthouse.com>
 <f711551d-e5dd-0cbf-8bbf-db27425620b9@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jun 2020 15:51:14 +0100
Message-ID: <159318307440.13600.1953403213555208600@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915: Move engine-related mmio init
 to engines_init_mmio
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Daniele Ceraolo Spurio (2020-06-26 15:46:53)
> 
> 
> On 6/26/20 7:38 AM, Chris Wilson wrote:
> > Quoting Daniele Ceraolo Spurio (2020-06-26 00:42:08)
> >> All the info we read in intel_device_info_init_mmio are engine-related
> >> and since we already have an engine_init_mmio function we can just
> >> perform the operations from there.
> >>
> >> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> >> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> >> Cc: Andi Shyti <andi.shyti@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/gt/intel_engine_cs.c | 72 ++++++++++++++++++++++-
> >>   drivers/gpu/drm/i915/i915_drv.c           |  4 --
> >>   drivers/gpu/drm/i915/intel_device_info.c  | 66 ---------------------
> >>   drivers/gpu/drm/i915/intel_device_info.h  |  2 -
> >>   4 files changed, 71 insertions(+), 73 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> >> index be92d1ef9aa9..8497106eb3a6 100644
> >> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> >> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> >> @@ -450,6 +450,74 @@ void intel_engines_free(struct intel_gt *gt)
> >>          }
> >>   }
> >>   
> >> +/*
> >> + * Determine which engines are fused off in our particular hardware. Since the
> >> + * fuse register is in the blitter powerwell, we need forcewake to be ready at
> >> + * this point (but later we need to prune the forcewake domains for engines that
> >> + * are indeed fused off).
> >> + */
> >> +static intel_engine_mask_t init_engine_mask(struct intel_gt *gt)
> >> +{
> >> +       struct drm_i915_private *i915 = gt->i915;
> >> +       struct intel_device_info *info = mkwrite_device_info(i915);
> >> +       struct intel_uncore *uncore = gt->uncore;
> >> +       unsigned int logical_vdbox = 0;
> >> +       unsigned int i;
> >> +       u32 media_fuse;
> >> +       u16 vdbox_mask;
> >> +       u16 vebox_mask;
> > 
> > assert_forcewakes_active(uncore, FORCEWAKE_BLITTER) ?
> > 
> > Since it's called out in the comment, might as well reinforce that with
> > an assert.
> 
> We don't expect it to be active, just to be initialized/usable.
> This comment is there to remind us of the catch-22 issue we have where 
> we need forcewake to be initialized to read the fuses, but we need the 
> fuses values to know which engines are available and therefore which fw 
> domains are there (and that's why we prune the domains later).

Gotcha, I assumed 'ready' == 'powered up'

How about adding that explanation to the comment :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
