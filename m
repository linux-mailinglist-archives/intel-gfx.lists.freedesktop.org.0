Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 455321C2F7E
	for <lists+intel-gfx@lfdr.de>; Sun,  3 May 2020 23:31:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEC8C89C52;
	Sun,  3 May 2020 21:31:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A72F89C52
 for <intel-gfx@lists.freedesktop.org>; Sun,  3 May 2020 21:31:25 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21101355-1500050 for multiple; Sun, 03 May 2020 22:31:24 +0100
MIME-Version: 1.0
In-Reply-To: <20200430154735.22434-7-mika.kuoppala@linux.intel.com>
References: <20200430154735.22434-1-mika.kuoppala@linux.intel.com>
 <20200430154735.22434-7-mika.kuoppala@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Mika Kuoppala <mika.kuoppala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <158854148219.15829.7951669711311106906@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Sun, 03 May 2020 22:31:22 +0100
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/gen12: Wait on previous flush
 on invalidate
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

Quoting Mika Kuoppala (2020-04-30 16:47:33)
> Flush enable bit is a sync point which makes this
> pipecontrol to wait that everything on a previous
> pipe control are flushed. Enable it to make
> sure that our invalidates doesn't overlap.

Not sold. We terminated the previous context with a serialising flush;
the pipe should be idle... But what about preemption, hmm? But then you
have preemption between batches past the invalidate point, and so it
must all be safely restored from context.

So the primarily concern here is with state being overwritten by GTT
updates.

Still not sold.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
