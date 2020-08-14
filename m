Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA9E244EEA
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Aug 2020 21:43:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3521F6EC08;
	Fri, 14 Aug 2020 19:43:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BDA2F6EC08
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Aug 2020 19:43:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 22131590-1500050 for multiple; Fri, 14 Aug 2020 20:43:27 +0100
MIME-Version: 1.0
In-Reply-To: <87imdl13ps.fsf@gaia.fi.intel.com>
References: <20200814155735.29138-1-chris@chris-wilson.co.uk>
 <87imdl13ps.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 14 Aug 2020 20:43:24 +0100
Message-ID: <159743420496.31882.5716914620781264689@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/gt: Widen CSB pointer to u64
 for the parsers
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

Quoting Mika Kuoppala (2020-08-14 19:29:03)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > A CSB entry is 64b, and it is simpler for us to treat it as an array of
> > 64b entries than as an array of pairs of 32b entries.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_engine_types.h |  2 +-
> >  drivers/gpu/drm/i915/gt/intel_lrc.c          | 33 ++++++++++----------
> >  2 files changed, 17 insertions(+), 18 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > index c400aaa2287b..ee6312601c56 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> > @@ -278,7 +278,7 @@ struct intel_engine_execlists {
> >        *
> >        * Note these register may be either mmio or HWSP shadow.
> >        */
> > -     u32 *csb_status;
> > +     u64 *csb_status;
> >  
> >       /**
> >        * @csb_size: context status buffer FIFO size
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 82742c6f423c..db982fc0f0bc 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -2464,7 +2464,7 @@ cancel_port_requests(struct intel_engine_execlists * const execlists)
> >  }
> >  
> >  static inline void
> > -invalidate_csb_entries(const u32 *first, const u32 *last)
> > +invalidate_csb_entries(const u64 *first, const u64 *last)
> >  {
> >       clflush((void *)first);
> >       clflush((void *)last);
> > @@ -2496,14 +2496,12 @@ invalidate_csb_entries(const u32 *first, const u32 *last)
> >   *     bits 47-57: sw context id of the lrc the GT switched away from
> >   *     bits 58-63: sw counter of the lrc the GT switched away from
> >   */
> > -static inline bool
> > -gen12_csb_parse(const struct intel_engine_execlists *execlists, const u32 *csb)
> > +static inline bool gen12_csb_parse(const u64 *csb)
> >  {
> > -     u32 lower_dw = csb[0];
> > -     u32 upper_dw = csb[1];
> > -     bool ctx_to_valid = GEN12_CSB_CTX_VALID(lower_dw);
> > -     bool ctx_away_valid = GEN12_CSB_CTX_VALID(upper_dw);
> > -     bool new_queue = lower_dw & GEN12_CTX_STATUS_SWITCHED_TO_NEW_QUEUE;
> > +     u64 entry = READ_ONCE(*csb);
> > +     bool ctx_away_valid = GEN12_CSB_CTX_VALID(upper_32_bits(entry));
> > +     bool new_queue =
> > +             lower_32_bits(entry) & GEN12_CTX_STATUS_SWITCHED_TO_NEW_QUEUE;
> 
> Opportunity to constify, tho stylistic.

Opportunity lost in the next patch, found again in the 3rd patch. If you
get really fancy, we only use them once. gcc is already smart enough to
reduce the pair down to a trivial set of bit ops rather than conditions.
So I left it alone.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
