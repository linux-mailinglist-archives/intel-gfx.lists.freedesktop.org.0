Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 455D31F381F
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jun 2020 12:29:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A189E6E0D8;
	Tue,  9 Jun 2020 10:29:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B0476E0D8
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2020 10:29:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21440966-1500050 for multiple; Tue, 09 Jun 2020 11:29:11 +0100
MIME-Version: 1.0
In-Reply-To: <77acd2e3-86cc-7c78-22a0-8d8263510aa2@linux.intel.com>
References: <20200607222108.14401-1-chris@chris-wilson.co.uk>
 <9f995ee6-5f93-088d-47d6-5431076de596@linux.intel.com>
 <159160880517.15126.3134918011284478228@build.alporthouse.com>
 <77acd2e3-86cc-7c78-22a0-8d8263510aa2@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159169855088.24308.3785883777038202508@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 09 Jun 2020 11:29:10 +0100
Subject: Re: [Intel-gfx] [PATCH 01/28] drm/i915: Adjust the sentinel assert
 to match implementation
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

Quoting Tvrtko Ursulin (2020-06-09 07:59:27)
> 666
> On 08/06/2020 10:33, Chris Wilson wrote:
> > Quoting Tvrtko Ursulin (2020-06-08 08:44:01)
> >>
> >> On 07/06/2020 23:20, Chris Wilson wrote:
> >>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>>
> >>> Sentinels are supposed to be last reqeusts in the elsp queue, not the
> >>> only one, so adjust the assert accordingly.
> >>>
> >>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> >>> ---
> >>>    drivers/gpu/drm/i915/gt/intel_lrc.c | 14 +++-----------
> >>>    1 file changed, 3 insertions(+), 11 deletions(-)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>> index d55a5e0466e5..db8a170b0e5c 100644
> >>> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> >>> @@ -1635,9 +1635,9 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
> >>>                ccid = ce->lrc.ccid;
> >>>    
> >>>                /*
> >>> -              * Sentinels are supposed to be lonely so they flush the
> >>> -              * current exection off the HW. Check that they are the
> >>> -              * only request in the pending submission.
> >>> +              * Sentinels are supposed to be the last request so they flush
> >>> +              * the current exection off the HW. Check that they are the only
> >>> +              * request in the pending submission.
> >>>                 */
> >>>                if (sentinel) {
> >>>                        GEM_TRACE_ERR("%s: context:%llx after sentinel in pending[%zd]\n",
> >>> @@ -1646,15 +1646,7 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
> >>>                                      port - execlists->pending);
> >>>                        return false;
> >>>                }
> >>> -
> >>>                sentinel = i915_request_has_sentinel(rq);
> >>
> >> FWIW I was changing it to "sentinel |= ..." so it keeps working if we
> >> decide to use more than 2 elsp ports on Icelake one day.
> > 
> > But it will always fail on the next port...
> 
> I don't follow. Sentinel has to be last so if it fails on the next port 
> it is correct to do so, no?

Exactly. We only check the first port after setting sentinel, if that
port is occupied we fail. Hence why we don't need |=, since there is no
continuation.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
