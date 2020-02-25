Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B4316ED92
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2020 19:12:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 339AE6EB71;
	Tue, 25 Feb 2020 18:12:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B17346EB71;
 Tue, 25 Feb 2020 18:11:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20348727-1500050 for multiple; Tue, 25 Feb 2020 18:11:55 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <6ad2e8c7-f3e3-a43e-ea4c-92ab57d69b06@linux.intel.com>
References: <20200224215650.39624-1-chris@chris-wilson.co.uk>
 <6ad2e8c7-f3e3-a43e-ea4c-92ab57d69b06@linux.intel.com>
Message-ID: <158265431375.3656.10896445408963081099@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 25 Feb 2020 18:11:53 +0000
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_persistence: Check
 precision of hostile cancellation
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Tvrtko Ursulin (2020-02-25 18:08:14)
> 
> On 24/02/2020 21:56, Chris Wilson wrote:
> > Check that if we have to remove a hostile request from a non-persistent
> > context, we do so without harming any other concurrent users.
> > 
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > ---
> > +     /* All other spinners should be left unharmed */
> > +     gem_quiescent_gpu(i915);
> > +     igt_assert_eq(sync_fence_wait(fence, reset_timeout_ms), 0);
> > +     igt_assert_eq(sync_fence_status(fence), 1);
> 
> I don't quite get this test. Why would other spinners be unharmed? They 
> are non-preemptible as well. And non-persistent spinner is alone on the 
> engine. So what aspect you wanted to test?

Per-engine reset. Termination of the non-persistent context should be
clean and precise, we don't allow creation of non-persistent contexts
unless we have that level of surgical precision. Otherwise it becomes a
new attack vector.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
