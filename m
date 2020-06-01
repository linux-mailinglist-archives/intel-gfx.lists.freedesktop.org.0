Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5317B1EA380
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jun 2020 14:08:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 482BE89D49;
	Mon,  1 Jun 2020 12:08:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD90689D3E
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jun 2020 12:08:19 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21360070-1500050 for multiple; Mon, 01 Jun 2020 13:08:18 +0100
MIME-Version: 1.0
In-Reply-To: <159101284356.29407.17566133173569257311@build.alporthouse.com>
References: <20200601072446.19548-1-chris@chris-wilson.co.uk>
 <20200601072446.19548-4-chris@chris-wilson.co.uk>
 <87mu5nhuoy.fsf@gaia.fi.intel.com>
 <159101284356.29407.17566133173569257311@build.alporthouse.com>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <159101329556.29407.2013434789388460697@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 01 Jun 2020 13:08:15 +0100
Subject: Re: [Intel-gfx] [PATCH 04/36] drm/i915: Trim the ironlake+ irq
 handler
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

Quoting Chris Wilson (2020-06-01 13:00:43)
> Quoting Mika Kuoppala (2020-06-01 12:49:49)
> > Chris Wilson <chris@chris-wilson.co.uk> writes:
> > 
> > > Ever noticed that our interrupt handlers are where we spend most of our
> > > time on a busy system? In part this is unavoidable as each interrupt
> > > requires to poll and reset several registers, but we can try and so as
> > > efficiently as possible.
> > >
> > > Function                                     old     new   delta
> > > ilk_irq_handler                             2317    2156    -161

With irqreturn_t ret,

ilk_irq_handler.cold                          63      72      +9
ilk_irq_handler                             2221    2083    -138

I love how it can change so much simply by recompiling the baseline.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
