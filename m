Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4E4175091
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Mar 2020 23:22:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A03D46E229;
	Sun,  1 Mar 2020 22:22:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CD716E229;
 Sun,  1 Mar 2020 22:22:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20406408-1500050 for multiple; Sun, 01 Mar 2020 22:22:27 +0000
MIME-Version: 1.0
To: Steven Rostedt <rostedt@goodmis.org>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200301131816.277dd398@oasis.local.home>
References: <20200301155248.4132645-1-chris@chris-wilson.co.uk>
 <20200301131816.277dd398@oasis.local.home>
Message-ID: <158310134594.5508.5362429296192213548@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 01 Mar 2020 22:22:25 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] trace: Export anonymous tracing
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Steven Rostedt (2020-03-01 18:18:16)
> On Sun,  1 Mar 2020 15:52:47 +0000
> Chris Wilson <chris@chris-wilson.co.uk> wrote:
> 
> > To facilitate construction of per-client event ringbuffers, in
> > particular for a per-client debug and error report log, it would be
> > extremely useful to create an anonymous file that can be handed to
> > userspace so that it can see its and only its events. trace already
> > provides a means of encapsulating the trace ringbuffer into a struct
> > file that can be opened via the tracefs, and so with a couple of minor
> > tweaks can provide the same access via an anonymous inode.
> 
> I'm curious to why we need it to be anonymous. Why not allow them to be
> visible from the tracing directory. This could allow for easier
> debugging. Note, the trace instances have ref counters thus they can't
> be removed if something has a reference to it.

Do you really want a few thousand (or even tens) i915-client-%d? That
does not particularly seem like it adds ease-of-use, and would need to be
restricted to the client [or root]. The intent is for the client to have
a private channel for detailed debug/error reporting of its own calls
into the kernel.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
