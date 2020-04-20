Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE7E1B0C45
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2020 15:08:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1750B6E554;
	Mon, 20 Apr 2020 13:08:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82BDA6E554
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Apr 2020 13:08:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20959688-1500050 for multiple; Mon, 20 Apr 2020 14:08:37 +0100
MIME-Version: 1.0
In-Reply-To: <87r1wimi6a.fsf@gaia.fi.intel.com>
References: <20200420090914.14679-1-chris@chris-wilson.co.uk>
 <87y2qqmnpt.fsf@gaia.fi.intel.com>
 <158738057131.19285.14967910014530902851@build.alporthouse.com>
 <87r1wimi6a.fsf@gaia.fi.intel.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158738811562.19285.9133389877070234191@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 20 Apr 2020 14:08:35 +0100
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/selftests: Verify frequency
 scaling with RPS
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

Quoting Mika Kuoppala (2020-04-20 13:54:21)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Quoting Mika Kuoppala (2020-04-20 11:54:38)
> >> Further, intel_runtime_pm_get is missing.
> >
> > For what? We acquire the wakeref via the request on the engine.
> >
> > We don't talk to intel_runtime_pm directly, everything we should be
> > doing is engine specific, which knows which gt and the power management
> > for that.
> 
> I was worried about the read_cagf().
> 
> But as it is implied that the request will be running
> and we have total control of it during reading th cagf,
> it will work like this.

Yes, we are only looking at the HW inside either the request or explicit
pm_gt. And our mmio debug is good enough to warn if we do attempt to
read cagf without the rpm wakeref.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
