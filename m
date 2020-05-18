Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6261D7C7E
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 17:14:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F2DF898AA;
	Mon, 18 May 2020 15:14:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62649898AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 15:14:47 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21231466-1500050 for multiple; Mon, 18 May 2020 16:14:43 +0100
MIME-Version: 1.0
In-Reply-To: <87sgfxth6k.fsf@gaia.fi.intel.com>
References: <20200518143947.30606-1-chris@chris-wilson.co.uk>
 <87sgfxth6k.fsf@gaia.fi.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158981488331.7442.6623043854034622709@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 18 May 2020 16:14:43 +0100
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

Quoting Mika Kuoppala (2020-05-18 16:07:47)
> Chris Wilson <chris@chris-wilson.co.uk> writes:
> > +             cs = emit_timestamp_store(cs, ce, offset + i * sizeof(u32));
> 
> Is the dual writes here so that when you kick the semaphore, you get the
> latest no matter which side you were on?

We wait on the first write in the CPU before releasing the semaphore. It
was easier to copy the code, but now it can be an emit_store_dw() to
make it clearer that we are not using it as timestamp -- and avoid the
infinite wait if we hit CS_TIMESTAMP == 0.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
