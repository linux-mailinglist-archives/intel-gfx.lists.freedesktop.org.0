Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B80F150EB6
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 18:37:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 789FC6E3FE;
	Mon,  3 Feb 2020 17:37:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 390986E3FE
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 17:37:27 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20103417-1500050 for multiple; Mon, 03 Feb 2020 17:37:14 +0000
MIME-Version: 1.0
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <8a3d1405-c6c0-4190-7085-7c697326e6d1@intel.com>
References: <20200203094152.4150550-1-chris@chris-wilson.co.uk>
 <20200203094152.4150550-4-chris@chris-wilson.co.uk>
 <8a3d1405-c6c0-4190-7085-7c697326e6d1@intel.com>
Message-ID: <158075143184.27392.7841098289893052329@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 03 Feb 2020 17:37:11 +0000
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/selftests: Add a simple
 rollover for the kernel context
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

Quoting Matthew Auld (2020-02-03 17:32:29)
> On 03/02/2020 09:41, Chris Wilson wrote:
> > +             for (i = 0; i < ARRAY_SIZE(rq); i++) {
> > +                     rq[i] = i915_request_create(ce);
> > +                     if (IS_ERR(rq[i])) {
> > +                             err = PTR_ERR(rq[i]);
> > +                             goto out;
> > +                     }
> > +
...
> > +out:
> > +             for (i = 0; i < ARRAY_SIZE(rq); i++)
> > +                     i915_request_put(rq[i]);
> 
> !IS_ERR_OR_NULL()?

Oh drat, I let err into rq[]. I'll rework the assignment to avoid
putting the ERR_PTR here.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
