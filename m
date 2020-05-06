Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D77D51C74EE
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 17:32:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30D676E877;
	Wed,  6 May 2020 15:32:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5CF406E877
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 15:32:06 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21128690-1500050 for multiple; Wed, 06 May 2020 16:32:06 +0100
MIME-Version: 1.0
In-Reply-To: <87lfm5nl8p.fsf@gaia.fi.intel.com>
References: <20200506144734.29297-1-mika.kuoppala@linux.intel.com>
 <20200506144734.29297-4-mika.kuoppala@linux.intel.com>
 <158877715660.927.5979318415732712309@build.alporthouse.com>
 <87lfm5nl8p.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158877912211.927.1049499765705286623@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 06 May 2020 16:32:02 +0100
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/gen12: Invalidate aux table
 entries forcibly
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

Quoting Mika Kuoppala (2020-05-06 16:20:22)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> 
> > Quoting Mika Kuoppala (2020-05-06 15:47:34)
> >> Aux table invalidation can fail on update. So
> >> next access may cause memory access to be into stale entry.
> >> 
> >> Proposed workaround is to invalidate entries between
> >> all batchbuffers.
> >
> > This sounds like it should have a sunset clause. Do we anticipate being
> > able to drop this w/a in future?
> 
> Rafael kindly pointed out that Mesa already does this:
> https://gitlab.freedesktop.org/mesa/mesa/-/blob/master/src/gallium/drivers/iris/iris_state.c#L5131
> So I would say we can drop this patch.

Is the false hit self-contained? Is it caused by PTE update of the
address or by a 3D state change i.e. is it a potential isolation issue?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
