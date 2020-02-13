Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D40915BC19
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Feb 2020 10:52:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C08946E1B8;
	Thu, 13 Feb 2020 09:51:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E1B56E1B6;
 Thu, 13 Feb 2020 09:51:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20208356-1500050 for multiple; Thu, 13 Feb 2020 09:51:39 +0000
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <1e8603fe-d4b8-5860-37cc-6ac381276e6d@linux.intel.com>
References: <20200211192253.1120964-1-chris@chris-wilson.co.uk>
 <1e8603fe-d4b8-5860-37cc-6ac381276e6d@linux.intel.com>
Message-ID: <158158749815.11180.3098367349420655936@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 13 Feb 2020 09:51:38 +0000
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915/gem_ctx_persistence:
 Race context closure with replace-engines
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

Quoting Tvrtko Ursulin (2020-02-13 09:07:59)
> 
> On 11/02/2020 19:22, Chris Wilson wrote:
> > +     igt_until_timeout(5) {
> > +             igt_spin_t *spin;
> > +             uint32_t ctx;
> > +
> > +             ctx = gem_context_clone_with_engines(i915, 0);
> > +             gem_context_set_persistence(i915, ctx, true);
> > +
> > +             spin = igt_spin_new(i915, ctx, .flags = IGT_SPIN_FENCE_OUT);
> > +             for (int i = 0; i < ncpus; i++)
> > +                     write(t[i].pipe[1], &ctx, sizeof(ctx));
> 
> It's early so I hope I am not too confused, but drm client in the forked 
> process is a different one. So I think it needs to use threads to be 
> able to share.

It using the same fd, so the children have control over the parents ctx
(and shares the ctx id space via the fd)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
