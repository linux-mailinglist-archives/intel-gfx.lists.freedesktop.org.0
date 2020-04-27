Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD96A1BAB89
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 19:43:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21DB289B29;
	Mon, 27 Apr 2020 17:43:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 129B489B29
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 17:43:14 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21038372-1500050 for multiple; Mon, 27 Apr 2020 18:43:12 +0100
MIME-Version: 1.0
In-Reply-To: <87368olts6.fsf@gaia.fi.intel.com>
References: <20200427170513.24019-1-chris@chris-wilson.co.uk>
 <20200427170513.24019-2-chris@chris-wilson.co.uk>
 <87368olts6.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158800939133.17035.16447147308711391329@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 27 Apr 2020 18:43:11 +0100
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/execlists: Verify we don't
 submit two identical CCIDs
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

Quoting Mika Kuoppala (2020-04-27 18:31:37)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Check that we do not submit two contexts into ELSP with the same CCID
> > [upper portion of the descriptor].
> >
> > References: https://gitlab.freedesktop.org/drm/intel/-/issues/1793
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_lrc.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index d68a04f2a9d5..f8a8cd72f227 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -1621,6 +1621,7 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
> >       struct i915_request * const *port, *rq;
> >       struct intel_context *ce = NULL;
> >       bool sentinel = false;
> > +     u32 ccid = -1;
> >  
> >       trace_ports(execlists, msg, execlists->pending);
> >  
> > @@ -1654,6 +1655,14 @@ assert_pending_valid(const struct intel_engine_execlists *execlists,
> >               }
> >               ce = rq->context;
> >  
> > +             if (ccid == upper_32_bits(ce->lrc_desc)) {
> > +                     GEM_TRACE_ERR("Dup ccid:%x context:%llx in pending[%zd]\n",
> > +                                   ccid, ce->timeline->fence_context,
> > +                                   port - execlists->pending);
> 
> The trace was lost, atleast from me, on the previous logs I looked
> and thus the value. trace buffer overflowed? But if it
> was reader error, then perhaps putting this explicitly in dmesg
> is not necessary.

The trick is to look at the pstores. Or to reproduce it locally where
you can remotely capture the full trace.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
