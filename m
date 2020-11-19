Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A9F2B905D
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Nov 2020 11:47:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41A016E544;
	Thu, 19 Nov 2020 10:47:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3AC36E544
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Nov 2020 10:47:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23039864-1500050 for multiple; Thu, 19 Nov 2020 10:47:28 +0000
MIME-Version: 1.0
In-Reply-To: <2cf26dcf-7774-1f19-729f-98404607ee77@linux.intel.com>
References: <20201117113103.21480-1-chris@chris-wilson.co.uk>
 <20201117113103.21480-8-chris@chris-wilson.co.uk>
 <5672a04a-bc05-1d32-e051-b9a5a0fcc82d@linux.intel.com>
 <160561952917.22621.15356472644492375343@build.alporthouse.com>
 <2cf26dcf-7774-1f19-729f-98404607ee77@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Thu, 19 Nov 2020 10:47:27 +0000
Message-ID: <160578284715.30679.7045386674059442764@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 08/28] drm/i915/gt: Show all active
 timelines for debugging
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

Quoting Tvrtko Ursulin (2020-11-18 15:51:41)
> 
> On 17/11/2020 13:25, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-11-17 12:59:44)
> >>
> >> On 17/11/2020 11:30, Chris Wilson wrote:
> >>> +             if (show_request) {
> >>> +                     list_for_each_entry_safe(rq, rn, &tl->requests, link)
> >>> +                             show_request(m, rq,
> >>> +                                          i915_request_is_active(rq) ? "  E" :
> >>> +                                          i915_request_is_ready(rq) ? "  Q" :
> >>> +                                          "  U");
> >>
> >> Can we get some consistency between the category counts and flags.
> >>
> >> s/count/queued/ -> Q
> > 
> > Hmm, if you are sure. Q would then not match with the engine info.
> 
> Sure? Not really. What do we have there? You mean "!/*/+/-" flags? Or 
> "E/Q/V" from intel_execlists_show_requests? Right, 'Q' there means 
> runnable and it doesn't show queued at all. Yes, why not change everything.
> 
> > Still favouring count over queued; I think count indicates more clearly
> > that it is the superset, but queued may imply it excludes ready and
> > definitely sounds like it should not include inflight.
> 
> I am okay with that.
> 
> >> ready -> R (also matches with term runnable)
> >> active -> E ? hmmm E is consistent with the engine info dump.
> >>
> >> Not ideal but perhaps every bit of more consistency is good.
> > 
> > Not sold yet, but not happy with the current flags either.
> > 
> > If we go with 'R' for ready, we should also update engine info.
> 
> Okay we seem to have plenty of options.
> 
> U or Q - queued/unready
> R or Q - ready/queued (to backend) (Rv/Qv for virtual?)
> E or R, or I - executing/running/in-flight
> 
> Q -> R -> E
> U -> R -> E
> U -> Q -> E/R/I
> U -> R -> E/I
> 
> I don't know.. either one as long as all places use the same.

URE.

Unready -> ready -> executing.

Unready -> ready is a good pairing, and executing over inflight to avoid
being confused for an infection.

And unready opens up a plethora of jokes by just dropping the 'y'.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
