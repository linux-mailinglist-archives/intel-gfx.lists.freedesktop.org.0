Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B8F9A167F99
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 15:06:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00AE26F45B;
	Fri, 21 Feb 2020 14:06:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C69A6E2D6;
 Fri, 21 Feb 2020 14:06:26 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20302882-1500050 for multiple; Fri, 21 Feb 2020 14:06:23 +0000
MIME-Version: 1.0
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <1959904.mUKtKn5uA7@jkrzyszt-desk.ger.corp.intel.com>
References: <20200221094321.2534304-1-chris@chris-wilson.co.uk>
 <1959904.mUKtKn5uA7@jkrzyszt-desk.ger.corp.intel.com>
Message-ID: <158229398130.6499.3207948325166302915@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 21 Feb 2020 14:06:21 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915: Exercise
 I915_CONTEXT_PARAM_RINGSIZE
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Janusz Krzysztofik (2020-02-21 13:57:26)
> Hi Chris,
> 
> On Friday, February 21, 2020 10:43:21 AM CET Chris Wilson wrote:
> > +static unsigned int measure_inflight(int i915, unsigned int engine, int timeout)
> > +{
> > +     IGT_CORK_FENCE(cork);
> > +     struct drm_i915_gem_exec_object2 obj = {
> > +             .handle = batch_create(i915)
> > +     };
> > +     struct drm_i915_gem_execbuffer2 execbuf = {
> > +             .buffers_ptr = to_user_pointer(&obj),
> > +             .buffer_count = 1,
> > +             .flags = engine | I915_EXEC_FENCE_IN,
> > +             .rsvd2 = igt_cork_plug(&cork, i915),
> > +     };
> > +     unsigned int count;
> > +     int err;
> > +
> > +     fcntl(i915, F_SETFL, fcntl(i915, F_GETFL) | O_NONBLOCK);
> > +     igt_set_timeout(timeout, "execbuf blocked!");
> > +
> > +     gem_execbuf(i915, &execbuf);
> > +     for (count = 1; (err = __execbuf(i915, &execbuf)) == 0; count++)
> > +             ;
> > +     igt_assert_eq(err, -EWOULDBLOCK);
> > +     close(execbuf.rsvd2);
> > +
> > +     igt_reset_timeout();
> 
> Why not right after the 'for' loop is exited?  Don't we unnecessarily risk 
> a race condition?

Just style, I like the grouping of the extended gem_execbuf() into a
single visual block. Either way it's a few instructions, negligible in
the grand scheme of unserialised code. We need a considerable safety
factor in any case, and yet small enough that we don't accidentally pass
with a random hangcheck.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
