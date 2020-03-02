Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEE7175161
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Mar 2020 01:36:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0780F6E237;
	Mon,  2 Mar 2020 00:36:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D4F66E237;
 Mon,  2 Mar 2020 00:36:51 +0000 (UTC)
Received: from oasis.local.home (cpe-66-24-58-225.stny.res.rr.com
 [66.24.58.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6391246B7;
 Mon,  2 Mar 2020 00:36:50 +0000 (UTC)
Date: Sun, 1 Mar 2020 19:36:49 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200301193649.71da6747@oasis.local.home>
In-Reply-To: <158310134594.5508.5362429296192213548@skylake-alporthouse-com>
References: <20200301155248.4132645-1-chris@chris-wilson.co.uk>
 <20200301131816.277dd398@oasis.local.home>
 <158310134594.5508.5362429296192213548@skylake-alporthouse-com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

On Sun, 01 Mar 2020 22:22:25 +0000
Chris Wilson <chris@chris-wilson.co.uk> wrote:

> > I'm curious to why we need it to be anonymous. Why not allow them to be
> > visible from the tracing directory. This could allow for easier
> > debugging. Note, the trace instances have ref counters thus they can't
> > be removed if something has a reference to it.  
> 
> Do you really want a few thousand (or even tens) i915-client-%d? That
> does not particularly seem like it adds ease-of-use, and would need to be
> restricted to the client [or root]. The intent is for the client to have
> a private channel for detailed debug/error reporting of its own calls
> into the kernel.

Wow! I didn't expect this to have that many anonymous users. What is
the use case for again?

-- Steve
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
