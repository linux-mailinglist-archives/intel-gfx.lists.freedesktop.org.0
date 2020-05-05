Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12F291C51D0
	for <lists+intel-gfx@lfdr.de>; Tue,  5 May 2020 11:21:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 262366E58A;
	Tue,  5 May 2020 09:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EE496E58A
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 May 2020 09:21:50 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21115591-1500050 for multiple; Tue, 05 May 2020 10:21:50 +0100
MIME-Version: 1.0
In-Reply-To: <87o8r2oicu.fsf@gaia.fi.intel.com>
References: <20200504180745.15645-1-chris@chris-wilson.co.uk>
 <87o8r2oicu.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158867050638.21776.15740114994144911090@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Tue, 05 May 2020 10:21:46 +0100
Subject: Re: [Intel-gfx] [CI] drm/i915/gt: Stop holding onto the
 pinned_default_state
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

Quoting Mika Kuoppala (2020-05-05 10:12:49)
> > @@ -4166,8 +4163,6 @@ static void __execlists_reset(struct intel_engine_cs *engine, bool stalled)
> >        * image back to the expected values to skip over the guilty request.
> >        */
> >       __i915_request_reset(rq, stalled);
> > -     if (!stalled)
> > -             goto out_replay;
> 
> Why the change how to handle stalled?

The protocontext is only sufficient to recover a hung context. If we are
resetting an innocent context, we need it to retain its register state.

stalled == guilty => really hung, we only replay for the breacrumbs
!stalled == innocent, global reset => we need to try and recover the
context exactly.

The secret is that if we declare innocence too early, we kill it with
fire in a second pass.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
