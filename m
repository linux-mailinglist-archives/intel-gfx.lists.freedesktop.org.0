Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 661A31504F0
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 12:13:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B35B6E2BC;
	Mon,  3 Feb 2020 11:13:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C28216E2BC
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Feb 2020 11:13:05 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20098308-1500050 for multiple; Mon, 03 Feb 2020 11:13:01 +0000
MIME-Version: 1.0
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <op.0ferumxwxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
References: <20200203095413.45084-1-michal.wajdeczko@intel.com>
 <20200203105816.104544-1-michal.wajdeczko@intel.com>
 <158072767986.20090.689300096596597771@skylake-alporthouse-com>
 <op.0ferumxwxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Message-ID: <158072837850.20090.9533091025903952086@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 03 Feb 2020 11:12:58 +0000
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/guc: Stop using mutex while
 sending CTB messages
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

Quoting Michal Wajdeczko (2020-02-03 11:07:24)
> 
> >> +               /* CTB_RECV lock will be used with irq disabled */
> >
> > ...will be used inside the interrupt handler
> >
> > I think is a more descriptive comment.
> 
> Well, we usually call intel_guc_ct_event_handler() from irq handler,
> but we are also calling it from guc_enable_communication(), that's
> outside irq handler (but with irq disabled)

I think the sole reason for the distinction between the two cases is that
only RECV is used from interrupt paths (we could always reorder the
guc_enable_communication if that was not the case). That I think
explains why keeping the two locks separate is important (or more
nuanced than usual).
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
