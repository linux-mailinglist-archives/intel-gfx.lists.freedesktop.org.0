Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B00CA30BE07
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 13:18:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05AC66E1F6;
	Tue,  2 Feb 2021 12:18:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11B2B6E128
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Feb 2021 12:18:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23771024-1500050 for multiple; Tue, 02 Feb 2021 12:18:24 +0000
MIME-Version: 1.0
In-Reply-To: <b0c69c35-dc28-87bd-feed-917a92a50299@linux.intel.com>
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-8-chris@chris-wilson.co.uk>
 <b0c69c35-dc28-87bd-feed-917a92a50299@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Tue, 02 Feb 2021 12:18:24 +0000
Message-ID: <161226830492.1150.2039712629900482846@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 08/57] drm/i915/gt: Move submission_method
 into intel_gt
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

Quoting Tvrtko Ursulin (2021-02-02 12:03:02)
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> > index 5d7fac383add..9304a35384aa 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> > @@ -4715,7 +4715,7 @@ int intel_execlists_live_selftests(struct drm_i915_private *i915)
> >               SUBTEST(live_virtual_reset),
> >       };
> >   
> > -     if (!HAS_EXECLISTS(i915))
> > +     if (i915->gt.submission_method != INTEL_SUBMISSION_ELSP)
> >               return 0;
> >   
> >       if (intel_gt_is_wedged(&i915->gt))
> > diff --git a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
> > index 3350e7c995bc..6cd9f6bc240c 100644
> > --- a/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/selftest_ring_submission.c
> > @@ -291,7 +291,7 @@ int intel_ring_submission_live_selftests(struct drm_i915_private *i915)
> >               SUBTEST(live_ctx_switch_wa),
> >       };
> >   
> > -     if (HAS_EXECLISTS(i915))
> > +     if (i915->gt.submission_method > INTEL_SUBMISSION_RING)
> 
> Not sure the above two hunks in selftests are an improvement, not seeing 
> how using enum ordering is better than a feature check.

Wait 40 patches.

> Mechanics looks fine. I'd prefer the selftests to remain as is but not 
> mandatory.

The execlists tests are not suitable as-is for the guc. And they are in
the habit of breaking the test to hide impedance mismatches with the
guc.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
