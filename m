Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0A081D7C8D
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 17:17:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031336E19A;
	Mon, 18 May 2020 15:17:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1392E6E19A
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 15:17:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21231503-1500050 for multiple; Mon, 18 May 2020 16:17:16 +0100
MIME-Version: 1.0
In-Reply-To: <158981488331.7442.6623043854034622709@build.alporthouse.com>
References: <20200518143947.30606-1-chris@chris-wilson.co.uk>
 <87sgfxth6k.fsf@gaia.fi.intel.com>
 <158981488331.7442.6623043854034622709@build.alporthouse.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158981503574.7442.18064081457237643535@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 18 May 2020 16:17:15 +0100
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/selftests: Measure dispatch
 latency
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

Quoting Chris Wilson (2020-05-18 16:14:43)
> Quoting Mika Kuoppala (2020-05-18 16:07:47)
> > Chris Wilson <chris@chris-wilson.co.uk> writes:
> > > +             cs = emit_timestamp_store(cs, ce, offset + i * sizeof(u32));
> > 
> > Is the dual writes here so that when you kick the semaphore, you get the
> > latest no matter which side you were on?
> 
> We wait on the first write in the CPU before releasing the semaphore. It
> was easier to copy the code, but now it can be an emit_store_dw() to
> make it clearer that we are not using it as timestamp -- and avoid the
> infinite wait if we hit CS_TIMESTAMP == 0.

diff --git a/drivers/gpu/drm/i915/selftests/i915_request.c b/drivers/gpu/drm/i915/selftests/i915_request.c
index c6dff5145a3c..887171ff21a0 100644
--- a/drivers/gpu/drm/i915/selftests/i915_request.c
+++ b/drivers/gpu/drm/i915/selftests/i915_request.c
@@ -1779,7 +1779,7 @@ static int measure_busy_dispatch(struct intel_context *ce)
                        return PTR_ERR(cs);
                }

-               cs = emit_timestamp_store(cs, ce, offset + i * sizeof(u32));
+               cs = emit_store_dw(cs, offset + i * sizeof(u32), -1);
                cs = emit_semaphore_poll_until(cs, offset, i);
                cs = emit_timestamp_store(cs, ce, offset + i * sizeof(u32));

@@ -1802,8 +1802,10 @@ static int measure_busy_dispatch(struct intel_context *ce)
        wait_for(READ_ONCE(sema[i - 1]), 500);
        semaphore_set(sema, i - 1);

-       for (i = 1; i <= COUNT; i++)
+       for (i = 1; i <= COUNT; i++) {
+               GEM_BUG_ON(sema[i] == -1);
                elapsed[i - 1] = (sema[i] - elapsed[i]) << COUNT;
+       }
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
