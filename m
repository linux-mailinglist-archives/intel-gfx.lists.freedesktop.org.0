Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BEDF01B291A
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2020 16:11:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CAB989533;
	Tue, 21 Apr 2020 14:11:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB6D889533
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2020 14:11:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20972383-1500050 for multiple; Tue, 21 Apr 2020 15:11:46 +0100
MIME-Version: 1.0
In-Reply-To: <877dy9lz6p.fsf@gaia.fi.intel.com>
References: <20200421134512.27910-1-chris@chris-wilson.co.uk>
 <158747705196.19285.2111455064932087716@build.alporthouse.com>
 <877dy9lz6p.fsf@gaia.fi.intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158747830449.19285.3295757672894647641@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 21 Apr 2020 15:11:44 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Make the slice:unslice ratio
 request explicit for RPS
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

Quoting Mika Kuoppala (2020-04-21 14:56:46)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Quoting Chris Wilson (2020-04-21 14:45:12)
> >> In RPS, we have the option to only specify the unslice [ring] clock
> >> ratio and for the pcu to derive the slice [gpu] clock ratio from its
> >> magic table. We also have the option to tell the pcu to use our
> >> requested gpu clock ratio, and for it to try and throttle the unslice
> >> and slice ratios separately.
> >> 
> >> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> >> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/gt/intel_rps.c | 11 +++++++----
> >>  1 file changed, 7 insertions(+), 4 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> >> index 4dcfae16a7ce..07321e1b22f6 100644
> >> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> >> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> >> @@ -662,14 +662,17 @@ static int gen6_rps_set(struct intel_rps *rps, u8 val)
> >>         struct drm_i915_private *i915 = rps_to_i915(rps);
> >>         u32 swreq;
> >>  
> >> -       if (INTEL_GEN(i915) >= 9)
> >> -               swreq = GEN9_FREQUENCY(val);
> >> -       else if (IS_HASWELL(i915) || IS_BROADWELL(i915))
> >> +       if (INTEL_GEN(i915) >= 9) {
> >> +               swreq = 0x2; /* only throttle slice, not unslice */
> >
> > 0x0 == use implicit slice ratio
> > 0x1 == use explicit slice ratio
> > 0x2 == use separate throttling
> 
> Care to enum/define these and add as parameter to GEN9_FREQUENCY?

It would not be a parameter to GEN9_FREQUENCY as that gets used
elsewhere. You know my opinion on single use magic macros, only useful
for obfuscating code.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
