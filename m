Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 914171D4946
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 11:18:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E93F16EC2B;
	Fri, 15 May 2020 09:18:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C03666EC2B
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 09:18:28 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21201322-1500050 
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 10:18:24 +0100
MIME-Version: 1.0
In-Reply-To: <20200514165436.17380-4-chris@chris-wilson.co.uk>
References: <20200514165436.17380-1-chris@chris-wilson.co.uk>
 <20200514165436.17380-4-chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158953430301.29850.5874399157690243621@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Fri, 15 May 2020 10:18:23 +0100
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/execlists: Optimise away false
 timeslicing on virtual engines
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

Quoting Chris Wilson (2020-05-14 17:54:36)
> The virtual timeslicing failed under a series of unfortunate slices.
> Suppose the user submitted a virtual request, over [vcs0, vcs1] and also
> a request that dependent upon the result of the virtal request to vcs0.
> 
> submit {veng, vcs0}
> time slice expires: unsubmit vcs0, veng
> submit { vcs0 } # no timeslicing
> virtual tasklet requeues veng
> 
> veng saw that it was still in flight on vcs0 and did not queue onto
> vcs1, and on vcs0 it saw no reason to preempt the active request.
> 
> Patch "drm/i915/gt: Kick virtual siblings on timeslice out" fixes not
> waking up the siblings after timeslicing, and patch "drm/i915/gt:
> Incorporate the virtual engine into timeslicing" fixes the issue of not
> restarting timeslicing after the replacement of veng.
> 
> After applying those patches, we should then expire the timeslice on
> vcs0 and resubmit {veng, vcs0} and reschedule the timeslices. Repeating
> the sequence until the veng finally completes. Our usual strategy to
> recognise the data dependent timeslicing is to notice the resubmission
> of the same pair of requests, and so skip the ELSP write, leaving them
> executing on the HW. (This will also then disable the timeslicing until
> either completes or we see a new request.)
> 
> In order for the virtual request to be resubmitted immediately after
> expiring the timeslice, we need to ensure that we make the virtual
> engine immediately available again for submission in this execlists
> tasklet.

Of course Tvrtko has examples where mixing load-balanced with explicit
engine requests requires us to migrate on timeslice expiry. I hear the
death nails being driven into the

> -       while (rb) { /* XXX virtual is always taking precedence */
> -               struct virtual_engine *ve =
> -                       rb_entry(rb, typeof(*ve), nodes[engine->id].rb);
> +       /* XXX virtual is always taking precedence */
> +       while ((ve = first_virtual_engine(engine))) {

coffin.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
