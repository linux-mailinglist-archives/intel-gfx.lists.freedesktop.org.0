Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F702198219
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 19:20:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C536B6E186;
	Mon, 30 Mar 2020 17:20:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1ED906E186
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 17:20:13 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20743254-1500050 for multiple; Mon, 30 Mar 2020 18:20:10 +0100
MIME-Version: 1.0
In-Reply-To: <87zhbxq115.fsf@gaia.fi.intel.com>
References: <20200327112212.16046-1-chris@chris-wilson.co.uk>
 <87zhbxq115.fsf@gaia.fi.intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158558880906.3228.6068233163360004127@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 30 Mar 2020 18:20:09 +0100
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: Allow for different modes of
 interruptible i915_active_wait
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

Quoting Mika Kuoppala (2020-03-30 17:07:34)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Allow some users the discretion to not immediately return on a normal
> > signal. Hopefully, they will opt to use TASK_KILLABLE instead.
> >
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> >  drivers/gpu/drm/i915/i915_active.c           |  6 ++++--
> >  drivers/gpu/drm/i915/i915_active.h           |  6 +++++-
> >  drivers/gpu/drm/i915/selftests/i915_active.c | 10 +++++-----
> >  3 files changed, 14 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_active.c b/drivers/gpu/drm/i915/i915_active.c
> > index a0d31f7bfb42..7b685032cc1e 100644
> > --- a/drivers/gpu/drm/i915/i915_active.c
> > +++ b/drivers/gpu/drm/i915/i915_active.c
> > @@ -496,7 +496,7 @@ static int flush_lazy_signals(struct i915_active *ref)
> >       return err;
> >  }
> >  
> > -int i915_active_wait(struct i915_active *ref)
> > +int __i915_active_wait(struct i915_active *ref, int state)
> >  {
> >       int err;
> 
> minor gripe: s/state/task_state

set_current_state()
signal_pending_state()

All locals refer to it as state :)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
