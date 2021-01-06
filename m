Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7FC2EB69F
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 01:02:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FCC86E1E9;
	Wed,  6 Jan 2021 00:02:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2C236E1E9
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 00:02:21 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23512827-1500050 for multiple; Wed, 06 Jan 2021 00:02:18 +0000
MIME-Version: 1.0
In-Reply-To: <529180df-643e-5287-77e6-7f19d16754df@intel.com>
References: <20210105231947.31235-1-daniele.ceraolospurio@intel.com>
 <20210105231947.31235-4-daniele.ceraolospurio@intel.com>
 <160988961366.14894.93245696639759403@build.alporthouse.com>
 <529180df-643e-5287-77e6-7f19d16754df@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 06 Jan 2021 00:02:17 +0000
Message-ID: <160989133713.14894.5067193718753007427@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/guc: init engine directly in
 GuC submission mode
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

Quoting Daniele Ceraolo Spurio (2021-01-05 23:51:43)
> 
> 
> On 1/5/2021 3:33 PM, Chris Wilson wrote:
> > Quoting Daniele Ceraolo Spurio (2021-01-05 23:19:45)
> >> Instead of starting the engine in execlists submission mode and then
> >> switching to GuC, start directly in GuC submission mode. The initial
> >> setup functions have been copied over from the execlists code
> >> and simplified by removing the execlists submission-specific parts.
> >>
> >> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> >> Cc: Matthew Brost <matthew.brost@intel.com>
> >> Cc: John Harrison <john.c.harrison@intel.com>
> >> ---
> >>   drivers/gpu/drm/i915/gt/intel_engine_cs.c     |   5 +-
> >>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 249 +++++++++++++++++-
> >>   .../gpu/drm/i915/gt/uc/intel_guc_submission.h |   1 +
> >>   3 files changed, 244 insertions(+), 11 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> >> index f62303bf80b8..6b4483b72c3f 100644
> >> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> >> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> >> @@ -40,6 +40,7 @@
> >>   #include "intel_lrc_reg.h"
> >>   #include "intel_reset.h"
> >>   #include "intel_ring.h"
> >> +#include "uc/intel_guc_submission.h"
> >>   
> >>   /* Haswell does have the CXT_SIZE register however it does not appear to be
> >>    * valid. Now, docs explain in dwords what is in the context object. The full
> >> @@ -907,7 +908,9 @@ int intel_engines_init(struct intel_gt *gt)
> >>          enum intel_engine_id id;
> >>          int err;
> >>   
> >> -       if (HAS_EXECLISTS(gt->i915))
> >> +       if (intel_uc_uses_guc_submission(&gt->uc))
> > When do we determine intel_uc_uses_guc_submission?
> 
> at firmware fetch time.
> 
> >
> > I'm a bit nervous since I've lost track of needs/wants/uses. Is there a
> > telltale we can place here to assert that we've processed the relevant
> > init functions (also acting as an aide memoire)?
> 
> There is already a GEM_BUG_ON for this inside the function, it'll 
> trigger if we call it too early.
> For the submission side of things, there isn't much difference at the 
> moment between "wants" and "uses" since we do wedge if GuC submission is 
> selected and the FW is not found. I still prefer to use "uses" where 
> possible in case we want to change this in the future.

Ok. If there's a bug on to catch us reordering init incorrectly, that's
all I'm concerned about.

> >> +               setup = intel_guc_submission_setup;
> >> +       else if (HAS_EXECLISTS(gt->i915))
> >>                  setup = intel_execlists_submission_setup;
> >>          else
> >>                  setup = intel_ring_submission_setup;
> >> +static bool unexpected_starting_state(struct intel_engine_cs *engine)
> >> +{
> >> +       bool unexpected = false;
> >> +
> >> +       if (ENGINE_READ_FW(engine, RING_MI_MODE) & STOP_RING) {
> >> +               drm_dbg(&engine->i915->drm,
> >> +                       "STOP_RING still set in RING_MI_MODE\n");
> >> +               unexpected = true;
> >> +       }
> > Do we care? Is this something we can assume the guc will handle?
> > (It originated in debugging reset failures.)
> 
> GuC handles it post engine reset, but not on init and resume. If you 
> think this only makes sense for reset debug then I'll get rid of it.

Yes. I think this can be left as execlists debug code.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
