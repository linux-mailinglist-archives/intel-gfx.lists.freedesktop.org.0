Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4947A135432
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 09:19:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69E676E3B2;
	Thu,  9 Jan 2020 08:19:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28D3C6E3B2
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 08:19:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19817092-1500050 for multiple; Thu, 09 Jan 2020 08:19:10 +0000
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200107143826.3298401-1-chris@chris-wilson.co.uk>
 <87y2uhf3mq.fsf@gaia.fi.intel.com>
In-Reply-To: <87y2uhf3mq.fsf@gaia.fi.intel.com>
Message-ID: <157855794804.13423.18050306819020127424@skylake-alporthouse-com>
Date: Thu, 09 Jan 2020 08:19:08 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Drop a defunct timeline
 assertion
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

Quoting Mika Kuoppala (2020-01-09 08:14:21)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > intel_timeline_enter() has been decoupled from intel_timeline_pin() and
> > both enter/exit & pin/unpin are allowed [read expected] to run
> > concurrently with one another. The assertion that they had better not is
> > stale.
> >
> > Closes: https://gitlab.freedesktop.org/drm/intel/issues/940
> 
> Hmm I got page not found for this even tho other issues are shown :O

You need to login for this one.

> References to the decoupling part?

References: a6edbca74b30 ("drm/i915/gt: Close race between engine_park and intel_gt_retire_requests")
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
